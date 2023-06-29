# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityHub
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptAdministratorInvitationRequest = Shapes::StructureShape.new(name: 'AcceptAdministratorInvitationRequest')
    AcceptAdministratorInvitationResponse = Shapes::StructureShape.new(name: 'AcceptAdministratorInvitationResponse')
    AcceptInvitationRequest = Shapes::StructureShape.new(name: 'AcceptInvitationRequest')
    AcceptInvitationResponse = Shapes::StructureShape.new(name: 'AcceptInvitationResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountDetails = Shapes::StructureShape.new(name: 'AccountDetails')
    AccountDetailsList = Shapes::ListShape.new(name: 'AccountDetailsList')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    Action = Shapes::StructureShape.new(name: 'Action')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    ActionLocalIpDetails = Shapes::StructureShape.new(name: 'ActionLocalIpDetails')
    ActionLocalPortDetails = Shapes::StructureShape.new(name: 'ActionLocalPortDetails')
    ActionRemoteIpDetails = Shapes::StructureShape.new(name: 'ActionRemoteIpDetails')
    ActionRemotePortDetails = Shapes::StructureShape.new(name: 'ActionRemotePortDetails')
    ActionTarget = Shapes::StructureShape.new(name: 'ActionTarget')
    ActionTargetList = Shapes::ListShape.new(name: 'ActionTargetList')
    Adjustment = Shapes::StructureShape.new(name: 'Adjustment')
    AdjustmentList = Shapes::ListShape.new(name: 'AdjustmentList')
    AdminAccount = Shapes::StructureShape.new(name: 'AdminAccount')
    AdminAccounts = Shapes::ListShape.new(name: 'AdminAccounts')
    AdminStatus = Shapes::StringShape.new(name: 'AdminStatus')
    AdminsMaxResults = Shapes::IntegerShape.new(name: 'AdminsMaxResults')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssociatedStandard = Shapes::StructureShape.new(name: 'AssociatedStandard')
    AssociatedStandardsList = Shapes::ListShape.new(name: 'AssociatedStandardsList')
    AssociationSetDetails = Shapes::StructureShape.new(name: 'AssociationSetDetails')
    AssociationSetList = Shapes::ListShape.new(name: 'AssociationSetList')
    AssociationStateDetails = Shapes::StructureShape.new(name: 'AssociationStateDetails')
    AssociationStatus = Shapes::StringShape.new(name: 'AssociationStatus')
    AutoEnableStandards = Shapes::StringShape.new(name: 'AutoEnableStandards')
    AutomationRulesAction = Shapes::StructureShape.new(name: 'AutomationRulesAction')
    AutomationRulesActionType = Shapes::StringShape.new(name: 'AutomationRulesActionType')
    AutomationRulesArnsList = Shapes::ListShape.new(name: 'AutomationRulesArnsList')
    AutomationRulesConfig = Shapes::StructureShape.new(name: 'AutomationRulesConfig')
    AutomationRulesConfigList = Shapes::ListShape.new(name: 'AutomationRulesConfigList')
    AutomationRulesFindingFieldsUpdate = Shapes::StructureShape.new(name: 'AutomationRulesFindingFieldsUpdate')
    AutomationRulesFindingFilters = Shapes::StructureShape.new(name: 'AutomationRulesFindingFilters')
    AutomationRulesMetadata = Shapes::StructureShape.new(name: 'AutomationRulesMetadata')
    AutomationRulesMetadataList = Shapes::ListShape.new(name: 'AutomationRulesMetadataList')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    AwsAmazonMqBrokerDetails = Shapes::StructureShape.new(name: 'AwsAmazonMqBrokerDetails')
    AwsAmazonMqBrokerEncryptionOptionsDetails = Shapes::StructureShape.new(name: 'AwsAmazonMqBrokerEncryptionOptionsDetails')
    AwsAmazonMqBrokerLdapServerMetadataDetails = Shapes::StructureShape.new(name: 'AwsAmazonMqBrokerLdapServerMetadataDetails')
    AwsAmazonMqBrokerLogsDetails = Shapes::StructureShape.new(name: 'AwsAmazonMqBrokerLogsDetails')
    AwsAmazonMqBrokerLogsPendingDetails = Shapes::StructureShape.new(name: 'AwsAmazonMqBrokerLogsPendingDetails')
    AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails = Shapes::StructureShape.new(name: 'AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails')
    AwsAmazonMqBrokerUsersDetails = Shapes::StructureShape.new(name: 'AwsAmazonMqBrokerUsersDetails')
    AwsAmazonMqBrokerUsersList = Shapes::ListShape.new(name: 'AwsAmazonMqBrokerUsersList')
    AwsApiCallAction = Shapes::StructureShape.new(name: 'AwsApiCallAction')
    AwsApiCallActionDomainDetails = Shapes::StructureShape.new(name: 'AwsApiCallActionDomainDetails')
    AwsApiGatewayAccessLogSettings = Shapes::StructureShape.new(name: 'AwsApiGatewayAccessLogSettings')
    AwsApiGatewayCanarySettings = Shapes::StructureShape.new(name: 'AwsApiGatewayCanarySettings')
    AwsApiGatewayEndpointConfiguration = Shapes::StructureShape.new(name: 'AwsApiGatewayEndpointConfiguration')
    AwsApiGatewayMethodSettings = Shapes::StructureShape.new(name: 'AwsApiGatewayMethodSettings')
    AwsApiGatewayMethodSettingsList = Shapes::ListShape.new(name: 'AwsApiGatewayMethodSettingsList')
    AwsApiGatewayRestApiDetails = Shapes::StructureShape.new(name: 'AwsApiGatewayRestApiDetails')
    AwsApiGatewayStageDetails = Shapes::StructureShape.new(name: 'AwsApiGatewayStageDetails')
    AwsApiGatewayV2ApiDetails = Shapes::StructureShape.new(name: 'AwsApiGatewayV2ApiDetails')
    AwsApiGatewayV2RouteSettings = Shapes::StructureShape.new(name: 'AwsApiGatewayV2RouteSettings')
    AwsApiGatewayV2StageDetails = Shapes::StructureShape.new(name: 'AwsApiGatewayV2StageDetails')
    AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails = Shapes::StructureShape.new(name: 'AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails')
    AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersList = Shapes::ListShape.new(name: 'AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersList')
    AwsAppSyncGraphQlApiDetails = Shapes::StructureShape.new(name: 'AwsAppSyncGraphQlApiDetails')
    AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails = Shapes::StructureShape.new(name: 'AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails')
    AwsAppSyncGraphQlApiLogConfigDetails = Shapes::StructureShape.new(name: 'AwsAppSyncGraphQlApiLogConfigDetails')
    AwsAppSyncGraphQlApiOpenIdConnectConfigDetails = Shapes::StructureShape.new(name: 'AwsAppSyncGraphQlApiOpenIdConnectConfigDetails')
    AwsAppSyncGraphQlApiUserPoolConfigDetails = Shapes::StructureShape.new(name: 'AwsAppSyncGraphQlApiUserPoolConfigDetails')
    AwsAutoScalingAutoScalingGroupAvailabilityZonesList = Shapes::ListShape.new(name: 'AwsAutoScalingAutoScalingGroupAvailabilityZonesList')
    AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails')
    AwsAutoScalingAutoScalingGroupDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupDetails')
    AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification')
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails')
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails')
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails')
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification')
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList = Shapes::ListShape.new(name: 'AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList')
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails')
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails')
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails')
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList = Shapes::ListShape.new(name: 'AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList')
    AwsAutoScalingLaunchConfigurationDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingLaunchConfigurationDetails')
    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails')
    AwsAutoScalingLaunchConfigurationMetadataOptions = Shapes::StructureShape.new(name: 'AwsAutoScalingLaunchConfigurationMetadataOptions')
    AwsBackupBackupPlanAdvancedBackupSettingsDetails = Shapes::StructureShape.new(name: 'AwsBackupBackupPlanAdvancedBackupSettingsDetails')
    AwsBackupBackupPlanAdvancedBackupSettingsList = Shapes::ListShape.new(name: 'AwsBackupBackupPlanAdvancedBackupSettingsList')
    AwsBackupBackupPlanBackupPlanDetails = Shapes::StructureShape.new(name: 'AwsBackupBackupPlanBackupPlanDetails')
    AwsBackupBackupPlanDetails = Shapes::StructureShape.new(name: 'AwsBackupBackupPlanDetails')
    AwsBackupBackupPlanLifecycleDetails = Shapes::StructureShape.new(name: 'AwsBackupBackupPlanLifecycleDetails')
    AwsBackupBackupPlanRuleCopyActionsDetails = Shapes::StructureShape.new(name: 'AwsBackupBackupPlanRuleCopyActionsDetails')
    AwsBackupBackupPlanRuleCopyActionsList = Shapes::ListShape.new(name: 'AwsBackupBackupPlanRuleCopyActionsList')
    AwsBackupBackupPlanRuleDetails = Shapes::StructureShape.new(name: 'AwsBackupBackupPlanRuleDetails')
    AwsBackupBackupPlanRuleList = Shapes::ListShape.new(name: 'AwsBackupBackupPlanRuleList')
    AwsBackupBackupVaultDetails = Shapes::StructureShape.new(name: 'AwsBackupBackupVaultDetails')
    AwsBackupBackupVaultNotificationsDetails = Shapes::StructureShape.new(name: 'AwsBackupBackupVaultNotificationsDetails')
    AwsBackupRecoveryPointCalculatedLifecycleDetails = Shapes::StructureShape.new(name: 'AwsBackupRecoveryPointCalculatedLifecycleDetails')
    AwsBackupRecoveryPointCreatedByDetails = Shapes::StructureShape.new(name: 'AwsBackupRecoveryPointCreatedByDetails')
    AwsBackupRecoveryPointDetails = Shapes::StructureShape.new(name: 'AwsBackupRecoveryPointDetails')
    AwsBackupRecoveryPointLifecycleDetails = Shapes::StructureShape.new(name: 'AwsBackupRecoveryPointLifecycleDetails')
    AwsCertificateManagerCertificateDetails = Shapes::StructureShape.new(name: 'AwsCertificateManagerCertificateDetails')
    AwsCertificateManagerCertificateDomainValidationOption = Shapes::StructureShape.new(name: 'AwsCertificateManagerCertificateDomainValidationOption')
    AwsCertificateManagerCertificateDomainValidationOptions = Shapes::ListShape.new(name: 'AwsCertificateManagerCertificateDomainValidationOptions')
    AwsCertificateManagerCertificateExtendedKeyUsage = Shapes::StructureShape.new(name: 'AwsCertificateManagerCertificateExtendedKeyUsage')
    AwsCertificateManagerCertificateExtendedKeyUsages = Shapes::ListShape.new(name: 'AwsCertificateManagerCertificateExtendedKeyUsages')
    AwsCertificateManagerCertificateKeyUsage = Shapes::StructureShape.new(name: 'AwsCertificateManagerCertificateKeyUsage')
    AwsCertificateManagerCertificateKeyUsages = Shapes::ListShape.new(name: 'AwsCertificateManagerCertificateKeyUsages')
    AwsCertificateManagerCertificateOptions = Shapes::StructureShape.new(name: 'AwsCertificateManagerCertificateOptions')
    AwsCertificateManagerCertificateRenewalSummary = Shapes::StructureShape.new(name: 'AwsCertificateManagerCertificateRenewalSummary')
    AwsCertificateManagerCertificateResourceRecord = Shapes::StructureShape.new(name: 'AwsCertificateManagerCertificateResourceRecord')
    AwsCloudFormationStackDetails = Shapes::StructureShape.new(name: 'AwsCloudFormationStackDetails')
    AwsCloudFormationStackDriftInformationDetails = Shapes::StructureShape.new(name: 'AwsCloudFormationStackDriftInformationDetails')
    AwsCloudFormationStackOutputsDetails = Shapes::StructureShape.new(name: 'AwsCloudFormationStackOutputsDetails')
    AwsCloudFormationStackOutputsList = Shapes::ListShape.new(name: 'AwsCloudFormationStackOutputsList')
    AwsCloudFrontDistributionCacheBehavior = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionCacheBehavior')
    AwsCloudFrontDistributionCacheBehaviors = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionCacheBehaviors')
    AwsCloudFrontDistributionCacheBehaviorsItemList = Shapes::ListShape.new(name: 'AwsCloudFrontDistributionCacheBehaviorsItemList')
    AwsCloudFrontDistributionDefaultCacheBehavior = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionDefaultCacheBehavior')
    AwsCloudFrontDistributionDetails = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionDetails')
    AwsCloudFrontDistributionLogging = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionLogging')
    AwsCloudFrontDistributionOriginCustomOriginConfig = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginCustomOriginConfig')
    AwsCloudFrontDistributionOriginGroup = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginGroup')
    AwsCloudFrontDistributionOriginGroupFailover = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginGroupFailover')
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginGroupFailoverStatusCodes')
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList = Shapes::ListShape.new(name: 'AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList')
    AwsCloudFrontDistributionOriginGroups = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginGroups')
    AwsCloudFrontDistributionOriginGroupsItemList = Shapes::ListShape.new(name: 'AwsCloudFrontDistributionOriginGroupsItemList')
    AwsCloudFrontDistributionOriginItem = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginItem')
    AwsCloudFrontDistributionOriginItemList = Shapes::ListShape.new(name: 'AwsCloudFrontDistributionOriginItemList')
    AwsCloudFrontDistributionOriginS3OriginConfig = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginS3OriginConfig')
    AwsCloudFrontDistributionOriginSslProtocols = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginSslProtocols')
    AwsCloudFrontDistributionOrigins = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOrigins')
    AwsCloudFrontDistributionViewerCertificate = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionViewerCertificate')
    AwsCloudTrailTrailDetails = Shapes::StructureShape.new(name: 'AwsCloudTrailTrailDetails')
    AwsCloudWatchAlarmDetails = Shapes::StructureShape.new(name: 'AwsCloudWatchAlarmDetails')
    AwsCloudWatchAlarmDimensionsDetails = Shapes::StructureShape.new(name: 'AwsCloudWatchAlarmDimensionsDetails')
    AwsCloudWatchAlarmDimensionsList = Shapes::ListShape.new(name: 'AwsCloudWatchAlarmDimensionsList')
    AwsCodeBuildProjectArtifactsDetails = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectArtifactsDetails')
    AwsCodeBuildProjectArtifactsList = Shapes::ListShape.new(name: 'AwsCodeBuildProjectArtifactsList')
    AwsCodeBuildProjectDetails = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectDetails')
    AwsCodeBuildProjectEnvironment = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectEnvironment')
    AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails')
    AwsCodeBuildProjectEnvironmentEnvironmentVariablesList = Shapes::ListShape.new(name: 'AwsCodeBuildProjectEnvironmentEnvironmentVariablesList')
    AwsCodeBuildProjectEnvironmentRegistryCredential = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectEnvironmentRegistryCredential')
    AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails')
    AwsCodeBuildProjectLogsConfigDetails = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectLogsConfigDetails')
    AwsCodeBuildProjectLogsConfigS3LogsDetails = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectLogsConfigS3LogsDetails')
    AwsCodeBuildProjectSource = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectSource')
    AwsCodeBuildProjectVpcConfig = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectVpcConfig')
    AwsCorsConfiguration = Shapes::StructureShape.new(name: 'AwsCorsConfiguration')
    AwsDynamoDbTableAttributeDefinition = Shapes::StructureShape.new(name: 'AwsDynamoDbTableAttributeDefinition')
    AwsDynamoDbTableAttributeDefinitionList = Shapes::ListShape.new(name: 'AwsDynamoDbTableAttributeDefinitionList')
    AwsDynamoDbTableBillingModeSummary = Shapes::StructureShape.new(name: 'AwsDynamoDbTableBillingModeSummary')
    AwsDynamoDbTableDetails = Shapes::StructureShape.new(name: 'AwsDynamoDbTableDetails')
    AwsDynamoDbTableGlobalSecondaryIndex = Shapes::StructureShape.new(name: 'AwsDynamoDbTableGlobalSecondaryIndex')
    AwsDynamoDbTableGlobalSecondaryIndexList = Shapes::ListShape.new(name: 'AwsDynamoDbTableGlobalSecondaryIndexList')
    AwsDynamoDbTableKeySchema = Shapes::StructureShape.new(name: 'AwsDynamoDbTableKeySchema')
    AwsDynamoDbTableKeySchemaList = Shapes::ListShape.new(name: 'AwsDynamoDbTableKeySchemaList')
    AwsDynamoDbTableLocalSecondaryIndex = Shapes::StructureShape.new(name: 'AwsDynamoDbTableLocalSecondaryIndex')
    AwsDynamoDbTableLocalSecondaryIndexList = Shapes::ListShape.new(name: 'AwsDynamoDbTableLocalSecondaryIndexList')
    AwsDynamoDbTableProjection = Shapes::StructureShape.new(name: 'AwsDynamoDbTableProjection')
    AwsDynamoDbTableProvisionedThroughput = Shapes::StructureShape.new(name: 'AwsDynamoDbTableProvisionedThroughput')
    AwsDynamoDbTableProvisionedThroughputOverride = Shapes::StructureShape.new(name: 'AwsDynamoDbTableProvisionedThroughputOverride')
    AwsDynamoDbTableReplica = Shapes::StructureShape.new(name: 'AwsDynamoDbTableReplica')
    AwsDynamoDbTableReplicaGlobalSecondaryIndex = Shapes::StructureShape.new(name: 'AwsDynamoDbTableReplicaGlobalSecondaryIndex')
    AwsDynamoDbTableReplicaGlobalSecondaryIndexList = Shapes::ListShape.new(name: 'AwsDynamoDbTableReplicaGlobalSecondaryIndexList')
    AwsDynamoDbTableReplicaList = Shapes::ListShape.new(name: 'AwsDynamoDbTableReplicaList')
    AwsDynamoDbTableRestoreSummary = Shapes::StructureShape.new(name: 'AwsDynamoDbTableRestoreSummary')
    AwsDynamoDbTableSseDescription = Shapes::StructureShape.new(name: 'AwsDynamoDbTableSseDescription')
    AwsDynamoDbTableStreamSpecification = Shapes::StructureShape.new(name: 'AwsDynamoDbTableStreamSpecification')
    AwsEc2EipDetails = Shapes::StructureShape.new(name: 'AwsEc2EipDetails')
    AwsEc2InstanceDetails = Shapes::StructureShape.new(name: 'AwsEc2InstanceDetails')
    AwsEc2InstanceMetadataOptions = Shapes::StructureShape.new(name: 'AwsEc2InstanceMetadataOptions')
    AwsEc2InstanceMonitoringDetails = Shapes::StructureShape.new(name: 'AwsEc2InstanceMonitoringDetails')
    AwsEc2InstanceNetworkInterfacesDetails = Shapes::StructureShape.new(name: 'AwsEc2InstanceNetworkInterfacesDetails')
    AwsEc2InstanceNetworkInterfacesList = Shapes::ListShape.new(name: 'AwsEc2InstanceNetworkInterfacesList')
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails')
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails')
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataBlockDeviceMappingSetList')
    AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails')
    AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails')
    AwsEc2LaunchTemplateDataCpuOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataCpuOptionsDetails')
    AwsEc2LaunchTemplateDataCreditSpecificationDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataCreditSpecificationDetails')
    AwsEc2LaunchTemplateDataDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataDetails')
    AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails')
    AwsEc2LaunchTemplateDataElasticGpuSpecificationSetList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataElasticGpuSpecificationSetList')
    AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails')
    AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetList')
    AwsEc2LaunchTemplateDataEnclaveOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataEnclaveOptionsDetails')
    AwsEc2LaunchTemplateDataHibernationOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataHibernationOptionsDetails')
    AwsEc2LaunchTemplateDataIamInstanceProfileDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataIamInstanceProfileDetails')
    AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails')
    AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails')
    AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails')
    AwsEc2LaunchTemplateDataLicenseSetDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataLicenseSetDetails')
    AwsEc2LaunchTemplateDataLicenseSetList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataLicenseSetList')
    AwsEc2LaunchTemplateDataMaintenanceOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataMaintenanceOptionsDetails')
    AwsEc2LaunchTemplateDataMetadataOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataMetadataOptionsDetails')
    AwsEc2LaunchTemplateDataMonitoringDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataMonitoringDetails')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesList')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesList')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesList')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetList')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails')
    AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesList = Shapes::ListShape.new(name: 'AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesList')
    AwsEc2LaunchTemplateDataPlacementDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataPlacementDetails')
    AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails')
    AwsEc2LaunchTemplateDetails = Shapes::StructureShape.new(name: 'AwsEc2LaunchTemplateDetails')
    AwsEc2NetworkAclAssociation = Shapes::StructureShape.new(name: 'AwsEc2NetworkAclAssociation')
    AwsEc2NetworkAclAssociationList = Shapes::ListShape.new(name: 'AwsEc2NetworkAclAssociationList')
    AwsEc2NetworkAclDetails = Shapes::StructureShape.new(name: 'AwsEc2NetworkAclDetails')
    AwsEc2NetworkAclEntry = Shapes::StructureShape.new(name: 'AwsEc2NetworkAclEntry')
    AwsEc2NetworkAclEntryList = Shapes::ListShape.new(name: 'AwsEc2NetworkAclEntryList')
    AwsEc2NetworkInterfaceAttachment = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceAttachment')
    AwsEc2NetworkInterfaceDetails = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceDetails')
    AwsEc2NetworkInterfaceIpV6AddressDetail = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceIpV6AddressDetail')
    AwsEc2NetworkInterfaceIpV6AddressList = Shapes::ListShape.new(name: 'AwsEc2NetworkInterfaceIpV6AddressList')
    AwsEc2NetworkInterfacePrivateIpAddressDetail = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfacePrivateIpAddressDetail')
    AwsEc2NetworkInterfacePrivateIpAddressList = Shapes::ListShape.new(name: 'AwsEc2NetworkInterfacePrivateIpAddressList')
    AwsEc2NetworkInterfaceSecurityGroup = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceSecurityGroup')
    AwsEc2NetworkInterfaceSecurityGroupList = Shapes::ListShape.new(name: 'AwsEc2NetworkInterfaceSecurityGroupList')
    AwsEc2RouteTableDetails = Shapes::StructureShape.new(name: 'AwsEc2RouteTableDetails')
    AwsEc2SecurityGroupDetails = Shapes::StructureShape.new(name: 'AwsEc2SecurityGroupDetails')
    AwsEc2SecurityGroupIpPermission = Shapes::StructureShape.new(name: 'AwsEc2SecurityGroupIpPermission')
    AwsEc2SecurityGroupIpPermissionList = Shapes::ListShape.new(name: 'AwsEc2SecurityGroupIpPermissionList')
    AwsEc2SecurityGroupIpRange = Shapes::StructureShape.new(name: 'AwsEc2SecurityGroupIpRange')
    AwsEc2SecurityGroupIpRangeList = Shapes::ListShape.new(name: 'AwsEc2SecurityGroupIpRangeList')
    AwsEc2SecurityGroupIpv6Range = Shapes::StructureShape.new(name: 'AwsEc2SecurityGroupIpv6Range')
    AwsEc2SecurityGroupIpv6RangeList = Shapes::ListShape.new(name: 'AwsEc2SecurityGroupIpv6RangeList')
    AwsEc2SecurityGroupPrefixListId = Shapes::StructureShape.new(name: 'AwsEc2SecurityGroupPrefixListId')
    AwsEc2SecurityGroupPrefixListIdList = Shapes::ListShape.new(name: 'AwsEc2SecurityGroupPrefixListIdList')
    AwsEc2SecurityGroupUserIdGroupPair = Shapes::StructureShape.new(name: 'AwsEc2SecurityGroupUserIdGroupPair')
    AwsEc2SecurityGroupUserIdGroupPairList = Shapes::ListShape.new(name: 'AwsEc2SecurityGroupUserIdGroupPairList')
    AwsEc2SubnetDetails = Shapes::StructureShape.new(name: 'AwsEc2SubnetDetails')
    AwsEc2TransitGatewayDetails = Shapes::StructureShape.new(name: 'AwsEc2TransitGatewayDetails')
    AwsEc2VolumeAttachment = Shapes::StructureShape.new(name: 'AwsEc2VolumeAttachment')
    AwsEc2VolumeAttachmentList = Shapes::ListShape.new(name: 'AwsEc2VolumeAttachmentList')
    AwsEc2VolumeDetails = Shapes::StructureShape.new(name: 'AwsEc2VolumeDetails')
    AwsEc2VpcDetails = Shapes::StructureShape.new(name: 'AwsEc2VpcDetails')
    AwsEc2VpcEndpointServiceDetails = Shapes::StructureShape.new(name: 'AwsEc2VpcEndpointServiceDetails')
    AwsEc2VpcEndpointServiceServiceTypeDetails = Shapes::StructureShape.new(name: 'AwsEc2VpcEndpointServiceServiceTypeDetails')
    AwsEc2VpcEndpointServiceServiceTypeList = Shapes::ListShape.new(name: 'AwsEc2VpcEndpointServiceServiceTypeList')
    AwsEc2VpcPeeringConnectionDetails = Shapes::StructureShape.new(name: 'AwsEc2VpcPeeringConnectionDetails')
    AwsEc2VpcPeeringConnectionStatusDetails = Shapes::StructureShape.new(name: 'AwsEc2VpcPeeringConnectionStatusDetails')
    AwsEc2VpcPeeringConnectionVpcInfoDetails = Shapes::StructureShape.new(name: 'AwsEc2VpcPeeringConnectionVpcInfoDetails')
    AwsEc2VpnConnectionDetails = Shapes::StructureShape.new(name: 'AwsEc2VpnConnectionDetails')
    AwsEc2VpnConnectionOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2VpnConnectionOptionsDetails')
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails = Shapes::StructureShape.new(name: 'AwsEc2VpnConnectionOptionsTunnelOptionsDetails')
    AwsEc2VpnConnectionOptionsTunnelOptionsList = Shapes::ListShape.new(name: 'AwsEc2VpnConnectionOptionsTunnelOptionsList')
    AwsEc2VpnConnectionRoutesDetails = Shapes::StructureShape.new(name: 'AwsEc2VpnConnectionRoutesDetails')
    AwsEc2VpnConnectionRoutesList = Shapes::ListShape.new(name: 'AwsEc2VpnConnectionRoutesList')
    AwsEc2VpnConnectionVgwTelemetryDetails = Shapes::StructureShape.new(name: 'AwsEc2VpnConnectionVgwTelemetryDetails')
    AwsEc2VpnConnectionVgwTelemetryList = Shapes::ListShape.new(name: 'AwsEc2VpnConnectionVgwTelemetryList')
    AwsEcrContainerImageDetails = Shapes::StructureShape.new(name: 'AwsEcrContainerImageDetails')
    AwsEcrRepositoryDetails = Shapes::StructureShape.new(name: 'AwsEcrRepositoryDetails')
    AwsEcrRepositoryImageScanningConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcrRepositoryImageScanningConfigurationDetails')
    AwsEcrRepositoryLifecyclePolicyDetails = Shapes::StructureShape.new(name: 'AwsEcrRepositoryLifecyclePolicyDetails')
    AwsEcsClusterClusterSettingsDetails = Shapes::StructureShape.new(name: 'AwsEcsClusterClusterSettingsDetails')
    AwsEcsClusterClusterSettingsList = Shapes::ListShape.new(name: 'AwsEcsClusterClusterSettingsList')
    AwsEcsClusterConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsClusterConfigurationDetails')
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsClusterConfigurationExecuteCommandConfigurationDetails')
    AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails')
    AwsEcsClusterDefaultCapacityProviderStrategyDetails = Shapes::StructureShape.new(name: 'AwsEcsClusterDefaultCapacityProviderStrategyDetails')
    AwsEcsClusterDefaultCapacityProviderStrategyList = Shapes::ListShape.new(name: 'AwsEcsClusterDefaultCapacityProviderStrategyList')
    AwsEcsClusterDetails = Shapes::StructureShape.new(name: 'AwsEcsClusterDetails')
    AwsEcsContainerDetails = Shapes::StructureShape.new(name: 'AwsEcsContainerDetails')
    AwsEcsContainerDetailsList = Shapes::ListShape.new(name: 'AwsEcsContainerDetailsList')
    AwsEcsServiceCapacityProviderStrategyDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceCapacityProviderStrategyDetails')
    AwsEcsServiceCapacityProviderStrategyList = Shapes::ListShape.new(name: 'AwsEcsServiceCapacityProviderStrategyList')
    AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails')
    AwsEcsServiceDeploymentConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceDeploymentConfigurationDetails')
    AwsEcsServiceDeploymentControllerDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceDeploymentControllerDetails')
    AwsEcsServiceDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceDetails')
    AwsEcsServiceLoadBalancersDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceLoadBalancersDetails')
    AwsEcsServiceLoadBalancersList = Shapes::ListShape.new(name: 'AwsEcsServiceLoadBalancersList')
    AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails')
    AwsEcsServiceNetworkConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceNetworkConfigurationDetails')
    AwsEcsServicePlacementConstraintsDetails = Shapes::StructureShape.new(name: 'AwsEcsServicePlacementConstraintsDetails')
    AwsEcsServicePlacementConstraintsList = Shapes::ListShape.new(name: 'AwsEcsServicePlacementConstraintsList')
    AwsEcsServicePlacementStrategiesDetails = Shapes::StructureShape.new(name: 'AwsEcsServicePlacementStrategiesDetails')
    AwsEcsServicePlacementStrategiesList = Shapes::ListShape.new(name: 'AwsEcsServicePlacementStrategiesList')
    AwsEcsServiceServiceRegistriesDetails = Shapes::StructureShape.new(name: 'AwsEcsServiceServiceRegistriesDetails')
    AwsEcsServiceServiceRegistriesList = Shapes::ListShape.new(name: 'AwsEcsServiceServiceRegistriesList')
    AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails')
    AwsEcsTaskDefinitionContainerDefinitionsDependsOnList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsDependsOnList')
    AwsEcsTaskDefinitionContainerDefinitionsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails')
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails')
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList')
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList')
    AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList')
    AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails')
    AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails')
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails')
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails')
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails')
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList')
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList')
    AwsEcsTaskDefinitionContainerDefinitionsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsList')
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails')
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList')
    AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsMountPointsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsMountPointsList')
    AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList')
    AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList')
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsSecretsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsSecretsList')
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList')
    AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails')
    AwsEcsTaskDefinitionContainerDefinitionsUlimitsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsUlimitsList')
    AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails')
    AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList')
    AwsEcsTaskDefinitionDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionDetails')
    AwsEcsTaskDefinitionInferenceAcceleratorsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionInferenceAcceleratorsDetails')
    AwsEcsTaskDefinitionInferenceAcceleratorsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionInferenceAcceleratorsList')
    AwsEcsTaskDefinitionPlacementConstraintsDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionPlacementConstraintsDetails')
    AwsEcsTaskDefinitionPlacementConstraintsList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionPlacementConstraintsList')
    AwsEcsTaskDefinitionProxyConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionProxyConfigurationDetails')
    AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails')
    AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList')
    AwsEcsTaskDefinitionVolumesDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionVolumesDetails')
    AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails')
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails')
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails')
    AwsEcsTaskDefinitionVolumesHostDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDefinitionVolumesHostDetails')
    AwsEcsTaskDefinitionVolumesList = Shapes::ListShape.new(name: 'AwsEcsTaskDefinitionVolumesList')
    AwsEcsTaskDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskDetails')
    AwsEcsTaskVolumeDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskVolumeDetails')
    AwsEcsTaskVolumeDetailsList = Shapes::ListShape.new(name: 'AwsEcsTaskVolumeDetailsList')
    AwsEcsTaskVolumeHostDetails = Shapes::StructureShape.new(name: 'AwsEcsTaskVolumeHostDetails')
    AwsEfsAccessPointDetails = Shapes::StructureShape.new(name: 'AwsEfsAccessPointDetails')
    AwsEfsAccessPointPosixUserDetails = Shapes::StructureShape.new(name: 'AwsEfsAccessPointPosixUserDetails')
    AwsEfsAccessPointRootDirectoryCreationInfoDetails = Shapes::StructureShape.new(name: 'AwsEfsAccessPointRootDirectoryCreationInfoDetails')
    AwsEfsAccessPointRootDirectoryDetails = Shapes::StructureShape.new(name: 'AwsEfsAccessPointRootDirectoryDetails')
    AwsEksClusterDetails = Shapes::StructureShape.new(name: 'AwsEksClusterDetails')
    AwsEksClusterLoggingClusterLoggingDetails = Shapes::StructureShape.new(name: 'AwsEksClusterLoggingClusterLoggingDetails')
    AwsEksClusterLoggingClusterLoggingList = Shapes::ListShape.new(name: 'AwsEksClusterLoggingClusterLoggingList')
    AwsEksClusterLoggingDetails = Shapes::StructureShape.new(name: 'AwsEksClusterLoggingDetails')
    AwsEksClusterResourcesVpcConfigDetails = Shapes::StructureShape.new(name: 'AwsEksClusterResourcesVpcConfigDetails')
    AwsElasticBeanstalkEnvironmentDetails = Shapes::StructureShape.new(name: 'AwsElasticBeanstalkEnvironmentDetails')
    AwsElasticBeanstalkEnvironmentEnvironmentLink = Shapes::StructureShape.new(name: 'AwsElasticBeanstalkEnvironmentEnvironmentLink')
    AwsElasticBeanstalkEnvironmentEnvironmentLinks = Shapes::ListShape.new(name: 'AwsElasticBeanstalkEnvironmentEnvironmentLinks')
    AwsElasticBeanstalkEnvironmentOptionSetting = Shapes::StructureShape.new(name: 'AwsElasticBeanstalkEnvironmentOptionSetting')
    AwsElasticBeanstalkEnvironmentOptionSettings = Shapes::ListShape.new(name: 'AwsElasticBeanstalkEnvironmentOptionSettings')
    AwsElasticBeanstalkEnvironmentTier = Shapes::StructureShape.new(name: 'AwsElasticBeanstalkEnvironmentTier')
    AwsElasticsearchDomainDetails = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainDetails')
    AwsElasticsearchDomainDomainEndpointOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainDomainEndpointOptions')
    AwsElasticsearchDomainElasticsearchClusterConfigDetails = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainElasticsearchClusterConfigDetails')
    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails')
    AwsElasticsearchDomainEncryptionAtRestOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainEncryptionAtRestOptions')
    AwsElasticsearchDomainLogPublishingOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainLogPublishingOptions')
    AwsElasticsearchDomainLogPublishingOptionsLogConfig = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainLogPublishingOptionsLogConfig')
    AwsElasticsearchDomainNodeToNodeEncryptionOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainNodeToNodeEncryptionOptions')
    AwsElasticsearchDomainServiceSoftwareOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainServiceSoftwareOptions')
    AwsElasticsearchDomainVPCOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainVPCOptions')
    AwsElbAppCookieStickinessPolicies = Shapes::ListShape.new(name: 'AwsElbAppCookieStickinessPolicies')
    AwsElbAppCookieStickinessPolicy = Shapes::StructureShape.new(name: 'AwsElbAppCookieStickinessPolicy')
    AwsElbLbCookieStickinessPolicies = Shapes::ListShape.new(name: 'AwsElbLbCookieStickinessPolicies')
    AwsElbLbCookieStickinessPolicy = Shapes::StructureShape.new(name: 'AwsElbLbCookieStickinessPolicy')
    AwsElbLoadBalancerAccessLog = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerAccessLog')
    AwsElbLoadBalancerAdditionalAttribute = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerAdditionalAttribute')
    AwsElbLoadBalancerAdditionalAttributeList = Shapes::ListShape.new(name: 'AwsElbLoadBalancerAdditionalAttributeList')
    AwsElbLoadBalancerAttributes = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerAttributes')
    AwsElbLoadBalancerBackendServerDescription = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerBackendServerDescription')
    AwsElbLoadBalancerBackendServerDescriptions = Shapes::ListShape.new(name: 'AwsElbLoadBalancerBackendServerDescriptions')
    AwsElbLoadBalancerConnectionDraining = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerConnectionDraining')
    AwsElbLoadBalancerConnectionSettings = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerConnectionSettings')
    AwsElbLoadBalancerCrossZoneLoadBalancing = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerCrossZoneLoadBalancing')
    AwsElbLoadBalancerDetails = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerDetails')
    AwsElbLoadBalancerHealthCheck = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerHealthCheck')
    AwsElbLoadBalancerInstance = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerInstance')
    AwsElbLoadBalancerInstances = Shapes::ListShape.new(name: 'AwsElbLoadBalancerInstances')
    AwsElbLoadBalancerListener = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerListener')
    AwsElbLoadBalancerListenerDescription = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerListenerDescription')
    AwsElbLoadBalancerListenerDescriptions = Shapes::ListShape.new(name: 'AwsElbLoadBalancerListenerDescriptions')
    AwsElbLoadBalancerPolicies = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerPolicies')
    AwsElbLoadBalancerSourceSecurityGroup = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerSourceSecurityGroup')
    AwsElbv2LoadBalancerAttribute = Shapes::StructureShape.new(name: 'AwsElbv2LoadBalancerAttribute')
    AwsElbv2LoadBalancerAttributes = Shapes::ListShape.new(name: 'AwsElbv2LoadBalancerAttributes')
    AwsElbv2LoadBalancerDetails = Shapes::StructureShape.new(name: 'AwsElbv2LoadBalancerDetails')
    AwsEventSchemasRegistryDetails = Shapes::StructureShape.new(name: 'AwsEventSchemasRegistryDetails')
    AwsGuardDutyDetectorDataSourcesCloudTrailDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesCloudTrailDetails')
    AwsGuardDutyDetectorDataSourcesDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesDetails')
    AwsGuardDutyDetectorDataSourcesDnsLogsDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesDnsLogsDetails')
    AwsGuardDutyDetectorDataSourcesFlowLogsDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesFlowLogsDetails')
    AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails')
    AwsGuardDutyDetectorDataSourcesKubernetesDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesKubernetesDetails')
    AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails')
    AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails')
    AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails')
    AwsGuardDutyDetectorDataSourcesS3LogsDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDataSourcesS3LogsDetails')
    AwsGuardDutyDetectorDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorDetails')
    AwsGuardDutyDetectorFeaturesDetails = Shapes::StructureShape.new(name: 'AwsGuardDutyDetectorFeaturesDetails')
    AwsGuardDutyDetectorFeaturesList = Shapes::ListShape.new(name: 'AwsGuardDutyDetectorFeaturesList')
    AwsIamAccessKeyDetails = Shapes::StructureShape.new(name: 'AwsIamAccessKeyDetails')
    AwsIamAccessKeySessionContext = Shapes::StructureShape.new(name: 'AwsIamAccessKeySessionContext')
    AwsIamAccessKeySessionContextAttributes = Shapes::StructureShape.new(name: 'AwsIamAccessKeySessionContextAttributes')
    AwsIamAccessKeySessionContextSessionIssuer = Shapes::StructureShape.new(name: 'AwsIamAccessKeySessionContextSessionIssuer')
    AwsIamAccessKeyStatus = Shapes::StringShape.new(name: 'AwsIamAccessKeyStatus')
    AwsIamAttachedManagedPolicy = Shapes::StructureShape.new(name: 'AwsIamAttachedManagedPolicy')
    AwsIamAttachedManagedPolicyList = Shapes::ListShape.new(name: 'AwsIamAttachedManagedPolicyList')
    AwsIamGroupDetails = Shapes::StructureShape.new(name: 'AwsIamGroupDetails')
    AwsIamGroupPolicy = Shapes::StructureShape.new(name: 'AwsIamGroupPolicy')
    AwsIamGroupPolicyList = Shapes::ListShape.new(name: 'AwsIamGroupPolicyList')
    AwsIamInstanceProfile = Shapes::StructureShape.new(name: 'AwsIamInstanceProfile')
    AwsIamInstanceProfileList = Shapes::ListShape.new(name: 'AwsIamInstanceProfileList')
    AwsIamInstanceProfileRole = Shapes::StructureShape.new(name: 'AwsIamInstanceProfileRole')
    AwsIamInstanceProfileRoles = Shapes::ListShape.new(name: 'AwsIamInstanceProfileRoles')
    AwsIamPermissionsBoundary = Shapes::StructureShape.new(name: 'AwsIamPermissionsBoundary')
    AwsIamPolicyDetails = Shapes::StructureShape.new(name: 'AwsIamPolicyDetails')
    AwsIamPolicyVersion = Shapes::StructureShape.new(name: 'AwsIamPolicyVersion')
    AwsIamPolicyVersionList = Shapes::ListShape.new(name: 'AwsIamPolicyVersionList')
    AwsIamRoleAssumeRolePolicyDocument = Shapes::StringShape.new(name: 'AwsIamRoleAssumeRolePolicyDocument')
    AwsIamRoleDetails = Shapes::StructureShape.new(name: 'AwsIamRoleDetails')
    AwsIamRolePolicy = Shapes::StructureShape.new(name: 'AwsIamRolePolicy')
    AwsIamRolePolicyList = Shapes::ListShape.new(name: 'AwsIamRolePolicyList')
    AwsIamUserDetails = Shapes::StructureShape.new(name: 'AwsIamUserDetails')
    AwsIamUserPolicy = Shapes::StructureShape.new(name: 'AwsIamUserPolicy')
    AwsIamUserPolicyList = Shapes::ListShape.new(name: 'AwsIamUserPolicyList')
    AwsKinesisStreamDetails = Shapes::StructureShape.new(name: 'AwsKinesisStreamDetails')
    AwsKinesisStreamStreamEncryptionDetails = Shapes::StructureShape.new(name: 'AwsKinesisStreamStreamEncryptionDetails')
    AwsKmsKeyDetails = Shapes::StructureShape.new(name: 'AwsKmsKeyDetails')
    AwsLambdaFunctionCode = Shapes::StructureShape.new(name: 'AwsLambdaFunctionCode')
    AwsLambdaFunctionDeadLetterConfig = Shapes::StructureShape.new(name: 'AwsLambdaFunctionDeadLetterConfig')
    AwsLambdaFunctionDetails = Shapes::StructureShape.new(name: 'AwsLambdaFunctionDetails')
    AwsLambdaFunctionEnvironment = Shapes::StructureShape.new(name: 'AwsLambdaFunctionEnvironment')
    AwsLambdaFunctionEnvironmentError = Shapes::StructureShape.new(name: 'AwsLambdaFunctionEnvironmentError')
    AwsLambdaFunctionLayer = Shapes::StructureShape.new(name: 'AwsLambdaFunctionLayer')
    AwsLambdaFunctionLayerList = Shapes::ListShape.new(name: 'AwsLambdaFunctionLayerList')
    AwsLambdaFunctionTracingConfig = Shapes::StructureShape.new(name: 'AwsLambdaFunctionTracingConfig')
    AwsLambdaFunctionVpcConfig = Shapes::StructureShape.new(name: 'AwsLambdaFunctionVpcConfig')
    AwsLambdaLayerVersionDetails = Shapes::StructureShape.new(name: 'AwsLambdaLayerVersionDetails')
    AwsLambdaLayerVersionNumber = Shapes::IntegerShape.new(name: 'AwsLambdaLayerVersionNumber')
    AwsMountPoint = Shapes::StructureShape.new(name: 'AwsMountPoint')
    AwsMountPointList = Shapes::ListShape.new(name: 'AwsMountPointList')
    AwsNetworkFirewallFirewallDetails = Shapes::StructureShape.new(name: 'AwsNetworkFirewallFirewallDetails')
    AwsNetworkFirewallFirewallPolicyDetails = Shapes::StructureShape.new(name: 'AwsNetworkFirewallFirewallPolicyDetails')
    AwsNetworkFirewallFirewallSubnetMappingsDetails = Shapes::StructureShape.new(name: 'AwsNetworkFirewallFirewallSubnetMappingsDetails')
    AwsNetworkFirewallFirewallSubnetMappingsList = Shapes::ListShape.new(name: 'AwsNetworkFirewallFirewallSubnetMappingsList')
    AwsNetworkFirewallRuleGroupDetails = Shapes::StructureShape.new(name: 'AwsNetworkFirewallRuleGroupDetails')
    AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails')
    AwsOpenSearchServiceDomainClusterConfigDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainClusterConfigDetails')
    AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails')
    AwsOpenSearchServiceDomainDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainDetails')
    AwsOpenSearchServiceDomainDomainEndpointOptionsDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainDomainEndpointOptionsDetails')
    AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails')
    AwsOpenSearchServiceDomainLogPublishingOption = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainLogPublishingOption')
    AwsOpenSearchServiceDomainLogPublishingOptionsDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainLogPublishingOptionsDetails')
    AwsOpenSearchServiceDomainMasterUserOptionsDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainMasterUserOptionsDetails')
    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails')
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails')
    AwsOpenSearchServiceDomainVpcOptionsDetails = Shapes::StructureShape.new(name: 'AwsOpenSearchServiceDomainVpcOptionsDetails')
    AwsRdsDbClusterAssociatedRole = Shapes::StructureShape.new(name: 'AwsRdsDbClusterAssociatedRole')
    AwsRdsDbClusterAssociatedRoles = Shapes::ListShape.new(name: 'AwsRdsDbClusterAssociatedRoles')
    AwsRdsDbClusterDetails = Shapes::StructureShape.new(name: 'AwsRdsDbClusterDetails')
    AwsRdsDbClusterMember = Shapes::StructureShape.new(name: 'AwsRdsDbClusterMember')
    AwsRdsDbClusterMembers = Shapes::ListShape.new(name: 'AwsRdsDbClusterMembers')
    AwsRdsDbClusterOptionGroupMembership = Shapes::StructureShape.new(name: 'AwsRdsDbClusterOptionGroupMembership')
    AwsRdsDbClusterOptionGroupMemberships = Shapes::ListShape.new(name: 'AwsRdsDbClusterOptionGroupMemberships')
    AwsRdsDbClusterSnapshotDetails = Shapes::StructureShape.new(name: 'AwsRdsDbClusterSnapshotDetails')
    AwsRdsDbDomainMembership = Shapes::StructureShape.new(name: 'AwsRdsDbDomainMembership')
    AwsRdsDbDomainMemberships = Shapes::ListShape.new(name: 'AwsRdsDbDomainMemberships')
    AwsRdsDbInstanceAssociatedRole = Shapes::StructureShape.new(name: 'AwsRdsDbInstanceAssociatedRole')
    AwsRdsDbInstanceAssociatedRoles = Shapes::ListShape.new(name: 'AwsRdsDbInstanceAssociatedRoles')
    AwsRdsDbInstanceDetails = Shapes::StructureShape.new(name: 'AwsRdsDbInstanceDetails')
    AwsRdsDbInstanceEndpoint = Shapes::StructureShape.new(name: 'AwsRdsDbInstanceEndpoint')
    AwsRdsDbInstanceVpcSecurityGroup = Shapes::StructureShape.new(name: 'AwsRdsDbInstanceVpcSecurityGroup')
    AwsRdsDbInstanceVpcSecurityGroups = Shapes::ListShape.new(name: 'AwsRdsDbInstanceVpcSecurityGroups')
    AwsRdsDbOptionGroupMembership = Shapes::StructureShape.new(name: 'AwsRdsDbOptionGroupMembership')
    AwsRdsDbOptionGroupMemberships = Shapes::ListShape.new(name: 'AwsRdsDbOptionGroupMemberships')
    AwsRdsDbParameterGroup = Shapes::StructureShape.new(name: 'AwsRdsDbParameterGroup')
    AwsRdsDbParameterGroups = Shapes::ListShape.new(name: 'AwsRdsDbParameterGroups')
    AwsRdsDbPendingModifiedValues = Shapes::StructureShape.new(name: 'AwsRdsDbPendingModifiedValues')
    AwsRdsDbProcessorFeature = Shapes::StructureShape.new(name: 'AwsRdsDbProcessorFeature')
    AwsRdsDbProcessorFeatures = Shapes::ListShape.new(name: 'AwsRdsDbProcessorFeatures')
    AwsRdsDbSecurityGroupDetails = Shapes::StructureShape.new(name: 'AwsRdsDbSecurityGroupDetails')
    AwsRdsDbSecurityGroupEc2SecurityGroup = Shapes::StructureShape.new(name: 'AwsRdsDbSecurityGroupEc2SecurityGroup')
    AwsRdsDbSecurityGroupEc2SecurityGroups = Shapes::ListShape.new(name: 'AwsRdsDbSecurityGroupEc2SecurityGroups')
    AwsRdsDbSecurityGroupIpRange = Shapes::StructureShape.new(name: 'AwsRdsDbSecurityGroupIpRange')
    AwsRdsDbSecurityGroupIpRanges = Shapes::ListShape.new(name: 'AwsRdsDbSecurityGroupIpRanges')
    AwsRdsDbSnapshotDetails = Shapes::StructureShape.new(name: 'AwsRdsDbSnapshotDetails')
    AwsRdsDbStatusInfo = Shapes::StructureShape.new(name: 'AwsRdsDbStatusInfo')
    AwsRdsDbStatusInfos = Shapes::ListShape.new(name: 'AwsRdsDbStatusInfos')
    AwsRdsDbSubnetGroup = Shapes::StructureShape.new(name: 'AwsRdsDbSubnetGroup')
    AwsRdsDbSubnetGroupSubnet = Shapes::StructureShape.new(name: 'AwsRdsDbSubnetGroupSubnet')
    AwsRdsDbSubnetGroupSubnetAvailabilityZone = Shapes::StructureShape.new(name: 'AwsRdsDbSubnetGroupSubnetAvailabilityZone')
    AwsRdsDbSubnetGroupSubnets = Shapes::ListShape.new(name: 'AwsRdsDbSubnetGroupSubnets')
    AwsRdsEventSubscriptionDetails = Shapes::StructureShape.new(name: 'AwsRdsEventSubscriptionDetails')
    AwsRdsPendingCloudWatchLogsExports = Shapes::StructureShape.new(name: 'AwsRdsPendingCloudWatchLogsExports')
    AwsRedshiftClusterClusterNode = Shapes::StructureShape.new(name: 'AwsRedshiftClusterClusterNode')
    AwsRedshiftClusterClusterNodes = Shapes::ListShape.new(name: 'AwsRedshiftClusterClusterNodes')
    AwsRedshiftClusterClusterParameterGroup = Shapes::StructureShape.new(name: 'AwsRedshiftClusterClusterParameterGroup')
    AwsRedshiftClusterClusterParameterGroups = Shapes::ListShape.new(name: 'AwsRedshiftClusterClusterParameterGroups')
    AwsRedshiftClusterClusterParameterStatus = Shapes::StructureShape.new(name: 'AwsRedshiftClusterClusterParameterStatus')
    AwsRedshiftClusterClusterParameterStatusList = Shapes::ListShape.new(name: 'AwsRedshiftClusterClusterParameterStatusList')
    AwsRedshiftClusterClusterSecurityGroup = Shapes::StructureShape.new(name: 'AwsRedshiftClusterClusterSecurityGroup')
    AwsRedshiftClusterClusterSecurityGroups = Shapes::ListShape.new(name: 'AwsRedshiftClusterClusterSecurityGroups')
    AwsRedshiftClusterClusterSnapshotCopyStatus = Shapes::StructureShape.new(name: 'AwsRedshiftClusterClusterSnapshotCopyStatus')
    AwsRedshiftClusterDeferredMaintenanceWindow = Shapes::StructureShape.new(name: 'AwsRedshiftClusterDeferredMaintenanceWindow')
    AwsRedshiftClusterDeferredMaintenanceWindows = Shapes::ListShape.new(name: 'AwsRedshiftClusterDeferredMaintenanceWindows')
    AwsRedshiftClusterDetails = Shapes::StructureShape.new(name: 'AwsRedshiftClusterDetails')
    AwsRedshiftClusterElasticIpStatus = Shapes::StructureShape.new(name: 'AwsRedshiftClusterElasticIpStatus')
    AwsRedshiftClusterEndpoint = Shapes::StructureShape.new(name: 'AwsRedshiftClusterEndpoint')
    AwsRedshiftClusterHsmStatus = Shapes::StructureShape.new(name: 'AwsRedshiftClusterHsmStatus')
    AwsRedshiftClusterIamRole = Shapes::StructureShape.new(name: 'AwsRedshiftClusterIamRole')
    AwsRedshiftClusterIamRoles = Shapes::ListShape.new(name: 'AwsRedshiftClusterIamRoles')
    AwsRedshiftClusterLoggingStatus = Shapes::StructureShape.new(name: 'AwsRedshiftClusterLoggingStatus')
    AwsRedshiftClusterPendingModifiedValues = Shapes::StructureShape.new(name: 'AwsRedshiftClusterPendingModifiedValues')
    AwsRedshiftClusterResizeInfo = Shapes::StructureShape.new(name: 'AwsRedshiftClusterResizeInfo')
    AwsRedshiftClusterRestoreStatus = Shapes::StructureShape.new(name: 'AwsRedshiftClusterRestoreStatus')
    AwsRedshiftClusterVpcSecurityGroup = Shapes::StructureShape.new(name: 'AwsRedshiftClusterVpcSecurityGroup')
    AwsRedshiftClusterVpcSecurityGroups = Shapes::ListShape.new(name: 'AwsRedshiftClusterVpcSecurityGroups')
    AwsS3AccountPublicAccessBlockDetails = Shapes::StructureShape.new(name: 'AwsS3AccountPublicAccessBlockDetails')
    AwsS3BucketBucketLifecycleConfigurationDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList = Shapes::ListShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList')
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesList = Shapes::ListShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesList')
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList = Shapes::ListShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList')
    AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails = Shapes::StructureShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails')
    AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList = Shapes::ListShape.new(name: 'AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList')
    AwsS3BucketBucketVersioningConfiguration = Shapes::StructureShape.new(name: 'AwsS3BucketBucketVersioningConfiguration')
    AwsS3BucketDetails = Shapes::StructureShape.new(name: 'AwsS3BucketDetails')
    AwsS3BucketLoggingConfiguration = Shapes::StructureShape.new(name: 'AwsS3BucketLoggingConfiguration')
    AwsS3BucketNotificationConfiguration = Shapes::StructureShape.new(name: 'AwsS3BucketNotificationConfiguration')
    AwsS3BucketNotificationConfigurationDetail = Shapes::StructureShape.new(name: 'AwsS3BucketNotificationConfigurationDetail')
    AwsS3BucketNotificationConfigurationDetails = Shapes::ListShape.new(name: 'AwsS3BucketNotificationConfigurationDetails')
    AwsS3BucketNotificationConfigurationEvents = Shapes::ListShape.new(name: 'AwsS3BucketNotificationConfigurationEvents')
    AwsS3BucketNotificationConfigurationFilter = Shapes::StructureShape.new(name: 'AwsS3BucketNotificationConfigurationFilter')
    AwsS3BucketNotificationConfigurationS3KeyFilter = Shapes::StructureShape.new(name: 'AwsS3BucketNotificationConfigurationS3KeyFilter')
    AwsS3BucketNotificationConfigurationS3KeyFilterRule = Shapes::StructureShape.new(name: 'AwsS3BucketNotificationConfigurationS3KeyFilterRule')
    AwsS3BucketNotificationConfigurationS3KeyFilterRuleName = Shapes::StringShape.new(name: 'AwsS3BucketNotificationConfigurationS3KeyFilterRuleName')
    AwsS3BucketNotificationConfigurationS3KeyFilterRules = Shapes::ListShape.new(name: 'AwsS3BucketNotificationConfigurationS3KeyFilterRules')
    AwsS3BucketObjectLockConfiguration = Shapes::StructureShape.new(name: 'AwsS3BucketObjectLockConfiguration')
    AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails = Shapes::StructureShape.new(name: 'AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails')
    AwsS3BucketObjectLockConfigurationRuleDetails = Shapes::StructureShape.new(name: 'AwsS3BucketObjectLockConfigurationRuleDetails')
    AwsS3BucketServerSideEncryptionByDefault = Shapes::StructureShape.new(name: 'AwsS3BucketServerSideEncryptionByDefault')
    AwsS3BucketServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'AwsS3BucketServerSideEncryptionConfiguration')
    AwsS3BucketServerSideEncryptionRule = Shapes::StructureShape.new(name: 'AwsS3BucketServerSideEncryptionRule')
    AwsS3BucketServerSideEncryptionRules = Shapes::ListShape.new(name: 'AwsS3BucketServerSideEncryptionRules')
    AwsS3BucketWebsiteConfiguration = Shapes::StructureShape.new(name: 'AwsS3BucketWebsiteConfiguration')
    AwsS3BucketWebsiteConfigurationRedirectTo = Shapes::StructureShape.new(name: 'AwsS3BucketWebsiteConfigurationRedirectTo')
    AwsS3BucketWebsiteConfigurationRoutingRule = Shapes::StructureShape.new(name: 'AwsS3BucketWebsiteConfigurationRoutingRule')
    AwsS3BucketWebsiteConfigurationRoutingRuleCondition = Shapes::StructureShape.new(name: 'AwsS3BucketWebsiteConfigurationRoutingRuleCondition')
    AwsS3BucketWebsiteConfigurationRoutingRuleRedirect = Shapes::StructureShape.new(name: 'AwsS3BucketWebsiteConfigurationRoutingRuleRedirect')
    AwsS3BucketWebsiteConfigurationRoutingRules = Shapes::ListShape.new(name: 'AwsS3BucketWebsiteConfigurationRoutingRules')
    AwsS3ObjectDetails = Shapes::StructureShape.new(name: 'AwsS3ObjectDetails')
    AwsSageMakerNotebookInstanceDetails = Shapes::StructureShape.new(name: 'AwsSageMakerNotebookInstanceDetails')
    AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails = Shapes::StructureShape.new(name: 'AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails')
    AwsSecretsManagerSecretDetails = Shapes::StructureShape.new(name: 'AwsSecretsManagerSecretDetails')
    AwsSecretsManagerSecretRotationRules = Shapes::StructureShape.new(name: 'AwsSecretsManagerSecretRotationRules')
    AwsSecurityFinding = Shapes::StructureShape.new(name: 'AwsSecurityFinding')
    AwsSecurityFindingFilters = Shapes::StructureShape.new(name: 'AwsSecurityFindingFilters')
    AwsSecurityFindingIdentifier = Shapes::StructureShape.new(name: 'AwsSecurityFindingIdentifier')
    AwsSecurityFindingIdentifierList = Shapes::ListShape.new(name: 'AwsSecurityFindingIdentifierList')
    AwsSecurityFindingList = Shapes::ListShape.new(name: 'AwsSecurityFindingList')
    AwsSnsTopicDetails = Shapes::StructureShape.new(name: 'AwsSnsTopicDetails')
    AwsSnsTopicSubscription = Shapes::StructureShape.new(name: 'AwsSnsTopicSubscription')
    AwsSnsTopicSubscriptionList = Shapes::ListShape.new(name: 'AwsSnsTopicSubscriptionList')
    AwsSqsQueueDetails = Shapes::StructureShape.new(name: 'AwsSqsQueueDetails')
    AwsSsmComplianceSummary = Shapes::StructureShape.new(name: 'AwsSsmComplianceSummary')
    AwsSsmPatch = Shapes::StructureShape.new(name: 'AwsSsmPatch')
    AwsSsmPatchComplianceDetails = Shapes::StructureShape.new(name: 'AwsSsmPatchComplianceDetails')
    AwsStepFunctionStateMachineDetails = Shapes::StructureShape.new(name: 'AwsStepFunctionStateMachineDetails')
    AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails = Shapes::StructureShape.new(name: 'AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails')
    AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails = Shapes::StructureShape.new(name: 'AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails')
    AwsStepFunctionStateMachineLoggingConfigurationDestinationsList = Shapes::ListShape.new(name: 'AwsStepFunctionStateMachineLoggingConfigurationDestinationsList')
    AwsStepFunctionStateMachineLoggingConfigurationDetails = Shapes::StructureShape.new(name: 'AwsStepFunctionStateMachineLoggingConfigurationDetails')
    AwsStepFunctionStateMachineTracingConfigurationDetails = Shapes::StructureShape.new(name: 'AwsStepFunctionStateMachineTracingConfigurationDetails')
    AwsWafRateBasedRuleDetails = Shapes::StructureShape.new(name: 'AwsWafRateBasedRuleDetails')
    AwsWafRateBasedRuleMatchPredicate = Shapes::StructureShape.new(name: 'AwsWafRateBasedRuleMatchPredicate')
    AwsWafRateBasedRuleMatchPredicateList = Shapes::ListShape.new(name: 'AwsWafRateBasedRuleMatchPredicateList')
    AwsWafRegionalRateBasedRuleDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalRateBasedRuleDetails')
    AwsWafRegionalRateBasedRuleMatchPredicate = Shapes::StructureShape.new(name: 'AwsWafRegionalRateBasedRuleMatchPredicate')
    AwsWafRegionalRateBasedRuleMatchPredicateList = Shapes::ListShape.new(name: 'AwsWafRegionalRateBasedRuleMatchPredicateList')
    AwsWafRegionalRuleDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalRuleDetails')
    AwsWafRegionalRuleGroupDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalRuleGroupDetails')
    AwsWafRegionalRuleGroupRulesActionDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalRuleGroupRulesActionDetails')
    AwsWafRegionalRuleGroupRulesDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalRuleGroupRulesDetails')
    AwsWafRegionalRuleGroupRulesList = Shapes::ListShape.new(name: 'AwsWafRegionalRuleGroupRulesList')
    AwsWafRegionalRulePredicateList = Shapes::ListShape.new(name: 'AwsWafRegionalRulePredicateList')
    AwsWafRegionalRulePredicateListDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalRulePredicateListDetails')
    AwsWafRegionalWebAclDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalWebAclDetails')
    AwsWafRegionalWebAclRulesList = Shapes::ListShape.new(name: 'AwsWafRegionalWebAclRulesList')
    AwsWafRegionalWebAclRulesListActionDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalWebAclRulesListActionDetails')
    AwsWafRegionalWebAclRulesListDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalWebAclRulesListDetails')
    AwsWafRegionalWebAclRulesListOverrideActionDetails = Shapes::StructureShape.new(name: 'AwsWafRegionalWebAclRulesListOverrideActionDetails')
    AwsWafRuleDetails = Shapes::StructureShape.new(name: 'AwsWafRuleDetails')
    AwsWafRuleGroupDetails = Shapes::StructureShape.new(name: 'AwsWafRuleGroupDetails')
    AwsWafRuleGroupRulesActionDetails = Shapes::StructureShape.new(name: 'AwsWafRuleGroupRulesActionDetails')
    AwsWafRuleGroupRulesDetails = Shapes::StructureShape.new(name: 'AwsWafRuleGroupRulesDetails')
    AwsWafRuleGroupRulesList = Shapes::ListShape.new(name: 'AwsWafRuleGroupRulesList')
    AwsWafRulePredicateList = Shapes::ListShape.new(name: 'AwsWafRulePredicateList')
    AwsWafRulePredicateListDetails = Shapes::StructureShape.new(name: 'AwsWafRulePredicateListDetails')
    AwsWafWebAclDetails = Shapes::StructureShape.new(name: 'AwsWafWebAclDetails')
    AwsWafWebAclRule = Shapes::StructureShape.new(name: 'AwsWafWebAclRule')
    AwsWafWebAclRuleList = Shapes::ListShape.new(name: 'AwsWafWebAclRuleList')
    AwsWafv2ActionAllowDetails = Shapes::StructureShape.new(name: 'AwsWafv2ActionAllowDetails')
    AwsWafv2ActionBlockDetails = Shapes::StructureShape.new(name: 'AwsWafv2ActionBlockDetails')
    AwsWafv2CustomHttpHeader = Shapes::StructureShape.new(name: 'AwsWafv2CustomHttpHeader')
    AwsWafv2CustomRequestHandlingDetails = Shapes::StructureShape.new(name: 'AwsWafv2CustomRequestHandlingDetails')
    AwsWafv2CustomResponseDetails = Shapes::StructureShape.new(name: 'AwsWafv2CustomResponseDetails')
    AwsWafv2InsertHeadersList = Shapes::ListShape.new(name: 'AwsWafv2InsertHeadersList')
    AwsWafv2RuleGroupDetails = Shapes::StructureShape.new(name: 'AwsWafv2RuleGroupDetails')
    AwsWafv2RulesActionCaptchaDetails = Shapes::StructureShape.new(name: 'AwsWafv2RulesActionCaptchaDetails')
    AwsWafv2RulesActionCountDetails = Shapes::StructureShape.new(name: 'AwsWafv2RulesActionCountDetails')
    AwsWafv2RulesActionDetails = Shapes::StructureShape.new(name: 'AwsWafv2RulesActionDetails')
    AwsWafv2RulesDetails = Shapes::StructureShape.new(name: 'AwsWafv2RulesDetails')
    AwsWafv2RulesList = Shapes::ListShape.new(name: 'AwsWafv2RulesList')
    AwsWafv2VisibilityConfigDetails = Shapes::StructureShape.new(name: 'AwsWafv2VisibilityConfigDetails')
    AwsWafv2WebAclActionDetails = Shapes::StructureShape.new(name: 'AwsWafv2WebAclActionDetails')
    AwsWafv2WebAclCaptchaConfigDetails = Shapes::StructureShape.new(name: 'AwsWafv2WebAclCaptchaConfigDetails')
    AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails = Shapes::StructureShape.new(name: 'AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails')
    AwsWafv2WebAclDetails = Shapes::StructureShape.new(name: 'AwsWafv2WebAclDetails')
    AwsXrayEncryptionConfigDetails = Shapes::StructureShape.new(name: 'AwsXrayEncryptionConfigDetails')
    BatchDeleteAutomationRulesRequest = Shapes::StructureShape.new(name: 'BatchDeleteAutomationRulesRequest')
    BatchDeleteAutomationRulesResponse = Shapes::StructureShape.new(name: 'BatchDeleteAutomationRulesResponse')
    BatchDisableStandardsRequest = Shapes::StructureShape.new(name: 'BatchDisableStandardsRequest')
    BatchDisableStandardsResponse = Shapes::StructureShape.new(name: 'BatchDisableStandardsResponse')
    BatchEnableStandardsRequest = Shapes::StructureShape.new(name: 'BatchEnableStandardsRequest')
    BatchEnableStandardsResponse = Shapes::StructureShape.new(name: 'BatchEnableStandardsResponse')
    BatchGetAutomationRulesRequest = Shapes::StructureShape.new(name: 'BatchGetAutomationRulesRequest')
    BatchGetAutomationRulesResponse = Shapes::StructureShape.new(name: 'BatchGetAutomationRulesResponse')
    BatchGetSecurityControlsRequest = Shapes::StructureShape.new(name: 'BatchGetSecurityControlsRequest')
    BatchGetSecurityControlsResponse = Shapes::StructureShape.new(name: 'BatchGetSecurityControlsResponse')
    BatchGetStandardsControlAssociationsRequest = Shapes::StructureShape.new(name: 'BatchGetStandardsControlAssociationsRequest')
    BatchGetStandardsControlAssociationsResponse = Shapes::StructureShape.new(name: 'BatchGetStandardsControlAssociationsResponse')
    BatchImportFindingsRequest = Shapes::StructureShape.new(name: 'BatchImportFindingsRequest')
    BatchImportFindingsRequestFindingList = Shapes::ListShape.new(name: 'BatchImportFindingsRequestFindingList')
    BatchImportFindingsResponse = Shapes::StructureShape.new(name: 'BatchImportFindingsResponse')
    BatchUpdateAutomationRulesRequest = Shapes::StructureShape.new(name: 'BatchUpdateAutomationRulesRequest')
    BatchUpdateAutomationRulesResponse = Shapes::StructureShape.new(name: 'BatchUpdateAutomationRulesResponse')
    BatchUpdateFindingsRequest = Shapes::StructureShape.new(name: 'BatchUpdateFindingsRequest')
    BatchUpdateFindingsResponse = Shapes::StructureShape.new(name: 'BatchUpdateFindingsResponse')
    BatchUpdateFindingsUnprocessedFinding = Shapes::StructureShape.new(name: 'BatchUpdateFindingsUnprocessedFinding')
    BatchUpdateFindingsUnprocessedFindingsList = Shapes::ListShape.new(name: 'BatchUpdateFindingsUnprocessedFindingsList')
    BatchUpdateStandardsControlAssociationsRequest = Shapes::StructureShape.new(name: 'BatchUpdateStandardsControlAssociationsRequest')
    BatchUpdateStandardsControlAssociationsResponse = Shapes::StructureShape.new(name: 'BatchUpdateStandardsControlAssociationsResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanFilter = Shapes::StructureShape.new(name: 'BooleanFilter')
    BooleanFilterList = Shapes::ListShape.new(name: 'BooleanFilterList')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    Cell = Shapes::StructureShape.new(name: 'Cell')
    Cells = Shapes::ListShape.new(name: 'Cells')
    CidrBlockAssociation = Shapes::StructureShape.new(name: 'CidrBlockAssociation')
    CidrBlockAssociationList = Shapes::ListShape.new(name: 'CidrBlockAssociationList')
    City = Shapes::StructureShape.new(name: 'City')
    ClassificationResult = Shapes::StructureShape.new(name: 'ClassificationResult')
    ClassificationStatus = Shapes::StructureShape.new(name: 'ClassificationStatus')
    Compliance = Shapes::StructureShape.new(name: 'Compliance')
    ComplianceStatus = Shapes::StringShape.new(name: 'ComplianceStatus')
    ContainerDetails = Shapes::StructureShape.new(name: 'ContainerDetails')
    ControlFindingGenerator = Shapes::StringShape.new(name: 'ControlFindingGenerator')
    ControlStatus = Shapes::StringShape.new(name: 'ControlStatus')
    Country = Shapes::StructureShape.new(name: 'Country')
    CreateActionTargetRequest = Shapes::StructureShape.new(name: 'CreateActionTargetRequest')
    CreateActionTargetResponse = Shapes::StructureShape.new(name: 'CreateActionTargetResponse')
    CreateAutomationRuleRequest = Shapes::StructureShape.new(name: 'CreateAutomationRuleRequest')
    CreateAutomationRuleResponse = Shapes::StructureShape.new(name: 'CreateAutomationRuleResponse')
    CreateFindingAggregatorRequest = Shapes::StructureShape.new(name: 'CreateFindingAggregatorRequest')
    CreateFindingAggregatorResponse = Shapes::StructureShape.new(name: 'CreateFindingAggregatorResponse')
    CreateInsightRequest = Shapes::StructureShape.new(name: 'CreateInsightRequest')
    CreateInsightResponse = Shapes::StructureShape.new(name: 'CreateInsightResponse')
    CreateMembersRequest = Shapes::StructureShape.new(name: 'CreateMembersRequest')
    CreateMembersResponse = Shapes::StructureShape.new(name: 'CreateMembersResponse')
    CrossAccountMaxResults = Shapes::IntegerShape.new(name: 'CrossAccountMaxResults')
    CustomDataIdentifiersDetections = Shapes::StructureShape.new(name: 'CustomDataIdentifiersDetections')
    CustomDataIdentifiersDetectionsList = Shapes::ListShape.new(name: 'CustomDataIdentifiersDetectionsList')
    CustomDataIdentifiersResult = Shapes::StructureShape.new(name: 'CustomDataIdentifiersResult')
    Cvss = Shapes::StructureShape.new(name: 'Cvss')
    CvssList = Shapes::ListShape.new(name: 'CvssList')
    DataClassificationDetails = Shapes::StructureShape.new(name: 'DataClassificationDetails')
    DateFilter = Shapes::StructureShape.new(name: 'DateFilter')
    DateFilterList = Shapes::ListShape.new(name: 'DateFilterList')
    DateRange = Shapes::StructureShape.new(name: 'DateRange')
    DateRangeUnit = Shapes::StringShape.new(name: 'DateRangeUnit')
    DeclineInvitationsRequest = Shapes::StructureShape.new(name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = Shapes::StructureShape.new(name: 'DeclineInvitationsResponse')
    DeleteActionTargetRequest = Shapes::StructureShape.new(name: 'DeleteActionTargetRequest')
    DeleteActionTargetResponse = Shapes::StructureShape.new(name: 'DeleteActionTargetResponse')
    DeleteFindingAggregatorRequest = Shapes::StructureShape.new(name: 'DeleteFindingAggregatorRequest')
    DeleteFindingAggregatorResponse = Shapes::StructureShape.new(name: 'DeleteFindingAggregatorResponse')
    DeleteInsightRequest = Shapes::StructureShape.new(name: 'DeleteInsightRequest')
    DeleteInsightResponse = Shapes::StructureShape.new(name: 'DeleteInsightResponse')
    DeleteInvitationsRequest = Shapes::StructureShape.new(name: 'DeleteInvitationsRequest')
    DeleteInvitationsResponse = Shapes::StructureShape.new(name: 'DeleteInvitationsResponse')
    DeleteMembersRequest = Shapes::StructureShape.new(name: 'DeleteMembersRequest')
    DeleteMembersResponse = Shapes::StructureShape.new(name: 'DeleteMembersResponse')
    DescribeActionTargetsRequest = Shapes::StructureShape.new(name: 'DescribeActionTargetsRequest')
    DescribeActionTargetsResponse = Shapes::StructureShape.new(name: 'DescribeActionTargetsResponse')
    DescribeHubRequest = Shapes::StructureShape.new(name: 'DescribeHubRequest')
    DescribeHubResponse = Shapes::StructureShape.new(name: 'DescribeHubResponse')
    DescribeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationResponse')
    DescribeProductsRequest = Shapes::StructureShape.new(name: 'DescribeProductsRequest')
    DescribeProductsResponse = Shapes::StructureShape.new(name: 'DescribeProductsResponse')
    DescribeStandardsControlsRequest = Shapes::StructureShape.new(name: 'DescribeStandardsControlsRequest')
    DescribeStandardsControlsResponse = Shapes::StructureShape.new(name: 'DescribeStandardsControlsResponse')
    DescribeStandardsRequest = Shapes::StructureShape.new(name: 'DescribeStandardsRequest')
    DescribeStandardsResponse = Shapes::StructureShape.new(name: 'DescribeStandardsResponse')
    DisableImportFindingsForProductRequest = Shapes::StructureShape.new(name: 'DisableImportFindingsForProductRequest')
    DisableImportFindingsForProductResponse = Shapes::StructureShape.new(name: 'DisableImportFindingsForProductResponse')
    DisableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'DisableOrganizationAdminAccountRequest')
    DisableOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'DisableOrganizationAdminAccountResponse')
    DisableSecurityHubRequest = Shapes::StructureShape.new(name: 'DisableSecurityHubRequest')
    DisableSecurityHubResponse = Shapes::StructureShape.new(name: 'DisableSecurityHubResponse')
    DisassociateFromAdministratorAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromAdministratorAccountRequest')
    DisassociateFromAdministratorAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromAdministratorAccountResponse')
    DisassociateFromMasterAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountRequest')
    DisassociateFromMasterAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountResponse')
    DisassociateMembersRequest = Shapes::StructureShape.new(name: 'DisassociateMembersRequest')
    DisassociateMembersResponse = Shapes::StructureShape.new(name: 'DisassociateMembersResponse')
    DnsRequestAction = Shapes::StructureShape.new(name: 'DnsRequestAction')
    Double = Shapes::FloatShape.new(name: 'Double')
    EnableImportFindingsForProductRequest = Shapes::StructureShape.new(name: 'EnableImportFindingsForProductRequest')
    EnableImportFindingsForProductResponse = Shapes::StructureShape.new(name: 'EnableImportFindingsForProductResponse')
    EnableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'EnableOrganizationAdminAccountRequest')
    EnableOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'EnableOrganizationAdminAccountResponse')
    EnableSecurityHubRequest = Shapes::StructureShape.new(name: 'EnableSecurityHubRequest')
    EnableSecurityHubResponse = Shapes::StructureShape.new(name: 'EnableSecurityHubResponse')
    FieldMap = Shapes::MapShape.new(name: 'FieldMap')
    FilePathList = Shapes::ListShape.new(name: 'FilePathList')
    FilePaths = Shapes::StructureShape.new(name: 'FilePaths')
    FindingAggregator = Shapes::StructureShape.new(name: 'FindingAggregator')
    FindingAggregatorList = Shapes::ListShape.new(name: 'FindingAggregatorList')
    FindingHistoryRecord = Shapes::StructureShape.new(name: 'FindingHistoryRecord')
    FindingHistoryRecordList = Shapes::ListShape.new(name: 'FindingHistoryRecordList')
    FindingHistoryUpdate = Shapes::StructureShape.new(name: 'FindingHistoryUpdate')
    FindingHistoryUpdateSource = Shapes::StructureShape.new(name: 'FindingHistoryUpdateSource')
    FindingHistoryUpdateSourceType = Shapes::StringShape.new(name: 'FindingHistoryUpdateSourceType')
    FindingHistoryUpdatesList = Shapes::ListShape.new(name: 'FindingHistoryUpdatesList')
    FindingProviderFields = Shapes::StructureShape.new(name: 'FindingProviderFields')
    FindingProviderSeverity = Shapes::StructureShape.new(name: 'FindingProviderSeverity')
    FirewallPolicyDetails = Shapes::StructureShape.new(name: 'FirewallPolicyDetails')
    FirewallPolicyStatefulRuleGroupReferencesDetails = Shapes::StructureShape.new(name: 'FirewallPolicyStatefulRuleGroupReferencesDetails')
    FirewallPolicyStatefulRuleGroupReferencesList = Shapes::ListShape.new(name: 'FirewallPolicyStatefulRuleGroupReferencesList')
    FirewallPolicyStatelessCustomActionsDetails = Shapes::StructureShape.new(name: 'FirewallPolicyStatelessCustomActionsDetails')
    FirewallPolicyStatelessCustomActionsList = Shapes::ListShape.new(name: 'FirewallPolicyStatelessCustomActionsList')
    FirewallPolicyStatelessRuleGroupReferencesDetails = Shapes::StructureShape.new(name: 'FirewallPolicyStatelessRuleGroupReferencesDetails')
    FirewallPolicyStatelessRuleGroupReferencesList = Shapes::ListShape.new(name: 'FirewallPolicyStatelessRuleGroupReferencesList')
    GeoLocation = Shapes::StructureShape.new(name: 'GeoLocation')
    GetAdministratorAccountRequest = Shapes::StructureShape.new(name: 'GetAdministratorAccountRequest')
    GetAdministratorAccountResponse = Shapes::StructureShape.new(name: 'GetAdministratorAccountResponse')
    GetEnabledStandardsRequest = Shapes::StructureShape.new(name: 'GetEnabledStandardsRequest')
    GetEnabledStandardsResponse = Shapes::StructureShape.new(name: 'GetEnabledStandardsResponse')
    GetFindingAggregatorRequest = Shapes::StructureShape.new(name: 'GetFindingAggregatorRequest')
    GetFindingAggregatorResponse = Shapes::StructureShape.new(name: 'GetFindingAggregatorResponse')
    GetFindingHistoryRequest = Shapes::StructureShape.new(name: 'GetFindingHistoryRequest')
    GetFindingHistoryResponse = Shapes::StructureShape.new(name: 'GetFindingHistoryResponse')
    GetFindingsRequest = Shapes::StructureShape.new(name: 'GetFindingsRequest')
    GetFindingsResponse = Shapes::StructureShape.new(name: 'GetFindingsResponse')
    GetInsightResultsRequest = Shapes::StructureShape.new(name: 'GetInsightResultsRequest')
    GetInsightResultsResponse = Shapes::StructureShape.new(name: 'GetInsightResultsResponse')
    GetInsightsRequest = Shapes::StructureShape.new(name: 'GetInsightsRequest')
    GetInsightsResponse = Shapes::StructureShape.new(name: 'GetInsightsResponse')
    GetInvitationsCountRequest = Shapes::StructureShape.new(name: 'GetInvitationsCountRequest')
    GetInvitationsCountResponse = Shapes::StructureShape.new(name: 'GetInvitationsCountResponse')
    GetMasterAccountRequest = Shapes::StructureShape.new(name: 'GetMasterAccountRequest')
    GetMasterAccountResponse = Shapes::StructureShape.new(name: 'GetMasterAccountResponse')
    GetMembersRequest = Shapes::StructureShape.new(name: 'GetMembersRequest')
    GetMembersResponse = Shapes::StructureShape.new(name: 'GetMembersResponse')
    IcmpTypeCode = Shapes::StructureShape.new(name: 'IcmpTypeCode')
    ImportFindingsError = Shapes::StructureShape.new(name: 'ImportFindingsError')
    ImportFindingsErrorList = Shapes::ListShape.new(name: 'ImportFindingsErrorList')
    Insight = Shapes::StructureShape.new(name: 'Insight')
    InsightList = Shapes::ListShape.new(name: 'InsightList')
    InsightResultValue = Shapes::StructureShape.new(name: 'InsightResultValue')
    InsightResultValueList = Shapes::ListShape.new(name: 'InsightResultValueList')
    InsightResults = Shapes::StructureShape.new(name: 'InsightResults')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    IntegrationTypeList = Shapes::ListShape.new(name: 'IntegrationTypeList')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidAccessException = Shapes::StructureShape.new(name: 'InvalidAccessException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    Invitation = Shapes::StructureShape.new(name: 'Invitation')
    InvitationList = Shapes::ListShape.new(name: 'InvitationList')
    InviteMembersRequest = Shapes::StructureShape.new(name: 'InviteMembersRequest')
    InviteMembersResponse = Shapes::StructureShape.new(name: 'InviteMembersResponse')
    IpFilter = Shapes::StructureShape.new(name: 'IpFilter')
    IpFilterList = Shapes::ListShape.new(name: 'IpFilterList')
    IpOrganizationDetails = Shapes::StructureShape.new(name: 'IpOrganizationDetails')
    Ipv6CidrBlockAssociation = Shapes::StructureShape.new(name: 'Ipv6CidrBlockAssociation')
    Ipv6CidrBlockAssociationList = Shapes::ListShape.new(name: 'Ipv6CidrBlockAssociationList')
    KeywordFilter = Shapes::StructureShape.new(name: 'KeywordFilter')
    KeywordFilterList = Shapes::ListShape.new(name: 'KeywordFilterList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAutomationRulesRequest = Shapes::StructureShape.new(name: 'ListAutomationRulesRequest')
    ListAutomationRulesResponse = Shapes::StructureShape.new(name: 'ListAutomationRulesResponse')
    ListEnabledProductsForImportRequest = Shapes::StructureShape.new(name: 'ListEnabledProductsForImportRequest')
    ListEnabledProductsForImportResponse = Shapes::StructureShape.new(name: 'ListEnabledProductsForImportResponse')
    ListFindingAggregatorsRequest = Shapes::StructureShape.new(name: 'ListFindingAggregatorsRequest')
    ListFindingAggregatorsResponse = Shapes::StructureShape.new(name: 'ListFindingAggregatorsResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsResponse')
    ListSecurityControlDefinitionsRequest = Shapes::StructureShape.new(name: 'ListSecurityControlDefinitionsRequest')
    ListSecurityControlDefinitionsResponse = Shapes::StructureShape.new(name: 'ListSecurityControlDefinitionsResponse')
    ListStandardsControlAssociationsRequest = Shapes::StructureShape.new(name: 'ListStandardsControlAssociationsRequest')
    ListStandardsControlAssociationsResponse = Shapes::StructureShape.new(name: 'ListStandardsControlAssociationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LoadBalancerState = Shapes::StructureShape.new(name: 'LoadBalancerState')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Malware = Shapes::StructureShape.new(name: 'Malware')
    MalwareList = Shapes::ListShape.new(name: 'MalwareList')
    MalwareState = Shapes::StringShape.new(name: 'MalwareState')
    MalwareType = Shapes::StringShape.new(name: 'MalwareType')
    MapFilter = Shapes::StructureShape.new(name: 'MapFilter')
    MapFilterComparison = Shapes::StringShape.new(name: 'MapFilterComparison')
    MapFilterList = Shapes::ListShape.new(name: 'MapFilterList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberList = Shapes::ListShape.new(name: 'MemberList')
    Network = Shapes::StructureShape.new(name: 'Network')
    NetworkConnectionAction = Shapes::StructureShape.new(name: 'NetworkConnectionAction')
    NetworkDirection = Shapes::StringShape.new(name: 'NetworkDirection')
    NetworkHeader = Shapes::StructureShape.new(name: 'NetworkHeader')
    NetworkPathComponent = Shapes::StructureShape.new(name: 'NetworkPathComponent')
    NetworkPathComponentDetails = Shapes::StructureShape.new(name: 'NetworkPathComponentDetails')
    NetworkPathList = Shapes::ListShape.new(name: 'NetworkPathList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyStringList = Shapes::ListShape.new(name: 'NonEmptyStringList')
    Note = Shapes::StructureShape.new(name: 'Note')
    NoteUpdate = Shapes::StructureShape.new(name: 'NoteUpdate')
    NumberFilter = Shapes::StructureShape.new(name: 'NumberFilter')
    NumberFilterList = Shapes::ListShape.new(name: 'NumberFilterList')
    Occurrences = Shapes::StructureShape.new(name: 'Occurrences')
    Page = Shapes::StructureShape.new(name: 'Page')
    Pages = Shapes::ListShape.new(name: 'Pages')
    Partition = Shapes::StringShape.new(name: 'Partition')
    PatchSummary = Shapes::StructureShape.new(name: 'PatchSummary')
    PortProbeAction = Shapes::StructureShape.new(name: 'PortProbeAction')
    PortProbeDetail = Shapes::StructureShape.new(name: 'PortProbeDetail')
    PortProbeDetailList = Shapes::ListShape.new(name: 'PortProbeDetailList')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    PortRangeFromTo = Shapes::StructureShape.new(name: 'PortRangeFromTo')
    PortRangeList = Shapes::ListShape.new(name: 'PortRangeList')
    ProcessDetails = Shapes::StructureShape.new(name: 'ProcessDetails')
    Product = Shapes::StructureShape.new(name: 'Product')
    ProductSubscriptionArnList = Shapes::ListShape.new(name: 'ProductSubscriptionArnList')
    ProductsList = Shapes::ListShape.new(name: 'ProductsList')
    PropagatingVgwSetDetails = Shapes::StructureShape.new(name: 'PropagatingVgwSetDetails')
    PropagatingVgwSetList = Shapes::ListShape.new(name: 'PropagatingVgwSetList')
    Range = Shapes::StructureShape.new(name: 'Range')
    Ranges = Shapes::ListShape.new(name: 'Ranges')
    RatioScale = Shapes::IntegerShape.new(name: 'RatioScale')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordState = Shapes::StringShape.new(name: 'RecordState')
    Records = Shapes::ListShape.new(name: 'Records')
    RegionAvailabilityStatus = Shapes::StringShape.new(name: 'RegionAvailabilityStatus')
    RelatedFinding = Shapes::StructureShape.new(name: 'RelatedFinding')
    RelatedFindingList = Shapes::ListShape.new(name: 'RelatedFindingList')
    RelatedRequirementsList = Shapes::ListShape.new(name: 'RelatedRequirementsList')
    Remediation = Shapes::StructureShape.new(name: 'Remediation')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceDetails = Shapes::StructureShape.new(name: 'ResourceDetails')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Result = Shapes::StructureShape.new(name: 'Result')
    ResultList = Shapes::ListShape.new(name: 'ResultList')
    RouteSetDetails = Shapes::StructureShape.new(name: 'RouteSetDetails')
    RouteSetList = Shapes::ListShape.new(name: 'RouteSetList')
    RuleGroupDetails = Shapes::StructureShape.new(name: 'RuleGroupDetails')
    RuleGroupSource = Shapes::StructureShape.new(name: 'RuleGroupSource')
    RuleGroupSourceCustomActionsDetails = Shapes::StructureShape.new(name: 'RuleGroupSourceCustomActionsDetails')
    RuleGroupSourceCustomActionsList = Shapes::ListShape.new(name: 'RuleGroupSourceCustomActionsList')
    RuleGroupSourceListDetails = Shapes::StructureShape.new(name: 'RuleGroupSourceListDetails')
    RuleGroupSourceStatefulRulesDetails = Shapes::StructureShape.new(name: 'RuleGroupSourceStatefulRulesDetails')
    RuleGroupSourceStatefulRulesHeaderDetails = Shapes::StructureShape.new(name: 'RuleGroupSourceStatefulRulesHeaderDetails')
    RuleGroupSourceStatefulRulesList = Shapes::ListShape.new(name: 'RuleGroupSourceStatefulRulesList')
    RuleGroupSourceStatefulRulesOptionsDetails = Shapes::StructureShape.new(name: 'RuleGroupSourceStatefulRulesOptionsDetails')
    RuleGroupSourceStatefulRulesOptionsList = Shapes::ListShape.new(name: 'RuleGroupSourceStatefulRulesOptionsList')
    RuleGroupSourceStatefulRulesRuleOptionsSettingsList = Shapes::ListShape.new(name: 'RuleGroupSourceStatefulRulesRuleOptionsSettingsList')
    RuleGroupSourceStatelessRuleDefinition = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRuleDefinition')
    RuleGroupSourceStatelessRuleMatchAttributes = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributes')
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts')
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList = Shapes::ListShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList')
    RuleGroupSourceStatelessRuleMatchAttributesDestinations = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesDestinations')
    RuleGroupSourceStatelessRuleMatchAttributesDestinationsList = Shapes::ListShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesDestinationsList')
    RuleGroupSourceStatelessRuleMatchAttributesProtocolsList = Shapes::ListShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesProtocolsList')
    RuleGroupSourceStatelessRuleMatchAttributesSourcePorts = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesSourcePorts')
    RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList = Shapes::ListShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList')
    RuleGroupSourceStatelessRuleMatchAttributesSources = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesSources')
    RuleGroupSourceStatelessRuleMatchAttributesSourcesList = Shapes::ListShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesSourcesList')
    RuleGroupSourceStatelessRuleMatchAttributesTcpFlags = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesTcpFlags')
    RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList = Shapes::ListShape.new(name: 'RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList')
    RuleGroupSourceStatelessRulesAndCustomActionsDetails = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRulesAndCustomActionsDetails')
    RuleGroupSourceStatelessRulesDetails = Shapes::StructureShape.new(name: 'RuleGroupSourceStatelessRulesDetails')
    RuleGroupSourceStatelessRulesList = Shapes::ListShape.new(name: 'RuleGroupSourceStatelessRulesList')
    RuleGroupVariables = Shapes::StructureShape.new(name: 'RuleGroupVariables')
    RuleGroupVariablesIpSetsDetails = Shapes::StructureShape.new(name: 'RuleGroupVariablesIpSetsDetails')
    RuleGroupVariablesPortSetsDetails = Shapes::StructureShape.new(name: 'RuleGroupVariablesPortSetsDetails')
    RuleOrderValue = Shapes::IntegerShape.new(name: 'RuleOrderValue')
    RuleStatus = Shapes::StringShape.new(name: 'RuleStatus')
    SecurityControl = Shapes::StructureShape.new(name: 'SecurityControl')
    SecurityControlDefinition = Shapes::StructureShape.new(name: 'SecurityControlDefinition')
    SecurityControlDefinitions = Shapes::ListShape.new(name: 'SecurityControlDefinitions')
    SecurityControls = Shapes::ListShape.new(name: 'SecurityControls')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SensitiveDataDetections = Shapes::StructureShape.new(name: 'SensitiveDataDetections')
    SensitiveDataDetectionsList = Shapes::ListShape.new(name: 'SensitiveDataDetectionsList')
    SensitiveDataResult = Shapes::StructureShape.new(name: 'SensitiveDataResult')
    SensitiveDataResultList = Shapes::ListShape.new(name: 'SensitiveDataResultList')
    Severity = Shapes::StructureShape.new(name: 'Severity')
    SeverityLabel = Shapes::StringShape.new(name: 'SeverityLabel')
    SeverityRating = Shapes::StringShape.new(name: 'SeverityRating')
    SeverityUpdate = Shapes::StructureShape.new(name: 'SeverityUpdate')
    SizeBytes = Shapes::IntegerShape.new(name: 'SizeBytes')
    SoftwarePackage = Shapes::StructureShape.new(name: 'SoftwarePackage')
    SoftwarePackageList = Shapes::ListShape.new(name: 'SoftwarePackageList')
    SortCriteria = Shapes::ListShape.new(name: 'SortCriteria')
    SortCriterion = Shapes::StructureShape.new(name: 'SortCriterion')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    Standard = Shapes::StructureShape.new(name: 'Standard')
    Standards = Shapes::ListShape.new(name: 'Standards')
    StandardsControl = Shapes::StructureShape.new(name: 'StandardsControl')
    StandardsControlArnList = Shapes::ListShape.new(name: 'StandardsControlArnList')
    StandardsControlAssociationDetail = Shapes::StructureShape.new(name: 'StandardsControlAssociationDetail')
    StandardsControlAssociationDetails = Shapes::ListShape.new(name: 'StandardsControlAssociationDetails')
    StandardsControlAssociationId = Shapes::StructureShape.new(name: 'StandardsControlAssociationId')
    StandardsControlAssociationIds = Shapes::ListShape.new(name: 'StandardsControlAssociationIds')
    StandardsControlAssociationSummaries = Shapes::ListShape.new(name: 'StandardsControlAssociationSummaries')
    StandardsControlAssociationSummary = Shapes::StructureShape.new(name: 'StandardsControlAssociationSummary')
    StandardsControlAssociationUpdate = Shapes::StructureShape.new(name: 'StandardsControlAssociationUpdate')
    StandardsControlAssociationUpdates = Shapes::ListShape.new(name: 'StandardsControlAssociationUpdates')
    StandardsControls = Shapes::ListShape.new(name: 'StandardsControls')
    StandardsInputParameterMap = Shapes::MapShape.new(name: 'StandardsInputParameterMap')
    StandardsManagedBy = Shapes::StructureShape.new(name: 'StandardsManagedBy')
    StandardsStatus = Shapes::StringShape.new(name: 'StandardsStatus')
    StandardsStatusReason = Shapes::StructureShape.new(name: 'StandardsStatusReason')
    StandardsSubscription = Shapes::StructureShape.new(name: 'StandardsSubscription')
    StandardsSubscriptionArns = Shapes::ListShape.new(name: 'StandardsSubscriptionArns')
    StandardsSubscriptionRequest = Shapes::StructureShape.new(name: 'StandardsSubscriptionRequest')
    StandardsSubscriptionRequests = Shapes::ListShape.new(name: 'StandardsSubscriptionRequests')
    StandardsSubscriptions = Shapes::ListShape.new(name: 'StandardsSubscriptions')
    StatelessCustomActionDefinition = Shapes::StructureShape.new(name: 'StatelessCustomActionDefinition')
    StatelessCustomPublishMetricAction = Shapes::StructureShape.new(name: 'StatelessCustomPublishMetricAction')
    StatelessCustomPublishMetricActionDimension = Shapes::StructureShape.new(name: 'StatelessCustomPublishMetricActionDimension')
    StatelessCustomPublishMetricActionDimensionsList = Shapes::ListShape.new(name: 'StatelessCustomPublishMetricActionDimensionsList')
    StatusReason = Shapes::StructureShape.new(name: 'StatusReason')
    StatusReasonCode = Shapes::StringShape.new(name: 'StatusReasonCode')
    StatusReasonsList = Shapes::ListShape.new(name: 'StatusReasonsList')
    StringFilter = Shapes::StructureShape.new(name: 'StringFilter')
    StringFilterComparison = Shapes::StringShape.new(name: 'StringFilterComparison')
    StringFilterList = Shapes::ListShape.new(name: 'StringFilterList')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Threat = Shapes::StructureShape.new(name: 'Threat')
    ThreatIntelIndicator = Shapes::StructureShape.new(name: 'ThreatIntelIndicator')
    ThreatIntelIndicatorCategory = Shapes::StringShape.new(name: 'ThreatIntelIndicatorCategory')
    ThreatIntelIndicatorList = Shapes::ListShape.new(name: 'ThreatIntelIndicatorList')
    ThreatIntelIndicatorType = Shapes::StringShape.new(name: 'ThreatIntelIndicatorType')
    ThreatList = Shapes::ListShape.new(name: 'ThreatList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TypeList = Shapes::ListShape.new(name: 'TypeList')
    UnprocessedAutomationRule = Shapes::StructureShape.new(name: 'UnprocessedAutomationRule')
    UnprocessedAutomationRulesList = Shapes::ListShape.new(name: 'UnprocessedAutomationRulesList')
    UnprocessedErrorCode = Shapes::StringShape.new(name: 'UnprocessedErrorCode')
    UnprocessedSecurityControl = Shapes::StructureShape.new(name: 'UnprocessedSecurityControl')
    UnprocessedSecurityControls = Shapes::ListShape.new(name: 'UnprocessedSecurityControls')
    UnprocessedStandardsControlAssociation = Shapes::StructureShape.new(name: 'UnprocessedStandardsControlAssociation')
    UnprocessedStandardsControlAssociationUpdate = Shapes::StructureShape.new(name: 'UnprocessedStandardsControlAssociationUpdate')
    UnprocessedStandardsControlAssociationUpdates = Shapes::ListShape.new(name: 'UnprocessedStandardsControlAssociationUpdates')
    UnprocessedStandardsControlAssociations = Shapes::ListShape.new(name: 'UnprocessedStandardsControlAssociations')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateActionTargetRequest = Shapes::StructureShape.new(name: 'UpdateActionTargetRequest')
    UpdateActionTargetResponse = Shapes::StructureShape.new(name: 'UpdateActionTargetResponse')
    UpdateAutomationRulesRequestItem = Shapes::StructureShape.new(name: 'UpdateAutomationRulesRequestItem')
    UpdateAutomationRulesRequestItemsList = Shapes::ListShape.new(name: 'UpdateAutomationRulesRequestItemsList')
    UpdateFindingAggregatorRequest = Shapes::StructureShape.new(name: 'UpdateFindingAggregatorRequest')
    UpdateFindingAggregatorResponse = Shapes::StructureShape.new(name: 'UpdateFindingAggregatorResponse')
    UpdateFindingsRequest = Shapes::StructureShape.new(name: 'UpdateFindingsRequest')
    UpdateFindingsResponse = Shapes::StructureShape.new(name: 'UpdateFindingsResponse')
    UpdateInsightRequest = Shapes::StructureShape.new(name: 'UpdateInsightRequest')
    UpdateInsightResponse = Shapes::StructureShape.new(name: 'UpdateInsightResponse')
    UpdateOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationRequest')
    UpdateOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationResponse')
    UpdateSecurityHubConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateSecurityHubConfigurationRequest')
    UpdateSecurityHubConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateSecurityHubConfigurationResponse')
    UpdateStandardsControlRequest = Shapes::StructureShape.new(name: 'UpdateStandardsControlRequest')
    UpdateStandardsControlResponse = Shapes::StructureShape.new(name: 'UpdateStandardsControlResponse')
    VerificationState = Shapes::StringShape.new(name: 'VerificationState')
    VolumeMount = Shapes::StructureShape.new(name: 'VolumeMount')
    VolumeMountList = Shapes::ListShape.new(name: 'VolumeMountList')
    VpcInfoCidrBlockSetDetails = Shapes::StructureShape.new(name: 'VpcInfoCidrBlockSetDetails')
    VpcInfoCidrBlockSetList = Shapes::ListShape.new(name: 'VpcInfoCidrBlockSetList')
    VpcInfoIpv6CidrBlockSetDetails = Shapes::StructureShape.new(name: 'VpcInfoIpv6CidrBlockSetDetails')
    VpcInfoIpv6CidrBlockSetList = Shapes::ListShape.new(name: 'VpcInfoIpv6CidrBlockSetList')
    VpcInfoPeeringOptionsDetails = Shapes::StructureShape.new(name: 'VpcInfoPeeringOptionsDetails')
    Vulnerability = Shapes::StructureShape.new(name: 'Vulnerability')
    VulnerabilityFixAvailable = Shapes::StringShape.new(name: 'VulnerabilityFixAvailable')
    VulnerabilityList = Shapes::ListShape.new(name: 'VulnerabilityList')
    VulnerabilityVendor = Shapes::StructureShape.new(name: 'VulnerabilityVendor')
    WafAction = Shapes::StructureShape.new(name: 'WafAction')
    WafExcludedRule = Shapes::StructureShape.new(name: 'WafExcludedRule')
    WafExcludedRuleList = Shapes::ListShape.new(name: 'WafExcludedRuleList')
    WafOverrideAction = Shapes::StructureShape.new(name: 'WafOverrideAction')
    Workflow = Shapes::StructureShape.new(name: 'Workflow')
    WorkflowState = Shapes::StringShape.new(name: 'WorkflowState')
    WorkflowStatus = Shapes::StringShape.new(name: 'WorkflowStatus')
    WorkflowUpdate = Shapes::StructureShape.new(name: 'WorkflowUpdate')

    AcceptAdministratorInvitationRequest.add_member(:administrator_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "AdministratorId"))
    AcceptAdministratorInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InvitationId"))
    AcceptAdministratorInvitationRequest.struct_class = Types::AcceptAdministratorInvitationRequest

    AcceptAdministratorInvitationResponse.struct_class = Types::AcceptAdministratorInvitationResponse

    AcceptInvitationRequest.add_member(:master_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "MasterId"))
    AcceptInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InvitationId"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    AcceptInvitationResponse.struct_class = Types::AcceptInvitationResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    AccountDetails.add_member(:email, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Email"))
    AccountDetails.struct_class = Types::AccountDetails

    AccountDetailsList.member = Shapes::ShapeRef.new(shape: AccountDetails)

    AccountIdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    Action.add_member(:action_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ActionType"))
    Action.add_member(:network_connection_action, Shapes::ShapeRef.new(shape: NetworkConnectionAction, location_name: "NetworkConnectionAction"))
    Action.add_member(:aws_api_call_action, Shapes::ShapeRef.new(shape: AwsApiCallAction, location_name: "AwsApiCallAction"))
    Action.add_member(:dns_request_action, Shapes::ShapeRef.new(shape: DnsRequestAction, location_name: "DnsRequestAction"))
    Action.add_member(:port_probe_action, Shapes::ShapeRef.new(shape: PortProbeAction, location_name: "PortProbeAction"))
    Action.struct_class = Types::Action

    ActionList.member = Shapes::ShapeRef.new(shape: AutomationRulesAction)

    ActionLocalIpDetails.add_member(:ip_address_v4, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IpAddressV4"))
    ActionLocalIpDetails.struct_class = Types::ActionLocalIpDetails

    ActionLocalPortDetails.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    ActionLocalPortDetails.add_member(:port_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PortName"))
    ActionLocalPortDetails.struct_class = Types::ActionLocalPortDetails

    ActionRemoteIpDetails.add_member(:ip_address_v4, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IpAddressV4"))
    ActionRemoteIpDetails.add_member(:organization, Shapes::ShapeRef.new(shape: IpOrganizationDetails, location_name: "Organization"))
    ActionRemoteIpDetails.add_member(:country, Shapes::ShapeRef.new(shape: Country, location_name: "Country"))
    ActionRemoteIpDetails.add_member(:city, Shapes::ShapeRef.new(shape: City, location_name: "City"))
    ActionRemoteIpDetails.add_member(:geo_location, Shapes::ShapeRef.new(shape: GeoLocation, location_name: "GeoLocation"))
    ActionRemoteIpDetails.struct_class = Types::ActionRemoteIpDetails

    ActionRemotePortDetails.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    ActionRemotePortDetails.add_member(:port_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PortName"))
    ActionRemotePortDetails.struct_class = Types::ActionRemotePortDetails

    ActionTarget.add_member(:action_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ActionTargetArn"))
    ActionTarget.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    ActionTarget.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Description"))
    ActionTarget.struct_class = Types::ActionTarget

    ActionTargetList.member = Shapes::ShapeRef.new(shape: ActionTarget)

    Adjustment.add_member(:metric, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Metric"))
    Adjustment.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Reason"))
    Adjustment.struct_class = Types::Adjustment

    AdjustmentList.member = Shapes::ShapeRef.new(shape: Adjustment)

    AdminAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    AdminAccount.add_member(:status, Shapes::ShapeRef.new(shape: AdminStatus, location_name: "Status"))
    AdminAccount.struct_class = Types::AdminAccount

    AdminAccounts.member = Shapes::ShapeRef.new(shape: AdminAccount)

    ArnList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    AssociatedStandard.add_member(:standards_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StandardsId"))
    AssociatedStandard.struct_class = Types::AssociatedStandard

    AssociatedStandardsList.member = Shapes::ShapeRef.new(shape: AssociatedStandard)

    AssociationSetDetails.add_member(:association_state, Shapes::ShapeRef.new(shape: AssociationStateDetails, location_name: "AssociationState"))
    AssociationSetDetails.add_member(:gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GatewayId"))
    AssociationSetDetails.add_member(:main, Shapes::ShapeRef.new(shape: Boolean, location_name: "Main"))
    AssociationSetDetails.add_member(:route_table_association_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RouteTableAssociationId"))
    AssociationSetDetails.add_member(:route_table_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RouteTableId"))
    AssociationSetDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AssociationSetDetails.struct_class = Types::AssociationSetDetails

    AssociationSetList.member = Shapes::ShapeRef.new(shape: AssociationSetDetails)

    AssociationStateDetails.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "State"))
    AssociationStateDetails.add_member(:status_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StatusMessage"))
    AssociationStateDetails.struct_class = Types::AssociationStateDetails

    AutomationRulesAction.add_member(:type, Shapes::ShapeRef.new(shape: AutomationRulesActionType, location_name: "Type"))
    AutomationRulesAction.add_member(:finding_fields_update, Shapes::ShapeRef.new(shape: AutomationRulesFindingFieldsUpdate, location_name: "FindingFieldsUpdate"))
    AutomationRulesAction.struct_class = Types::AutomationRulesAction

    AutomationRulesArnsList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    AutomationRulesConfig.add_member(:rule_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleArn"))
    AutomationRulesConfig.add_member(:rule_status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "RuleStatus"))
    AutomationRulesConfig.add_member(:rule_order, Shapes::ShapeRef.new(shape: RuleOrderValue, location_name: "RuleOrder"))
    AutomationRulesConfig.add_member(:rule_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleName"))
    AutomationRulesConfig.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AutomationRulesConfig.add_member(:is_terminal, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsTerminal"))
    AutomationRulesConfig.add_member(:criteria, Shapes::ShapeRef.new(shape: AutomationRulesFindingFilters, location_name: "Criteria"))
    AutomationRulesConfig.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "Actions"))
    AutomationRulesConfig.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AutomationRulesConfig.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AutomationRulesConfig.add_member(:created_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedBy"))
    AutomationRulesConfig.struct_class = Types::AutomationRulesConfig

    AutomationRulesConfigList.member = Shapes::ShapeRef.new(shape: AutomationRulesConfig)

    AutomationRulesFindingFieldsUpdate.add_member(:note, Shapes::ShapeRef.new(shape: NoteUpdate, location_name: "Note"))
    AutomationRulesFindingFieldsUpdate.add_member(:severity, Shapes::ShapeRef.new(shape: SeverityUpdate, location_name: "Severity"))
    AutomationRulesFindingFieldsUpdate.add_member(:verification_state, Shapes::ShapeRef.new(shape: VerificationState, location_name: "VerificationState"))
    AutomationRulesFindingFieldsUpdate.add_member(:confidence, Shapes::ShapeRef.new(shape: RatioScale, location_name: "Confidence"))
    AutomationRulesFindingFieldsUpdate.add_member(:criticality, Shapes::ShapeRef.new(shape: RatioScale, location_name: "Criticality"))
    AutomationRulesFindingFieldsUpdate.add_member(:types, Shapes::ShapeRef.new(shape: TypeList, location_name: "Types"))
    AutomationRulesFindingFieldsUpdate.add_member(:user_defined_fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "UserDefinedFields"))
    AutomationRulesFindingFieldsUpdate.add_member(:workflow, Shapes::ShapeRef.new(shape: WorkflowUpdate, location_name: "Workflow"))
    AutomationRulesFindingFieldsUpdate.add_member(:related_findings, Shapes::ShapeRef.new(shape: RelatedFindingList, location_name: "RelatedFindings"))
    AutomationRulesFindingFieldsUpdate.struct_class = Types::AutomationRulesFindingFieldsUpdate

    AutomationRulesFindingFilters.add_member(:product_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProductArn"))
    AutomationRulesFindingFilters.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "AwsAccountId"))
    AutomationRulesFindingFilters.add_member(:id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Id"))
    AutomationRulesFindingFilters.add_member(:generator_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "GeneratorId"))
    AutomationRulesFindingFilters.add_member(:type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Type"))
    AutomationRulesFindingFilters.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "FirstObservedAt"))
    AutomationRulesFindingFilters.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "LastObservedAt"))
    AutomationRulesFindingFilters.add_member(:created_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "CreatedAt"))
    AutomationRulesFindingFilters.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "UpdatedAt"))
    AutomationRulesFindingFilters.add_member(:confidence, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "Confidence"))
    AutomationRulesFindingFilters.add_member(:criticality, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "Criticality"))
    AutomationRulesFindingFilters.add_member(:title, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Title"))
    AutomationRulesFindingFilters.add_member(:description, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Description"))
    AutomationRulesFindingFilters.add_member(:source_url, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "SourceUrl"))
    AutomationRulesFindingFilters.add_member(:product_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProductName"))
    AutomationRulesFindingFilters.add_member(:company_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "CompanyName"))
    AutomationRulesFindingFilters.add_member(:severity_label, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "SeverityLabel"))
    AutomationRulesFindingFilters.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceType"))
    AutomationRulesFindingFilters.add_member(:resource_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceId"))
    AutomationRulesFindingFilters.add_member(:resource_partition, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourcePartition"))
    AutomationRulesFindingFilters.add_member(:resource_region, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceRegion"))
    AutomationRulesFindingFilters.add_member(:resource_tags, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "ResourceTags"))
    AutomationRulesFindingFilters.add_member(:resource_details_other, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "ResourceDetailsOther"))
    AutomationRulesFindingFilters.add_member(:compliance_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ComplianceStatus"))
    AutomationRulesFindingFilters.add_member(:compliance_security_control_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ComplianceSecurityControlId"))
    AutomationRulesFindingFilters.add_member(:compliance_associated_standards_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ComplianceAssociatedStandardsId"))
    AutomationRulesFindingFilters.add_member(:verification_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "VerificationState"))
    AutomationRulesFindingFilters.add_member(:workflow_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "WorkflowStatus"))
    AutomationRulesFindingFilters.add_member(:record_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RecordState"))
    AutomationRulesFindingFilters.add_member(:related_findings_product_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RelatedFindingsProductArn"))
    AutomationRulesFindingFilters.add_member(:related_findings_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RelatedFindingsId"))
    AutomationRulesFindingFilters.add_member(:note_text, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NoteText"))
    AutomationRulesFindingFilters.add_member(:note_updated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "NoteUpdatedAt"))
    AutomationRulesFindingFilters.add_member(:note_updated_by, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NoteUpdatedBy"))
    AutomationRulesFindingFilters.add_member(:user_defined_fields, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "UserDefinedFields"))
    AutomationRulesFindingFilters.struct_class = Types::AutomationRulesFindingFilters

    AutomationRulesMetadata.add_member(:rule_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleArn"))
    AutomationRulesMetadata.add_member(:rule_status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "RuleStatus"))
    AutomationRulesMetadata.add_member(:rule_order, Shapes::ShapeRef.new(shape: RuleOrderValue, location_name: "RuleOrder"))
    AutomationRulesMetadata.add_member(:rule_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleName"))
    AutomationRulesMetadata.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AutomationRulesMetadata.add_member(:is_terminal, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsTerminal"))
    AutomationRulesMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AutomationRulesMetadata.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AutomationRulesMetadata.add_member(:created_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedBy"))
    AutomationRulesMetadata.struct_class = Types::AutomationRulesMetadata

    AutomationRulesMetadataList.member = Shapes::ShapeRef.new(shape: AutomationRulesMetadata)

    AvailabilityZone.add_member(:zone_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ZoneName"))
    AvailabilityZone.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    AwsAmazonMqBrokerDetails.add_member(:authentication_strategy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AuthenticationStrategy"))
    AwsAmazonMqBrokerDetails.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    AwsAmazonMqBrokerDetails.add_member(:broker_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BrokerArn"))
    AwsAmazonMqBrokerDetails.add_member(:broker_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BrokerName"))
    AwsAmazonMqBrokerDetails.add_member(:deployment_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeploymentMode"))
    AwsAmazonMqBrokerDetails.add_member(:encryption_options, Shapes::ShapeRef.new(shape: AwsAmazonMqBrokerEncryptionOptionsDetails, location_name: "EncryptionOptions"))
    AwsAmazonMqBrokerDetails.add_member(:engine_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineType"))
    AwsAmazonMqBrokerDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineVersion"))
    AwsAmazonMqBrokerDetails.add_member(:host_instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HostInstanceType"))
    AwsAmazonMqBrokerDetails.add_member(:broker_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BrokerId"))
    AwsAmazonMqBrokerDetails.add_member(:ldap_server_metadata, Shapes::ShapeRef.new(shape: AwsAmazonMqBrokerLdapServerMetadataDetails, location_name: "LdapServerMetadata"))
    AwsAmazonMqBrokerDetails.add_member(:logs, Shapes::ShapeRef.new(shape: AwsAmazonMqBrokerLogsDetails, location_name: "Logs"))
    AwsAmazonMqBrokerDetails.add_member(:maintenance_window_start_time, Shapes::ShapeRef.new(shape: AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails, location_name: "MaintenanceWindowStartTime"))
    AwsAmazonMqBrokerDetails.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    AwsAmazonMqBrokerDetails.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroups"))
    AwsAmazonMqBrokerDetails.add_member(:storage_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StorageType"))
    AwsAmazonMqBrokerDetails.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SubnetIds"))
    AwsAmazonMqBrokerDetails.add_member(:users, Shapes::ShapeRef.new(shape: AwsAmazonMqBrokerUsersList, location_name: "Users"))
    AwsAmazonMqBrokerDetails.struct_class = Types::AwsAmazonMqBrokerDetails

    AwsAmazonMqBrokerEncryptionOptionsDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsAmazonMqBrokerEncryptionOptionsDetails.add_member(:use_aws_owned_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseAwsOwnedKey"))
    AwsAmazonMqBrokerEncryptionOptionsDetails.struct_class = Types::AwsAmazonMqBrokerEncryptionOptionsDetails

    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:hosts, Shapes::ShapeRef.new(shape: StringList, location_name: "Hosts"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:role_base, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleBase"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:role_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleName"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:role_search_matching, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleSearchMatching"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:role_search_subtree, Shapes::ShapeRef.new(shape: Boolean, location_name: "RoleSearchSubtree"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:service_account_username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceAccountUsername"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:user_base, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserBase"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:user_role_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserRoleName"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:user_search_matching, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserSearchMatching"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.add_member(:user_search_subtree, Shapes::ShapeRef.new(shape: Boolean, location_name: "UserSearchSubtree"))
    AwsAmazonMqBrokerLdapServerMetadataDetails.struct_class = Types::AwsAmazonMqBrokerLdapServerMetadataDetails

    AwsAmazonMqBrokerLogsDetails.add_member(:audit, Shapes::ShapeRef.new(shape: Boolean, location_name: "Audit"))
    AwsAmazonMqBrokerLogsDetails.add_member(:general, Shapes::ShapeRef.new(shape: Boolean, location_name: "General"))
    AwsAmazonMqBrokerLogsDetails.add_member(:audit_log_group, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AuditLogGroup"))
    AwsAmazonMqBrokerLogsDetails.add_member(:general_log_group, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GeneralLogGroup"))
    AwsAmazonMqBrokerLogsDetails.add_member(:pending, Shapes::ShapeRef.new(shape: AwsAmazonMqBrokerLogsPendingDetails, location_name: "Pending"))
    AwsAmazonMqBrokerLogsDetails.struct_class = Types::AwsAmazonMqBrokerLogsDetails

    AwsAmazonMqBrokerLogsPendingDetails.add_member(:audit, Shapes::ShapeRef.new(shape: Boolean, location_name: "Audit"))
    AwsAmazonMqBrokerLogsPendingDetails.add_member(:general, Shapes::ShapeRef.new(shape: Boolean, location_name: "General"))
    AwsAmazonMqBrokerLogsPendingDetails.struct_class = Types::AwsAmazonMqBrokerLogsPendingDetails

    AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails.add_member(:day_of_week, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DayOfWeek"))
    AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails.add_member(:time_of_day, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TimeOfDay"))
    AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails.add_member(:time_zone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TimeZone"))
    AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails.struct_class = Types::AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails

    AwsAmazonMqBrokerUsersDetails.add_member(:pending_change, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PendingChange"))
    AwsAmazonMqBrokerUsersDetails.add_member(:username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Username"))
    AwsAmazonMqBrokerUsersDetails.struct_class = Types::AwsAmazonMqBrokerUsersDetails

    AwsAmazonMqBrokerUsersList.member = Shapes::ShapeRef.new(shape: AwsAmazonMqBrokerUsersDetails)

    AwsApiCallAction.add_member(:api, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Api"))
    AwsApiCallAction.add_member(:service_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceName"))
    AwsApiCallAction.add_member(:caller_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CallerType"))
    AwsApiCallAction.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: ActionRemoteIpDetails, location_name: "RemoteIpDetails"))
    AwsApiCallAction.add_member(:domain_details, Shapes::ShapeRef.new(shape: AwsApiCallActionDomainDetails, location_name: "DomainDetails"))
    AwsApiCallAction.add_member(:affected_resources, Shapes::ShapeRef.new(shape: FieldMap, location_name: "AffectedResources"))
    AwsApiCallAction.add_member(:first_seen, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirstSeen"))
    AwsApiCallAction.add_member(:last_seen, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastSeen"))
    AwsApiCallAction.struct_class = Types::AwsApiCallAction

    AwsApiCallActionDomainDetails.add_member(:domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Domain"))
    AwsApiCallActionDomainDetails.struct_class = Types::AwsApiCallActionDomainDetails

    AwsApiGatewayAccessLogSettings.add_member(:format, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Format"))
    AwsApiGatewayAccessLogSettings.add_member(:destination_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationArn"))
    AwsApiGatewayAccessLogSettings.struct_class = Types::AwsApiGatewayAccessLogSettings

    AwsApiGatewayCanarySettings.add_member(:percent_traffic, Shapes::ShapeRef.new(shape: Double, location_name: "PercentTraffic"))
    AwsApiGatewayCanarySettings.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeploymentId"))
    AwsApiGatewayCanarySettings.add_member(:stage_variable_overrides, Shapes::ShapeRef.new(shape: FieldMap, location_name: "StageVariableOverrides"))
    AwsApiGatewayCanarySettings.add_member(:use_stage_cache, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseStageCache"))
    AwsApiGatewayCanarySettings.struct_class = Types::AwsApiGatewayCanarySettings

    AwsApiGatewayEndpointConfiguration.add_member(:types, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Types"))
    AwsApiGatewayEndpointConfiguration.struct_class = Types::AwsApiGatewayEndpointConfiguration

    AwsApiGatewayMethodSettings.add_member(:metrics_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MetricsEnabled"))
    AwsApiGatewayMethodSettings.add_member(:logging_level, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LoggingLevel"))
    AwsApiGatewayMethodSettings.add_member(:data_trace_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DataTraceEnabled"))
    AwsApiGatewayMethodSettings.add_member(:throttling_burst_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "ThrottlingBurstLimit"))
    AwsApiGatewayMethodSettings.add_member(:throttling_rate_limit, Shapes::ShapeRef.new(shape: Double, location_name: "ThrottlingRateLimit"))
    AwsApiGatewayMethodSettings.add_member(:caching_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CachingEnabled"))
    AwsApiGatewayMethodSettings.add_member(:cache_ttl_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "CacheTtlInSeconds"))
    AwsApiGatewayMethodSettings.add_member(:cache_data_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "CacheDataEncrypted"))
    AwsApiGatewayMethodSettings.add_member(:require_authorization_for_cache_control, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireAuthorizationForCacheControl"))
    AwsApiGatewayMethodSettings.add_member(:unauthorized_cache_control_header_strategy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UnauthorizedCacheControlHeaderStrategy"))
    AwsApiGatewayMethodSettings.add_member(:http_method, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpMethod"))
    AwsApiGatewayMethodSettings.add_member(:resource_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourcePath"))
    AwsApiGatewayMethodSettings.struct_class = Types::AwsApiGatewayMethodSettings

    AwsApiGatewayMethodSettingsList.member = Shapes::ShapeRef.new(shape: AwsApiGatewayMethodSettings)

    AwsApiGatewayRestApiDetails.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    AwsApiGatewayRestApiDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsApiGatewayRestApiDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsApiGatewayRestApiDetails.add_member(:created_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedDate"))
    AwsApiGatewayRestApiDetails.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    AwsApiGatewayRestApiDetails.add_member(:binary_media_types, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "BinaryMediaTypes"))
    AwsApiGatewayRestApiDetails.add_member(:minimum_compression_size, Shapes::ShapeRef.new(shape: Integer, location_name: "MinimumCompressionSize"))
    AwsApiGatewayRestApiDetails.add_member(:api_key_source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ApiKeySource"))
    AwsApiGatewayRestApiDetails.add_member(:endpoint_configuration, Shapes::ShapeRef.new(shape: AwsApiGatewayEndpointConfiguration, location_name: "EndpointConfiguration"))
    AwsApiGatewayRestApiDetails.struct_class = Types::AwsApiGatewayRestApiDetails

    AwsApiGatewayStageDetails.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeploymentId"))
    AwsApiGatewayStageDetails.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClientCertificateId"))
    AwsApiGatewayStageDetails.add_member(:stage_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StageName"))
    AwsApiGatewayStageDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsApiGatewayStageDetails.add_member(:cache_cluster_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CacheClusterEnabled"))
    AwsApiGatewayStageDetails.add_member(:cache_cluster_size, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CacheClusterSize"))
    AwsApiGatewayStageDetails.add_member(:cache_cluster_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CacheClusterStatus"))
    AwsApiGatewayStageDetails.add_member(:method_settings, Shapes::ShapeRef.new(shape: AwsApiGatewayMethodSettingsList, location_name: "MethodSettings"))
    AwsApiGatewayStageDetails.add_member(:variables, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Variables"))
    AwsApiGatewayStageDetails.add_member(:documentation_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DocumentationVersion"))
    AwsApiGatewayStageDetails.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AwsApiGatewayAccessLogSettings, location_name: "AccessLogSettings"))
    AwsApiGatewayStageDetails.add_member(:canary_settings, Shapes::ShapeRef.new(shape: AwsApiGatewayCanarySettings, location_name: "CanarySettings"))
    AwsApiGatewayStageDetails.add_member(:tracing_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "TracingEnabled"))
    AwsApiGatewayStageDetails.add_member(:created_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedDate"))
    AwsApiGatewayStageDetails.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastUpdatedDate"))
    AwsApiGatewayStageDetails.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WebAclArn"))
    AwsApiGatewayStageDetails.struct_class = Types::AwsApiGatewayStageDetails

    AwsApiGatewayV2ApiDetails.add_member(:api_endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ApiEndpoint"))
    AwsApiGatewayV2ApiDetails.add_member(:api_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ApiId"))
    AwsApiGatewayV2ApiDetails.add_member(:api_key_selection_expression, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ApiKeySelectionExpression"))
    AwsApiGatewayV2ApiDetails.add_member(:created_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedDate"))
    AwsApiGatewayV2ApiDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsApiGatewayV2ApiDetails.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    AwsApiGatewayV2ApiDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsApiGatewayV2ApiDetails.add_member(:protocol_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProtocolType"))
    AwsApiGatewayV2ApiDetails.add_member(:route_selection_expression, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RouteSelectionExpression"))
    AwsApiGatewayV2ApiDetails.add_member(:cors_configuration, Shapes::ShapeRef.new(shape: AwsCorsConfiguration, location_name: "CorsConfiguration"))
    AwsApiGatewayV2ApiDetails.struct_class = Types::AwsApiGatewayV2ApiDetails

    AwsApiGatewayV2RouteSettings.add_member(:detailed_metrics_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DetailedMetricsEnabled"))
    AwsApiGatewayV2RouteSettings.add_member(:logging_level, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LoggingLevel"))
    AwsApiGatewayV2RouteSettings.add_member(:data_trace_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DataTraceEnabled"))
    AwsApiGatewayV2RouteSettings.add_member(:throttling_burst_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "ThrottlingBurstLimit"))
    AwsApiGatewayV2RouteSettings.add_member(:throttling_rate_limit, Shapes::ShapeRef.new(shape: Double, location_name: "ThrottlingRateLimit"))
    AwsApiGatewayV2RouteSettings.struct_class = Types::AwsApiGatewayV2RouteSettings

    AwsApiGatewayV2StageDetails.add_member(:client_certificate_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClientCertificateId"))
    AwsApiGatewayV2StageDetails.add_member(:created_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedDate"))
    AwsApiGatewayV2StageDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsApiGatewayV2StageDetails.add_member(:default_route_settings, Shapes::ShapeRef.new(shape: AwsApiGatewayV2RouteSettings, location_name: "DefaultRouteSettings"))
    AwsApiGatewayV2StageDetails.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeploymentId"))
    AwsApiGatewayV2StageDetails.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastUpdatedDate"))
    AwsApiGatewayV2StageDetails.add_member(:route_settings, Shapes::ShapeRef.new(shape: AwsApiGatewayV2RouteSettings, location_name: "RouteSettings"))
    AwsApiGatewayV2StageDetails.add_member(:stage_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StageName"))
    AwsApiGatewayV2StageDetails.add_member(:stage_variables, Shapes::ShapeRef.new(shape: FieldMap, location_name: "StageVariables"))
    AwsApiGatewayV2StageDetails.add_member(:access_log_settings, Shapes::ShapeRef.new(shape: AwsApiGatewayAccessLogSettings, location_name: "AccessLogSettings"))
    AwsApiGatewayV2StageDetails.add_member(:auto_deploy, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoDeploy"))
    AwsApiGatewayV2StageDetails.add_member(:last_deployment_status_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastDeploymentStatusMessage"))
    AwsApiGatewayV2StageDetails.add_member(:api_gateway_managed, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApiGatewayManaged"))
    AwsApiGatewayV2StageDetails.struct_class = Types::AwsApiGatewayV2StageDetails

    AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails.add_member(:authentication_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AuthenticationType"))
    AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails.add_member(:lambda_authorizer_config, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails, location_name: "LambdaAuthorizerConfig"))
    AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiOpenIdConnectConfigDetails, location_name: "OpenIdConnectConfig"))
    AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails.add_member(:user_pool_config, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiUserPoolConfigDetails, location_name: "UserPoolConfig"))
    AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails.struct_class = Types::AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails

    AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersList.member = Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails)

    AwsAppSyncGraphQlApiDetails.add_member(:api_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ApiId"))
    AwsAppSyncGraphQlApiDetails.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    AwsAppSyncGraphQlApiDetails.add_member(:open_id_connect_config, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiOpenIdConnectConfigDetails, location_name: "OpenIdConnectConfig"))
    AwsAppSyncGraphQlApiDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsAppSyncGraphQlApiDetails.add_member(:lambda_authorizer_config, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails, location_name: "LambdaAuthorizerConfig"))
    AwsAppSyncGraphQlApiDetails.add_member(:xray_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "XrayEnabled"))
    AwsAppSyncGraphQlApiDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsAppSyncGraphQlApiDetails.add_member(:user_pool_config, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiUserPoolConfigDetails, location_name: "UserPoolConfig"))
    AwsAppSyncGraphQlApiDetails.add_member(:authentication_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AuthenticationType"))
    AwsAppSyncGraphQlApiDetails.add_member(:log_config, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiLogConfigDetails, location_name: "LogConfig"))
    AwsAppSyncGraphQlApiDetails.add_member(:additional_authentication_providers, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersList, location_name: "AdditionalAuthenticationProviders"))
    AwsAppSyncGraphQlApiDetails.add_member(:waf_web_acl_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WafWebAclArn"))
    AwsAppSyncGraphQlApiDetails.struct_class = Types::AwsAppSyncGraphQlApiDetails

    AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails.add_member(:authorizer_result_ttl_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "AuthorizerResultTtlInSeconds"))
    AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails.add_member(:authorizer_uri, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AuthorizerUri"))
    AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails.add_member(:identity_validation_expression, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IdentityValidationExpression"))
    AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails.struct_class = Types::AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails

    AwsAppSyncGraphQlApiLogConfigDetails.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CloudWatchLogsRoleArn"))
    AwsAppSyncGraphQlApiLogConfigDetails.add_member(:exclude_verbose_content, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExcludeVerboseContent"))
    AwsAppSyncGraphQlApiLogConfigDetails.add_member(:field_log_level, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FieldLogLevel"))
    AwsAppSyncGraphQlApiLogConfigDetails.struct_class = Types::AwsAppSyncGraphQlApiLogConfigDetails

    AwsAppSyncGraphQlApiOpenIdConnectConfigDetails.add_member(:auth_tt_l, Shapes::ShapeRef.new(shape: Long, location_name: "AuthTtL"))
    AwsAppSyncGraphQlApiOpenIdConnectConfigDetails.add_member(:client_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClientId"))
    AwsAppSyncGraphQlApiOpenIdConnectConfigDetails.add_member(:iat_tt_l, Shapes::ShapeRef.new(shape: Long, location_name: "IatTtL"))
    AwsAppSyncGraphQlApiOpenIdConnectConfigDetails.add_member(:issuer, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Issuer"))
    AwsAppSyncGraphQlApiOpenIdConnectConfigDetails.struct_class = Types::AwsAppSyncGraphQlApiOpenIdConnectConfigDetails

    AwsAppSyncGraphQlApiUserPoolConfigDetails.add_member(:app_id_client_regex, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AppIdClientRegex"))
    AwsAppSyncGraphQlApiUserPoolConfigDetails.add_member(:aws_region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AwsRegion"))
    AwsAppSyncGraphQlApiUserPoolConfigDetails.add_member(:default_action, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DefaultAction"))
    AwsAppSyncGraphQlApiUserPoolConfigDetails.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserPoolId"))
    AwsAppSyncGraphQlApiUserPoolConfigDetails.struct_class = Types::AwsAppSyncGraphQlApiUserPoolConfigDetails

    AwsAutoScalingAutoScalingGroupAvailabilityZonesList.member = Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails)

    AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.struct_class = Types::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails

    AwsAutoScalingAutoScalingGroupDetails.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchConfigurationName"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: StringList, location_name: "LoadBalancerNames"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:health_check_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HealthCheckType"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:health_check_grace_period, Shapes::ShapeRef.new(shape: Integer, location_name: "HealthCheckGracePeriod"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:created_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedTime"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:mixed_instances_policy, Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails, location_name: "MixedInstancesPolicy"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupAvailabilityZonesList, location_name: "AvailabilityZones"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:launch_template, Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification, location_name: "LaunchTemplate"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:capacity_rebalance, Shapes::ShapeRef.new(shape: Boolean, location_name: "CapacityRebalance"))
    AwsAutoScalingAutoScalingGroupDetails.struct_class = Types::AwsAutoScalingAutoScalingGroupDetails

    AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchTemplateId"))
    AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchTemplateName"))
    AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.struct_class = Types::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification

    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.add_member(:instances_distribution, Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails, location_name: "InstancesDistribution"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.add_member(:launch_template, Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails, location_name: "LaunchTemplate"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.struct_class = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails

    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.add_member(:on_demand_allocation_strategy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OnDemandAllocationStrategy"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.add_member(:on_demand_base_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "OnDemandBaseCapacity"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.add_member(:on_demand_percentage_above_base_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "OnDemandPercentageAboveBaseCapacity"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.add_member(:spot_allocation_strategy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SpotAllocationStrategy"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.add_member(:spot_instance_pools, Shapes::ShapeRef.new(shape: Integer, location_name: "SpotInstancePools"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.add_member(:spot_max_price, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SpotMaxPrice"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.struct_class = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails

    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.add_member(:launch_template_specification, Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification, location_name: "LaunchTemplateSpecification"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.add_member(:overrides, Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList, location_name: "Overrides"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.struct_class = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails

    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchTemplateId"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchTemplateName"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.struct_class = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification

    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList.member = Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails)

    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceType"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.add_member(:weighted_capacity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WeightedCapacity"))
    AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.struct_class = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails

    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.add_member(:device_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeviceName"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.add_member(:ebs, Shapes::ShapeRef.new(shape: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails, location_name: "Ebs"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.add_member(:no_device, Shapes::ShapeRef.new(shape: Boolean, location_name: "NoDevice"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.add_member(:virtual_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VirtualName"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.struct_class = Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails

    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteOnTermination"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotId"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.add_member(:volume_size, Shapes::ShapeRef.new(shape: Integer, location_name: "VolumeSize"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.add_member(:volume_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VolumeType"))
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.struct_class = Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails

    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList.member = Shapes::ShapeRef.new(shape: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails)

    AwsAutoScalingLaunchConfigurationDetails.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "AssociatePublicIpAddress"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList, location_name: "BlockDeviceMappings"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:classic_link_vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClassicLinkVpcId"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:classic_link_vpc_security_groups, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "ClassicLinkVpcSecurityGroups"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:created_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedTime"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: Boolean, location_name: "EbsOptimized"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IamInstanceProfile"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageId"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:instance_monitoring, Shapes::ShapeRef.new(shape: AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails, location_name: "InstanceMonitoring"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceType"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:kernel_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KernelId"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:key_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyName"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchConfigurationName"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:placement_tenancy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PlacementTenancy"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:ramdisk_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RamdiskId"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:security_groups, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroups"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:spot_price, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SpotPrice"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:user_data, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserData"))
    AwsAutoScalingLaunchConfigurationDetails.add_member(:metadata_options, Shapes::ShapeRef.new(shape: AwsAutoScalingLaunchConfigurationMetadataOptions, location_name: "MetadataOptions"))
    AwsAutoScalingLaunchConfigurationDetails.struct_class = Types::AwsAutoScalingLaunchConfigurationDetails

    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.struct_class = Types::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails

    AwsAutoScalingLaunchConfigurationMetadataOptions.add_member(:http_endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpEndpoint"))
    AwsAutoScalingLaunchConfigurationMetadataOptions.add_member(:http_put_response_hop_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "HttpPutResponseHopLimit"))
    AwsAutoScalingLaunchConfigurationMetadataOptions.add_member(:http_tokens, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpTokens"))
    AwsAutoScalingLaunchConfigurationMetadataOptions.struct_class = Types::AwsAutoScalingLaunchConfigurationMetadataOptions

    AwsBackupBackupPlanAdvancedBackupSettingsDetails.add_member(:backup_options, Shapes::ShapeRef.new(shape: FieldMap, location_name: "BackupOptions"))
    AwsBackupBackupPlanAdvancedBackupSettingsDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceType"))
    AwsBackupBackupPlanAdvancedBackupSettingsDetails.struct_class = Types::AwsBackupBackupPlanAdvancedBackupSettingsDetails

    AwsBackupBackupPlanAdvancedBackupSettingsList.member = Shapes::ShapeRef.new(shape: AwsBackupBackupPlanAdvancedBackupSettingsDetails)

    AwsBackupBackupPlanBackupPlanDetails.add_member(:backup_plan_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupPlanName"))
    AwsBackupBackupPlanBackupPlanDetails.add_member(:advanced_backup_settings, Shapes::ShapeRef.new(shape: AwsBackupBackupPlanAdvancedBackupSettingsList, location_name: "AdvancedBackupSettings"))
    AwsBackupBackupPlanBackupPlanDetails.add_member(:backup_plan_rule, Shapes::ShapeRef.new(shape: AwsBackupBackupPlanRuleList, location_name: "BackupPlanRule"))
    AwsBackupBackupPlanBackupPlanDetails.struct_class = Types::AwsBackupBackupPlanBackupPlanDetails

    AwsBackupBackupPlanDetails.add_member(:backup_plan, Shapes::ShapeRef.new(shape: AwsBackupBackupPlanBackupPlanDetails, location_name: "BackupPlan"))
    AwsBackupBackupPlanDetails.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupPlanArn"))
    AwsBackupBackupPlanDetails.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupPlanId"))
    AwsBackupBackupPlanDetails.add_member(:version_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VersionId"))
    AwsBackupBackupPlanDetails.struct_class = Types::AwsBackupBackupPlanDetails

    AwsBackupBackupPlanLifecycleDetails.add_member(:delete_after_days, Shapes::ShapeRef.new(shape: Long, location_name: "DeleteAfterDays"))
    AwsBackupBackupPlanLifecycleDetails.add_member(:move_to_cold_storage_after_days, Shapes::ShapeRef.new(shape: Long, location_name: "MoveToColdStorageAfterDays"))
    AwsBackupBackupPlanLifecycleDetails.struct_class = Types::AwsBackupBackupPlanLifecycleDetails

    AwsBackupBackupPlanRuleCopyActionsDetails.add_member(:destination_backup_vault_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationBackupVaultArn"))
    AwsBackupBackupPlanRuleCopyActionsDetails.add_member(:lifecycle, Shapes::ShapeRef.new(shape: AwsBackupBackupPlanLifecycleDetails, location_name: "Lifecycle"))
    AwsBackupBackupPlanRuleCopyActionsDetails.struct_class = Types::AwsBackupBackupPlanRuleCopyActionsDetails

    AwsBackupBackupPlanRuleCopyActionsList.member = Shapes::ShapeRef.new(shape: AwsBackupBackupPlanRuleCopyActionsDetails)

    AwsBackupBackupPlanRuleDetails.add_member(:target_backup_vault, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TargetBackupVault"))
    AwsBackupBackupPlanRuleDetails.add_member(:start_window_minutes, Shapes::ShapeRef.new(shape: Long, location_name: "StartWindowMinutes"))
    AwsBackupBackupPlanRuleDetails.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ScheduleExpression"))
    AwsBackupBackupPlanRuleDetails.add_member(:rule_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleName"))
    AwsBackupBackupPlanRuleDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsBackupBackupPlanRuleDetails.add_member(:enable_continuous_backup, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableContinuousBackup"))
    AwsBackupBackupPlanRuleDetails.add_member(:completion_window_minutes, Shapes::ShapeRef.new(shape: Long, location_name: "CompletionWindowMinutes"))
    AwsBackupBackupPlanRuleDetails.add_member(:copy_actions, Shapes::ShapeRef.new(shape: AwsBackupBackupPlanRuleCopyActionsList, location_name: "CopyActions"))
    AwsBackupBackupPlanRuleDetails.add_member(:lifecycle, Shapes::ShapeRef.new(shape: AwsBackupBackupPlanLifecycleDetails, location_name: "Lifecycle"))
    AwsBackupBackupPlanRuleDetails.struct_class = Types::AwsBackupBackupPlanRuleDetails

    AwsBackupBackupPlanRuleList.member = Shapes::ShapeRef.new(shape: AwsBackupBackupPlanRuleDetails)

    AwsBackupBackupVaultDetails.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupVaultArn"))
    AwsBackupBackupVaultDetails.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupVaultName"))
    AwsBackupBackupVaultDetails.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EncryptionKeyArn"))
    AwsBackupBackupVaultDetails.add_member(:notifications, Shapes::ShapeRef.new(shape: AwsBackupBackupVaultNotificationsDetails, location_name: "Notifications"))
    AwsBackupBackupVaultDetails.add_member(:access_policy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessPolicy"))
    AwsBackupBackupVaultDetails.struct_class = Types::AwsBackupBackupVaultDetails

    AwsBackupBackupVaultNotificationsDetails.add_member(:backup_vault_events, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "BackupVaultEvents"))
    AwsBackupBackupVaultNotificationsDetails.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnsTopicArn"))
    AwsBackupBackupVaultNotificationsDetails.struct_class = Types::AwsBackupBackupVaultNotificationsDetails

    AwsBackupRecoveryPointCalculatedLifecycleDetails.add_member(:delete_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeleteAt"))
    AwsBackupRecoveryPointCalculatedLifecycleDetails.add_member(:move_to_cold_storage_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MoveToColdStorageAt"))
    AwsBackupRecoveryPointCalculatedLifecycleDetails.struct_class = Types::AwsBackupRecoveryPointCalculatedLifecycleDetails

    AwsBackupRecoveryPointCreatedByDetails.add_member(:backup_plan_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupPlanArn"))
    AwsBackupRecoveryPointCreatedByDetails.add_member(:backup_plan_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupPlanId"))
    AwsBackupRecoveryPointCreatedByDetails.add_member(:backup_plan_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupPlanVersion"))
    AwsBackupRecoveryPointCreatedByDetails.add_member(:backup_rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupRuleId"))
    AwsBackupRecoveryPointCreatedByDetails.struct_class = Types::AwsBackupRecoveryPointCreatedByDetails

    AwsBackupRecoveryPointDetails.add_member(:backup_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "BackupSizeInBytes"))
    AwsBackupRecoveryPointDetails.add_member(:backup_vault_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupVaultArn"))
    AwsBackupRecoveryPointDetails.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BackupVaultName"))
    AwsBackupRecoveryPointDetails.add_member(:calculated_lifecycle, Shapes::ShapeRef.new(shape: AwsBackupRecoveryPointCalculatedLifecycleDetails, location_name: "CalculatedLifecycle"))
    AwsBackupRecoveryPointDetails.add_member(:completion_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CompletionDate"))
    AwsBackupRecoveryPointDetails.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsBackupRecoveryPointCreatedByDetails, location_name: "CreatedBy"))
    AwsBackupRecoveryPointDetails.add_member(:creation_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreationDate"))
    AwsBackupRecoveryPointDetails.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EncryptionKeyArn"))
    AwsBackupRecoveryPointDetails.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IamRoleArn"))
    AwsBackupRecoveryPointDetails.add_member(:is_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsEncrypted"))
    AwsBackupRecoveryPointDetails.add_member(:last_restore_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastRestoreTime"))
    AwsBackupRecoveryPointDetails.add_member(:lifecycle, Shapes::ShapeRef.new(shape: AwsBackupRecoveryPointLifecycleDetails, location_name: "Lifecycle"))
    AwsBackupRecoveryPointDetails.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RecoveryPointArn"))
    AwsBackupRecoveryPointDetails.add_member(:resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceArn"))
    AwsBackupRecoveryPointDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceType"))
    AwsBackupRecoveryPointDetails.add_member(:source_backup_vault_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceBackupVaultArn"))
    AwsBackupRecoveryPointDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsBackupRecoveryPointDetails.add_member(:status_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StatusMessage"))
    AwsBackupRecoveryPointDetails.add_member(:storage_class, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StorageClass"))
    AwsBackupRecoveryPointDetails.struct_class = Types::AwsBackupRecoveryPointDetails

    AwsBackupRecoveryPointLifecycleDetails.add_member(:delete_after_days, Shapes::ShapeRef.new(shape: Long, location_name: "DeleteAfterDays"))
    AwsBackupRecoveryPointLifecycleDetails.add_member(:move_to_cold_storage_after_days, Shapes::ShapeRef.new(shape: Long, location_name: "MoveToColdStorageAfterDays"))
    AwsBackupRecoveryPointLifecycleDetails.struct_class = Types::AwsBackupRecoveryPointLifecycleDetails

    AwsCertificateManagerCertificateDetails.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CertificateAuthorityArn"))
    AwsCertificateManagerCertificateDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedAt"))
    AwsCertificateManagerCertificateDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainName"))
    AwsCertificateManagerCertificateDetails.add_member(:domain_validation_options, Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateDomainValidationOptions, location_name: "DomainValidationOptions"))
    AwsCertificateManagerCertificateDetails.add_member(:extended_key_usages, Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateExtendedKeyUsages, location_name: "ExtendedKeyUsages"))
    AwsCertificateManagerCertificateDetails.add_member(:failure_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FailureReason"))
    AwsCertificateManagerCertificateDetails.add_member(:imported_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImportedAt"))
    AwsCertificateManagerCertificateDetails.add_member(:in_use_by, Shapes::ShapeRef.new(shape: StringList, location_name: "InUseBy"))
    AwsCertificateManagerCertificateDetails.add_member(:issued_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IssuedAt"))
    AwsCertificateManagerCertificateDetails.add_member(:issuer, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Issuer"))
    AwsCertificateManagerCertificateDetails.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyAlgorithm"))
    AwsCertificateManagerCertificateDetails.add_member(:key_usages, Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateKeyUsages, location_name: "KeyUsages"))
    AwsCertificateManagerCertificateDetails.add_member(:not_after, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NotAfter"))
    AwsCertificateManagerCertificateDetails.add_member(:not_before, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NotBefore"))
    AwsCertificateManagerCertificateDetails.add_member(:options, Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateOptions, location_name: "Options"))
    AwsCertificateManagerCertificateDetails.add_member(:renewal_eligibility, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RenewalEligibility"))
    AwsCertificateManagerCertificateDetails.add_member(:renewal_summary, Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateRenewalSummary, location_name: "RenewalSummary"))
    AwsCertificateManagerCertificateDetails.add_member(:serial, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Serial"))
    AwsCertificateManagerCertificateDetails.add_member(:signature_algorithm, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SignatureAlgorithm"))
    AwsCertificateManagerCertificateDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsCertificateManagerCertificateDetails.add_member(:subject, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Subject"))
    AwsCertificateManagerCertificateDetails.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: StringList, location_name: "SubjectAlternativeNames"))
    AwsCertificateManagerCertificateDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsCertificateManagerCertificateDetails.struct_class = Types::AwsCertificateManagerCertificateDetails

    AwsCertificateManagerCertificateDomainValidationOption.add_member(:domain_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainName"))
    AwsCertificateManagerCertificateDomainValidationOption.add_member(:resource_record, Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateResourceRecord, location_name: "ResourceRecord"))
    AwsCertificateManagerCertificateDomainValidationOption.add_member(:validation_domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ValidationDomain"))
    AwsCertificateManagerCertificateDomainValidationOption.add_member(:validation_emails, Shapes::ShapeRef.new(shape: StringList, location_name: "ValidationEmails"))
    AwsCertificateManagerCertificateDomainValidationOption.add_member(:validation_method, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ValidationMethod"))
    AwsCertificateManagerCertificateDomainValidationOption.add_member(:validation_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ValidationStatus"))
    AwsCertificateManagerCertificateDomainValidationOption.struct_class = Types::AwsCertificateManagerCertificateDomainValidationOption

    AwsCertificateManagerCertificateDomainValidationOptions.member = Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateDomainValidationOption)

    AwsCertificateManagerCertificateExtendedKeyUsage.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCertificateManagerCertificateExtendedKeyUsage.add_member(:o_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OId"))
    AwsCertificateManagerCertificateExtendedKeyUsage.struct_class = Types::AwsCertificateManagerCertificateExtendedKeyUsage

    AwsCertificateManagerCertificateExtendedKeyUsages.member = Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateExtendedKeyUsage)

    AwsCertificateManagerCertificateKeyUsage.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCertificateManagerCertificateKeyUsage.struct_class = Types::AwsCertificateManagerCertificateKeyUsage

    AwsCertificateManagerCertificateKeyUsages.member = Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateKeyUsage)

    AwsCertificateManagerCertificateOptions.add_member(:certificate_transparency_logging_preference, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CertificateTransparencyLoggingPreference"))
    AwsCertificateManagerCertificateOptions.struct_class = Types::AwsCertificateManagerCertificateOptions

    AwsCertificateManagerCertificateRenewalSummary.add_member(:domain_validation_options, Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateDomainValidationOptions, location_name: "DomainValidationOptions"))
    AwsCertificateManagerCertificateRenewalSummary.add_member(:renewal_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RenewalStatus"))
    AwsCertificateManagerCertificateRenewalSummary.add_member(:renewal_status_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RenewalStatusReason"))
    AwsCertificateManagerCertificateRenewalSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UpdatedAt"))
    AwsCertificateManagerCertificateRenewalSummary.struct_class = Types::AwsCertificateManagerCertificateRenewalSummary

    AwsCertificateManagerCertificateResourceRecord.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCertificateManagerCertificateResourceRecord.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsCertificateManagerCertificateResourceRecord.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsCertificateManagerCertificateResourceRecord.struct_class = Types::AwsCertificateManagerCertificateResourceRecord

    AwsCloudFormationStackDetails.add_member(:capabilities, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Capabilities"))
    AwsCloudFormationStackDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreationTime"))
    AwsCloudFormationStackDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsCloudFormationStackDetails.add_member(:disable_rollback, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableRollback"))
    AwsCloudFormationStackDetails.add_member(:drift_information, Shapes::ShapeRef.new(shape: AwsCloudFormationStackDriftInformationDetails, location_name: "DriftInformation"))
    AwsCloudFormationStackDetails.add_member(:enable_termination_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableTerminationProtection"))
    AwsCloudFormationStackDetails.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastUpdatedTime"))
    AwsCloudFormationStackDetails.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "NotificationArns"))
    AwsCloudFormationStackDetails.add_member(:outputs, Shapes::ShapeRef.new(shape: AwsCloudFormationStackOutputsList, location_name: "Outputs"))
    AwsCloudFormationStackDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleArn"))
    AwsCloudFormationStackDetails.add_member(:stack_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StackId"))
    AwsCloudFormationStackDetails.add_member(:stack_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StackName"))
    AwsCloudFormationStackDetails.add_member(:stack_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StackStatus"))
    AwsCloudFormationStackDetails.add_member(:stack_status_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StackStatusReason"))
    AwsCloudFormationStackDetails.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "TimeoutInMinutes"))
    AwsCloudFormationStackDetails.struct_class = Types::AwsCloudFormationStackDetails

    AwsCloudFormationStackDriftInformationDetails.add_member(:stack_drift_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StackDriftStatus"))
    AwsCloudFormationStackDriftInformationDetails.struct_class = Types::AwsCloudFormationStackDriftInformationDetails

    AwsCloudFormationStackOutputsDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsCloudFormationStackOutputsDetails.add_member(:output_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OutputKey"))
    AwsCloudFormationStackOutputsDetails.add_member(:output_value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OutputValue"))
    AwsCloudFormationStackOutputsDetails.struct_class = Types::AwsCloudFormationStackOutputsDetails

    AwsCloudFormationStackOutputsList.member = Shapes::ShapeRef.new(shape: AwsCloudFormationStackOutputsDetails)

    AwsCloudFrontDistributionCacheBehavior.add_member(:viewer_protocol_policy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ViewerProtocolPolicy"))
    AwsCloudFrontDistributionCacheBehavior.struct_class = Types::AwsCloudFrontDistributionCacheBehavior

    AwsCloudFrontDistributionCacheBehaviors.add_member(:items, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionCacheBehaviorsItemList, location_name: "Items"))
    AwsCloudFrontDistributionCacheBehaviors.struct_class = Types::AwsCloudFrontDistributionCacheBehaviors

    AwsCloudFrontDistributionCacheBehaviorsItemList.member = Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionCacheBehavior)

    AwsCloudFrontDistributionDefaultCacheBehavior.add_member(:viewer_protocol_policy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ViewerProtocolPolicy"))
    AwsCloudFrontDistributionDefaultCacheBehavior.struct_class = Types::AwsCloudFrontDistributionDefaultCacheBehavior

    AwsCloudFrontDistributionDetails.add_member(:cache_behaviors, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionCacheBehaviors, location_name: "CacheBehaviors"))
    AwsCloudFrontDistributionDetails.add_member(:default_cache_behavior, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionDefaultCacheBehavior, location_name: "DefaultCacheBehavior"))
    AwsCloudFrontDistributionDetails.add_member(:default_root_object, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DefaultRootObject"))
    AwsCloudFrontDistributionDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainName"))
    AwsCloudFrontDistributionDetails.add_member(:etag, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ETag"))
    AwsCloudFrontDistributionDetails.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastModifiedTime"))
    AwsCloudFrontDistributionDetails.add_member(:logging, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionLogging, location_name: "Logging"))
    AwsCloudFrontDistributionDetails.add_member(:origins, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOrigins, location_name: "Origins"))
    AwsCloudFrontDistributionDetails.add_member(:origin_groups, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginGroups, location_name: "OriginGroups"))
    AwsCloudFrontDistributionDetails.add_member(:viewer_certificate, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionViewerCertificate, location_name: "ViewerCertificate"))
    AwsCloudFrontDistributionDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsCloudFrontDistributionDetails.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WebAclId"))
    AwsCloudFrontDistributionDetails.struct_class = Types::AwsCloudFrontDistributionDetails

    AwsCloudFrontDistributionLogging.add_member(:bucket, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Bucket"))
    AwsCloudFrontDistributionLogging.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsCloudFrontDistributionLogging.add_member(:include_cookies, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeCookies"))
    AwsCloudFrontDistributionLogging.add_member(:prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Prefix"))
    AwsCloudFrontDistributionLogging.struct_class = Types::AwsCloudFrontDistributionLogging

    AwsCloudFrontDistributionOriginCustomOriginConfig.add_member(:http_port, Shapes::ShapeRef.new(shape: Integer, location_name: "HttpPort"))
    AwsCloudFrontDistributionOriginCustomOriginConfig.add_member(:https_port, Shapes::ShapeRef.new(shape: Integer, location_name: "HttpsPort"))
    AwsCloudFrontDistributionOriginCustomOriginConfig.add_member(:origin_keepalive_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "OriginKeepaliveTimeout"))
    AwsCloudFrontDistributionOriginCustomOriginConfig.add_member(:origin_protocol_policy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OriginProtocolPolicy"))
    AwsCloudFrontDistributionOriginCustomOriginConfig.add_member(:origin_read_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "OriginReadTimeout"))
    AwsCloudFrontDistributionOriginCustomOriginConfig.add_member(:origin_ssl_protocols, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginSslProtocols, location_name: "OriginSslProtocols"))
    AwsCloudFrontDistributionOriginCustomOriginConfig.struct_class = Types::AwsCloudFrontDistributionOriginCustomOriginConfig

    AwsCloudFrontDistributionOriginGroup.add_member(:failover_criteria, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginGroupFailover, location_name: "FailoverCriteria"))
    AwsCloudFrontDistributionOriginGroup.struct_class = Types::AwsCloudFrontDistributionOriginGroup

    AwsCloudFrontDistributionOriginGroupFailover.add_member(:status_codes, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginGroupFailoverStatusCodes, location_name: "StatusCodes"))
    AwsCloudFrontDistributionOriginGroupFailover.struct_class = Types::AwsCloudFrontDistributionOriginGroupFailover

    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.add_member(:items, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList, location_name: "Items"))
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.add_member(:quantity, Shapes::ShapeRef.new(shape: Integer, location_name: "Quantity"))
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.struct_class = Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes

    AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList.member = Shapes::ShapeRef.new(shape: Integer)

    AwsCloudFrontDistributionOriginGroups.add_member(:items, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginGroupsItemList, location_name: "Items"))
    AwsCloudFrontDistributionOriginGroups.struct_class = Types::AwsCloudFrontDistributionOriginGroups

    AwsCloudFrontDistributionOriginGroupsItemList.member = Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginGroup)

    AwsCloudFrontDistributionOriginItem.add_member(:domain_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainName"))
    AwsCloudFrontDistributionOriginItem.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    AwsCloudFrontDistributionOriginItem.add_member(:origin_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OriginPath"))
    AwsCloudFrontDistributionOriginItem.add_member(:s3_origin_config, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginS3OriginConfig, location_name: "S3OriginConfig"))
    AwsCloudFrontDistributionOriginItem.add_member(:custom_origin_config, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginCustomOriginConfig, location_name: "CustomOriginConfig"))
    AwsCloudFrontDistributionOriginItem.struct_class = Types::AwsCloudFrontDistributionOriginItem

    AwsCloudFrontDistributionOriginItemList.member = Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginItem)

    AwsCloudFrontDistributionOriginS3OriginConfig.add_member(:origin_access_identity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OriginAccessIdentity"))
    AwsCloudFrontDistributionOriginS3OriginConfig.struct_class = Types::AwsCloudFrontDistributionOriginS3OriginConfig

    AwsCloudFrontDistributionOriginSslProtocols.add_member(:items, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Items"))
    AwsCloudFrontDistributionOriginSslProtocols.add_member(:quantity, Shapes::ShapeRef.new(shape: Integer, location_name: "Quantity"))
    AwsCloudFrontDistributionOriginSslProtocols.struct_class = Types::AwsCloudFrontDistributionOriginSslProtocols

    AwsCloudFrontDistributionOrigins.add_member(:items, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginItemList, location_name: "Items"))
    AwsCloudFrontDistributionOrigins.struct_class = Types::AwsCloudFrontDistributionOrigins

    AwsCloudFrontDistributionViewerCertificate.add_member(:acm_certificate_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AcmCertificateArn"))
    AwsCloudFrontDistributionViewerCertificate.add_member(:certificate, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Certificate"))
    AwsCloudFrontDistributionViewerCertificate.add_member(:certificate_source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CertificateSource"))
    AwsCloudFrontDistributionViewerCertificate.add_member(:cloud_front_default_certificate, Shapes::ShapeRef.new(shape: Boolean, location_name: "CloudFrontDefaultCertificate"))
    AwsCloudFrontDistributionViewerCertificate.add_member(:iam_certificate_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IamCertificateId"))
    AwsCloudFrontDistributionViewerCertificate.add_member(:minimum_protocol_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MinimumProtocolVersion"))
    AwsCloudFrontDistributionViewerCertificate.add_member(:ssl_support_method, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SslSupportMethod"))
    AwsCloudFrontDistributionViewerCertificate.struct_class = Types::AwsCloudFrontDistributionViewerCertificate

    AwsCloudTrailTrailDetails.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CloudWatchLogsLogGroupArn"))
    AwsCloudTrailTrailDetails.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CloudWatchLogsRoleArn"))
    AwsCloudTrailTrailDetails.add_member(:has_custom_event_selectors, Shapes::ShapeRef.new(shape: Boolean, location_name: "HasCustomEventSelectors"))
    AwsCloudTrailTrailDetails.add_member(:home_region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HomeRegion"))
    AwsCloudTrailTrailDetails.add_member(:include_global_service_events, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeGlobalServiceEvents"))
    AwsCloudTrailTrailDetails.add_member(:is_multi_region_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMultiRegionTrail"))
    AwsCloudTrailTrailDetails.add_member(:is_organization_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsOrganizationTrail"))
    AwsCloudTrailTrailDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsCloudTrailTrailDetails.add_member(:log_file_validation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "LogFileValidationEnabled"))
    AwsCloudTrailTrailDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCloudTrailTrailDetails.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3BucketName"))
    AwsCloudTrailTrailDetails.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3KeyPrefix"))
    AwsCloudTrailTrailDetails.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnsTopicArn"))
    AwsCloudTrailTrailDetails.add_member(:sns_topic_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnsTopicName"))
    AwsCloudTrailTrailDetails.add_member(:trail_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TrailArn"))
    AwsCloudTrailTrailDetails.struct_class = Types::AwsCloudTrailTrailDetails

    AwsCloudWatchAlarmDetails.add_member(:actions_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ActionsEnabled"))
    AwsCloudWatchAlarmDetails.add_member(:alarm_actions, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AlarmActions"))
    AwsCloudWatchAlarmDetails.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AlarmArn"))
    AwsCloudWatchAlarmDetails.add_member(:alarm_configuration_updated_timestamp, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AlarmConfigurationUpdatedTimestamp"))
    AwsCloudWatchAlarmDetails.add_member(:alarm_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AlarmDescription"))
    AwsCloudWatchAlarmDetails.add_member(:alarm_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AlarmName"))
    AwsCloudWatchAlarmDetails.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ComparisonOperator"))
    AwsCloudWatchAlarmDetails.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: Integer, location_name: "DatapointsToAlarm"))
    AwsCloudWatchAlarmDetails.add_member(:dimensions, Shapes::ShapeRef.new(shape: AwsCloudWatchAlarmDimensionsList, location_name: "Dimensions"))
    AwsCloudWatchAlarmDetails.add_member(:evaluate_low_sample_count_percentile, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EvaluateLowSampleCountPercentile"))
    AwsCloudWatchAlarmDetails.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: Integer, location_name: "EvaluationPeriods"))
    AwsCloudWatchAlarmDetails.add_member(:extended_statistic, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ExtendedStatistic"))
    AwsCloudWatchAlarmDetails.add_member(:insufficient_data_actions, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "InsufficientDataActions"))
    AwsCloudWatchAlarmDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsCloudWatchAlarmDetails.add_member(:namespace, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Namespace"))
    AwsCloudWatchAlarmDetails.add_member(:ok_actions, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "OkActions"))
    AwsCloudWatchAlarmDetails.add_member(:period, Shapes::ShapeRef.new(shape: Integer, location_name: "Period"))
    AwsCloudWatchAlarmDetails.add_member(:statistic, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Statistic"))
    AwsCloudWatchAlarmDetails.add_member(:threshold, Shapes::ShapeRef.new(shape: Double, location_name: "Threshold"))
    AwsCloudWatchAlarmDetails.add_member(:threshold_metric_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ThresholdMetricId"))
    AwsCloudWatchAlarmDetails.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TreatMissingData"))
    AwsCloudWatchAlarmDetails.add_member(:unit, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Unit"))
    AwsCloudWatchAlarmDetails.struct_class = Types::AwsCloudWatchAlarmDetails

    AwsCloudWatchAlarmDimensionsDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCloudWatchAlarmDimensionsDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsCloudWatchAlarmDimensionsDetails.struct_class = Types::AwsCloudWatchAlarmDimensionsDetails

    AwsCloudWatchAlarmDimensionsList.member = Shapes::ShapeRef.new(shape: AwsCloudWatchAlarmDimensionsDetails)

    AwsCodeBuildProjectArtifactsDetails.add_member(:artifact_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ArtifactIdentifier"))
    AwsCodeBuildProjectArtifactsDetails.add_member(:encryption_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EncryptionDisabled"))
    AwsCodeBuildProjectArtifactsDetails.add_member(:location, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Location"))
    AwsCodeBuildProjectArtifactsDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCodeBuildProjectArtifactsDetails.add_member(:namespace_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NamespaceType"))
    AwsCodeBuildProjectArtifactsDetails.add_member(:override_artifact_name, Shapes::ShapeRef.new(shape: Boolean, location_name: "OverrideArtifactName"))
    AwsCodeBuildProjectArtifactsDetails.add_member(:packaging, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Packaging"))
    AwsCodeBuildProjectArtifactsDetails.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    AwsCodeBuildProjectArtifactsDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsCodeBuildProjectArtifactsDetails.struct_class = Types::AwsCodeBuildProjectArtifactsDetails

    AwsCodeBuildProjectArtifactsList.member = Shapes::ShapeRef.new(shape: AwsCodeBuildProjectArtifactsDetails)

    AwsCodeBuildProjectDetails.add_member(:encryption_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EncryptionKey"))
    AwsCodeBuildProjectDetails.add_member(:artifacts, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectArtifactsList, location_name: "Artifacts"))
    AwsCodeBuildProjectDetails.add_member(:environment, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectEnvironment, location_name: "Environment"))
    AwsCodeBuildProjectDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCodeBuildProjectDetails.add_member(:source, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectSource, location_name: "Source"))
    AwsCodeBuildProjectDetails.add_member(:service_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceRole"))
    AwsCodeBuildProjectDetails.add_member(:logs_config, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectLogsConfigDetails, location_name: "LogsConfig"))
    AwsCodeBuildProjectDetails.add_member(:vpc_config, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectVpcConfig, location_name: "VpcConfig"))
    AwsCodeBuildProjectDetails.add_member(:secondary_artifacts, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectArtifactsList, location_name: "SecondaryArtifacts"))
    AwsCodeBuildProjectDetails.struct_class = Types::AwsCodeBuildProjectDetails

    AwsCodeBuildProjectEnvironment.add_member(:certificate, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Certificate"))
    AwsCodeBuildProjectEnvironment.add_member(:environment_variables, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectEnvironmentEnvironmentVariablesList, location_name: "EnvironmentVariables"))
    AwsCodeBuildProjectEnvironment.add_member(:privileged_mode, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrivilegedMode"))
    AwsCodeBuildProjectEnvironment.add_member(:image_pull_credentials_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImagePullCredentialsType"))
    AwsCodeBuildProjectEnvironment.add_member(:registry_credential, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectEnvironmentRegistryCredential, location_name: "RegistryCredential"))
    AwsCodeBuildProjectEnvironment.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsCodeBuildProjectEnvironment.struct_class = Types::AwsCodeBuildProjectEnvironment

    AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.struct_class = Types::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails

    AwsCodeBuildProjectEnvironmentEnvironmentVariablesList.member = Shapes::ShapeRef.new(shape: AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails)

    AwsCodeBuildProjectEnvironmentRegistryCredential.add_member(:credential, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Credential"))
    AwsCodeBuildProjectEnvironmentRegistryCredential.add_member(:credential_provider, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CredentialProvider"))
    AwsCodeBuildProjectEnvironmentRegistryCredential.struct_class = Types::AwsCodeBuildProjectEnvironmentRegistryCredential

    AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.add_member(:stream_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StreamName"))
    AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.struct_class = Types::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails

    AwsCodeBuildProjectLogsConfigDetails.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails, location_name: "CloudWatchLogs"))
    AwsCodeBuildProjectLogsConfigDetails.add_member(:s3_logs, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectLogsConfigS3LogsDetails, location_name: "S3Logs"))
    AwsCodeBuildProjectLogsConfigDetails.struct_class = Types::AwsCodeBuildProjectLogsConfigDetails

    AwsCodeBuildProjectLogsConfigS3LogsDetails.add_member(:encryption_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EncryptionDisabled"))
    AwsCodeBuildProjectLogsConfigS3LogsDetails.add_member(:location, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Location"))
    AwsCodeBuildProjectLogsConfigS3LogsDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsCodeBuildProjectLogsConfigS3LogsDetails.struct_class = Types::AwsCodeBuildProjectLogsConfigS3LogsDetails

    AwsCodeBuildProjectSource.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsCodeBuildProjectSource.add_member(:location, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Location"))
    AwsCodeBuildProjectSource.add_member(:git_clone_depth, Shapes::ShapeRef.new(shape: Integer, location_name: "GitCloneDepth"))
    AwsCodeBuildProjectSource.add_member(:insecure_ssl, Shapes::ShapeRef.new(shape: Boolean, location_name: "InsecureSsl"))
    AwsCodeBuildProjectSource.struct_class = Types::AwsCodeBuildProjectSource

    AwsCodeBuildProjectVpcConfig.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsCodeBuildProjectVpcConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Subnets"))
    AwsCodeBuildProjectVpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroupIds"))
    AwsCodeBuildProjectVpcConfig.struct_class = Types::AwsCodeBuildProjectVpcConfig

    AwsCorsConfiguration.add_member(:allow_origins, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AllowOrigins"))
    AwsCorsConfiguration.add_member(:allow_credentials, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowCredentials"))
    AwsCorsConfiguration.add_member(:expose_headers, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "ExposeHeaders"))
    AwsCorsConfiguration.add_member(:max_age, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAge"))
    AwsCorsConfiguration.add_member(:allow_methods, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AllowMethods"))
    AwsCorsConfiguration.add_member(:allow_headers, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AllowHeaders"))
    AwsCorsConfiguration.struct_class = Types::AwsCorsConfiguration

    AwsDynamoDbTableAttributeDefinition.add_member(:attribute_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AttributeName"))
    AwsDynamoDbTableAttributeDefinition.add_member(:attribute_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AttributeType"))
    AwsDynamoDbTableAttributeDefinition.struct_class = Types::AwsDynamoDbTableAttributeDefinition

    AwsDynamoDbTableAttributeDefinitionList.member = Shapes::ShapeRef.new(shape: AwsDynamoDbTableAttributeDefinition)

    AwsDynamoDbTableBillingModeSummary.add_member(:billing_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BillingMode"))
    AwsDynamoDbTableBillingModeSummary.add_member(:last_update_to_pay_per_request_date_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastUpdateToPayPerRequestDateTime"))
    AwsDynamoDbTableBillingModeSummary.struct_class = Types::AwsDynamoDbTableBillingModeSummary

    AwsDynamoDbTableDetails.add_member(:attribute_definitions, Shapes::ShapeRef.new(shape: AwsDynamoDbTableAttributeDefinitionList, location_name: "AttributeDefinitions"))
    AwsDynamoDbTableDetails.add_member(:billing_mode_summary, Shapes::ShapeRef.new(shape: AwsDynamoDbTableBillingModeSummary, location_name: "BillingModeSummary"))
    AwsDynamoDbTableDetails.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreationDateTime"))
    AwsDynamoDbTableDetails.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: AwsDynamoDbTableGlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    AwsDynamoDbTableDetails.add_member(:global_table_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GlobalTableVersion"))
    AwsDynamoDbTableDetails.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ItemCount"))
    AwsDynamoDbTableDetails.add_member(:key_schema, Shapes::ShapeRef.new(shape: AwsDynamoDbTableKeySchemaList, location_name: "KeySchema"))
    AwsDynamoDbTableDetails.add_member(:latest_stream_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LatestStreamArn"))
    AwsDynamoDbTableDetails.add_member(:latest_stream_label, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LatestStreamLabel"))
    AwsDynamoDbTableDetails.add_member(:local_secondary_indexes, Shapes::ShapeRef.new(shape: AwsDynamoDbTableLocalSecondaryIndexList, location_name: "LocalSecondaryIndexes"))
    AwsDynamoDbTableDetails.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: AwsDynamoDbTableProvisionedThroughput, location_name: "ProvisionedThroughput"))
    AwsDynamoDbTableDetails.add_member(:replicas, Shapes::ShapeRef.new(shape: AwsDynamoDbTableReplicaList, location_name: "Replicas"))
    AwsDynamoDbTableDetails.add_member(:restore_summary, Shapes::ShapeRef.new(shape: AwsDynamoDbTableRestoreSummary, location_name: "RestoreSummary"))
    AwsDynamoDbTableDetails.add_member(:sse_description, Shapes::ShapeRef.new(shape: AwsDynamoDbTableSseDescription, location_name: "SseDescription"))
    AwsDynamoDbTableDetails.add_member(:stream_specification, Shapes::ShapeRef.new(shape: AwsDynamoDbTableStreamSpecification, location_name: "StreamSpecification"))
    AwsDynamoDbTableDetails.add_member(:table_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TableId"))
    AwsDynamoDbTableDetails.add_member(:table_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TableName"))
    AwsDynamoDbTableDetails.add_member(:table_size_bytes, Shapes::ShapeRef.new(shape: SizeBytes, location_name: "TableSizeBytes"))
    AwsDynamoDbTableDetails.add_member(:table_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TableStatus"))
    AwsDynamoDbTableDetails.struct_class = Types::AwsDynamoDbTableDetails

    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:backfilling, Shapes::ShapeRef.new(shape: Boolean, location_name: "Backfilling"))
    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:index_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IndexArn"))
    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:index_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IndexName"))
    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:index_size_bytes, Shapes::ShapeRef.new(shape: SizeBytes, location_name: "IndexSizeBytes"))
    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:index_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IndexStatus"))
    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ItemCount"))
    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:key_schema, Shapes::ShapeRef.new(shape: AwsDynamoDbTableKeySchemaList, location_name: "KeySchema"))
    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:projection, Shapes::ShapeRef.new(shape: AwsDynamoDbTableProjection, location_name: "Projection"))
    AwsDynamoDbTableGlobalSecondaryIndex.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: AwsDynamoDbTableProvisionedThroughput, location_name: "ProvisionedThroughput"))
    AwsDynamoDbTableGlobalSecondaryIndex.struct_class = Types::AwsDynamoDbTableGlobalSecondaryIndex

    AwsDynamoDbTableGlobalSecondaryIndexList.member = Shapes::ShapeRef.new(shape: AwsDynamoDbTableGlobalSecondaryIndex)

    AwsDynamoDbTableKeySchema.add_member(:attribute_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AttributeName"))
    AwsDynamoDbTableKeySchema.add_member(:key_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyType"))
    AwsDynamoDbTableKeySchema.struct_class = Types::AwsDynamoDbTableKeySchema

    AwsDynamoDbTableKeySchemaList.member = Shapes::ShapeRef.new(shape: AwsDynamoDbTableKeySchema)

    AwsDynamoDbTableLocalSecondaryIndex.add_member(:index_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IndexArn"))
    AwsDynamoDbTableLocalSecondaryIndex.add_member(:index_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IndexName"))
    AwsDynamoDbTableLocalSecondaryIndex.add_member(:key_schema, Shapes::ShapeRef.new(shape: AwsDynamoDbTableKeySchemaList, location_name: "KeySchema"))
    AwsDynamoDbTableLocalSecondaryIndex.add_member(:projection, Shapes::ShapeRef.new(shape: AwsDynamoDbTableProjection, location_name: "Projection"))
    AwsDynamoDbTableLocalSecondaryIndex.struct_class = Types::AwsDynamoDbTableLocalSecondaryIndex

    AwsDynamoDbTableLocalSecondaryIndexList.member = Shapes::ShapeRef.new(shape: AwsDynamoDbTableLocalSecondaryIndex)

    AwsDynamoDbTableProjection.add_member(:non_key_attributes, Shapes::ShapeRef.new(shape: StringList, location_name: "NonKeyAttributes"))
    AwsDynamoDbTableProjection.add_member(:projection_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProjectionType"))
    AwsDynamoDbTableProjection.struct_class = Types::AwsDynamoDbTableProjection

    AwsDynamoDbTableProvisionedThroughput.add_member(:last_decrease_date_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastDecreaseDateTime"))
    AwsDynamoDbTableProvisionedThroughput.add_member(:last_increase_date_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastIncreaseDateTime"))
    AwsDynamoDbTableProvisionedThroughput.add_member(:number_of_decreases_today, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfDecreasesToday"))
    AwsDynamoDbTableProvisionedThroughput.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: Integer, location_name: "ReadCapacityUnits"))
    AwsDynamoDbTableProvisionedThroughput.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: Integer, location_name: "WriteCapacityUnits"))
    AwsDynamoDbTableProvisionedThroughput.struct_class = Types::AwsDynamoDbTableProvisionedThroughput

    AwsDynamoDbTableProvisionedThroughputOverride.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: Integer, location_name: "ReadCapacityUnits"))
    AwsDynamoDbTableProvisionedThroughputOverride.struct_class = Types::AwsDynamoDbTableProvisionedThroughputOverride

    AwsDynamoDbTableReplica.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: AwsDynamoDbTableReplicaGlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    AwsDynamoDbTableReplica.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsMasterKeyId"))
    AwsDynamoDbTableReplica.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: AwsDynamoDbTableProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    AwsDynamoDbTableReplica.add_member(:region_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegionName"))
    AwsDynamoDbTableReplica.add_member(:replica_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ReplicaStatus"))
    AwsDynamoDbTableReplica.add_member(:replica_status_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ReplicaStatusDescription"))
    AwsDynamoDbTableReplica.struct_class = Types::AwsDynamoDbTableReplica

    AwsDynamoDbTableReplicaGlobalSecondaryIndex.add_member(:index_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IndexName"))
    AwsDynamoDbTableReplicaGlobalSecondaryIndex.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: AwsDynamoDbTableProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    AwsDynamoDbTableReplicaGlobalSecondaryIndex.struct_class = Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex

    AwsDynamoDbTableReplicaGlobalSecondaryIndexList.member = Shapes::ShapeRef.new(shape: AwsDynamoDbTableReplicaGlobalSecondaryIndex)

    AwsDynamoDbTableReplicaList.member = Shapes::ShapeRef.new(shape: AwsDynamoDbTableReplica)

    AwsDynamoDbTableRestoreSummary.add_member(:source_backup_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceBackupArn"))
    AwsDynamoDbTableRestoreSummary.add_member(:source_table_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceTableArn"))
    AwsDynamoDbTableRestoreSummary.add_member(:restore_date_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RestoreDateTime"))
    AwsDynamoDbTableRestoreSummary.add_member(:restore_in_progress, Shapes::ShapeRef.new(shape: Boolean, location_name: "RestoreInProgress"))
    AwsDynamoDbTableRestoreSummary.struct_class = Types::AwsDynamoDbTableRestoreSummary

    AwsDynamoDbTableSseDescription.add_member(:inaccessible_encryption_date_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InaccessibleEncryptionDateTime"))
    AwsDynamoDbTableSseDescription.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsDynamoDbTableSseDescription.add_member(:sse_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SseType"))
    AwsDynamoDbTableSseDescription.add_member(:kms_master_key_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsMasterKeyArn"))
    AwsDynamoDbTableSseDescription.struct_class = Types::AwsDynamoDbTableSseDescription

    AwsDynamoDbTableStreamSpecification.add_member(:stream_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "StreamEnabled"))
    AwsDynamoDbTableStreamSpecification.add_member(:stream_view_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StreamViewType"))
    AwsDynamoDbTableStreamSpecification.struct_class = Types::AwsDynamoDbTableStreamSpecification

    AwsEc2EipDetails.add_member(:instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceId"))
    AwsEc2EipDetails.add_member(:public_ip, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PublicIp"))
    AwsEc2EipDetails.add_member(:allocation_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AllocationId"))
    AwsEc2EipDetails.add_member(:association_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociationId"))
    AwsEc2EipDetails.add_member(:domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Domain"))
    AwsEc2EipDetails.add_member(:public_ipv_4_pool, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PublicIpv4Pool"))
    AwsEc2EipDetails.add_member(:network_border_group, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkBorderGroup"))
    AwsEc2EipDetails.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkInterfaceId"))
    AwsEc2EipDetails.add_member(:network_interface_owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkInterfaceOwnerId"))
    AwsEc2EipDetails.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrivateIpAddress"))
    AwsEc2EipDetails.struct_class = Types::AwsEc2EipDetails

    AwsEc2InstanceDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEc2InstanceDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageId"))
    AwsEc2InstanceDetails.add_member(:ip_v4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "IpV4Addresses"))
    AwsEc2InstanceDetails.add_member(:ip_v6_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "IpV6Addresses"))
    AwsEc2InstanceDetails.add_member(:key_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyName"))
    AwsEc2InstanceDetails.add_member(:iam_instance_profile_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IamInstanceProfileArn"))
    AwsEc2InstanceDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsEc2InstanceDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AwsEc2InstanceDetails.add_member(:launched_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchedAt"))
    AwsEc2InstanceDetails.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: AwsEc2InstanceNetworkInterfacesList, location_name: "NetworkInterfaces"))
    AwsEc2InstanceDetails.add_member(:virtualization_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VirtualizationType"))
    AwsEc2InstanceDetails.add_member(:metadata_options, Shapes::ShapeRef.new(shape: AwsEc2InstanceMetadataOptions, location_name: "MetadataOptions"))
    AwsEc2InstanceDetails.add_member(:monitoring, Shapes::ShapeRef.new(shape: AwsEc2InstanceMonitoringDetails, location_name: "Monitoring"))
    AwsEc2InstanceDetails.struct_class = Types::AwsEc2InstanceDetails

    AwsEc2InstanceMetadataOptions.add_member(:http_endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpEndpoint"))
    AwsEc2InstanceMetadataOptions.add_member(:http_protocol_ipv_6, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpProtocolIpv6"))
    AwsEc2InstanceMetadataOptions.add_member(:http_put_response_hop_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "HttpPutResponseHopLimit"))
    AwsEc2InstanceMetadataOptions.add_member(:http_tokens, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpTokens"))
    AwsEc2InstanceMetadataOptions.add_member(:instance_metadata_tags, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceMetadataTags"))
    AwsEc2InstanceMetadataOptions.struct_class = Types::AwsEc2InstanceMetadataOptions

    AwsEc2InstanceMonitoringDetails.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "State"))
    AwsEc2InstanceMonitoringDetails.struct_class = Types::AwsEc2InstanceMonitoringDetails

    AwsEc2InstanceNetworkInterfacesDetails.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkInterfaceId"))
    AwsEc2InstanceNetworkInterfacesDetails.struct_class = Types::AwsEc2InstanceNetworkInterfacesDetails

    AwsEc2InstanceNetworkInterfacesList.member = Shapes::ShapeRef.new(shape: AwsEc2InstanceNetworkInterfacesDetails)

    AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails.add_member(:device_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeviceName"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails.add_member(:ebs, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails, location_name: "Ebs"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails.add_member(:no_device, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NoDevice"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails.add_member(:virtual_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VirtualName"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails.struct_class = Types::AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails

    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteOnTermination"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotId"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.add_member(:throughput, Shapes::ShapeRef.new(shape: Integer, location_name: "Throughput"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.add_member(:volume_size, Shapes::ShapeRef.new(shape: Integer, location_name: "VolumeSize"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.add_member(:volume_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VolumeType"))
    AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails.struct_class = Types::AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails

    AwsEc2LaunchTemplateDataBlockDeviceMappingSetList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails)

    AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails.add_member(:capacity_reservation_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CapacityReservationId"))
    AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails.add_member(:capacity_reservation_resource_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CapacityReservationResourceGroupArn"))
    AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails.struct_class = Types::AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails

    AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails.add_member(:capacity_reservation_preference, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CapacityReservationPreference"))
    AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails.add_member(:capacity_reservation_target, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails, location_name: "CapacityReservationTarget"))
    AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails.struct_class = Types::AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails

    AwsEc2LaunchTemplateDataCpuOptionsDetails.add_member(:core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CoreCount"))
    AwsEc2LaunchTemplateDataCpuOptionsDetails.add_member(:threads_per_core, Shapes::ShapeRef.new(shape: Integer, location_name: "ThreadsPerCore"))
    AwsEc2LaunchTemplateDataCpuOptionsDetails.struct_class = Types::AwsEc2LaunchTemplateDataCpuOptionsDetails

    AwsEc2LaunchTemplateDataCreditSpecificationDetails.add_member(:cpu_credits, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CpuCredits"))
    AwsEc2LaunchTemplateDataCreditSpecificationDetails.struct_class = Types::AwsEc2LaunchTemplateDataCreditSpecificationDetails

    AwsEc2LaunchTemplateDataDetails.add_member(:block_device_mapping_set, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataBlockDeviceMappingSetList, location_name: "BlockDeviceMappingSet"))
    AwsEc2LaunchTemplateDataDetails.add_member(:capacity_reservation_specification, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails, location_name: "CapacityReservationSpecification"))
    AwsEc2LaunchTemplateDataDetails.add_member(:cpu_options, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataCpuOptionsDetails, location_name: "CpuOptions"))
    AwsEc2LaunchTemplateDataDetails.add_member(:credit_specification, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataCreditSpecificationDetails, location_name: "CreditSpecification"))
    AwsEc2LaunchTemplateDataDetails.add_member(:disable_api_stop, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableApiStop"))
    AwsEc2LaunchTemplateDataDetails.add_member(:disable_api_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableApiTermination"))
    AwsEc2LaunchTemplateDataDetails.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: Boolean, location_name: "EbsOptimized"))
    AwsEc2LaunchTemplateDataDetails.add_member(:elastic_gpu_specification_set, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataElasticGpuSpecificationSetList, location_name: "ElasticGpuSpecificationSet"))
    AwsEc2LaunchTemplateDataDetails.add_member(:elastic_inference_accelerator_set, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetList, location_name: "ElasticInferenceAcceleratorSet"))
    AwsEc2LaunchTemplateDataDetails.add_member(:enclave_options, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataEnclaveOptionsDetails, location_name: "EnclaveOptions"))
    AwsEc2LaunchTemplateDataDetails.add_member(:hibernation_options, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataHibernationOptionsDetails, location_name: "HibernationOptions"))
    AwsEc2LaunchTemplateDataDetails.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataIamInstanceProfileDetails, location_name: "IamInstanceProfile"))
    AwsEc2LaunchTemplateDataDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageId"))
    AwsEc2LaunchTemplateDataDetails.add_member(:instance_initiated_shutdown_behavior, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceInitiatedShutdownBehavior"))
    AwsEc2LaunchTemplateDataDetails.add_member(:instance_market_options, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails, location_name: "InstanceMarketOptions"))
    AwsEc2LaunchTemplateDataDetails.add_member(:instance_requirements, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsDetails, location_name: "InstanceRequirements"))
    AwsEc2LaunchTemplateDataDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceType"))
    AwsEc2LaunchTemplateDataDetails.add_member(:kernel_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KernelId"))
    AwsEc2LaunchTemplateDataDetails.add_member(:key_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyName"))
    AwsEc2LaunchTemplateDataDetails.add_member(:license_set, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataLicenseSetList, location_name: "LicenseSet"))
    AwsEc2LaunchTemplateDataDetails.add_member(:maintenance_options, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataMaintenanceOptionsDetails, location_name: "MaintenanceOptions"))
    AwsEc2LaunchTemplateDataDetails.add_member(:metadata_options, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataMetadataOptionsDetails, location_name: "MetadataOptions"))
    AwsEc2LaunchTemplateDataDetails.add_member(:monitoring, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataMonitoringDetails, location_name: "Monitoring"))
    AwsEc2LaunchTemplateDataDetails.add_member(:network_interface_set, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetList, location_name: "NetworkInterfaceSet"))
    AwsEc2LaunchTemplateDataDetails.add_member(:placement, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataPlacementDetails, location_name: "Placement"))
    AwsEc2LaunchTemplateDataDetails.add_member(:private_dns_name_options, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails, location_name: "PrivateDnsNameOptions"))
    AwsEc2LaunchTemplateDataDetails.add_member(:ram_disk_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RamDiskId"))
    AwsEc2LaunchTemplateDataDetails.add_member(:security_group_id_set, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroupIdSet"))
    AwsEc2LaunchTemplateDataDetails.add_member(:security_group_set, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroupSet"))
    AwsEc2LaunchTemplateDataDetails.add_member(:user_data, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserData"))
    AwsEc2LaunchTemplateDataDetails.struct_class = Types::AwsEc2LaunchTemplateDataDetails

    AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails.struct_class = Types::AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails

    AwsEc2LaunchTemplateDataElasticGpuSpecificationSetList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails)

    AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails.struct_class = Types::AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails

    AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails)

    AwsEc2LaunchTemplateDataEnclaveOptionsDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsEc2LaunchTemplateDataEnclaveOptionsDetails.struct_class = Types::AwsEc2LaunchTemplateDataEnclaveOptionsDetails

    AwsEc2LaunchTemplateDataHibernationOptionsDetails.add_member(:configured, Shapes::ShapeRef.new(shape: Boolean, location_name: "Configured"))
    AwsEc2LaunchTemplateDataHibernationOptionsDetails.struct_class = Types::AwsEc2LaunchTemplateDataHibernationOptionsDetails

    AwsEc2LaunchTemplateDataIamInstanceProfileDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsEc2LaunchTemplateDataIamInstanceProfileDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEc2LaunchTemplateDataIamInstanceProfileDetails.struct_class = Types::AwsEc2LaunchTemplateDataIamInstanceProfileDetails

    AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails.add_member(:market_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MarketType"))
    AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails.add_member(:spot_options, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails, location_name: "SpotOptions"))
    AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails

    AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails.add_member(:block_duration_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "BlockDurationMinutes"))
    AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails.add_member(:instance_interruption_behavior, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceInterruptionBehavior"))
    AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails.add_member(:max_price, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MaxPrice"))
    AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails.add_member(:spot_instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SpotInstanceType"))
    AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails.add_member(:valid_until, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ValidUntil"))
    AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails.add_member(:max, Shapes::ShapeRef.new(shape: Integer, location_name: "Max"))
    AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails.add_member(:min, Shapes::ShapeRef.new(shape: Integer, location_name: "Min"))
    AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails.add_member(:max, Shapes::ShapeRef.new(shape: Integer, location_name: "Max"))
    AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails.add_member(:min, Shapes::ShapeRef.new(shape: Integer, location_name: "Min"))
    AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails.add_member(:max, Shapes::ShapeRef.new(shape: Integer, location_name: "Max"))
    AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails.add_member(:min, Shapes::ShapeRef.new(shape: Integer, location_name: "Min"))
    AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:accelerator_count, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails, location_name: "AcceleratorCount"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:accelerator_manufacturers, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AcceleratorManufacturers"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:accelerator_names, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AcceleratorNames"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:accelerator_total_memory_mi_b, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails, location_name: "AcceleratorTotalMemoryMiB"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AcceleratorTypes"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:bare_metal, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BareMetal"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:baseline_ebs_bandwidth_mbps, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails, location_name: "BaselineEbsBandwidthMbps"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:burstable_performance, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BurstablePerformance"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:cpu_manufacturers, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "CpuManufacturers"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:excluded_instance_types, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "ExcludedInstanceTypes"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:instance_generations, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "InstanceGenerations"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:local_storage, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LocalStorage"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:local_storage_types, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "LocalStorageTypes"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:memory_gi_b_per_v_cpu, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails, location_name: "MemoryGiBPerVCpu"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:memory_mi_b, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails, location_name: "MemoryMiB"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:network_interface_count, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails, location_name: "NetworkInterfaceCount"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:on_demand_max_price_percentage_over_lowest_price, Shapes::ShapeRef.new(shape: Integer, location_name: "OnDemandMaxPricePercentageOverLowestPrice"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:require_hibernate_support, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireHibernateSupport"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:spot_max_price_percentage_over_lowest_price, Shapes::ShapeRef.new(shape: Integer, location_name: "SpotMaxPricePercentageOverLowestPrice"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:total_local_storage_gb, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails, location_name: "TotalLocalStorageGB"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.add_member(:v_cpu_count, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails, location_name: "VCpuCount"))
    AwsEc2LaunchTemplateDataInstanceRequirementsDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails.add_member(:max, Shapes::ShapeRef.new(shape: Double, location_name: "Max"))
    AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails.add_member(:min, Shapes::ShapeRef.new(shape: Double, location_name: "Min"))
    AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails.add_member(:max, Shapes::ShapeRef.new(shape: Integer, location_name: "Max"))
    AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails.add_member(:min, Shapes::ShapeRef.new(shape: Integer, location_name: "Min"))
    AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails.add_member(:max, Shapes::ShapeRef.new(shape: Integer, location_name: "Max"))
    AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails.add_member(:min, Shapes::ShapeRef.new(shape: Integer, location_name: "Min"))
    AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails.add_member(:max, Shapes::ShapeRef.new(shape: Double, location_name: "Max"))
    AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails.add_member(:min, Shapes::ShapeRef.new(shape: Double, location_name: "Min"))
    AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails

    AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails.add_member(:max, Shapes::ShapeRef.new(shape: Integer, location_name: "Max"))
    AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails.add_member(:min, Shapes::ShapeRef.new(shape: Integer, location_name: "Min"))
    AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails.struct_class = Types::AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails

    AwsEc2LaunchTemplateDataLicenseSetDetails.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LicenseConfigurationArn"))
    AwsEc2LaunchTemplateDataLicenseSetDetails.struct_class = Types::AwsEc2LaunchTemplateDataLicenseSetDetails

    AwsEc2LaunchTemplateDataLicenseSetList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataLicenseSetDetails)

    AwsEc2LaunchTemplateDataMaintenanceOptionsDetails.add_member(:auto_recovery, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AutoRecovery"))
    AwsEc2LaunchTemplateDataMaintenanceOptionsDetails.struct_class = Types::AwsEc2LaunchTemplateDataMaintenanceOptionsDetails

    AwsEc2LaunchTemplateDataMetadataOptionsDetails.add_member(:http_endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpEndpoint"))
    AwsEc2LaunchTemplateDataMetadataOptionsDetails.add_member(:http_protocol_ipv_6, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpProtocolIpv6"))
    AwsEc2LaunchTemplateDataMetadataOptionsDetails.add_member(:http_tokens, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpTokens"))
    AwsEc2LaunchTemplateDataMetadataOptionsDetails.add_member(:http_put_response_hop_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "HttpPutResponseHopLimit"))
    AwsEc2LaunchTemplateDataMetadataOptionsDetails.add_member(:instance_metadata_tags, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceMetadataTags"))
    AwsEc2LaunchTemplateDataMetadataOptionsDetails.struct_class = Types::AwsEc2LaunchTemplateDataMetadataOptionsDetails

    AwsEc2LaunchTemplateDataMonitoringDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsEc2LaunchTemplateDataMonitoringDetails.struct_class = Types::AwsEc2LaunchTemplateDataMonitoringDetails

    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:associate_carrier_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "AssociateCarrierIpAddress"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "AssociatePublicIpAddress"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteOnTermination"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:device_index, Shapes::ShapeRef.new(shape: Integer, location_name: "DeviceIndex"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:groups, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Groups"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:interface_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InterfaceType"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:ipv_4_prefix_count, Shapes::ShapeRef.new(shape: Integer, location_name: "Ipv4PrefixCount"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:ipv_4_prefixes, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesList, location_name: "Ipv4Prefixes"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:ipv_6_address_count, Shapes::ShapeRef.new(shape: Integer, location_name: "Ipv6AddressCount"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:ipv_6_addresses, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesList, location_name: "Ipv6Addresses"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:ipv_6_prefix_count, Shapes::ShapeRef.new(shape: Integer, location_name: "Ipv6PrefixCount"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:ipv_6_prefixes, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesList, location_name: "Ipv6Prefixes"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:network_card_index, Shapes::ShapeRef.new(shape: Integer, location_name: "NetworkCardIndex"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkInterfaceId"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrivateIpAddress"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:private_ip_addresses, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesList, location_name: "PrivateIpAddresses"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:secondary_private_ip_address_count, Shapes::ShapeRef.new(shape: Integer, location_name: "SecondaryPrivateIpAddressCount"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails.struct_class = Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails

    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails.add_member(:ipv_4_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ipv4Prefix"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails.struct_class = Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails

    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails)

    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails.add_member(:ipv_6_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ipv6Address"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails.struct_class = Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails

    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails)

    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails.add_member(:ipv_6_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ipv6Prefix"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails.struct_class = Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails

    AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails)

    AwsEc2LaunchTemplateDataNetworkInterfaceSetList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails)

    AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails.add_member(:primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "Primary"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrivateIpAddress"))
    AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails.struct_class = Types::AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails

    AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesList.member = Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails)

    AwsEc2LaunchTemplateDataPlacementDetails.add_member(:affinity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Affinity"))
    AwsEc2LaunchTemplateDataPlacementDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AvailabilityZone"))
    AwsEc2LaunchTemplateDataPlacementDetails.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    AwsEc2LaunchTemplateDataPlacementDetails.add_member(:host_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HostId"))
    AwsEc2LaunchTemplateDataPlacementDetails.add_member(:host_resource_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HostResourceGroupArn"))
    AwsEc2LaunchTemplateDataPlacementDetails.add_member(:partition_number, Shapes::ShapeRef.new(shape: Integer, location_name: "PartitionNumber"))
    AwsEc2LaunchTemplateDataPlacementDetails.add_member(:spread_domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SpreadDomain"))
    AwsEc2LaunchTemplateDataPlacementDetails.add_member(:tenancy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Tenancy"))
    AwsEc2LaunchTemplateDataPlacementDetails.struct_class = Types::AwsEc2LaunchTemplateDataPlacementDetails

    AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails.add_member(:enable_resource_name_dns_aaaa_record, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableResourceNameDnsAAAARecord"))
    AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails.add_member(:enable_resource_name_dns_a_record, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableResourceNameDnsARecord"))
    AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails.add_member(:hostname_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HostnameType"))
    AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails.struct_class = Types::AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails

    AwsEc2LaunchTemplateDetails.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchTemplateName"))
    AwsEc2LaunchTemplateDetails.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    AwsEc2LaunchTemplateDetails.add_member(:launch_template_data, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDataDetails, location_name: "LaunchTemplateData"))
    AwsEc2LaunchTemplateDetails.add_member(:default_version_number, Shapes::ShapeRef.new(shape: Long, location_name: "DefaultVersionNumber"))
    AwsEc2LaunchTemplateDetails.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: Long, location_name: "LatestVersionNumber"))
    AwsEc2LaunchTemplateDetails.struct_class = Types::AwsEc2LaunchTemplateDetails

    AwsEc2NetworkAclAssociation.add_member(:network_acl_association_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkAclAssociationId"))
    AwsEc2NetworkAclAssociation.add_member(:network_acl_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkAclId"))
    AwsEc2NetworkAclAssociation.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AwsEc2NetworkAclAssociation.struct_class = Types::AwsEc2NetworkAclAssociation

    AwsEc2NetworkAclAssociationList.member = Shapes::ShapeRef.new(shape: AwsEc2NetworkAclAssociation)

    AwsEc2NetworkAclDetails.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    AwsEc2NetworkAclDetails.add_member(:network_acl_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkAclId"))
    AwsEc2NetworkAclDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsEc2NetworkAclDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsEc2NetworkAclDetails.add_member(:associations, Shapes::ShapeRef.new(shape: AwsEc2NetworkAclAssociationList, location_name: "Associations"))
    AwsEc2NetworkAclDetails.add_member(:entries, Shapes::ShapeRef.new(shape: AwsEc2NetworkAclEntryList, location_name: "Entries"))
    AwsEc2NetworkAclDetails.struct_class = Types::AwsEc2NetworkAclDetails

    AwsEc2NetworkAclEntry.add_member(:cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlock"))
    AwsEc2NetworkAclEntry.add_member(:egress, Shapes::ShapeRef.new(shape: Boolean, location_name: "Egress"))
    AwsEc2NetworkAclEntry.add_member(:icmp_type_code, Shapes::ShapeRef.new(shape: IcmpTypeCode, location_name: "IcmpTypeCode"))
    AwsEc2NetworkAclEntry.add_member(:ipv_6_cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ipv6CidrBlock"))
    AwsEc2NetworkAclEntry.add_member(:port_range, Shapes::ShapeRef.new(shape: PortRangeFromTo, location_name: "PortRange"))
    AwsEc2NetworkAclEntry.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    AwsEc2NetworkAclEntry.add_member(:rule_action, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleAction"))
    AwsEc2NetworkAclEntry.add_member(:rule_number, Shapes::ShapeRef.new(shape: Integer, location_name: "RuleNumber"))
    AwsEc2NetworkAclEntry.struct_class = Types::AwsEc2NetworkAclEntry

    AwsEc2NetworkAclEntryList.member = Shapes::ShapeRef.new(shape: AwsEc2NetworkAclEntry)

    AwsEc2NetworkInterfaceAttachment.add_member(:attach_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AttachTime"))
    AwsEc2NetworkInterfaceAttachment.add_member(:attachment_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AttachmentId"))
    AwsEc2NetworkInterfaceAttachment.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteOnTermination"))
    AwsEc2NetworkInterfaceAttachment.add_member(:device_index, Shapes::ShapeRef.new(shape: Integer, location_name: "DeviceIndex"))
    AwsEc2NetworkInterfaceAttachment.add_member(:instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceId"))
    AwsEc2NetworkInterfaceAttachment.add_member(:instance_owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceOwnerId"))
    AwsEc2NetworkInterfaceAttachment.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsEc2NetworkInterfaceAttachment.struct_class = Types::AwsEc2NetworkInterfaceAttachment

    AwsEc2NetworkInterfaceDetails.add_member(:attachment, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceAttachment, location_name: "Attachment"))
    AwsEc2NetworkInterfaceDetails.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkInterfaceId"))
    AwsEc2NetworkInterfaceDetails.add_member(:security_groups, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceSecurityGroupList, location_name: "SecurityGroups"))
    AwsEc2NetworkInterfaceDetails.add_member(:source_dest_check, Shapes::ShapeRef.new(shape: Boolean, location_name: "SourceDestCheck"))
    AwsEc2NetworkInterfaceDetails.add_member(:ip_v6_addresses, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceIpV6AddressList, location_name: "IpV6Addresses"))
    AwsEc2NetworkInterfaceDetails.add_member(:private_ip_addresses, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfacePrivateIpAddressList, location_name: "PrivateIpAddresses"))
    AwsEc2NetworkInterfaceDetails.add_member(:public_dns_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PublicDnsName"))
    AwsEc2NetworkInterfaceDetails.add_member(:public_ip, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PublicIp"))
    AwsEc2NetworkInterfaceDetails.struct_class = Types::AwsEc2NetworkInterfaceDetails

    AwsEc2NetworkInterfaceIpV6AddressDetail.add_member(:ip_v6_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IpV6Address"))
    AwsEc2NetworkInterfaceIpV6AddressDetail.struct_class = Types::AwsEc2NetworkInterfaceIpV6AddressDetail

    AwsEc2NetworkInterfaceIpV6AddressList.member = Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceIpV6AddressDetail)

    AwsEc2NetworkInterfacePrivateIpAddressDetail.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrivateIpAddress"))
    AwsEc2NetworkInterfacePrivateIpAddressDetail.add_member(:private_dns_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrivateDnsName"))
    AwsEc2NetworkInterfacePrivateIpAddressDetail.struct_class = Types::AwsEc2NetworkInterfacePrivateIpAddressDetail

    AwsEc2NetworkInterfacePrivateIpAddressList.member = Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfacePrivateIpAddressDetail)

    AwsEc2NetworkInterfaceSecurityGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    AwsEc2NetworkInterfaceSecurityGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupId"))
    AwsEc2NetworkInterfaceSecurityGroup.struct_class = Types::AwsEc2NetworkInterfaceSecurityGroup

    AwsEc2NetworkInterfaceSecurityGroupList.member = Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceSecurityGroup)

    AwsEc2RouteTableDetails.add_member(:association_set, Shapes::ShapeRef.new(shape: AssociationSetList, location_name: "AssociationSet"))
    AwsEc2RouteTableDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsEc2RouteTableDetails.add_member(:propagating_vgw_set, Shapes::ShapeRef.new(shape: PropagatingVgwSetList, location_name: "PropagatingVgwSet"))
    AwsEc2RouteTableDetails.add_member(:route_table_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RouteTableId"))
    AwsEc2RouteTableDetails.add_member(:route_set, Shapes::ShapeRef.new(shape: RouteSetList, location_name: "RouteSet"))
    AwsEc2RouteTableDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsEc2RouteTableDetails.struct_class = Types::AwsEc2RouteTableDetails

    AwsEc2SecurityGroupDetails.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    AwsEc2SecurityGroupDetails.add_member(:group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupId"))
    AwsEc2SecurityGroupDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsEc2SecurityGroupDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsEc2SecurityGroupDetails.add_member(:ip_permissions, Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupIpPermissionList, location_name: "IpPermissions"))
    AwsEc2SecurityGroupDetails.add_member(:ip_permissions_egress, Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupIpPermissionList, location_name: "IpPermissionsEgress"))
    AwsEc2SecurityGroupDetails.struct_class = Types::AwsEc2SecurityGroupDetails

    AwsEc2SecurityGroupIpPermission.add_member(:ip_protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IpProtocol"))
    AwsEc2SecurityGroupIpPermission.add_member(:from_port, Shapes::ShapeRef.new(shape: Integer, location_name: "FromPort"))
    AwsEc2SecurityGroupIpPermission.add_member(:to_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ToPort"))
    AwsEc2SecurityGroupIpPermission.add_member(:user_id_group_pairs, Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupUserIdGroupPairList, location_name: "UserIdGroupPairs"))
    AwsEc2SecurityGroupIpPermission.add_member(:ip_ranges, Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupIpRangeList, location_name: "IpRanges"))
    AwsEc2SecurityGroupIpPermission.add_member(:ipv_6_ranges, Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupIpv6RangeList, location_name: "Ipv6Ranges"))
    AwsEc2SecurityGroupIpPermission.add_member(:prefix_list_ids, Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupPrefixListIdList, location_name: "PrefixListIds"))
    AwsEc2SecurityGroupIpPermission.struct_class = Types::AwsEc2SecurityGroupIpPermission

    AwsEc2SecurityGroupIpPermissionList.member = Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupIpPermission)

    AwsEc2SecurityGroupIpRange.add_member(:cidr_ip, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrIp"))
    AwsEc2SecurityGroupIpRange.struct_class = Types::AwsEc2SecurityGroupIpRange

    AwsEc2SecurityGroupIpRangeList.member = Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupIpRange)

    AwsEc2SecurityGroupIpv6Range.add_member(:cidr_ipv_6, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrIpv6"))
    AwsEc2SecurityGroupIpv6Range.struct_class = Types::AwsEc2SecurityGroupIpv6Range

    AwsEc2SecurityGroupIpv6RangeList.member = Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupIpv6Range)

    AwsEc2SecurityGroupPrefixListId.add_member(:prefix_list_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrefixListId"))
    AwsEc2SecurityGroupPrefixListId.struct_class = Types::AwsEc2SecurityGroupPrefixListId

    AwsEc2SecurityGroupPrefixListIdList.member = Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupPrefixListId)

    AwsEc2SecurityGroupUserIdGroupPair.add_member(:group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupId"))
    AwsEc2SecurityGroupUserIdGroupPair.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    AwsEc2SecurityGroupUserIdGroupPair.add_member(:peering_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PeeringStatus"))
    AwsEc2SecurityGroupUserIdGroupPair.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserId"))
    AwsEc2SecurityGroupUserIdGroupPair.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsEc2SecurityGroupUserIdGroupPair.add_member(:vpc_peering_connection_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcPeeringConnectionId"))
    AwsEc2SecurityGroupUserIdGroupPair.struct_class = Types::AwsEc2SecurityGroupUserIdGroupPair

    AwsEc2SecurityGroupUserIdGroupPairList.member = Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupUserIdGroupPair)

    AwsEc2SubnetDetails.add_member(:assign_ipv_6_address_on_creation, Shapes::ShapeRef.new(shape: Boolean, location_name: "AssignIpv6AddressOnCreation"))
    AwsEc2SubnetDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AvailabilityZone"))
    AwsEc2SubnetDetails.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AvailabilityZoneId"))
    AwsEc2SubnetDetails.add_member(:available_ip_address_count, Shapes::ShapeRef.new(shape: Integer, location_name: "AvailableIpAddressCount"))
    AwsEc2SubnetDetails.add_member(:cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlock"))
    AwsEc2SubnetDetails.add_member(:default_for_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultForAz"))
    AwsEc2SubnetDetails.add_member(:map_public_ip_on_launch, Shapes::ShapeRef.new(shape: Boolean, location_name: "MapPublicIpOnLaunch"))
    AwsEc2SubnetDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsEc2SubnetDetails.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "State"))
    AwsEc2SubnetDetails.add_member(:subnet_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetArn"))
    AwsEc2SubnetDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AwsEc2SubnetDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsEc2SubnetDetails.add_member(:ipv_6_cidr_block_association_set, Shapes::ShapeRef.new(shape: Ipv6CidrBlockAssociationList, location_name: "Ipv6CidrBlockAssociationSet"))
    AwsEc2SubnetDetails.struct_class = Types::AwsEc2SubnetDetails

    AwsEc2TransitGatewayDetails.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    AwsEc2TransitGatewayDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsEc2TransitGatewayDetails.add_member(:default_route_table_propagation, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DefaultRouteTablePropagation"))
    AwsEc2TransitGatewayDetails.add_member(:auto_accept_shared_attachments, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AutoAcceptSharedAttachments"))
    AwsEc2TransitGatewayDetails.add_member(:default_route_table_association, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DefaultRouteTableAssociation"))
    AwsEc2TransitGatewayDetails.add_member(:transit_gateway_cidr_blocks, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "TransitGatewayCidrBlocks"))
    AwsEc2TransitGatewayDetails.add_member(:association_default_route_table_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociationDefaultRouteTableId"))
    AwsEc2TransitGatewayDetails.add_member(:propagation_default_route_table_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PropagationDefaultRouteTableId"))
    AwsEc2TransitGatewayDetails.add_member(:vpn_ecmp_support, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpnEcmpSupport"))
    AwsEc2TransitGatewayDetails.add_member(:dns_support, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DnsSupport"))
    AwsEc2TransitGatewayDetails.add_member(:multicast_support, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MulticastSupport"))
    AwsEc2TransitGatewayDetails.add_member(:amazon_side_asn, Shapes::ShapeRef.new(shape: Integer, location_name: "AmazonSideAsn"))
    AwsEc2TransitGatewayDetails.struct_class = Types::AwsEc2TransitGatewayDetails

    AwsEc2VolumeAttachment.add_member(:attach_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AttachTime"))
    AwsEc2VolumeAttachment.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteOnTermination"))
    AwsEc2VolumeAttachment.add_member(:instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceId"))
    AwsEc2VolumeAttachment.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsEc2VolumeAttachment.struct_class = Types::AwsEc2VolumeAttachment

    AwsEc2VolumeAttachmentList.member = Shapes::ShapeRef.new(shape: AwsEc2VolumeAttachment)

    AwsEc2VolumeDetails.add_member(:create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateTime"))
    AwsEc2VolumeDetails.add_member(:device_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeviceName"))
    AwsEc2VolumeDetails.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    AwsEc2VolumeDetails.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "Size"))
    AwsEc2VolumeDetails.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotId"))
    AwsEc2VolumeDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsEc2VolumeDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsEc2VolumeDetails.add_member(:attachments, Shapes::ShapeRef.new(shape: AwsEc2VolumeAttachmentList, location_name: "Attachments"))
    AwsEc2VolumeDetails.add_member(:volume_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VolumeId"))
    AwsEc2VolumeDetails.add_member(:volume_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VolumeType"))
    AwsEc2VolumeDetails.add_member(:volume_scan_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VolumeScanStatus"))
    AwsEc2VolumeDetails.struct_class = Types::AwsEc2VolumeDetails

    AwsEc2VpcDetails.add_member(:cidr_block_association_set, Shapes::ShapeRef.new(shape: CidrBlockAssociationList, location_name: "CidrBlockAssociationSet"))
    AwsEc2VpcDetails.add_member(:ipv_6_cidr_block_association_set, Shapes::ShapeRef.new(shape: Ipv6CidrBlockAssociationList, location_name: "Ipv6CidrBlockAssociationSet"))
    AwsEc2VpcDetails.add_member(:dhcp_options_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DhcpOptionsId"))
    AwsEc2VpcDetails.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "State"))
    AwsEc2VpcDetails.struct_class = Types::AwsEc2VpcDetails

    AwsEc2VpcEndpointServiceDetails.add_member(:acceptance_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "AcceptanceRequired"))
    AwsEc2VpcEndpointServiceDetails.add_member(:availability_zones, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AvailabilityZones"))
    AwsEc2VpcEndpointServiceDetails.add_member(:base_endpoint_dns_names, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "BaseEndpointDnsNames"))
    AwsEc2VpcEndpointServiceDetails.add_member(:manages_vpc_endpoints, Shapes::ShapeRef.new(shape: Boolean, location_name: "ManagesVpcEndpoints"))
    AwsEc2VpcEndpointServiceDetails.add_member(:gateway_load_balancer_arns, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "GatewayLoadBalancerArns"))
    AwsEc2VpcEndpointServiceDetails.add_member(:network_load_balancer_arns, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "NetworkLoadBalancerArns"))
    AwsEc2VpcEndpointServiceDetails.add_member(:private_dns_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrivateDnsName"))
    AwsEc2VpcEndpointServiceDetails.add_member(:service_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceId"))
    AwsEc2VpcEndpointServiceDetails.add_member(:service_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceName"))
    AwsEc2VpcEndpointServiceDetails.add_member(:service_state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceState"))
    AwsEc2VpcEndpointServiceDetails.add_member(:service_type, Shapes::ShapeRef.new(shape: AwsEc2VpcEndpointServiceServiceTypeList, location_name: "ServiceType"))
    AwsEc2VpcEndpointServiceDetails.struct_class = Types::AwsEc2VpcEndpointServiceDetails

    AwsEc2VpcEndpointServiceServiceTypeDetails.add_member(:service_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceType"))
    AwsEc2VpcEndpointServiceServiceTypeDetails.struct_class = Types::AwsEc2VpcEndpointServiceServiceTypeDetails

    AwsEc2VpcEndpointServiceServiceTypeList.member = Shapes::ShapeRef.new(shape: AwsEc2VpcEndpointServiceServiceTypeDetails)

    AwsEc2VpcPeeringConnectionDetails.add_member(:accepter_vpc_info, Shapes::ShapeRef.new(shape: AwsEc2VpcPeeringConnectionVpcInfoDetails, location_name: "AccepterVpcInfo"))
    AwsEc2VpcPeeringConnectionDetails.add_member(:expiration_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ExpirationTime"))
    AwsEc2VpcPeeringConnectionDetails.add_member(:requester_vpc_info, Shapes::ShapeRef.new(shape: AwsEc2VpcPeeringConnectionVpcInfoDetails, location_name: "RequesterVpcInfo"))
    AwsEc2VpcPeeringConnectionDetails.add_member(:status, Shapes::ShapeRef.new(shape: AwsEc2VpcPeeringConnectionStatusDetails, location_name: "Status"))
    AwsEc2VpcPeeringConnectionDetails.add_member(:vpc_peering_connection_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcPeeringConnectionId"))
    AwsEc2VpcPeeringConnectionDetails.struct_class = Types::AwsEc2VpcPeeringConnectionDetails

    AwsEc2VpcPeeringConnectionStatusDetails.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    AwsEc2VpcPeeringConnectionStatusDetails.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AwsEc2VpcPeeringConnectionStatusDetails.struct_class = Types::AwsEc2VpcPeeringConnectionStatusDetails

    AwsEc2VpcPeeringConnectionVpcInfoDetails.add_member(:cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlock"))
    AwsEc2VpcPeeringConnectionVpcInfoDetails.add_member(:cidr_block_set, Shapes::ShapeRef.new(shape: VpcInfoCidrBlockSetList, location_name: "CidrBlockSet"))
    AwsEc2VpcPeeringConnectionVpcInfoDetails.add_member(:ipv_6_cidr_block_set, Shapes::ShapeRef.new(shape: VpcInfoIpv6CidrBlockSetList, location_name: "Ipv6CidrBlockSet"))
    AwsEc2VpcPeeringConnectionVpcInfoDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsEc2VpcPeeringConnectionVpcInfoDetails.add_member(:peering_options, Shapes::ShapeRef.new(shape: VpcInfoPeeringOptionsDetails, location_name: "PeeringOptions"))
    AwsEc2VpcPeeringConnectionVpcInfoDetails.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Region"))
    AwsEc2VpcPeeringConnectionVpcInfoDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsEc2VpcPeeringConnectionVpcInfoDetails.struct_class = Types::AwsEc2VpcPeeringConnectionVpcInfoDetails

    AwsEc2VpnConnectionDetails.add_member(:vpn_connection_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpnConnectionId"))
    AwsEc2VpnConnectionDetails.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "State"))
    AwsEc2VpnConnectionDetails.add_member(:customer_gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CustomerGatewayId"))
    AwsEc2VpnConnectionDetails.add_member(:customer_gateway_configuration, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CustomerGatewayConfiguration"))
    AwsEc2VpnConnectionDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEc2VpnConnectionDetails.add_member(:vpn_gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpnGatewayId"))
    AwsEc2VpnConnectionDetails.add_member(:category, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Category"))
    AwsEc2VpnConnectionDetails.add_member(:vgw_telemetry, Shapes::ShapeRef.new(shape: AwsEc2VpnConnectionVgwTelemetryList, location_name: "VgwTelemetry"))
    AwsEc2VpnConnectionDetails.add_member(:options, Shapes::ShapeRef.new(shape: AwsEc2VpnConnectionOptionsDetails, location_name: "Options"))
    AwsEc2VpnConnectionDetails.add_member(:routes, Shapes::ShapeRef.new(shape: AwsEc2VpnConnectionRoutesList, location_name: "Routes"))
    AwsEc2VpnConnectionDetails.add_member(:transit_gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TransitGatewayId"))
    AwsEc2VpnConnectionDetails.struct_class = Types::AwsEc2VpnConnectionDetails

    AwsEc2VpnConnectionOptionsDetails.add_member(:static_routes_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "StaticRoutesOnly"))
    AwsEc2VpnConnectionOptionsDetails.add_member(:tunnel_options, Shapes::ShapeRef.new(shape: AwsEc2VpnConnectionOptionsTunnelOptionsList, location_name: "TunnelOptions"))
    AwsEc2VpnConnectionOptionsDetails.struct_class = Types::AwsEc2VpnConnectionOptionsDetails

    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:dpd_timeout_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DpdTimeoutSeconds"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:ike_versions, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "IkeVersions"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:outside_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OutsideIpAddress"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:phase_1_dh_group_numbers, Shapes::ShapeRef.new(shape: IntegerList, location_name: "Phase1DhGroupNumbers"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:phase_1_encryption_algorithms, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Phase1EncryptionAlgorithms"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:phase_1_integrity_algorithms, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Phase1IntegrityAlgorithms"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:phase_1_lifetime_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "Phase1LifetimeSeconds"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:phase_2_dh_group_numbers, Shapes::ShapeRef.new(shape: IntegerList, location_name: "Phase2DhGroupNumbers"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:phase_2_encryption_algorithms, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Phase2EncryptionAlgorithms"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:phase_2_integrity_algorithms, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Phase2IntegrityAlgorithms"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:phase_2_lifetime_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "Phase2LifetimeSeconds"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:pre_shared_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PreSharedKey"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:rekey_fuzz_percentage, Shapes::ShapeRef.new(shape: Integer, location_name: "RekeyFuzzPercentage"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:rekey_margin_time_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "RekeyMarginTimeSeconds"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:replay_window_size, Shapes::ShapeRef.new(shape: Integer, location_name: "ReplayWindowSize"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.add_member(:tunnel_inside_cidr, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TunnelInsideCidr"))
    AwsEc2VpnConnectionOptionsTunnelOptionsDetails.struct_class = Types::AwsEc2VpnConnectionOptionsTunnelOptionsDetails

    AwsEc2VpnConnectionOptionsTunnelOptionsList.member = Shapes::ShapeRef.new(shape: AwsEc2VpnConnectionOptionsTunnelOptionsDetails)

    AwsEc2VpnConnectionRoutesDetails.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationCidrBlock"))
    AwsEc2VpnConnectionRoutesDetails.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "State"))
    AwsEc2VpnConnectionRoutesDetails.struct_class = Types::AwsEc2VpnConnectionRoutesDetails

    AwsEc2VpnConnectionRoutesList.member = Shapes::ShapeRef.new(shape: AwsEc2VpnConnectionRoutesDetails)

    AwsEc2VpnConnectionVgwTelemetryDetails.add_member(:accepted_route_count, Shapes::ShapeRef.new(shape: Integer, location_name: "AcceptedRouteCount"))
    AwsEc2VpnConnectionVgwTelemetryDetails.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CertificateArn"))
    AwsEc2VpnConnectionVgwTelemetryDetails.add_member(:last_status_change, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastStatusChange"))
    AwsEc2VpnConnectionVgwTelemetryDetails.add_member(:outside_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OutsideIpAddress"))
    AwsEc2VpnConnectionVgwTelemetryDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsEc2VpnConnectionVgwTelemetryDetails.add_member(:status_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StatusMessage"))
    AwsEc2VpnConnectionVgwTelemetryDetails.struct_class = Types::AwsEc2VpnConnectionVgwTelemetryDetails

    AwsEc2VpnConnectionVgwTelemetryList.member = Shapes::ShapeRef.new(shape: AwsEc2VpnConnectionVgwTelemetryDetails)

    AwsEcrContainerImageDetails.add_member(:registry_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegistryId"))
    AwsEcrContainerImageDetails.add_member(:repository_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RepositoryName"))
    AwsEcrContainerImageDetails.add_member(:architecture, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Architecture"))
    AwsEcrContainerImageDetails.add_member(:image_digest, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageDigest"))
    AwsEcrContainerImageDetails.add_member(:image_tags, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "ImageTags"))
    AwsEcrContainerImageDetails.add_member(:image_published_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImagePublishedAt"))
    AwsEcrContainerImageDetails.struct_class = Types::AwsEcrContainerImageDetails

    AwsEcrRepositoryDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsEcrRepositoryDetails.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: AwsEcrRepositoryImageScanningConfigurationDetails, location_name: "ImageScanningConfiguration"))
    AwsEcrRepositoryDetails.add_member(:image_tag_mutability, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageTagMutability"))
    AwsEcrRepositoryDetails.add_member(:lifecycle_policy, Shapes::ShapeRef.new(shape: AwsEcrRepositoryLifecyclePolicyDetails, location_name: "LifecyclePolicy"))
    AwsEcrRepositoryDetails.add_member(:repository_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RepositoryName"))
    AwsEcrRepositoryDetails.add_member(:repository_policy_text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RepositoryPolicyText"))
    AwsEcrRepositoryDetails.struct_class = Types::AwsEcrRepositoryDetails

    AwsEcrRepositoryImageScanningConfigurationDetails.add_member(:scan_on_push, Shapes::ShapeRef.new(shape: Boolean, location_name: "ScanOnPush"))
    AwsEcrRepositoryImageScanningConfigurationDetails.struct_class = Types::AwsEcrRepositoryImageScanningConfigurationDetails

    AwsEcrRepositoryLifecyclePolicyDetails.add_member(:lifecycle_policy_text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LifecyclePolicyText"))
    AwsEcrRepositoryLifecyclePolicyDetails.add_member(:registry_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegistryId"))
    AwsEcrRepositoryLifecyclePolicyDetails.struct_class = Types::AwsEcrRepositoryLifecyclePolicyDetails

    AwsEcsClusterClusterSettingsDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsClusterClusterSettingsDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsEcsClusterClusterSettingsDetails.struct_class = Types::AwsEcsClusterClusterSettingsDetails

    AwsEcsClusterClusterSettingsList.member = Shapes::ShapeRef.new(shape: AwsEcsClusterClusterSettingsDetails)

    AwsEcsClusterConfigurationDetails.add_member(:execute_command_configuration, Shapes::ShapeRef.new(shape: AwsEcsClusterConfigurationExecuteCommandConfigurationDetails, location_name: "ExecuteCommandConfiguration"))
    AwsEcsClusterConfigurationDetails.struct_class = Types::AwsEcsClusterConfigurationDetails

    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.add_member(:log_configuration, Shapes::ShapeRef.new(shape: AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails, location_name: "LogConfiguration"))
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.add_member(:logging, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Logging"))
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.struct_class = Types::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails

    AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.add_member(:cloud_watch_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CloudWatchEncryptionEnabled"))
    AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.add_member(:cloud_watch_log_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CloudWatchLogGroupName"))
    AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3BucketName"))
    AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.add_member(:s3_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "S3EncryptionEnabled"))
    AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3KeyPrefix"))
    AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.struct_class = Types::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails

    AwsEcsClusterDefaultCapacityProviderStrategyDetails.add_member(:base, Shapes::ShapeRef.new(shape: Integer, location_name: "Base"))
    AwsEcsClusterDefaultCapacityProviderStrategyDetails.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CapacityProvider"))
    AwsEcsClusterDefaultCapacityProviderStrategyDetails.add_member(:weight, Shapes::ShapeRef.new(shape: Integer, location_name: "Weight"))
    AwsEcsClusterDefaultCapacityProviderStrategyDetails.struct_class = Types::AwsEcsClusterDefaultCapacityProviderStrategyDetails

    AwsEcsClusterDefaultCapacityProviderStrategyList.member = Shapes::ShapeRef.new(shape: AwsEcsClusterDefaultCapacityProviderStrategyDetails)

    AwsEcsClusterDetails.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterArn"))
    AwsEcsClusterDetails.add_member(:active_services_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ActiveServicesCount"))
    AwsEcsClusterDetails.add_member(:capacity_providers, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "CapacityProviders"))
    AwsEcsClusterDetails.add_member(:cluster_settings, Shapes::ShapeRef.new(shape: AwsEcsClusterClusterSettingsList, location_name: "ClusterSettings"))
    AwsEcsClusterDetails.add_member(:configuration, Shapes::ShapeRef.new(shape: AwsEcsClusterConfigurationDetails, location_name: "Configuration"))
    AwsEcsClusterDetails.add_member(:default_capacity_provider_strategy, Shapes::ShapeRef.new(shape: AwsEcsClusterDefaultCapacityProviderStrategyList, location_name: "DefaultCapacityProviderStrategy"))
    AwsEcsClusterDetails.add_member(:cluster_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterName"))
    AwsEcsClusterDetails.add_member(:registered_container_instances_count, Shapes::ShapeRef.new(shape: Integer, location_name: "RegisteredContainerInstancesCount"))
    AwsEcsClusterDetails.add_member(:running_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "RunningTasksCount"))
    AwsEcsClusterDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsEcsClusterDetails.struct_class = Types::AwsEcsClusterDetails

    AwsEcsContainerDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsContainerDetails.add_member(:image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Image"))
    AwsEcsContainerDetails.add_member(:mount_points, Shapes::ShapeRef.new(shape: AwsMountPointList, location_name: "MountPoints"))
    AwsEcsContainerDetails.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "Privileged"))
    AwsEcsContainerDetails.struct_class = Types::AwsEcsContainerDetails

    AwsEcsContainerDetailsList.member = Shapes::ShapeRef.new(shape: AwsEcsContainerDetails)

    AwsEcsServiceCapacityProviderStrategyDetails.add_member(:base, Shapes::ShapeRef.new(shape: Integer, location_name: "Base"))
    AwsEcsServiceCapacityProviderStrategyDetails.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CapacityProvider"))
    AwsEcsServiceCapacityProviderStrategyDetails.add_member(:weight, Shapes::ShapeRef.new(shape: Integer, location_name: "Weight"))
    AwsEcsServiceCapacityProviderStrategyDetails.struct_class = Types::AwsEcsServiceCapacityProviderStrategyDetails

    AwsEcsServiceCapacityProviderStrategyList.member = Shapes::ShapeRef.new(shape: AwsEcsServiceCapacityProviderStrategyDetails)

    AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enable"))
    AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.add_member(:rollback, Shapes::ShapeRef.new(shape: Boolean, location_name: "Rollback"))
    AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.struct_class = Types::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails

    AwsEcsServiceDeploymentConfigurationDetails.add_member(:deployment_circuit_breaker, Shapes::ShapeRef.new(shape: AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails, location_name: "DeploymentCircuitBreaker"))
    AwsEcsServiceDeploymentConfigurationDetails.add_member(:maximum_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "MaximumPercent"))
    AwsEcsServiceDeploymentConfigurationDetails.add_member(:minimum_healthy_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "MinimumHealthyPercent"))
    AwsEcsServiceDeploymentConfigurationDetails.struct_class = Types::AwsEcsServiceDeploymentConfigurationDetails

    AwsEcsServiceDeploymentControllerDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEcsServiceDeploymentControllerDetails.struct_class = Types::AwsEcsServiceDeploymentControllerDetails

    AwsEcsServiceDetails.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: AwsEcsServiceCapacityProviderStrategyList, location_name: "CapacityProviderStrategy"))
    AwsEcsServiceDetails.add_member(:cluster, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Cluster"))
    AwsEcsServiceDetails.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: AwsEcsServiceDeploymentConfigurationDetails, location_name: "DeploymentConfiguration"))
    AwsEcsServiceDetails.add_member(:deployment_controller, Shapes::ShapeRef.new(shape: AwsEcsServiceDeploymentControllerDetails, location_name: "DeploymentController"))
    AwsEcsServiceDetails.add_member(:desired_count, Shapes::ShapeRef.new(shape: Integer, location_name: "DesiredCount"))
    AwsEcsServiceDetails.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableEcsManagedTags"))
    AwsEcsServiceDetails.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableExecuteCommand"))
    AwsEcsServiceDetails.add_member(:health_check_grace_period_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "HealthCheckGracePeriodSeconds"))
    AwsEcsServiceDetails.add_member(:launch_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchType"))
    AwsEcsServiceDetails.add_member(:load_balancers, Shapes::ShapeRef.new(shape: AwsEcsServiceLoadBalancersList, location_name: "LoadBalancers"))
    AwsEcsServiceDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsServiceDetails.add_member(:network_configuration, Shapes::ShapeRef.new(shape: AwsEcsServiceNetworkConfigurationDetails, location_name: "NetworkConfiguration"))
    AwsEcsServiceDetails.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: AwsEcsServicePlacementConstraintsList, location_name: "PlacementConstraints"))
    AwsEcsServiceDetails.add_member(:placement_strategies, Shapes::ShapeRef.new(shape: AwsEcsServicePlacementStrategiesList, location_name: "PlacementStrategies"))
    AwsEcsServiceDetails.add_member(:platform_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PlatformVersion"))
    AwsEcsServiceDetails.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PropagateTags"))
    AwsEcsServiceDetails.add_member(:role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Role"))
    AwsEcsServiceDetails.add_member(:scheduling_strategy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SchedulingStrategy"))
    AwsEcsServiceDetails.add_member(:service_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceArn"))
    AwsEcsServiceDetails.add_member(:service_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceName"))
    AwsEcsServiceDetails.add_member(:service_registries, Shapes::ShapeRef.new(shape: AwsEcsServiceServiceRegistriesList, location_name: "ServiceRegistries"))
    AwsEcsServiceDetails.add_member(:task_definition, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TaskDefinition"))
    AwsEcsServiceDetails.struct_class = Types::AwsEcsServiceDetails

    AwsEcsServiceLoadBalancersDetails.add_member(:container_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerName"))
    AwsEcsServiceLoadBalancersDetails.add_member(:container_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ContainerPort"))
    AwsEcsServiceLoadBalancersDetails.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LoadBalancerName"))
    AwsEcsServiceLoadBalancersDetails.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TargetGroupArn"))
    AwsEcsServiceLoadBalancersDetails.struct_class = Types::AwsEcsServiceLoadBalancersDetails

    AwsEcsServiceLoadBalancersList.member = Shapes::ShapeRef.new(shape: AwsEcsServiceLoadBalancersDetails)

    AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssignPublicIp"))
    AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.add_member(:security_groups, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroups"))
    AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.add_member(:subnets, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Subnets"))
    AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.struct_class = Types::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails

    AwsEcsServiceNetworkConfigurationDetails.add_member(:aws_vpc_configuration, Shapes::ShapeRef.new(shape: AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails, location_name: "AwsVpcConfiguration"))
    AwsEcsServiceNetworkConfigurationDetails.struct_class = Types::AwsEcsServiceNetworkConfigurationDetails

    AwsEcsServicePlacementConstraintsDetails.add_member(:expression, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Expression"))
    AwsEcsServicePlacementConstraintsDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEcsServicePlacementConstraintsDetails.struct_class = Types::AwsEcsServicePlacementConstraintsDetails

    AwsEcsServicePlacementConstraintsList.member = Shapes::ShapeRef.new(shape: AwsEcsServicePlacementConstraintsDetails)

    AwsEcsServicePlacementStrategiesDetails.add_member(:field, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Field"))
    AwsEcsServicePlacementStrategiesDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEcsServicePlacementStrategiesDetails.struct_class = Types::AwsEcsServicePlacementStrategiesDetails

    AwsEcsServicePlacementStrategiesList.member = Shapes::ShapeRef.new(shape: AwsEcsServicePlacementStrategiesDetails)

    AwsEcsServiceServiceRegistriesDetails.add_member(:container_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerName"))
    AwsEcsServiceServiceRegistriesDetails.add_member(:container_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ContainerPort"))
    AwsEcsServiceServiceRegistriesDetails.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    AwsEcsServiceServiceRegistriesDetails.add_member(:registry_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegistryArn"))
    AwsEcsServiceServiceRegistriesDetails.struct_class = Types::AwsEcsServiceServiceRegistriesDetails

    AwsEcsServiceServiceRegistriesList.member = Shapes::ShapeRef.new(shape: AwsEcsServiceServiceRegistriesDetails)

    AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.add_member(:condition, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Condition"))
    AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.add_member(:container_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerName"))
    AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails

    AwsEcsTaskDefinitionContainerDefinitionsDependsOnList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails)

    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:command, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Command"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:cpu, Shapes::ShapeRef.new(shape: Integer, location_name: "Cpu"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:depends_on, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsDependsOnList, location_name: "DependsOn"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:disable_networking, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableNetworking"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:dns_search_domains, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "DnsSearchDomains"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:dns_servers, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "DnsServers"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:docker_labels, Shapes::ShapeRef.new(shape: FieldMap, location_name: "DockerLabels"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:docker_security_options, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "DockerSecurityOptions"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:entry_point, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "EntryPoint"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:environment, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList, location_name: "Environment"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:environment_files, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList, location_name: "EnvironmentFiles"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:essential, Shapes::ShapeRef.new(shape: Boolean, location_name: "Essential"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:extra_hosts, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList, location_name: "ExtraHosts"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:firelens_configuration, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails, location_name: "FirelensConfiguration"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:health_check, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails, location_name: "HealthCheck"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:hostname, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Hostname"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Image"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:interactive, Shapes::ShapeRef.new(shape: Boolean, location_name: "Interactive"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:links, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Links"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:linux_parameters, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails, location_name: "LinuxParameters"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:log_configuration, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails, location_name: "LogConfiguration"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:memory, Shapes::ShapeRef.new(shape: Integer, location_name: "Memory"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:memory_reservation, Shapes::ShapeRef.new(shape: Integer, location_name: "MemoryReservation"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:mount_points, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsMountPointsList, location_name: "MountPoints"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:port_mappings, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList, location_name: "PortMappings"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "Privileged"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:pseudo_terminal, Shapes::ShapeRef.new(shape: Boolean, location_name: "PseudoTerminal"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:readonly_root_filesystem, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadonlyRootFilesystem"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:repository_credentials, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails, location_name: "RepositoryCredentials"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList, location_name: "ResourceRequirements"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:secrets, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsSecretsList, location_name: "Secrets"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:start_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "StartTimeout"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:stop_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "StopTimeout"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:system_controls, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList, location_name: "SystemControls"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:ulimits, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsUlimitsList, location_name: "Ulimits"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:user, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "User"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:volumes_from, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList, location_name: "VolumesFrom"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.add_member(:working_directory, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WorkingDirectory"))
    AwsEcsTaskDefinitionContainerDefinitionsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsDetails

    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails

    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails

    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails)

    AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails)

    AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.add_member(:hostname, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Hostname"))
    AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.add_member(:ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IpAddress"))
    AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails

    AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.add_member(:options, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Options"))
    AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails

    AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.add_member(:command, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Command"))
    AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.add_member(:interval, Shapes::ShapeRef.new(shape: Integer, location_name: "Interval"))
    AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.add_member(:retries, Shapes::ShapeRef.new(shape: Integer, location_name: "Retries"))
    AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.add_member(:start_period, Shapes::ShapeRef.new(shape: Integer, location_name: "StartPeriod"))
    AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.add_member(:timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "Timeout"))
    AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails

    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.add_member(:add, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Add"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.add_member(:drop, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Drop"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails

    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.add_member(:capabilities, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails, location_name: "Capabilities"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.add_member(:devices, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList, location_name: "Devices"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.add_member(:init_process_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "InitProcessEnabled"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.add_member(:max_swap, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxSwap"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.add_member(:shared_memory_size, Shapes::ShapeRef.new(shape: Integer, location_name: "SharedMemorySize"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.add_member(:swappiness, Shapes::ShapeRef.new(shape: Integer, location_name: "Swappiness"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.add_member(:tmpfs, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList, location_name: "Tmpfs"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails

    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.add_member(:container_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerPath"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.add_member(:host_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HostPath"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.add_member(:permissions, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Permissions"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails

    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails)

    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.add_member(:container_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerPath"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.add_member(:mount_options, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "MountOptions"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "Size"))
    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails

    AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.add_member(:log_driver, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LogDriver"))
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.add_member(:options, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Options"))
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.add_member(:secret_options, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList, location_name: "SecretOptions"))
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails

    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.add_member(:value_from, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ValueFrom"))
    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails

    AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.add_member(:container_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerPath"))
    AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadOnly"))
    AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.add_member(:source_volume, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceVolume"))
    AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails

    AwsEcsTaskDefinitionContainerDefinitionsMountPointsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.add_member(:container_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ContainerPort"))
    AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.add_member(:host_port, Shapes::ShapeRef.new(shape: Integer, location_name: "HostPort"))
    AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails

    AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.add_member(:credentials_parameter, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CredentialsParameter"))
    AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails

    AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails

    AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.add_member(:value_from, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ValueFrom"))
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails

    AwsEcsTaskDefinitionContainerDefinitionsSecretsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.add_member(:namespace, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Namespace"))
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails

    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.add_member(:hard_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "HardLimit"))
    AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.add_member(:soft_limit, Shapes::ShapeRef.new(shape: Integer, location_name: "SoftLimit"))
    AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails

    AwsEcsTaskDefinitionContainerDefinitionsUlimitsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails)

    AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadOnly"))
    AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.add_member(:source_container, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceContainer"))
    AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.struct_class = Types::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails

    AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails)

    AwsEcsTaskDefinitionDetails.add_member(:container_definitions, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionContainerDefinitionsList, location_name: "ContainerDefinitions"))
    AwsEcsTaskDefinitionDetails.add_member(:cpu, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Cpu"))
    AwsEcsTaskDefinitionDetails.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ExecutionRoleArn"))
    AwsEcsTaskDefinitionDetails.add_member(:family, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Family"))
    AwsEcsTaskDefinitionDetails.add_member(:inference_accelerators, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionInferenceAcceleratorsList, location_name: "InferenceAccelerators"))
    AwsEcsTaskDefinitionDetails.add_member(:ipc_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IpcMode"))
    AwsEcsTaskDefinitionDetails.add_member(:memory, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Memory"))
    AwsEcsTaskDefinitionDetails.add_member(:network_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkMode"))
    AwsEcsTaskDefinitionDetails.add_member(:pid_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PidMode"))
    AwsEcsTaskDefinitionDetails.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionPlacementConstraintsList, location_name: "PlacementConstraints"))
    AwsEcsTaskDefinitionDetails.add_member(:proxy_configuration, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionProxyConfigurationDetails, location_name: "ProxyConfiguration"))
    AwsEcsTaskDefinitionDetails.add_member(:requires_compatibilities, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "RequiresCompatibilities"))
    AwsEcsTaskDefinitionDetails.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TaskRoleArn"))
    AwsEcsTaskDefinitionDetails.add_member(:volumes, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionVolumesList, location_name: "Volumes"))
    AwsEcsTaskDefinitionDetails.struct_class = Types::AwsEcsTaskDefinitionDetails

    AwsEcsTaskDefinitionInferenceAcceleratorsDetails.add_member(:device_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeviceName"))
    AwsEcsTaskDefinitionInferenceAcceleratorsDetails.add_member(:device_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeviceType"))
    AwsEcsTaskDefinitionInferenceAcceleratorsDetails.struct_class = Types::AwsEcsTaskDefinitionInferenceAcceleratorsDetails

    AwsEcsTaskDefinitionInferenceAcceleratorsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionInferenceAcceleratorsDetails)

    AwsEcsTaskDefinitionPlacementConstraintsDetails.add_member(:expression, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Expression"))
    AwsEcsTaskDefinitionPlacementConstraintsDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEcsTaskDefinitionPlacementConstraintsDetails.struct_class = Types::AwsEcsTaskDefinitionPlacementConstraintsDetails

    AwsEcsTaskDefinitionPlacementConstraintsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionPlacementConstraintsDetails)

    AwsEcsTaskDefinitionProxyConfigurationDetails.add_member(:container_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerName"))
    AwsEcsTaskDefinitionProxyConfigurationDetails.add_member(:proxy_configuration_properties, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList, location_name: "ProxyConfigurationProperties"))
    AwsEcsTaskDefinitionProxyConfigurationDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEcsTaskDefinitionProxyConfigurationDetails.struct_class = Types::AwsEcsTaskDefinitionProxyConfigurationDetails

    AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.struct_class = Types::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails

    AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails)

    AwsEcsTaskDefinitionVolumesDetails.add_member(:docker_volume_configuration, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails, location_name: "DockerVolumeConfiguration"))
    AwsEcsTaskDefinitionVolumesDetails.add_member(:efs_volume_configuration, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails, location_name: "EfsVolumeConfiguration"))
    AwsEcsTaskDefinitionVolumesDetails.add_member(:host, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionVolumesHostDetails, location_name: "Host"))
    AwsEcsTaskDefinitionVolumesDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsTaskDefinitionVolumesDetails.struct_class = Types::AwsEcsTaskDefinitionVolumesDetails

    AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.add_member(:autoprovision, Shapes::ShapeRef.new(shape: Boolean, location_name: "Autoprovision"))
    AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.add_member(:driver, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Driver"))
    AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.add_member(:driver_opts, Shapes::ShapeRef.new(shape: FieldMap, location_name: "DriverOpts"))
    AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.add_member(:labels, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Labels"))
    AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.add_member(:scope, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Scope"))
    AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.struct_class = Types::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails

    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.add_member(:access_point_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessPointId"))
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.add_member(:iam, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Iam"))
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.struct_class = Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails

    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.add_member(:authorization_config, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails, location_name: "AuthorizationConfig"))
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.add_member(:filesystem_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FilesystemId"))
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.add_member(:root_directory, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RootDirectory"))
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.add_member(:transit_encryption, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TransitEncryption"))
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.add_member(:transit_encryption_port, Shapes::ShapeRef.new(shape: Integer, location_name: "TransitEncryptionPort"))
    AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.struct_class = Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails

    AwsEcsTaskDefinitionVolumesHostDetails.add_member(:source_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourcePath"))
    AwsEcsTaskDefinitionVolumesHostDetails.struct_class = Types::AwsEcsTaskDefinitionVolumesHostDetails

    AwsEcsTaskDefinitionVolumesList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionVolumesDetails)

    AwsEcsTaskDetails.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterArn"))
    AwsEcsTaskDetails.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TaskDefinitionArn"))
    AwsEcsTaskDetails.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    AwsEcsTaskDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedAt"))
    AwsEcsTaskDetails.add_member(:started_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StartedAt"))
    AwsEcsTaskDetails.add_member(:started_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StartedBy"))
    AwsEcsTaskDetails.add_member(:group, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Group"))
    AwsEcsTaskDetails.add_member(:volumes, Shapes::ShapeRef.new(shape: AwsEcsTaskVolumeDetailsList, location_name: "Volumes"))
    AwsEcsTaskDetails.add_member(:containers, Shapes::ShapeRef.new(shape: AwsEcsContainerDetailsList, location_name: "Containers"))
    AwsEcsTaskDetails.struct_class = Types::AwsEcsTaskDetails

    AwsEcsTaskVolumeDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEcsTaskVolumeDetails.add_member(:host, Shapes::ShapeRef.new(shape: AwsEcsTaskVolumeHostDetails, location_name: "Host"))
    AwsEcsTaskVolumeDetails.struct_class = Types::AwsEcsTaskVolumeDetails

    AwsEcsTaskVolumeDetailsList.member = Shapes::ShapeRef.new(shape: AwsEcsTaskVolumeDetails)

    AwsEcsTaskVolumeHostDetails.add_member(:source_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourcePath"))
    AwsEcsTaskVolumeHostDetails.struct_class = Types::AwsEcsTaskVolumeHostDetails

    AwsEfsAccessPointDetails.add_member(:access_point_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessPointId"))
    AwsEfsAccessPointDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsEfsAccessPointDetails.add_member(:client_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClientToken"))
    AwsEfsAccessPointDetails.add_member(:file_system_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FileSystemId"))
    AwsEfsAccessPointDetails.add_member(:posix_user, Shapes::ShapeRef.new(shape: AwsEfsAccessPointPosixUserDetails, location_name: "PosixUser"))
    AwsEfsAccessPointDetails.add_member(:root_directory, Shapes::ShapeRef.new(shape: AwsEfsAccessPointRootDirectoryDetails, location_name: "RootDirectory"))
    AwsEfsAccessPointDetails.struct_class = Types::AwsEfsAccessPointDetails

    AwsEfsAccessPointPosixUserDetails.add_member(:gid, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Gid"))
    AwsEfsAccessPointPosixUserDetails.add_member(:secondary_gids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecondaryGids"))
    AwsEfsAccessPointPosixUserDetails.add_member(:uid, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Uid"))
    AwsEfsAccessPointPosixUserDetails.struct_class = Types::AwsEfsAccessPointPosixUserDetails

    AwsEfsAccessPointRootDirectoryCreationInfoDetails.add_member(:owner_gid, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerGid"))
    AwsEfsAccessPointRootDirectoryCreationInfoDetails.add_member(:owner_uid, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerUid"))
    AwsEfsAccessPointRootDirectoryCreationInfoDetails.add_member(:permissions, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Permissions"))
    AwsEfsAccessPointRootDirectoryCreationInfoDetails.struct_class = Types::AwsEfsAccessPointRootDirectoryCreationInfoDetails

    AwsEfsAccessPointRootDirectoryDetails.add_member(:creation_info, Shapes::ShapeRef.new(shape: AwsEfsAccessPointRootDirectoryCreationInfoDetails, location_name: "CreationInfo"))
    AwsEfsAccessPointRootDirectoryDetails.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    AwsEfsAccessPointRootDirectoryDetails.struct_class = Types::AwsEfsAccessPointRootDirectoryDetails

    AwsEksClusterDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsEksClusterDetails.add_member(:certificate_authority_data, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CertificateAuthorityData"))
    AwsEksClusterDetails.add_member(:cluster_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterStatus"))
    AwsEksClusterDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Endpoint"))
    AwsEksClusterDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsEksClusterDetails.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: AwsEksClusterResourcesVpcConfigDetails, location_name: "ResourcesVpcConfig"))
    AwsEksClusterDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleArn"))
    AwsEksClusterDetails.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    AwsEksClusterDetails.add_member(:logging, Shapes::ShapeRef.new(shape: AwsEksClusterLoggingDetails, location_name: "Logging"))
    AwsEksClusterDetails.struct_class = Types::AwsEksClusterDetails

    AwsEksClusterLoggingClusterLoggingDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsEksClusterLoggingClusterLoggingDetails.add_member(:types, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Types"))
    AwsEksClusterLoggingClusterLoggingDetails.struct_class = Types::AwsEksClusterLoggingClusterLoggingDetails

    AwsEksClusterLoggingClusterLoggingList.member = Shapes::ShapeRef.new(shape: AwsEksClusterLoggingClusterLoggingDetails)

    AwsEksClusterLoggingDetails.add_member(:cluster_logging, Shapes::ShapeRef.new(shape: AwsEksClusterLoggingClusterLoggingList, location_name: "ClusterLogging"))
    AwsEksClusterLoggingDetails.struct_class = Types::AwsEksClusterLoggingDetails

    AwsEksClusterResourcesVpcConfigDetails.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroupIds"))
    AwsEksClusterResourcesVpcConfigDetails.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SubnetIds"))
    AwsEksClusterResourcesVpcConfigDetails.add_member(:endpoint_public_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "EndpointPublicAccess"))
    AwsEksClusterResourcesVpcConfigDetails.struct_class = Types::AwsEksClusterResourcesVpcConfigDetails

    AwsElasticBeanstalkEnvironmentDetails.add_member(:application_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ApplicationName"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:cname, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Cname"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:date_created, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DateCreated"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:date_updated, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DateUpdated"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EndpointUrl"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:environment_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EnvironmentArn"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:environment_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EnvironmentId"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:environment_links, Shapes::ShapeRef.new(shape: AwsElasticBeanstalkEnvironmentEnvironmentLinks, location_name: "EnvironmentLinks"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:environment_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EnvironmentName"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:option_settings, Shapes::ShapeRef.new(shape: AwsElasticBeanstalkEnvironmentOptionSettings, location_name: "OptionSettings"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:platform_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PlatformArn"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SolutionStackName"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:tier, Shapes::ShapeRef.new(shape: AwsElasticBeanstalkEnvironmentTier, location_name: "Tier"))
    AwsElasticBeanstalkEnvironmentDetails.add_member(:version_label, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VersionLabel"))
    AwsElasticBeanstalkEnvironmentDetails.struct_class = Types::AwsElasticBeanstalkEnvironmentDetails

    AwsElasticBeanstalkEnvironmentEnvironmentLink.add_member(:environment_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EnvironmentName"))
    AwsElasticBeanstalkEnvironmentEnvironmentLink.add_member(:link_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LinkName"))
    AwsElasticBeanstalkEnvironmentEnvironmentLink.struct_class = Types::AwsElasticBeanstalkEnvironmentEnvironmentLink

    AwsElasticBeanstalkEnvironmentEnvironmentLinks.member = Shapes::ShapeRef.new(shape: AwsElasticBeanstalkEnvironmentEnvironmentLink)

    AwsElasticBeanstalkEnvironmentOptionSetting.add_member(:namespace, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Namespace"))
    AwsElasticBeanstalkEnvironmentOptionSetting.add_member(:option_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OptionName"))
    AwsElasticBeanstalkEnvironmentOptionSetting.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceName"))
    AwsElasticBeanstalkEnvironmentOptionSetting.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsElasticBeanstalkEnvironmentOptionSetting.struct_class = Types::AwsElasticBeanstalkEnvironmentOptionSetting

    AwsElasticBeanstalkEnvironmentOptionSettings.member = Shapes::ShapeRef.new(shape: AwsElasticBeanstalkEnvironmentOptionSetting)

    AwsElasticBeanstalkEnvironmentTier.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsElasticBeanstalkEnvironmentTier.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsElasticBeanstalkEnvironmentTier.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    AwsElasticBeanstalkEnvironmentTier.struct_class = Types::AwsElasticBeanstalkEnvironmentTier

    AwsElasticsearchDomainDetails.add_member(:access_policies, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessPolicies"))
    AwsElasticsearchDomainDetails.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainDomainEndpointOptions, location_name: "DomainEndpointOptions"))
    AwsElasticsearchDomainDetails.add_member(:domain_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainId"))
    AwsElasticsearchDomainDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainName"))
    AwsElasticsearchDomainDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Endpoint"))
    AwsElasticsearchDomainDetails.add_member(:endpoints, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Endpoints"))
    AwsElasticsearchDomainDetails.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ElasticsearchVersion"))
    AwsElasticsearchDomainDetails.add_member(:elasticsearch_cluster_config, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainElasticsearchClusterConfigDetails, location_name: "ElasticsearchClusterConfig"))
    AwsElasticsearchDomainDetails.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainEncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    AwsElasticsearchDomainDetails.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainLogPublishingOptions, location_name: "LogPublishingOptions"))
    AwsElasticsearchDomainDetails.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainNodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    AwsElasticsearchDomainDetails.add_member(:service_software_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    AwsElasticsearchDomainDetails.add_member(:vpc_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainVPCOptions, location_name: "VPCOptions"))
    AwsElasticsearchDomainDetails.struct_class = Types::AwsElasticsearchDomainDetails

    AwsElasticsearchDomainDomainEndpointOptions.add_member(:enforce_https, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnforceHTTPS"))
    AwsElasticsearchDomainDomainEndpointOptions.add_member(:tls_security_policy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TLSSecurityPolicy"))
    AwsElasticsearchDomainDomainEndpointOptions.struct_class = Types::AwsElasticsearchDomainDomainEndpointOptions

    AwsElasticsearchDomainElasticsearchClusterConfigDetails.add_member(:dedicated_master_count, Shapes::ShapeRef.new(shape: Integer, location_name: "DedicatedMasterCount"))
    AwsElasticsearchDomainElasticsearchClusterConfigDetails.add_member(:dedicated_master_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DedicatedMasterEnabled"))
    AwsElasticsearchDomainElasticsearchClusterConfigDetails.add_member(:dedicated_master_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DedicatedMasterType"))
    AwsElasticsearchDomainElasticsearchClusterConfigDetails.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstanceCount"))
    AwsElasticsearchDomainElasticsearchClusterConfigDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceType"))
    AwsElasticsearchDomainElasticsearchClusterConfigDetails.add_member(:zone_awareness_config, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails, location_name: "ZoneAwarenessConfig"))
    AwsElasticsearchDomainElasticsearchClusterConfigDetails.add_member(:zone_awareness_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ZoneAwarenessEnabled"))
    AwsElasticsearchDomainElasticsearchClusterConfigDetails.struct_class = Types::AwsElasticsearchDomainElasticsearchClusterConfigDetails

    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.add_member(:availability_zone_count, Shapes::ShapeRef.new(shape: Integer, location_name: "AvailabilityZoneCount"))
    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.struct_class = Types::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails

    AwsElasticsearchDomainEncryptionAtRestOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsElasticsearchDomainEncryptionAtRestOptions.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsElasticsearchDomainEncryptionAtRestOptions.struct_class = Types::AwsElasticsearchDomainEncryptionAtRestOptions

    AwsElasticsearchDomainLogPublishingOptions.add_member(:index_slow_logs, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainLogPublishingOptionsLogConfig, location_name: "IndexSlowLogs"))
    AwsElasticsearchDomainLogPublishingOptions.add_member(:search_slow_logs, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainLogPublishingOptionsLogConfig, location_name: "SearchSlowLogs"))
    AwsElasticsearchDomainLogPublishingOptions.add_member(:audit_logs, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainLogPublishingOptionsLogConfig, location_name: "AuditLogs"))
    AwsElasticsearchDomainLogPublishingOptions.struct_class = Types::AwsElasticsearchDomainLogPublishingOptions

    AwsElasticsearchDomainLogPublishingOptionsLogConfig.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CloudWatchLogsLogGroupArn"))
    AwsElasticsearchDomainLogPublishingOptionsLogConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsElasticsearchDomainLogPublishingOptionsLogConfig.struct_class = Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig

    AwsElasticsearchDomainNodeToNodeEncryptionOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsElasticsearchDomainNodeToNodeEncryptionOptions.struct_class = Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions

    AwsElasticsearchDomainServiceSoftwareOptions.add_member(:automated_update_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AutomatedUpdateDate"))
    AwsElasticsearchDomainServiceSoftwareOptions.add_member(:cancellable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Cancellable"))
    AwsElasticsearchDomainServiceSoftwareOptions.add_member(:current_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CurrentVersion"))
    AwsElasticsearchDomainServiceSoftwareOptions.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsElasticsearchDomainServiceSoftwareOptions.add_member(:new_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NewVersion"))
    AwsElasticsearchDomainServiceSoftwareOptions.add_member(:update_available, Shapes::ShapeRef.new(shape: Boolean, location_name: "UpdateAvailable"))
    AwsElasticsearchDomainServiceSoftwareOptions.add_member(:update_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UpdateStatus"))
    AwsElasticsearchDomainServiceSoftwareOptions.struct_class = Types::AwsElasticsearchDomainServiceSoftwareOptions

    AwsElasticsearchDomainVPCOptions.add_member(:availability_zones, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AvailabilityZones"))
    AwsElasticsearchDomainVPCOptions.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroupIds"))
    AwsElasticsearchDomainVPCOptions.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SubnetIds"))
    AwsElasticsearchDomainVPCOptions.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VPCId"))
    AwsElasticsearchDomainVPCOptions.struct_class = Types::AwsElasticsearchDomainVPCOptions

    AwsElbAppCookieStickinessPolicies.member = Shapes::ShapeRef.new(shape: AwsElbAppCookieStickinessPolicy)

    AwsElbAppCookieStickinessPolicy.add_member(:cookie_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CookieName"))
    AwsElbAppCookieStickinessPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyName"))
    AwsElbAppCookieStickinessPolicy.struct_class = Types::AwsElbAppCookieStickinessPolicy

    AwsElbLbCookieStickinessPolicies.member = Shapes::ShapeRef.new(shape: AwsElbLbCookieStickinessPolicy)

    AwsElbLbCookieStickinessPolicy.add_member(:cookie_expiration_period, Shapes::ShapeRef.new(shape: Long, location_name: "CookieExpirationPeriod"))
    AwsElbLbCookieStickinessPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyName"))
    AwsElbLbCookieStickinessPolicy.struct_class = Types::AwsElbLbCookieStickinessPolicy

    AwsElbLoadBalancerAccessLog.add_member(:emit_interval, Shapes::ShapeRef.new(shape: Integer, location_name: "EmitInterval"))
    AwsElbLoadBalancerAccessLog.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsElbLoadBalancerAccessLog.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3BucketName"))
    AwsElbLoadBalancerAccessLog.add_member(:s3_bucket_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3BucketPrefix"))
    AwsElbLoadBalancerAccessLog.struct_class = Types::AwsElbLoadBalancerAccessLog

    AwsElbLoadBalancerAdditionalAttribute.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Key"))
    AwsElbLoadBalancerAdditionalAttribute.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsElbLoadBalancerAdditionalAttribute.struct_class = Types::AwsElbLoadBalancerAdditionalAttribute

    AwsElbLoadBalancerAdditionalAttributeList.member = Shapes::ShapeRef.new(shape: AwsElbLoadBalancerAdditionalAttribute)

    AwsElbLoadBalancerAttributes.add_member(:access_log, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerAccessLog, location_name: "AccessLog"))
    AwsElbLoadBalancerAttributes.add_member(:connection_draining, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerConnectionDraining, location_name: "ConnectionDraining"))
    AwsElbLoadBalancerAttributes.add_member(:connection_settings, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerConnectionSettings, location_name: "ConnectionSettings"))
    AwsElbLoadBalancerAttributes.add_member(:cross_zone_load_balancing, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerCrossZoneLoadBalancing, location_name: "CrossZoneLoadBalancing"))
    AwsElbLoadBalancerAttributes.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerAdditionalAttributeList, location_name: "AdditionalAttributes"))
    AwsElbLoadBalancerAttributes.struct_class = Types::AwsElbLoadBalancerAttributes

    AwsElbLoadBalancerBackendServerDescription.add_member(:instance_port, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancePort"))
    AwsElbLoadBalancerBackendServerDescription.add_member(:policy_names, Shapes::ShapeRef.new(shape: StringList, location_name: "PolicyNames"))
    AwsElbLoadBalancerBackendServerDescription.struct_class = Types::AwsElbLoadBalancerBackendServerDescription

    AwsElbLoadBalancerBackendServerDescriptions.member = Shapes::ShapeRef.new(shape: AwsElbLoadBalancerBackendServerDescription)

    AwsElbLoadBalancerConnectionDraining.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsElbLoadBalancerConnectionDraining.add_member(:timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "Timeout"))
    AwsElbLoadBalancerConnectionDraining.struct_class = Types::AwsElbLoadBalancerConnectionDraining

    AwsElbLoadBalancerConnectionSettings.add_member(:idle_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "IdleTimeout"))
    AwsElbLoadBalancerConnectionSettings.struct_class = Types::AwsElbLoadBalancerConnectionSettings

    AwsElbLoadBalancerCrossZoneLoadBalancing.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsElbLoadBalancerCrossZoneLoadBalancing.struct_class = Types::AwsElbLoadBalancerCrossZoneLoadBalancing

    AwsElbLoadBalancerDetails.add_member(:availability_zones, Shapes::ShapeRef.new(shape: StringList, location_name: "AvailabilityZones"))
    AwsElbLoadBalancerDetails.add_member(:backend_server_descriptions, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerBackendServerDescriptions, location_name: "BackendServerDescriptions"))
    AwsElbLoadBalancerDetails.add_member(:canonical_hosted_zone_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CanonicalHostedZoneName"))
    AwsElbLoadBalancerDetails.add_member(:canonical_hosted_zone_name_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CanonicalHostedZoneNameID"))
    AwsElbLoadBalancerDetails.add_member(:created_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedTime"))
    AwsElbLoadBalancerDetails.add_member(:dns_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DnsName"))
    AwsElbLoadBalancerDetails.add_member(:health_check, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerHealthCheck, location_name: "HealthCheck"))
    AwsElbLoadBalancerDetails.add_member(:instances, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerInstances, location_name: "Instances"))
    AwsElbLoadBalancerDetails.add_member(:listener_descriptions, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerListenerDescriptions, location_name: "ListenerDescriptions"))
    AwsElbLoadBalancerDetails.add_member(:load_balancer_attributes, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerAttributes, location_name: "LoadBalancerAttributes"))
    AwsElbLoadBalancerDetails.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LoadBalancerName"))
    AwsElbLoadBalancerDetails.add_member(:policies, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerPolicies, location_name: "Policies"))
    AwsElbLoadBalancerDetails.add_member(:scheme, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Scheme"))
    AwsElbLoadBalancerDetails.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroups"))
    AwsElbLoadBalancerDetails.add_member(:source_security_group, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerSourceSecurityGroup, location_name: "SourceSecurityGroup"))
    AwsElbLoadBalancerDetails.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "Subnets"))
    AwsElbLoadBalancerDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsElbLoadBalancerDetails.struct_class = Types::AwsElbLoadBalancerDetails

    AwsElbLoadBalancerHealthCheck.add_member(:healthy_threshold, Shapes::ShapeRef.new(shape: Integer, location_name: "HealthyThreshold"))
    AwsElbLoadBalancerHealthCheck.add_member(:interval, Shapes::ShapeRef.new(shape: Integer, location_name: "Interval"))
    AwsElbLoadBalancerHealthCheck.add_member(:target, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Target"))
    AwsElbLoadBalancerHealthCheck.add_member(:timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "Timeout"))
    AwsElbLoadBalancerHealthCheck.add_member(:unhealthy_threshold, Shapes::ShapeRef.new(shape: Integer, location_name: "UnhealthyThreshold"))
    AwsElbLoadBalancerHealthCheck.struct_class = Types::AwsElbLoadBalancerHealthCheck

    AwsElbLoadBalancerInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceId"))
    AwsElbLoadBalancerInstance.struct_class = Types::AwsElbLoadBalancerInstance

    AwsElbLoadBalancerInstances.member = Shapes::ShapeRef.new(shape: AwsElbLoadBalancerInstance)

    AwsElbLoadBalancerListener.add_member(:instance_port, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancePort"))
    AwsElbLoadBalancerListener.add_member(:instance_protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceProtocol"))
    AwsElbLoadBalancerListener.add_member(:load_balancer_port, Shapes::ShapeRef.new(shape: Integer, location_name: "LoadBalancerPort"))
    AwsElbLoadBalancerListener.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    AwsElbLoadBalancerListener.add_member(:ssl_certificate_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SslCertificateId"))
    AwsElbLoadBalancerListener.struct_class = Types::AwsElbLoadBalancerListener

    AwsElbLoadBalancerListenerDescription.add_member(:listener, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerListener, location_name: "Listener"))
    AwsElbLoadBalancerListenerDescription.add_member(:policy_names, Shapes::ShapeRef.new(shape: StringList, location_name: "PolicyNames"))
    AwsElbLoadBalancerListenerDescription.struct_class = Types::AwsElbLoadBalancerListenerDescription

    AwsElbLoadBalancerListenerDescriptions.member = Shapes::ShapeRef.new(shape: AwsElbLoadBalancerListenerDescription)

    AwsElbLoadBalancerPolicies.add_member(:app_cookie_stickiness_policies, Shapes::ShapeRef.new(shape: AwsElbAppCookieStickinessPolicies, location_name: "AppCookieStickinessPolicies"))
    AwsElbLoadBalancerPolicies.add_member(:lb_cookie_stickiness_policies, Shapes::ShapeRef.new(shape: AwsElbLbCookieStickinessPolicies, location_name: "LbCookieStickinessPolicies"))
    AwsElbLoadBalancerPolicies.add_member(:other_policies, Shapes::ShapeRef.new(shape: StringList, location_name: "OtherPolicies"))
    AwsElbLoadBalancerPolicies.struct_class = Types::AwsElbLoadBalancerPolicies

    AwsElbLoadBalancerSourceSecurityGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    AwsElbLoadBalancerSourceSecurityGroup.add_member(:owner_alias, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerAlias"))
    AwsElbLoadBalancerSourceSecurityGroup.struct_class = Types::AwsElbLoadBalancerSourceSecurityGroup

    AwsElbv2LoadBalancerAttribute.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Key"))
    AwsElbv2LoadBalancerAttribute.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsElbv2LoadBalancerAttribute.struct_class = Types::AwsElbv2LoadBalancerAttribute

    AwsElbv2LoadBalancerAttributes.member = Shapes::ShapeRef.new(shape: AwsElbv2LoadBalancerAttribute)

    AwsElbv2LoadBalancerDetails.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    AwsElbv2LoadBalancerDetails.add_member(:canonical_hosted_zone_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CanonicalHostedZoneId"))
    AwsElbv2LoadBalancerDetails.add_member(:created_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedTime"))
    AwsElbv2LoadBalancerDetails.add_member(:dns_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DNSName"))
    AwsElbv2LoadBalancerDetails.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IpAddressType"))
    AwsElbv2LoadBalancerDetails.add_member(:scheme, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Scheme"))
    AwsElbv2LoadBalancerDetails.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    AwsElbv2LoadBalancerDetails.add_member(:state, Shapes::ShapeRef.new(shape: LoadBalancerState, location_name: "State"))
    AwsElbv2LoadBalancerDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsElbv2LoadBalancerDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsElbv2LoadBalancerDetails.add_member(:load_balancer_attributes, Shapes::ShapeRef.new(shape: AwsElbv2LoadBalancerAttributes, location_name: "LoadBalancerAttributes"))
    AwsElbv2LoadBalancerDetails.struct_class = Types::AwsElbv2LoadBalancerDetails

    AwsEventSchemasRegistryDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsEventSchemasRegistryDetails.add_member(:registry_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegistryArn"))
    AwsEventSchemasRegistryDetails.add_member(:registry_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegistryName"))
    AwsEventSchemasRegistryDetails.struct_class = Types::AwsEventSchemasRegistryDetails

    AwsGuardDutyDetectorDataSourcesCloudTrailDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsGuardDutyDetectorDataSourcesCloudTrailDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesCloudTrailDetails

    AwsGuardDutyDetectorDataSourcesDetails.add_member(:cloud_trail, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesCloudTrailDetails, location_name: "CloudTrail"))
    AwsGuardDutyDetectorDataSourcesDetails.add_member(:dns_logs, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesDnsLogsDetails, location_name: "DnsLogs"))
    AwsGuardDutyDetectorDataSourcesDetails.add_member(:flow_logs, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesFlowLogsDetails, location_name: "FlowLogs"))
    AwsGuardDutyDetectorDataSourcesDetails.add_member(:kubernetes, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesKubernetesDetails, location_name: "Kubernetes"))
    AwsGuardDutyDetectorDataSourcesDetails.add_member(:malware_protection, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails, location_name: "MalwareProtection"))
    AwsGuardDutyDetectorDataSourcesDetails.add_member(:s3_logs, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesS3LogsDetails, location_name: "S3Logs"))
    AwsGuardDutyDetectorDataSourcesDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesDetails

    AwsGuardDutyDetectorDataSourcesDnsLogsDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsGuardDutyDetectorDataSourcesDnsLogsDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesDnsLogsDetails

    AwsGuardDutyDetectorDataSourcesFlowLogsDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsGuardDutyDetectorDataSourcesFlowLogsDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesFlowLogsDetails

    AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails

    AwsGuardDutyDetectorDataSourcesKubernetesDetails.add_member(:audit_logs, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails, location_name: "AuditLogs"))
    AwsGuardDutyDetectorDataSourcesKubernetesDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesKubernetesDetails

    AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails.add_member(:scan_ec2_instance_with_findings, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails, location_name: "ScanEc2InstanceWithFindings"))
    AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails.add_member(:service_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceRole"))
    AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails

    AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails.add_member(:ebs_volumes, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails, location_name: "EbsVolumes"))
    AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails

    AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Reason"))
    AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails

    AwsGuardDutyDetectorDataSourcesS3LogsDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsGuardDutyDetectorDataSourcesS3LogsDetails.struct_class = Types::AwsGuardDutyDetectorDataSourcesS3LogsDetails

    AwsGuardDutyDetectorDetails.add_member(:data_sources, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDataSourcesDetails, location_name: "DataSources"))
    AwsGuardDutyDetectorDetails.add_member(:features, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorFeaturesList, location_name: "Features"))
    AwsGuardDutyDetectorDetails.add_member(:finding_publishing_frequency, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FindingPublishingFrequency"))
    AwsGuardDutyDetectorDetails.add_member(:service_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceRole"))
    AwsGuardDutyDetectorDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsGuardDutyDetectorDetails.struct_class = Types::AwsGuardDutyDetectorDetails

    AwsGuardDutyDetectorFeaturesDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsGuardDutyDetectorFeaturesDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsGuardDutyDetectorFeaturesDetails.struct_class = Types::AwsGuardDutyDetectorFeaturesDetails

    AwsGuardDutyDetectorFeaturesList.member = Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorFeaturesDetails)

    AwsIamAccessKeyDetails.add_member(:user_name, Shapes::ShapeRef.new(shape: NonEmptyString, deprecated: true, location_name: "UserName", metadata: {"deprecatedMessage"=>"This filter is deprecated. Instead, use PrincipalName."}))
    AwsIamAccessKeyDetails.add_member(:status, Shapes::ShapeRef.new(shape: AwsIamAccessKeyStatus, location_name: "Status"))
    AwsIamAccessKeyDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedAt"))
    AwsIamAccessKeyDetails.add_member(:principal_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrincipalId"))
    AwsIamAccessKeyDetails.add_member(:principal_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrincipalType"))
    AwsIamAccessKeyDetails.add_member(:principal_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrincipalName"))
    AwsIamAccessKeyDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    AwsIamAccessKeyDetails.add_member(:access_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessKeyId"))
    AwsIamAccessKeyDetails.add_member(:session_context, Shapes::ShapeRef.new(shape: AwsIamAccessKeySessionContext, location_name: "SessionContext"))
    AwsIamAccessKeyDetails.struct_class = Types::AwsIamAccessKeyDetails

    AwsIamAccessKeySessionContext.add_member(:attributes, Shapes::ShapeRef.new(shape: AwsIamAccessKeySessionContextAttributes, location_name: "Attributes"))
    AwsIamAccessKeySessionContext.add_member(:session_issuer, Shapes::ShapeRef.new(shape: AwsIamAccessKeySessionContextSessionIssuer, location_name: "SessionIssuer"))
    AwsIamAccessKeySessionContext.struct_class = Types::AwsIamAccessKeySessionContext

    AwsIamAccessKeySessionContextAttributes.add_member(:mfa_authenticated, Shapes::ShapeRef.new(shape: Boolean, location_name: "MfaAuthenticated"))
    AwsIamAccessKeySessionContextAttributes.add_member(:creation_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreationDate"))
    AwsIamAccessKeySessionContextAttributes.struct_class = Types::AwsIamAccessKeySessionContextAttributes

    AwsIamAccessKeySessionContextSessionIssuer.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsIamAccessKeySessionContextSessionIssuer.add_member(:principal_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrincipalId"))
    AwsIamAccessKeySessionContextSessionIssuer.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsIamAccessKeySessionContextSessionIssuer.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    AwsIamAccessKeySessionContextSessionIssuer.add_member(:user_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserName"))
    AwsIamAccessKeySessionContextSessionIssuer.struct_class = Types::AwsIamAccessKeySessionContextSessionIssuer

    AwsIamAttachedManagedPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyName"))
    AwsIamAttachedManagedPolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyArn"))
    AwsIamAttachedManagedPolicy.struct_class = Types::AwsIamAttachedManagedPolicy

    AwsIamAttachedManagedPolicyList.member = Shapes::ShapeRef.new(shape: AwsIamAttachedManagedPolicy)

    AwsIamGroupDetails.add_member(:attached_managed_policies, Shapes::ShapeRef.new(shape: AwsIamAttachedManagedPolicyList, location_name: "AttachedManagedPolicies"))
    AwsIamGroupDetails.add_member(:create_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateDate"))
    AwsIamGroupDetails.add_member(:group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupId"))
    AwsIamGroupDetails.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    AwsIamGroupDetails.add_member(:group_policy_list, Shapes::ShapeRef.new(shape: AwsIamGroupPolicyList, location_name: "GroupPolicyList"))
    AwsIamGroupDetails.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    AwsIamGroupDetails.struct_class = Types::AwsIamGroupDetails

    AwsIamGroupPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyName"))
    AwsIamGroupPolicy.struct_class = Types::AwsIamGroupPolicy

    AwsIamGroupPolicyList.member = Shapes::ShapeRef.new(shape: AwsIamGroupPolicy)

    AwsIamInstanceProfile.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsIamInstanceProfile.add_member(:create_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateDate"))
    AwsIamInstanceProfile.add_member(:instance_profile_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceProfileId"))
    AwsIamInstanceProfile.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceProfileName"))
    AwsIamInstanceProfile.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    AwsIamInstanceProfile.add_member(:roles, Shapes::ShapeRef.new(shape: AwsIamInstanceProfileRoles, location_name: "Roles"))
    AwsIamInstanceProfile.struct_class = Types::AwsIamInstanceProfile

    AwsIamInstanceProfileList.member = Shapes::ShapeRef.new(shape: AwsIamInstanceProfile)

    AwsIamInstanceProfileRole.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsIamInstanceProfileRole.add_member(:assume_role_policy_document, Shapes::ShapeRef.new(shape: AwsIamRoleAssumeRolePolicyDocument, location_name: "AssumeRolePolicyDocument"))
    AwsIamInstanceProfileRole.add_member(:create_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateDate"))
    AwsIamInstanceProfileRole.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    AwsIamInstanceProfileRole.add_member(:role_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleId"))
    AwsIamInstanceProfileRole.add_member(:role_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleName"))
    AwsIamInstanceProfileRole.struct_class = Types::AwsIamInstanceProfileRole

    AwsIamInstanceProfileRoles.member = Shapes::ShapeRef.new(shape: AwsIamInstanceProfileRole)

    AwsIamPermissionsBoundary.add_member(:permissions_boundary_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PermissionsBoundaryArn"))
    AwsIamPermissionsBoundary.add_member(:permissions_boundary_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PermissionsBoundaryType"))
    AwsIamPermissionsBoundary.struct_class = Types::AwsIamPermissionsBoundary

    AwsIamPolicyDetails.add_member(:attachment_count, Shapes::ShapeRef.new(shape: Integer, location_name: "AttachmentCount"))
    AwsIamPolicyDetails.add_member(:create_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateDate"))
    AwsIamPolicyDetails.add_member(:default_version_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DefaultVersionId"))
    AwsIamPolicyDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsIamPolicyDetails.add_member(:is_attachable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsAttachable"))
    AwsIamPolicyDetails.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    AwsIamPolicyDetails.add_member(:permissions_boundary_usage_count, Shapes::ShapeRef.new(shape: Integer, location_name: "PermissionsBoundaryUsageCount"))
    AwsIamPolicyDetails.add_member(:policy_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyId"))
    AwsIamPolicyDetails.add_member(:policy_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyName"))
    AwsIamPolicyDetails.add_member(:policy_version_list, Shapes::ShapeRef.new(shape: AwsIamPolicyVersionList, location_name: "PolicyVersionList"))
    AwsIamPolicyDetails.add_member(:update_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UpdateDate"))
    AwsIamPolicyDetails.struct_class = Types::AwsIamPolicyDetails

    AwsIamPolicyVersion.add_member(:version_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VersionId"))
    AwsIamPolicyVersion.add_member(:is_default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefaultVersion"))
    AwsIamPolicyVersion.add_member(:create_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateDate"))
    AwsIamPolicyVersion.struct_class = Types::AwsIamPolicyVersion

    AwsIamPolicyVersionList.member = Shapes::ShapeRef.new(shape: AwsIamPolicyVersion)

    AwsIamRoleDetails.add_member(:assume_role_policy_document, Shapes::ShapeRef.new(shape: AwsIamRoleAssumeRolePolicyDocument, location_name: "AssumeRolePolicyDocument"))
    AwsIamRoleDetails.add_member(:attached_managed_policies, Shapes::ShapeRef.new(shape: AwsIamAttachedManagedPolicyList, location_name: "AttachedManagedPolicies"))
    AwsIamRoleDetails.add_member(:create_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateDate"))
    AwsIamRoleDetails.add_member(:instance_profile_list, Shapes::ShapeRef.new(shape: AwsIamInstanceProfileList, location_name: "InstanceProfileList"))
    AwsIamRoleDetails.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: AwsIamPermissionsBoundary, location_name: "PermissionsBoundary"))
    AwsIamRoleDetails.add_member(:role_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleId"))
    AwsIamRoleDetails.add_member(:role_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleName"))
    AwsIamRoleDetails.add_member(:role_policy_list, Shapes::ShapeRef.new(shape: AwsIamRolePolicyList, location_name: "RolePolicyList"))
    AwsIamRoleDetails.add_member(:max_session_duration, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxSessionDuration"))
    AwsIamRoleDetails.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    AwsIamRoleDetails.struct_class = Types::AwsIamRoleDetails

    AwsIamRolePolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyName"))
    AwsIamRolePolicy.struct_class = Types::AwsIamRolePolicy

    AwsIamRolePolicyList.member = Shapes::ShapeRef.new(shape: AwsIamRolePolicy)

    AwsIamUserDetails.add_member(:attached_managed_policies, Shapes::ShapeRef.new(shape: AwsIamAttachedManagedPolicyList, location_name: "AttachedManagedPolicies"))
    AwsIamUserDetails.add_member(:create_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateDate"))
    AwsIamUserDetails.add_member(:group_list, Shapes::ShapeRef.new(shape: StringList, location_name: "GroupList"))
    AwsIamUserDetails.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    AwsIamUserDetails.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: AwsIamPermissionsBoundary, location_name: "PermissionsBoundary"))
    AwsIamUserDetails.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserId"))
    AwsIamUserDetails.add_member(:user_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserName"))
    AwsIamUserDetails.add_member(:user_policy_list, Shapes::ShapeRef.new(shape: AwsIamUserPolicyList, location_name: "UserPolicyList"))
    AwsIamUserDetails.struct_class = Types::AwsIamUserDetails

    AwsIamUserPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PolicyName"))
    AwsIamUserPolicy.struct_class = Types::AwsIamUserPolicy

    AwsIamUserPolicyList.member = Shapes::ShapeRef.new(shape: AwsIamUserPolicy)

    AwsKinesisStreamDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsKinesisStreamDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsKinesisStreamDetails.add_member(:stream_encryption, Shapes::ShapeRef.new(shape: AwsKinesisStreamStreamEncryptionDetails, location_name: "StreamEncryption"))
    AwsKinesisStreamDetails.add_member(:shard_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ShardCount"))
    AwsKinesisStreamDetails.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: Integer, location_name: "RetentionPeriodHours"))
    AwsKinesisStreamDetails.struct_class = Types::AwsKinesisStreamDetails

    AwsKinesisStreamStreamEncryptionDetails.add_member(:encryption_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EncryptionType"))
    AwsKinesisStreamStreamEncryptionDetails.add_member(:key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyId"))
    AwsKinesisStreamStreamEncryptionDetails.struct_class = Types::AwsKinesisStreamStreamEncryptionDetails

    AwsKmsKeyDetails.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AWSAccountId"))
    AwsKmsKeyDetails.add_member(:creation_date, Shapes::ShapeRef.new(shape: Double, location_name: "CreationDate"))
    AwsKmsKeyDetails.add_member(:key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyId"))
    AwsKmsKeyDetails.add_member(:key_manager, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyManager"))
    AwsKmsKeyDetails.add_member(:key_state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyState"))
    AwsKmsKeyDetails.add_member(:origin, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Origin"))
    AwsKmsKeyDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsKmsKeyDetails.add_member(:key_rotation_status, Shapes::ShapeRef.new(shape: Boolean, location_name: "KeyRotationStatus"))
    AwsKmsKeyDetails.struct_class = Types::AwsKmsKeyDetails

    AwsLambdaFunctionCode.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3Bucket"))
    AwsLambdaFunctionCode.add_member(:s3_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3Key"))
    AwsLambdaFunctionCode.add_member(:s3_object_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3ObjectVersion"))
    AwsLambdaFunctionCode.add_member(:zip_file, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ZipFile"))
    AwsLambdaFunctionCode.struct_class = Types::AwsLambdaFunctionCode

    AwsLambdaFunctionDeadLetterConfig.add_member(:target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TargetArn"))
    AwsLambdaFunctionDeadLetterConfig.struct_class = Types::AwsLambdaFunctionDeadLetterConfig

    AwsLambdaFunctionDetails.add_member(:code, Shapes::ShapeRef.new(shape: AwsLambdaFunctionCode, location_name: "Code"))
    AwsLambdaFunctionDetails.add_member(:code_sha_256, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CodeSha256"))
    AwsLambdaFunctionDetails.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: AwsLambdaFunctionDeadLetterConfig, location_name: "DeadLetterConfig"))
    AwsLambdaFunctionDetails.add_member(:environment, Shapes::ShapeRef.new(shape: AwsLambdaFunctionEnvironment, location_name: "Environment"))
    AwsLambdaFunctionDetails.add_member(:function_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FunctionName"))
    AwsLambdaFunctionDetails.add_member(:handler, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Handler"))
    AwsLambdaFunctionDetails.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyArn"))
    AwsLambdaFunctionDetails.add_member(:last_modified, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastModified"))
    AwsLambdaFunctionDetails.add_member(:layers, Shapes::ShapeRef.new(shape: AwsLambdaFunctionLayerList, location_name: "Layers"))
    AwsLambdaFunctionDetails.add_member(:master_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterArn"))
    AwsLambdaFunctionDetails.add_member(:memory_size, Shapes::ShapeRef.new(shape: Integer, location_name: "MemorySize"))
    AwsLambdaFunctionDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RevisionId"))
    AwsLambdaFunctionDetails.add_member(:role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Role"))
    AwsLambdaFunctionDetails.add_member(:runtime, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Runtime"))
    AwsLambdaFunctionDetails.add_member(:timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "Timeout"))
    AwsLambdaFunctionDetails.add_member(:tracing_config, Shapes::ShapeRef.new(shape: AwsLambdaFunctionTracingConfig, location_name: "TracingConfig"))
    AwsLambdaFunctionDetails.add_member(:vpc_config, Shapes::ShapeRef.new(shape: AwsLambdaFunctionVpcConfig, location_name: "VpcConfig"))
    AwsLambdaFunctionDetails.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    AwsLambdaFunctionDetails.add_member(:architectures, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Architectures"))
    AwsLambdaFunctionDetails.add_member(:package_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PackageType"))
    AwsLambdaFunctionDetails.struct_class = Types::AwsLambdaFunctionDetails

    AwsLambdaFunctionEnvironment.add_member(:variables, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Variables"))
    AwsLambdaFunctionEnvironment.add_member(:error, Shapes::ShapeRef.new(shape: AwsLambdaFunctionEnvironmentError, location_name: "Error"))
    AwsLambdaFunctionEnvironment.struct_class = Types::AwsLambdaFunctionEnvironment

    AwsLambdaFunctionEnvironmentError.add_member(:error_code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ErrorCode"))
    AwsLambdaFunctionEnvironmentError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AwsLambdaFunctionEnvironmentError.struct_class = Types::AwsLambdaFunctionEnvironmentError

    AwsLambdaFunctionLayer.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsLambdaFunctionLayer.add_member(:code_size, Shapes::ShapeRef.new(shape: Integer, location_name: "CodeSize"))
    AwsLambdaFunctionLayer.struct_class = Types::AwsLambdaFunctionLayer

    AwsLambdaFunctionLayerList.member = Shapes::ShapeRef.new(shape: AwsLambdaFunctionLayer)

    AwsLambdaFunctionTracingConfig.add_member(:mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Mode"))
    AwsLambdaFunctionTracingConfig.struct_class = Types::AwsLambdaFunctionTracingConfig

    AwsLambdaFunctionVpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroupIds"))
    AwsLambdaFunctionVpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SubnetIds"))
    AwsLambdaFunctionVpcConfig.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsLambdaFunctionVpcConfig.struct_class = Types::AwsLambdaFunctionVpcConfig

    AwsLambdaLayerVersionDetails.add_member(:version, Shapes::ShapeRef.new(shape: AwsLambdaLayerVersionNumber, location_name: "Version"))
    AwsLambdaLayerVersionDetails.add_member(:compatible_runtimes, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "CompatibleRuntimes"))
    AwsLambdaLayerVersionDetails.add_member(:created_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedDate"))
    AwsLambdaLayerVersionDetails.struct_class = Types::AwsLambdaLayerVersionDetails

    AwsMountPoint.add_member(:source_volume, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceVolume"))
    AwsMountPoint.add_member(:container_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerPath"))
    AwsMountPoint.struct_class = Types::AwsMountPoint

    AwsMountPointList.member = Shapes::ShapeRef.new(shape: AwsMountPoint)

    AwsNetworkFirewallFirewallDetails.add_member(:delete_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteProtection"))
    AwsNetworkFirewallFirewallDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsNetworkFirewallFirewallDetails.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirewallArn"))
    AwsNetworkFirewallFirewallDetails.add_member(:firewall_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirewallId"))
    AwsNetworkFirewallFirewallDetails.add_member(:firewall_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirewallName"))
    AwsNetworkFirewallFirewallDetails.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirewallPolicyArn"))
    AwsNetworkFirewallFirewallDetails.add_member(:firewall_policy_change_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "FirewallPolicyChangeProtection"))
    AwsNetworkFirewallFirewallDetails.add_member(:subnet_change_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "SubnetChangeProtection"))
    AwsNetworkFirewallFirewallDetails.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: AwsNetworkFirewallFirewallSubnetMappingsList, location_name: "SubnetMappings"))
    AwsNetworkFirewallFirewallDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsNetworkFirewallFirewallDetails.struct_class = Types::AwsNetworkFirewallFirewallDetails

    AwsNetworkFirewallFirewallPolicyDetails.add_member(:firewall_policy, Shapes::ShapeRef.new(shape: FirewallPolicyDetails, location_name: "FirewallPolicy"))
    AwsNetworkFirewallFirewallPolicyDetails.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirewallPolicyArn"))
    AwsNetworkFirewallFirewallPolicyDetails.add_member(:firewall_policy_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirewallPolicyId"))
    AwsNetworkFirewallFirewallPolicyDetails.add_member(:firewall_policy_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirewallPolicyName"))
    AwsNetworkFirewallFirewallPolicyDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsNetworkFirewallFirewallPolicyDetails.struct_class = Types::AwsNetworkFirewallFirewallPolicyDetails

    AwsNetworkFirewallFirewallSubnetMappingsDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AwsNetworkFirewallFirewallSubnetMappingsDetails.struct_class = Types::AwsNetworkFirewallFirewallSubnetMappingsDetails

    AwsNetworkFirewallFirewallSubnetMappingsList.member = Shapes::ShapeRef.new(shape: AwsNetworkFirewallFirewallSubnetMappingsDetails)

    AwsNetworkFirewallRuleGroupDetails.add_member(:capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "Capacity"))
    AwsNetworkFirewallRuleGroupDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsNetworkFirewallRuleGroupDetails.add_member(:rule_group, Shapes::ShapeRef.new(shape: RuleGroupDetails, location_name: "RuleGroup"))
    AwsNetworkFirewallRuleGroupDetails.add_member(:rule_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleGroupArn"))
    AwsNetworkFirewallRuleGroupDetails.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleGroupId"))
    AwsNetworkFirewallRuleGroupDetails.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleGroupName"))
    AwsNetworkFirewallRuleGroupDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsNetworkFirewallRuleGroupDetails.struct_class = Types::AwsNetworkFirewallRuleGroupDetails

    AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails.add_member(:internal_user_database_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "InternalUserDatabaseEnabled"))
    AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails.add_member(:master_user_options, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainMasterUserOptionsDetails, location_name: "MasterUserOptions"))
    AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails.struct_class = Types::AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails

    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstanceCount"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:warm_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "WarmEnabled"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:warm_count, Shapes::ShapeRef.new(shape: Integer, location_name: "WarmCount"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:dedicated_master_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DedicatedMasterEnabled"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:zone_awareness_config, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails, location_name: "ZoneAwarenessConfig"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:dedicated_master_count, Shapes::ShapeRef.new(shape: Integer, location_name: "DedicatedMasterCount"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceType"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:warm_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WarmType"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:zone_awareness_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ZoneAwarenessEnabled"))
    AwsOpenSearchServiceDomainClusterConfigDetails.add_member(:dedicated_master_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DedicatedMasterType"))
    AwsOpenSearchServiceDomainClusterConfigDetails.struct_class = Types::AwsOpenSearchServiceDomainClusterConfigDetails

    AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.add_member(:availability_zone_count, Shapes::ShapeRef.new(shape: Integer, location_name: "AvailabilityZoneCount"))
    AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.struct_class = Types::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails

    AwsOpenSearchServiceDomainDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsOpenSearchServiceDomainDetails.add_member(:access_policies, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessPolicies"))
    AwsOpenSearchServiceDomainDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainName"))
    AwsOpenSearchServiceDomainDetails.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    AwsOpenSearchServiceDomainDetails.add_member(:domain_endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainEndpoint"))
    AwsOpenSearchServiceDomainDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineVersion"))
    AwsOpenSearchServiceDomainDetails.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails, location_name: "EncryptionAtRestOptions"))
    AwsOpenSearchServiceDomainDetails.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails, location_name: "NodeToNodeEncryptionOptions"))
    AwsOpenSearchServiceDomainDetails.add_member(:service_software_options, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails, location_name: "ServiceSoftwareOptions"))
    AwsOpenSearchServiceDomainDetails.add_member(:cluster_config, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainClusterConfigDetails, location_name: "ClusterConfig"))
    AwsOpenSearchServiceDomainDetails.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainDomainEndpointOptionsDetails, location_name: "DomainEndpointOptions"))
    AwsOpenSearchServiceDomainDetails.add_member(:vpc_options, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainVpcOptionsDetails, location_name: "VpcOptions"))
    AwsOpenSearchServiceDomainDetails.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainLogPublishingOptionsDetails, location_name: "LogPublishingOptions"))
    AwsOpenSearchServiceDomainDetails.add_member(:domain_endpoints, Shapes::ShapeRef.new(shape: FieldMap, location_name: "DomainEndpoints"))
    AwsOpenSearchServiceDomainDetails.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails, location_name: "AdvancedSecurityOptions"))
    AwsOpenSearchServiceDomainDetails.struct_class = Types::AwsOpenSearchServiceDomainDetails

    AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.add_member(:custom_endpoint_certificate_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CustomEndpointCertificateArn"))
    AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.add_member(:custom_endpoint_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CustomEndpointEnabled"))
    AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.add_member(:enforce_https, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnforceHTTPS"))
    AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.add_member(:custom_endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CustomEndpoint"))
    AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.add_member(:tls_security_policy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TLSSecurityPolicy"))
    AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.struct_class = Types::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails

    AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.struct_class = Types::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails

    AwsOpenSearchServiceDomainLogPublishingOption.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CloudWatchLogsLogGroupArn"))
    AwsOpenSearchServiceDomainLogPublishingOption.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsOpenSearchServiceDomainLogPublishingOption.struct_class = Types::AwsOpenSearchServiceDomainLogPublishingOption

    AwsOpenSearchServiceDomainLogPublishingOptionsDetails.add_member(:index_slow_logs, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainLogPublishingOption, location_name: "IndexSlowLogs"))
    AwsOpenSearchServiceDomainLogPublishingOptionsDetails.add_member(:search_slow_logs, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainLogPublishingOption, location_name: "SearchSlowLogs"))
    AwsOpenSearchServiceDomainLogPublishingOptionsDetails.add_member(:audit_logs, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainLogPublishingOption, location_name: "AuditLogs"))
    AwsOpenSearchServiceDomainLogPublishingOptionsDetails.struct_class = Types::AwsOpenSearchServiceDomainLogPublishingOptionsDetails

    AwsOpenSearchServiceDomainMasterUserOptionsDetails.add_member(:master_user_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUserArn"))
    AwsOpenSearchServiceDomainMasterUserOptionsDetails.add_member(:master_user_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUserName"))
    AwsOpenSearchServiceDomainMasterUserOptionsDetails.add_member(:master_user_password, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUserPassword"))
    AwsOpenSearchServiceDomainMasterUserOptionsDetails.struct_class = Types::AwsOpenSearchServiceDomainMasterUserOptionsDetails

    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.struct_class = Types::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails

    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.add_member(:automated_update_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AutomatedUpdateDate"))
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.add_member(:cancellable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Cancellable"))
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.add_member(:current_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CurrentVersion"))
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.add_member(:new_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NewVersion"))
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.add_member(:update_available, Shapes::ShapeRef.new(shape: Boolean, location_name: "UpdateAvailable"))
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.add_member(:update_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UpdateStatus"))
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.add_member(:optional_deployment, Shapes::ShapeRef.new(shape: Boolean, location_name: "OptionalDeployment"))
    AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.struct_class = Types::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails

    AwsOpenSearchServiceDomainVpcOptionsDetails.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroupIds"))
    AwsOpenSearchServiceDomainVpcOptionsDetails.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SubnetIds"))
    AwsOpenSearchServiceDomainVpcOptionsDetails.struct_class = Types::AwsOpenSearchServiceDomainVpcOptionsDetails

    AwsRdsDbClusterAssociatedRole.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleArn"))
    AwsRdsDbClusterAssociatedRole.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbClusterAssociatedRole.struct_class = Types::AwsRdsDbClusterAssociatedRole

    AwsRdsDbClusterAssociatedRoles.member = Shapes::ShapeRef.new(shape: AwsRdsDbClusterAssociatedRole)

    AwsRdsDbClusterDetails.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    AwsRdsDbClusterDetails.add_member(:availability_zones, Shapes::ShapeRef.new(shape: StringList, location_name: "AvailabilityZones"))
    AwsRdsDbClusterDetails.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "BackupRetentionPeriod"))
    AwsRdsDbClusterDetails.add_member(:database_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DatabaseName"))
    AwsRdsDbClusterDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbClusterDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Endpoint"))
    AwsRdsDbClusterDetails.add_member(:reader_endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ReaderEndpoint"))
    AwsRdsDbClusterDetails.add_member(:custom_endpoints, Shapes::ShapeRef.new(shape: StringList, location_name: "CustomEndpoints"))
    AwsRdsDbClusterDetails.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAz"))
    AwsRdsDbClusterDetails.add_member(:engine, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Engine"))
    AwsRdsDbClusterDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineVersion"))
    AwsRdsDbClusterDetails.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    AwsRdsDbClusterDetails.add_member(:master_username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUsername"))
    AwsRdsDbClusterDetails.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PreferredBackupWindow"))
    AwsRdsDbClusterDetails.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PreferredMaintenanceWindow"))
    AwsRdsDbClusterDetails.add_member(:read_replica_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "ReadReplicaIdentifiers"))
    AwsRdsDbClusterDetails.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: AwsRdsDbInstanceVpcSecurityGroups, location_name: "VpcSecurityGroups"))
    AwsRdsDbClusterDetails.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HostedZoneId"))
    AwsRdsDbClusterDetails.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    AwsRdsDbClusterDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsRdsDbClusterDetails.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbClusterResourceId"))
    AwsRdsDbClusterDetails.add_member(:associated_roles, Shapes::ShapeRef.new(shape: AwsRdsDbClusterAssociatedRoles, location_name: "AssociatedRoles"))
    AwsRdsDbClusterDetails.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterCreateTime"))
    AwsRdsDbClusterDetails.add_member(:enabled_cloud_watch_logs_exports, Shapes::ShapeRef.new(shape: StringList, location_name: "EnabledCloudWatchLogsExports"))
    AwsRdsDbClusterDetails.add_member(:engine_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineMode"))
    AwsRdsDbClusterDetails.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtection"))
    AwsRdsDbClusterDetails.add_member(:http_endpoint_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "HttpEndpointEnabled"))
    AwsRdsDbClusterDetails.add_member(:activity_stream_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ActivityStreamStatus"))
    AwsRdsDbClusterDetails.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "CopyTagsToSnapshot"))
    AwsRdsDbClusterDetails.add_member(:cross_account_clone, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrossAccountClone"))
    AwsRdsDbClusterDetails.add_member(:domain_memberships, Shapes::ShapeRef.new(shape: AwsRdsDbDomainMemberships, location_name: "DomainMemberships"))
    AwsRdsDbClusterDetails.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbClusterParameterGroup"))
    AwsRdsDbClusterDetails.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSubnetGroup"))
    AwsRdsDbClusterDetails.add_member(:db_cluster_option_group_memberships, Shapes::ShapeRef.new(shape: AwsRdsDbClusterOptionGroupMemberships, location_name: "DbClusterOptionGroupMemberships"))
    AwsRdsDbClusterDetails.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbClusterIdentifier"))
    AwsRdsDbClusterDetails.add_member(:db_cluster_members, Shapes::ShapeRef.new(shape: AwsRdsDbClusterMembers, location_name: "DbClusterMembers"))
    AwsRdsDbClusterDetails.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IamDatabaseAuthenticationEnabled"))
    AwsRdsDbClusterDetails.struct_class = Types::AwsRdsDbClusterDetails

    AwsRdsDbClusterMember.add_member(:is_cluster_writer, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsClusterWriter"))
    AwsRdsDbClusterMember.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: Integer, location_name: "PromotionTier"))
    AwsRdsDbClusterMember.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbInstanceIdentifier"))
    AwsRdsDbClusterMember.add_member(:db_cluster_parameter_group_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbClusterParameterGroupStatus"))
    AwsRdsDbClusterMember.struct_class = Types::AwsRdsDbClusterMember

    AwsRdsDbClusterMembers.member = Shapes::ShapeRef.new(shape: AwsRdsDbClusterMember)

    AwsRdsDbClusterOptionGroupMembership.add_member(:db_cluster_option_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbClusterOptionGroupName"))
    AwsRdsDbClusterOptionGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbClusterOptionGroupMembership.struct_class = Types::AwsRdsDbClusterOptionGroupMembership

    AwsRdsDbClusterOptionGroupMemberships.member = Shapes::ShapeRef.new(shape: AwsRdsDbClusterOptionGroupMembership)

    AwsRdsDbClusterSnapshotDetails.add_member(:availability_zones, Shapes::ShapeRef.new(shape: StringList, location_name: "AvailabilityZones"))
    AwsRdsDbClusterSnapshotDetails.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotCreateTime"))
    AwsRdsDbClusterSnapshotDetails.add_member(:engine, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Engine"))
    AwsRdsDbClusterSnapshotDetails.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    AwsRdsDbClusterSnapshotDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbClusterSnapshotDetails.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    AwsRdsDbClusterSnapshotDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsRdsDbClusterSnapshotDetails.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterCreateTime"))
    AwsRdsDbClusterSnapshotDetails.add_member(:master_username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUsername"))
    AwsRdsDbClusterSnapshotDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineVersion"))
    AwsRdsDbClusterSnapshotDetails.add_member(:license_model, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LicenseModel"))
    AwsRdsDbClusterSnapshotDetails.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotType"))
    AwsRdsDbClusterSnapshotDetails.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "PercentProgress"))
    AwsRdsDbClusterSnapshotDetails.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    AwsRdsDbClusterSnapshotDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsRdsDbClusterSnapshotDetails.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbClusterIdentifier"))
    AwsRdsDbClusterSnapshotDetails.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbClusterSnapshotIdentifier"))
    AwsRdsDbClusterSnapshotDetails.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IamDatabaseAuthenticationEnabled"))
    AwsRdsDbClusterSnapshotDetails.struct_class = Types::AwsRdsDbClusterSnapshotDetails

    AwsRdsDbDomainMembership.add_member(:domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Domain"))
    AwsRdsDbDomainMembership.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbDomainMembership.add_member(:fqdn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Fqdn"))
    AwsRdsDbDomainMembership.add_member(:iam_role_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IamRoleName"))
    AwsRdsDbDomainMembership.struct_class = Types::AwsRdsDbDomainMembership

    AwsRdsDbDomainMemberships.member = Shapes::ShapeRef.new(shape: AwsRdsDbDomainMembership)

    AwsRdsDbInstanceAssociatedRole.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleArn"))
    AwsRdsDbInstanceAssociatedRole.add_member(:feature_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FeatureName"))
    AwsRdsDbInstanceAssociatedRole.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbInstanceAssociatedRole.struct_class = Types::AwsRdsDbInstanceAssociatedRole

    AwsRdsDbInstanceAssociatedRoles.member = Shapes::ShapeRef.new(shape: AwsRdsDbInstanceAssociatedRole)

    AwsRdsDbInstanceDetails.add_member(:associated_roles, Shapes::ShapeRef.new(shape: AwsRdsDbInstanceAssociatedRoles, location_name: "AssociatedRoles"))
    AwsRdsDbInstanceDetails.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CACertificateIdentifier"))
    AwsRdsDbInstanceDetails.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DBClusterIdentifier"))
    AwsRdsDbInstanceDetails.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DBInstanceIdentifier"))
    AwsRdsDbInstanceDetails.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DBInstanceClass"))
    AwsRdsDbInstanceDetails.add_member(:db_instance_port, Shapes::ShapeRef.new(shape: Integer, location_name: "DbInstancePort"))
    AwsRdsDbInstanceDetails.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbiResourceId"))
    AwsRdsDbInstanceDetails.add_member(:db_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DBName"))
    AwsRdsDbInstanceDetails.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtection"))
    AwsRdsDbInstanceDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: AwsRdsDbInstanceEndpoint, location_name: "Endpoint"))
    AwsRdsDbInstanceDetails.add_member(:engine, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Engine"))
    AwsRdsDbInstanceDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineVersion"))
    AwsRdsDbInstanceDetails.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    AwsRdsDbInstanceDetails.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceCreateTime"))
    AwsRdsDbInstanceDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsRdsDbInstanceDetails.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    AwsRdsDbInstanceDetails.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    AwsRdsDbInstanceDetails.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TdeCredentialArn"))
    AwsRdsDbInstanceDetails.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: AwsRdsDbInstanceVpcSecurityGroups, location_name: "VpcSecurityGroups"))
    AwsRdsDbInstanceDetails.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAz"))
    AwsRdsDbInstanceDetails.add_member(:enhanced_monitoring_resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EnhancedMonitoringResourceArn"))
    AwsRdsDbInstanceDetails.add_member(:db_instance_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbInstanceStatus"))
    AwsRdsDbInstanceDetails.add_member(:master_username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUsername"))
    AwsRdsDbInstanceDetails.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    AwsRdsDbInstanceDetails.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PreferredBackupWindow"))
    AwsRdsDbInstanceDetails.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "BackupRetentionPeriod"))
    AwsRdsDbInstanceDetails.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "DbSecurityGroups"))
    AwsRdsDbInstanceDetails.add_member(:db_parameter_groups, Shapes::ShapeRef.new(shape: AwsRdsDbParameterGroups, location_name: "DbParameterGroups"))
    AwsRdsDbInstanceDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AvailabilityZone"))
    AwsRdsDbInstanceDetails.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: AwsRdsDbSubnetGroup, location_name: "DbSubnetGroup"))
    AwsRdsDbInstanceDetails.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PreferredMaintenanceWindow"))
    AwsRdsDbInstanceDetails.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: AwsRdsDbPendingModifiedValues, location_name: "PendingModifiedValues"))
    AwsRdsDbInstanceDetails.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LatestRestorableTime"))
    AwsRdsDbInstanceDetails.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    AwsRdsDbInstanceDetails.add_member(:read_replica_source_db_instance_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ReadReplicaSourceDBInstanceIdentifier"))
    AwsRdsDbInstanceDetails.add_member(:read_replica_db_instance_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "ReadReplicaDBInstanceIdentifiers"))
    AwsRdsDbInstanceDetails.add_member(:read_replica_db_cluster_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "ReadReplicaDBClusterIdentifiers"))
    AwsRdsDbInstanceDetails.add_member(:license_model, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LicenseModel"))
    AwsRdsDbInstanceDetails.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    AwsRdsDbInstanceDetails.add_member(:option_group_memberships, Shapes::ShapeRef.new(shape: AwsRdsDbOptionGroupMemberships, location_name: "OptionGroupMemberships"))
    AwsRdsDbInstanceDetails.add_member(:character_set_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CharacterSetName"))
    AwsRdsDbInstanceDetails.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SecondaryAvailabilityZone"))
    AwsRdsDbInstanceDetails.add_member(:status_infos, Shapes::ShapeRef.new(shape: AwsRdsDbStatusInfos, location_name: "StatusInfos"))
    AwsRdsDbInstanceDetails.add_member(:storage_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StorageType"))
    AwsRdsDbInstanceDetails.add_member(:domain_memberships, Shapes::ShapeRef.new(shape: AwsRdsDbDomainMemberships, location_name: "DomainMemberships"))
    AwsRdsDbInstanceDetails.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "CopyTagsToSnapshot"))
    AwsRdsDbInstanceDetails.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: Integer, location_name: "MonitoringInterval"))
    AwsRdsDbInstanceDetails.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MonitoringRoleArn"))
    AwsRdsDbInstanceDetails.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: Integer, location_name: "PromotionTier"))
    AwsRdsDbInstanceDetails.add_member(:timezone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Timezone"))
    AwsRdsDbInstanceDetails.add_member(:performance_insights_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformanceInsightsEnabled"))
    AwsRdsDbInstanceDetails.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PerformanceInsightsKmsKeyId"))
    AwsRdsDbInstanceDetails.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "PerformanceInsightsRetentionPeriod"))
    AwsRdsDbInstanceDetails.add_member(:enabled_cloud_watch_logs_exports, Shapes::ShapeRef.new(shape: StringList, location_name: "EnabledCloudWatchLogsExports"))
    AwsRdsDbInstanceDetails.add_member(:processor_features, Shapes::ShapeRef.new(shape: AwsRdsDbProcessorFeatures, location_name: "ProcessorFeatures"))
    AwsRdsDbInstanceDetails.add_member(:listener_endpoint, Shapes::ShapeRef.new(shape: AwsRdsDbInstanceEndpoint, location_name: "ListenerEndpoint"))
    AwsRdsDbInstanceDetails.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAllocatedStorage"))
    AwsRdsDbInstanceDetails.struct_class = Types::AwsRdsDbInstanceDetails

    AwsRdsDbInstanceEndpoint.add_member(:address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Address"))
    AwsRdsDbInstanceEndpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    AwsRdsDbInstanceEndpoint.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HostedZoneId"))
    AwsRdsDbInstanceEndpoint.struct_class = Types::AwsRdsDbInstanceEndpoint

    AwsRdsDbInstanceVpcSecurityGroup.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcSecurityGroupId"))
    AwsRdsDbInstanceVpcSecurityGroup.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbInstanceVpcSecurityGroup.struct_class = Types::AwsRdsDbInstanceVpcSecurityGroup

    AwsRdsDbInstanceVpcSecurityGroups.member = Shapes::ShapeRef.new(shape: AwsRdsDbInstanceVpcSecurityGroup)

    AwsRdsDbOptionGroupMembership.add_member(:option_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OptionGroupName"))
    AwsRdsDbOptionGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbOptionGroupMembership.struct_class = Types::AwsRdsDbOptionGroupMembership

    AwsRdsDbOptionGroupMemberships.member = Shapes::ShapeRef.new(shape: AwsRdsDbOptionGroupMembership)

    AwsRdsDbParameterGroup.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbParameterGroupName"))
    AwsRdsDbParameterGroup.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ParameterApplyStatus"))
    AwsRdsDbParameterGroup.struct_class = Types::AwsRdsDbParameterGroup

    AwsRdsDbParameterGroups.member = Shapes::ShapeRef.new(shape: AwsRdsDbParameterGroup)

    AwsRdsDbPendingModifiedValues.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbInstanceClass"))
    AwsRdsDbPendingModifiedValues.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    AwsRdsDbPendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUserPassword"))
    AwsRdsDbPendingModifiedValues.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    AwsRdsDbPendingModifiedValues.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "BackupRetentionPeriod"))
    AwsRdsDbPendingModifiedValues.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    AwsRdsDbPendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineVersion"))
    AwsRdsDbPendingModifiedValues.add_member(:license_model, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LicenseModel"))
    AwsRdsDbPendingModifiedValues.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    AwsRdsDbPendingModifiedValues.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbInstanceIdentifier"))
    AwsRdsDbPendingModifiedValues.add_member(:storage_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StorageType"))
    AwsRdsDbPendingModifiedValues.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CaCertificateIdentifier"))
    AwsRdsDbPendingModifiedValues.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSubnetGroupName"))
    AwsRdsDbPendingModifiedValues.add_member(:pending_cloud_watch_logs_exports, Shapes::ShapeRef.new(shape: AwsRdsPendingCloudWatchLogsExports, location_name: "PendingCloudWatchLogsExports"))
    AwsRdsDbPendingModifiedValues.add_member(:processor_features, Shapes::ShapeRef.new(shape: AwsRdsDbProcessorFeatures, location_name: "ProcessorFeatures"))
    AwsRdsDbPendingModifiedValues.struct_class = Types::AwsRdsDbPendingModifiedValues

    AwsRdsDbProcessorFeature.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsRdsDbProcessorFeature.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsRdsDbProcessorFeature.struct_class = Types::AwsRdsDbProcessorFeature

    AwsRdsDbProcessorFeatures.member = Shapes::ShapeRef.new(shape: AwsRdsDbProcessorFeature)

    AwsRdsDbSecurityGroupDetails.add_member(:db_security_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSecurityGroupArn"))
    AwsRdsDbSecurityGroupDetails.add_member(:db_security_group_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSecurityGroupDescription"))
    AwsRdsDbSecurityGroupDetails.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSecurityGroupName"))
    AwsRdsDbSecurityGroupDetails.add_member(:ec2_security_groups, Shapes::ShapeRef.new(shape: AwsRdsDbSecurityGroupEc2SecurityGroups, location_name: "Ec2SecurityGroups"))
    AwsRdsDbSecurityGroupDetails.add_member(:ip_ranges, Shapes::ShapeRef.new(shape: AwsRdsDbSecurityGroupIpRanges, location_name: "IpRanges"))
    AwsRdsDbSecurityGroupDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsRdsDbSecurityGroupDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsRdsDbSecurityGroupDetails.struct_class = Types::AwsRdsDbSecurityGroupDetails

    AwsRdsDbSecurityGroupEc2SecurityGroup.add_member(:ec2_security_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ec2SecurityGroupId"))
    AwsRdsDbSecurityGroupEc2SecurityGroup.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ec2SecurityGroupName"))
    AwsRdsDbSecurityGroupEc2SecurityGroup.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ec2SecurityGroupOwnerId"))
    AwsRdsDbSecurityGroupEc2SecurityGroup.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbSecurityGroupEc2SecurityGroup.struct_class = Types::AwsRdsDbSecurityGroupEc2SecurityGroup

    AwsRdsDbSecurityGroupEc2SecurityGroups.member = Shapes::ShapeRef.new(shape: AwsRdsDbSecurityGroupEc2SecurityGroup)

    AwsRdsDbSecurityGroupIpRange.add_member(:cidr_ip, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrIp"))
    AwsRdsDbSecurityGroupIpRange.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbSecurityGroupIpRange.struct_class = Types::AwsRdsDbSecurityGroupIpRange

    AwsRdsDbSecurityGroupIpRanges.member = Shapes::ShapeRef.new(shape: AwsRdsDbSecurityGroupIpRange)

    AwsRdsDbSnapshotDetails.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSnapshotIdentifier"))
    AwsRdsDbSnapshotDetails.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbInstanceIdentifier"))
    AwsRdsDbSnapshotDetails.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotCreateTime"))
    AwsRdsDbSnapshotDetails.add_member(:engine, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Engine"))
    AwsRdsDbSnapshotDetails.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    AwsRdsDbSnapshotDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbSnapshotDetails.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    AwsRdsDbSnapshotDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AvailabilityZone"))
    AwsRdsDbSnapshotDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsRdsDbSnapshotDetails.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceCreateTime"))
    AwsRdsDbSnapshotDetails.add_member(:master_username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUsername"))
    AwsRdsDbSnapshotDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EngineVersion"))
    AwsRdsDbSnapshotDetails.add_member(:license_model, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LicenseModel"))
    AwsRdsDbSnapshotDetails.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotType"))
    AwsRdsDbSnapshotDetails.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    AwsRdsDbSnapshotDetails.add_member(:option_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OptionGroupName"))
    AwsRdsDbSnapshotDetails.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "PercentProgress"))
    AwsRdsDbSnapshotDetails.add_member(:source_region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceRegion"))
    AwsRdsDbSnapshotDetails.add_member(:source_db_snapshot_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceDbSnapshotIdentifier"))
    AwsRdsDbSnapshotDetails.add_member(:storage_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StorageType"))
    AwsRdsDbSnapshotDetails.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TdeCredentialArn"))
    AwsRdsDbSnapshotDetails.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    AwsRdsDbSnapshotDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsRdsDbSnapshotDetails.add_member(:timezone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Timezone"))
    AwsRdsDbSnapshotDetails.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IamDatabaseAuthenticationEnabled"))
    AwsRdsDbSnapshotDetails.add_member(:processor_features, Shapes::ShapeRef.new(shape: AwsRdsDbProcessorFeatures, location_name: "ProcessorFeatures"))
    AwsRdsDbSnapshotDetails.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbiResourceId"))
    AwsRdsDbSnapshotDetails.struct_class = Types::AwsRdsDbSnapshotDetails

    AwsRdsDbStatusInfo.add_member(:status_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StatusType"))
    AwsRdsDbStatusInfo.add_member(:normal, Shapes::ShapeRef.new(shape: Boolean, location_name: "Normal"))
    AwsRdsDbStatusInfo.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsDbStatusInfo.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AwsRdsDbStatusInfo.struct_class = Types::AwsRdsDbStatusInfo

    AwsRdsDbStatusInfos.member = Shapes::ShapeRef.new(shape: AwsRdsDbStatusInfo)

    AwsRdsDbSubnetGroup.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSubnetGroupName"))
    AwsRdsDbSubnetGroup.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSubnetGroupDescription"))
    AwsRdsDbSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsRdsDbSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetGroupStatus"))
    AwsRdsDbSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: AwsRdsDbSubnetGroupSubnets, location_name: "Subnets"))
    AwsRdsDbSubnetGroup.add_member(:db_subnet_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DbSubnetGroupArn"))
    AwsRdsDbSubnetGroup.struct_class = Types::AwsRdsDbSubnetGroup

    AwsRdsDbSubnetGroupSubnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetIdentifier"))
    AwsRdsDbSubnetGroupSubnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AwsRdsDbSubnetGroupSubnetAvailabilityZone, location_name: "SubnetAvailabilityZone"))
    AwsRdsDbSubnetGroupSubnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetStatus"))
    AwsRdsDbSubnetGroupSubnet.struct_class = Types::AwsRdsDbSubnetGroupSubnet

    AwsRdsDbSubnetGroupSubnetAvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsRdsDbSubnetGroupSubnetAvailabilityZone.struct_class = Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone

    AwsRdsDbSubnetGroupSubnets.member = Shapes::ShapeRef.new(shape: AwsRdsDbSubnetGroupSubnet)

    AwsRdsEventSubscriptionDetails.add_member(:cust_subscription_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CustSubscriptionId"))
    AwsRdsEventSubscriptionDetails.add_member(:customer_aws_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CustomerAwsId"))
    AwsRdsEventSubscriptionDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsRdsEventSubscriptionDetails.add_member(:event_categories_list, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "EventCategoriesList"))
    AwsRdsEventSubscriptionDetails.add_member(:event_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EventSubscriptionArn"))
    AwsRdsEventSubscriptionDetails.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnsTopicArn"))
    AwsRdsEventSubscriptionDetails.add_member(:source_ids_list, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SourceIdsList"))
    AwsRdsEventSubscriptionDetails.add_member(:source_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceType"))
    AwsRdsEventSubscriptionDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRdsEventSubscriptionDetails.add_member(:subscription_creation_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubscriptionCreationTime"))
    AwsRdsEventSubscriptionDetails.struct_class = Types::AwsRdsEventSubscriptionDetails

    AwsRdsPendingCloudWatchLogsExports.add_member(:log_types_to_enable, Shapes::ShapeRef.new(shape: StringList, location_name: "LogTypesToEnable"))
    AwsRdsPendingCloudWatchLogsExports.add_member(:log_types_to_disable, Shapes::ShapeRef.new(shape: StringList, location_name: "LogTypesToDisable"))
    AwsRdsPendingCloudWatchLogsExports.struct_class = Types::AwsRdsPendingCloudWatchLogsExports

    AwsRedshiftClusterClusterNode.add_member(:node_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NodeRole"))
    AwsRedshiftClusterClusterNode.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PrivateIpAddress"))
    AwsRedshiftClusterClusterNode.add_member(:public_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PublicIpAddress"))
    AwsRedshiftClusterClusterNode.struct_class = Types::AwsRedshiftClusterClusterNode

    AwsRedshiftClusterClusterNodes.member = Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterNode)

    AwsRedshiftClusterClusterParameterGroup.add_member(:cluster_parameter_status_list, Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterParameterStatusList, location_name: "ClusterParameterStatusList"))
    AwsRedshiftClusterClusterParameterGroup.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ParameterApplyStatus"))
    AwsRedshiftClusterClusterParameterGroup.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ParameterGroupName"))
    AwsRedshiftClusterClusterParameterGroup.struct_class = Types::AwsRedshiftClusterClusterParameterGroup

    AwsRedshiftClusterClusterParameterGroups.member = Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterParameterGroup)

    AwsRedshiftClusterClusterParameterStatus.add_member(:parameter_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ParameterName"))
    AwsRedshiftClusterClusterParameterStatus.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ParameterApplyStatus"))
    AwsRedshiftClusterClusterParameterStatus.add_member(:parameter_apply_error_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ParameterApplyErrorDescription"))
    AwsRedshiftClusterClusterParameterStatus.struct_class = Types::AwsRedshiftClusterClusterParameterStatus

    AwsRedshiftClusterClusterParameterStatusList.member = Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterParameterStatus)

    AwsRedshiftClusterClusterSecurityGroup.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterSecurityGroupName"))
    AwsRedshiftClusterClusterSecurityGroup.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRedshiftClusterClusterSecurityGroup.struct_class = Types::AwsRedshiftClusterClusterSecurityGroup

    AwsRedshiftClusterClusterSecurityGroups.member = Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterSecurityGroup)

    AwsRedshiftClusterClusterSnapshotCopyStatus.add_member(:destination_region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationRegion"))
    AwsRedshiftClusterClusterSnapshotCopyStatus.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "ManualSnapshotRetentionPeriod"))
    AwsRedshiftClusterClusterSnapshotCopyStatus.add_member(:retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "RetentionPeriod"))
    AwsRedshiftClusterClusterSnapshotCopyStatus.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotCopyGrantName"))
    AwsRedshiftClusterClusterSnapshotCopyStatus.struct_class = Types::AwsRedshiftClusterClusterSnapshotCopyStatus

    AwsRedshiftClusterDeferredMaintenanceWindow.add_member(:defer_maintenance_end_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeferMaintenanceEndTime"))
    AwsRedshiftClusterDeferredMaintenanceWindow.add_member(:defer_maintenance_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeferMaintenanceIdentifier"))
    AwsRedshiftClusterDeferredMaintenanceWindow.add_member(:defer_maintenance_start_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeferMaintenanceStartTime"))
    AwsRedshiftClusterDeferredMaintenanceWindow.struct_class = Types::AwsRedshiftClusterDeferredMaintenanceWindow

    AwsRedshiftClusterDeferredMaintenanceWindows.member = Shapes::ShapeRef.new(shape: AwsRedshiftClusterDeferredMaintenanceWindow)

    AwsRedshiftClusterDetails.add_member(:allow_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowVersionUpgrade"))
    AwsRedshiftClusterDetails.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "AutomatedSnapshotRetentionPeriod"))
    AwsRedshiftClusterDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AvailabilityZone"))
    AwsRedshiftClusterDetails.add_member(:cluster_availability_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterAvailabilityStatus"))
    AwsRedshiftClusterDetails.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterCreateTime"))
    AwsRedshiftClusterDetails.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterIdentifier"))
    AwsRedshiftClusterDetails.add_member(:cluster_nodes, Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterNodes, location_name: "ClusterNodes"))
    AwsRedshiftClusterDetails.add_member(:cluster_parameter_groups, Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterParameterGroups, location_name: "ClusterParameterGroups"))
    AwsRedshiftClusterDetails.add_member(:cluster_public_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterPublicKey"))
    AwsRedshiftClusterDetails.add_member(:cluster_revision_number, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterRevisionNumber"))
    AwsRedshiftClusterDetails.add_member(:cluster_security_groups, Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterSecurityGroups, location_name: "ClusterSecurityGroups"))
    AwsRedshiftClusterDetails.add_member(:cluster_snapshot_copy_status, Shapes::ShapeRef.new(shape: AwsRedshiftClusterClusterSnapshotCopyStatus, location_name: "ClusterSnapshotCopyStatus"))
    AwsRedshiftClusterDetails.add_member(:cluster_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterStatus"))
    AwsRedshiftClusterDetails.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterSubnetGroupName"))
    AwsRedshiftClusterDetails.add_member(:cluster_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterVersion"))
    AwsRedshiftClusterDetails.add_member(:db_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DBName"))
    AwsRedshiftClusterDetails.add_member(:deferred_maintenance_windows, Shapes::ShapeRef.new(shape: AwsRedshiftClusterDeferredMaintenanceWindows, location_name: "DeferredMaintenanceWindows"))
    AwsRedshiftClusterDetails.add_member(:elastic_ip_status, Shapes::ShapeRef.new(shape: AwsRedshiftClusterElasticIpStatus, location_name: "ElasticIpStatus"))
    AwsRedshiftClusterDetails.add_member(:elastic_resize_number_of_node_options, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ElasticResizeNumberOfNodeOptions"))
    AwsRedshiftClusterDetails.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    AwsRedshiftClusterDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: AwsRedshiftClusterEndpoint, location_name: "Endpoint"))
    AwsRedshiftClusterDetails.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnhancedVpcRouting"))
    AwsRedshiftClusterDetails.add_member(:expected_next_snapshot_schedule_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ExpectedNextSnapshotScheduleTime"))
    AwsRedshiftClusterDetails.add_member(:expected_next_snapshot_schedule_time_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ExpectedNextSnapshotScheduleTimeStatus"))
    AwsRedshiftClusterDetails.add_member(:hsm_status, Shapes::ShapeRef.new(shape: AwsRedshiftClusterHsmStatus, location_name: "HsmStatus"))
    AwsRedshiftClusterDetails.add_member(:iam_roles, Shapes::ShapeRef.new(shape: AwsRedshiftClusterIamRoles, location_name: "IamRoles"))
    AwsRedshiftClusterDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsRedshiftClusterDetails.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MaintenanceTrackName"))
    AwsRedshiftClusterDetails.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "ManualSnapshotRetentionPeriod"))
    AwsRedshiftClusterDetails.add_member(:master_username, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUsername"))
    AwsRedshiftClusterDetails.add_member(:next_maintenance_window_start_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextMaintenanceWindowStartTime"))
    AwsRedshiftClusterDetails.add_member(:node_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NodeType"))
    AwsRedshiftClusterDetails.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfNodes"))
    AwsRedshiftClusterDetails.add_member(:pending_actions, Shapes::ShapeRef.new(shape: StringList, location_name: "PendingActions"))
    AwsRedshiftClusterDetails.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: AwsRedshiftClusterPendingModifiedValues, location_name: "PendingModifiedValues"))
    AwsRedshiftClusterDetails.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PreferredMaintenanceWindow"))
    AwsRedshiftClusterDetails.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    AwsRedshiftClusterDetails.add_member(:resize_info, Shapes::ShapeRef.new(shape: AwsRedshiftClusterResizeInfo, location_name: "ResizeInfo"))
    AwsRedshiftClusterDetails.add_member(:restore_status, Shapes::ShapeRef.new(shape: AwsRedshiftClusterRestoreStatus, location_name: "RestoreStatus"))
    AwsRedshiftClusterDetails.add_member(:snapshot_schedule_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotScheduleIdentifier"))
    AwsRedshiftClusterDetails.add_member(:snapshot_schedule_state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotScheduleState"))
    AwsRedshiftClusterDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsRedshiftClusterDetails.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: AwsRedshiftClusterVpcSecurityGroups, location_name: "VpcSecurityGroups"))
    AwsRedshiftClusterDetails.add_member(:logging_status, Shapes::ShapeRef.new(shape: AwsRedshiftClusterLoggingStatus, location_name: "LoggingStatus"))
    AwsRedshiftClusterDetails.struct_class = Types::AwsRedshiftClusterDetails

    AwsRedshiftClusterElasticIpStatus.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ElasticIp"))
    AwsRedshiftClusterElasticIpStatus.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRedshiftClusterElasticIpStatus.struct_class = Types::AwsRedshiftClusterElasticIpStatus

    AwsRedshiftClusterEndpoint.add_member(:address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Address"))
    AwsRedshiftClusterEndpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    AwsRedshiftClusterEndpoint.struct_class = Types::AwsRedshiftClusterEndpoint

    AwsRedshiftClusterHsmStatus.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HsmClientCertificateIdentifier"))
    AwsRedshiftClusterHsmStatus.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HsmConfigurationIdentifier"))
    AwsRedshiftClusterHsmStatus.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRedshiftClusterHsmStatus.struct_class = Types::AwsRedshiftClusterHsmStatus

    AwsRedshiftClusterIamRole.add_member(:apply_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ApplyStatus"))
    AwsRedshiftClusterIamRole.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IamRoleArn"))
    AwsRedshiftClusterIamRole.struct_class = Types::AwsRedshiftClusterIamRole

    AwsRedshiftClusterIamRoles.member = Shapes::ShapeRef.new(shape: AwsRedshiftClusterIamRole)

    AwsRedshiftClusterLoggingStatus.add_member(:bucket_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BucketName"))
    AwsRedshiftClusterLoggingStatus.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastFailureMessage"))
    AwsRedshiftClusterLoggingStatus.add_member(:last_failure_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastFailureTime"))
    AwsRedshiftClusterLoggingStatus.add_member(:last_successful_delivery_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastSuccessfulDeliveryTime"))
    AwsRedshiftClusterLoggingStatus.add_member(:logging_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "LoggingEnabled"))
    AwsRedshiftClusterLoggingStatus.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "S3KeyPrefix"))
    AwsRedshiftClusterLoggingStatus.struct_class = Types::AwsRedshiftClusterLoggingStatus

    AwsRedshiftClusterPendingModifiedValues.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "AutomatedSnapshotRetentionPeriod"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterIdentifier"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:cluster_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterType"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:cluster_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ClusterVersion"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:encryption_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EncryptionType"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnhancedVpcRouting"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MaintenanceTrackName"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterUserPassword"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:node_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NodeType"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfNodes"))
    AwsRedshiftClusterPendingModifiedValues.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    AwsRedshiftClusterPendingModifiedValues.struct_class = Types::AwsRedshiftClusterPendingModifiedValues

    AwsRedshiftClusterResizeInfo.add_member(:allow_cancel_resize, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowCancelResize"))
    AwsRedshiftClusterResizeInfo.add_member(:resize_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResizeType"))
    AwsRedshiftClusterResizeInfo.struct_class = Types::AwsRedshiftClusterResizeInfo

    AwsRedshiftClusterRestoreStatus.add_member(:current_restore_rate_in_mega_bytes_per_second, Shapes::ShapeRef.new(shape: Double, location_name: "CurrentRestoreRateInMegaBytesPerSecond"))
    AwsRedshiftClusterRestoreStatus.add_member(:elapsed_time_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeInSeconds"))
    AwsRedshiftClusterRestoreStatus.add_member(:estimated_time_to_completion_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "EstimatedTimeToCompletionInSeconds"))
    AwsRedshiftClusterRestoreStatus.add_member(:progress_in_mega_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "ProgressInMegaBytes"))
    AwsRedshiftClusterRestoreStatus.add_member(:snapshot_size_in_mega_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "SnapshotSizeInMegaBytes"))
    AwsRedshiftClusterRestoreStatus.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRedshiftClusterRestoreStatus.struct_class = Types::AwsRedshiftClusterRestoreStatus

    AwsRedshiftClusterVpcSecurityGroup.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsRedshiftClusterVpcSecurityGroup.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcSecurityGroupId"))
    AwsRedshiftClusterVpcSecurityGroup.struct_class = Types::AwsRedshiftClusterVpcSecurityGroup

    AwsRedshiftClusterVpcSecurityGroups.member = Shapes::ShapeRef.new(shape: AwsRedshiftClusterVpcSecurityGroup)

    AwsS3AccountPublicAccessBlockDetails.add_member(:block_public_acls, Shapes::ShapeRef.new(shape: Boolean, location_name: "BlockPublicAcls"))
    AwsS3AccountPublicAccessBlockDetails.add_member(:block_public_policy, Shapes::ShapeRef.new(shape: Boolean, location_name: "BlockPublicPolicy"))
    AwsS3AccountPublicAccessBlockDetails.add_member(:ignore_public_acls, Shapes::ShapeRef.new(shape: Boolean, location_name: "IgnorePublicAcls"))
    AwsS3AccountPublicAccessBlockDetails.add_member(:restrict_public_buckets, Shapes::ShapeRef.new(shape: Boolean, location_name: "RestrictPublicBuckets"))
    AwsS3AccountPublicAccessBlockDetails.struct_class = Types::AwsS3AccountPublicAccessBlockDetails

    AwsS3BucketBucketLifecycleConfigurationDetails.add_member(:rules, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesList, location_name: "Rules"))
    AwsS3BucketBucketLifecycleConfigurationDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationDetails

    AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.add_member(:days_after_initiation, Shapes::ShapeRef.new(shape: Integer, location_name: "DaysAfterInitiation"))
    AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails

    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:abort_incomplete_multipart_upload, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails, location_name: "AbortIncompleteMultipartUpload"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:expiration_date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ExpirationDate"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:expiration_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "ExpirationInDays"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:expired_object_delete_marker, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExpiredObjectDeleteMarker"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:filter, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails, location_name: "Filter"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ID"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:noncurrent_version_expiration_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "NoncurrentVersionExpirationInDays"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:noncurrent_version_transitions, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList, location_name: "NoncurrentVersionTransitions"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Prefix"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.add_member(:transitions, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList, location_name: "Transitions"))
    AwsS3BucketBucketLifecycleConfigurationRulesDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesDetails

    AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.add_member(:predicate, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails, location_name: "Predicate"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails

    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.add_member(:operands, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList, location_name: "Operands"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.add_member(:prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Prefix"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.add_member(:tag, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails, location_name: "Tag"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails

    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.add_member(:prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Prefix"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.add_member(:tag, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails, location_name: "Tag"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails

    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList.member = Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails)

    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Key"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails

    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Key"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails

    AwsS3BucketBucketLifecycleConfigurationRulesList.member = Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesDetails)

    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.add_member(:days, Shapes::ShapeRef.new(shape: Integer, location_name: "Days"))
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.add_member(:storage_class, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StorageClass"))
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails

    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList.member = Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails)

    AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.add_member(:date, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Date"))
    AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.add_member(:days, Shapes::ShapeRef.new(shape: Integer, location_name: "Days"))
    AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.add_member(:storage_class, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StorageClass"))
    AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.struct_class = Types::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails

    AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList.member = Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails)

    AwsS3BucketBucketVersioningConfiguration.add_member(:is_mfa_delete_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMfaDeleteEnabled"))
    AwsS3BucketBucketVersioningConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsS3BucketBucketVersioningConfiguration.struct_class = Types::AwsS3BucketBucketVersioningConfiguration

    AwsS3BucketDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsS3BucketDetails.add_member(:owner_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerName"))
    AwsS3BucketDetails.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerAccountId"))
    AwsS3BucketDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedAt"))
    AwsS3BucketDetails.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: AwsS3BucketServerSideEncryptionConfiguration, location_name: "ServerSideEncryptionConfiguration"))
    AwsS3BucketDetails.add_member(:bucket_lifecycle_configuration, Shapes::ShapeRef.new(shape: AwsS3BucketBucketLifecycleConfigurationDetails, location_name: "BucketLifecycleConfiguration"))
    AwsS3BucketDetails.add_member(:public_access_block_configuration, Shapes::ShapeRef.new(shape: AwsS3AccountPublicAccessBlockDetails, location_name: "PublicAccessBlockConfiguration"))
    AwsS3BucketDetails.add_member(:access_control_list, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessControlList"))
    AwsS3BucketDetails.add_member(:bucket_logging_configuration, Shapes::ShapeRef.new(shape: AwsS3BucketLoggingConfiguration, location_name: "BucketLoggingConfiguration"))
    AwsS3BucketDetails.add_member(:bucket_website_configuration, Shapes::ShapeRef.new(shape: AwsS3BucketWebsiteConfiguration, location_name: "BucketWebsiteConfiguration"))
    AwsS3BucketDetails.add_member(:bucket_notification_configuration, Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfiguration, location_name: "BucketNotificationConfiguration"))
    AwsS3BucketDetails.add_member(:bucket_versioning_configuration, Shapes::ShapeRef.new(shape: AwsS3BucketBucketVersioningConfiguration, location_name: "BucketVersioningConfiguration"))
    AwsS3BucketDetails.add_member(:object_lock_configuration, Shapes::ShapeRef.new(shape: AwsS3BucketObjectLockConfiguration, location_name: "ObjectLockConfiguration"))
    AwsS3BucketDetails.struct_class = Types::AwsS3BucketDetails

    AwsS3BucketLoggingConfiguration.add_member(:destination_bucket_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationBucketName"))
    AwsS3BucketLoggingConfiguration.add_member(:log_file_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LogFilePrefix"))
    AwsS3BucketLoggingConfiguration.struct_class = Types::AwsS3BucketLoggingConfiguration

    AwsS3BucketNotificationConfiguration.add_member(:configurations, Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfigurationDetails, location_name: "Configurations"))
    AwsS3BucketNotificationConfiguration.struct_class = Types::AwsS3BucketNotificationConfiguration

    AwsS3BucketNotificationConfigurationDetail.add_member(:events, Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfigurationEvents, location_name: "Events"))
    AwsS3BucketNotificationConfigurationDetail.add_member(:filter, Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfigurationFilter, location_name: "Filter"))
    AwsS3BucketNotificationConfigurationDetail.add_member(:destination, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Destination"))
    AwsS3BucketNotificationConfigurationDetail.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsS3BucketNotificationConfigurationDetail.struct_class = Types::AwsS3BucketNotificationConfigurationDetail

    AwsS3BucketNotificationConfigurationDetails.member = Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfigurationDetail)

    AwsS3BucketNotificationConfigurationEvents.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    AwsS3BucketNotificationConfigurationFilter.add_member(:s3_key_filter, Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfigurationS3KeyFilter, location_name: "S3KeyFilter"))
    AwsS3BucketNotificationConfigurationFilter.struct_class = Types::AwsS3BucketNotificationConfigurationFilter

    AwsS3BucketNotificationConfigurationS3KeyFilter.add_member(:filter_rules, Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfigurationS3KeyFilterRules, location_name: "FilterRules"))
    AwsS3BucketNotificationConfigurationS3KeyFilter.struct_class = Types::AwsS3BucketNotificationConfigurationS3KeyFilter

    AwsS3BucketNotificationConfigurationS3KeyFilterRule.add_member(:name, Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfigurationS3KeyFilterRuleName, location_name: "Name"))
    AwsS3BucketNotificationConfigurationS3KeyFilterRule.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsS3BucketNotificationConfigurationS3KeyFilterRule.struct_class = Types::AwsS3BucketNotificationConfigurationS3KeyFilterRule

    AwsS3BucketNotificationConfigurationS3KeyFilterRules.member = Shapes::ShapeRef.new(shape: AwsS3BucketNotificationConfigurationS3KeyFilterRule)

    AwsS3BucketObjectLockConfiguration.add_member(:object_lock_enabled, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ObjectLockEnabled"))
    AwsS3BucketObjectLockConfiguration.add_member(:rule, Shapes::ShapeRef.new(shape: AwsS3BucketObjectLockConfigurationRuleDetails, location_name: "Rule"))
    AwsS3BucketObjectLockConfiguration.struct_class = Types::AwsS3BucketObjectLockConfiguration

    AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails.add_member(:days, Shapes::ShapeRef.new(shape: Integer, location_name: "Days"))
    AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails.add_member(:mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Mode"))
    AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails.add_member(:years, Shapes::ShapeRef.new(shape: Integer, location_name: "Years"))
    AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails.struct_class = Types::AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails

    AwsS3BucketObjectLockConfigurationRuleDetails.add_member(:default_retention, Shapes::ShapeRef.new(shape: AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails, location_name: "DefaultRetention"))
    AwsS3BucketObjectLockConfigurationRuleDetails.struct_class = Types::AwsS3BucketObjectLockConfigurationRuleDetails

    AwsS3BucketServerSideEncryptionByDefault.add_member(:sse_algorithm, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SSEAlgorithm"))
    AwsS3BucketServerSideEncryptionByDefault.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KMSMasterKeyID"))
    AwsS3BucketServerSideEncryptionByDefault.struct_class = Types::AwsS3BucketServerSideEncryptionByDefault

    AwsS3BucketServerSideEncryptionConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: AwsS3BucketServerSideEncryptionRules, location_name: "Rules"))
    AwsS3BucketServerSideEncryptionConfiguration.struct_class = Types::AwsS3BucketServerSideEncryptionConfiguration

    AwsS3BucketServerSideEncryptionRule.add_member(:apply_server_side_encryption_by_default, Shapes::ShapeRef.new(shape: AwsS3BucketServerSideEncryptionByDefault, location_name: "ApplyServerSideEncryptionByDefault"))
    AwsS3BucketServerSideEncryptionRule.struct_class = Types::AwsS3BucketServerSideEncryptionRule

    AwsS3BucketServerSideEncryptionRules.member = Shapes::ShapeRef.new(shape: AwsS3BucketServerSideEncryptionRule)

    AwsS3BucketWebsiteConfiguration.add_member(:error_document, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ErrorDocument"))
    AwsS3BucketWebsiteConfiguration.add_member(:index_document_suffix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IndexDocumentSuffix"))
    AwsS3BucketWebsiteConfiguration.add_member(:redirect_all_requests_to, Shapes::ShapeRef.new(shape: AwsS3BucketWebsiteConfigurationRedirectTo, location_name: "RedirectAllRequestsTo"))
    AwsS3BucketWebsiteConfiguration.add_member(:routing_rules, Shapes::ShapeRef.new(shape: AwsS3BucketWebsiteConfigurationRoutingRules, location_name: "RoutingRules"))
    AwsS3BucketWebsiteConfiguration.struct_class = Types::AwsS3BucketWebsiteConfiguration

    AwsS3BucketWebsiteConfigurationRedirectTo.add_member(:hostname, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Hostname"))
    AwsS3BucketWebsiteConfigurationRedirectTo.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    AwsS3BucketWebsiteConfigurationRedirectTo.struct_class = Types::AwsS3BucketWebsiteConfigurationRedirectTo

    AwsS3BucketWebsiteConfigurationRoutingRule.add_member(:condition, Shapes::ShapeRef.new(shape: AwsS3BucketWebsiteConfigurationRoutingRuleCondition, location_name: "Condition"))
    AwsS3BucketWebsiteConfigurationRoutingRule.add_member(:redirect, Shapes::ShapeRef.new(shape: AwsS3BucketWebsiteConfigurationRoutingRuleRedirect, location_name: "Redirect"))
    AwsS3BucketWebsiteConfigurationRoutingRule.struct_class = Types::AwsS3BucketWebsiteConfigurationRoutingRule

    AwsS3BucketWebsiteConfigurationRoutingRuleCondition.add_member(:http_error_code_returned_equals, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpErrorCodeReturnedEquals"))
    AwsS3BucketWebsiteConfigurationRoutingRuleCondition.add_member(:key_prefix_equals, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyPrefixEquals"))
    AwsS3BucketWebsiteConfigurationRoutingRuleCondition.struct_class = Types::AwsS3BucketWebsiteConfigurationRoutingRuleCondition

    AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.add_member(:hostname, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Hostname"))
    AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.add_member(:http_redirect_code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpRedirectCode"))
    AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.add_member(:replace_key_prefix_with, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ReplaceKeyPrefixWith"))
    AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.add_member(:replace_key_with, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ReplaceKeyWith"))
    AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.struct_class = Types::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect

    AwsS3BucketWebsiteConfigurationRoutingRules.member = Shapes::ShapeRef.new(shape: AwsS3BucketWebsiteConfigurationRoutingRule)

    AwsS3ObjectDetails.add_member(:last_modified, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastModified"))
    AwsS3ObjectDetails.add_member(:etag, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ETag"))
    AwsS3ObjectDetails.add_member(:version_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VersionId"))
    AwsS3ObjectDetails.add_member(:content_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContentType"))
    AwsS3ObjectDetails.add_member(:server_side_encryption, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServerSideEncryption"))
    AwsS3ObjectDetails.add_member(:ssekms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SSEKMSKeyId"))
    AwsS3ObjectDetails.struct_class = Types::AwsS3ObjectDetails

    AwsSageMakerNotebookInstanceDetails.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AcceleratorTypes"))
    AwsSageMakerNotebookInstanceDetails.add_member(:additional_code_repositories, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "AdditionalCodeRepositories"))
    AwsSageMakerNotebookInstanceDetails.add_member(:default_code_repository, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DefaultCodeRepository"))
    AwsSageMakerNotebookInstanceDetails.add_member(:direct_internet_access, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DirectInternetAccess"))
    AwsSageMakerNotebookInstanceDetails.add_member(:failure_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FailureReason"))
    AwsSageMakerNotebookInstanceDetails.add_member(:instance_metadata_service_configuration, Shapes::ShapeRef.new(shape: AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails, location_name: "InstanceMetadataServiceConfiguration"))
    AwsSageMakerNotebookInstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceType"))
    AwsSageMakerNotebookInstanceDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsSageMakerNotebookInstanceDetails.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkInterfaceId"))
    AwsSageMakerNotebookInstanceDetails.add_member(:notebook_instance_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NotebookInstanceArn"))
    AwsSageMakerNotebookInstanceDetails.add_member(:notebook_instance_lifecycle_config_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NotebookInstanceLifecycleConfigName"))
    AwsSageMakerNotebookInstanceDetails.add_member(:notebook_instance_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NotebookInstanceName"))
    AwsSageMakerNotebookInstanceDetails.add_member(:notebook_instance_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NotebookInstanceStatus"))
    AwsSageMakerNotebookInstanceDetails.add_member(:platform_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PlatformIdentifier"))
    AwsSageMakerNotebookInstanceDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleArn"))
    AwsSageMakerNotebookInstanceDetails.add_member(:root_access, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RootAccess"))
    AwsSageMakerNotebookInstanceDetails.add_member(:security_groups, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "SecurityGroups"))
    AwsSageMakerNotebookInstanceDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AwsSageMakerNotebookInstanceDetails.add_member(:url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Url"))
    AwsSageMakerNotebookInstanceDetails.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "VolumeSizeInGB"))
    AwsSageMakerNotebookInstanceDetails.struct_class = Types::AwsSageMakerNotebookInstanceDetails

    AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails.add_member(:minimum_instance_metadata_service_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MinimumInstanceMetadataServiceVersion"))
    AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails.struct_class = Types::AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails

    AwsSecretsManagerSecretDetails.add_member(:rotation_rules, Shapes::ShapeRef.new(shape: AwsSecretsManagerSecretRotationRules, location_name: "RotationRules"))
    AwsSecretsManagerSecretDetails.add_member(:rotation_occurred_within_frequency, Shapes::ShapeRef.new(shape: Boolean, location_name: "RotationOccurredWithinFrequency"))
    AwsSecretsManagerSecretDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsSecretsManagerSecretDetails.add_member(:rotation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "RotationEnabled"))
    AwsSecretsManagerSecretDetails.add_member(:rotation_lambda_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RotationLambdaArn"))
    AwsSecretsManagerSecretDetails.add_member(:deleted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deleted"))
    AwsSecretsManagerSecretDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsSecretsManagerSecretDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsSecretsManagerSecretDetails.struct_class = Types::AwsSecretsManagerSecretDetails

    AwsSecretsManagerSecretRotationRules.add_member(:automatically_after_days, Shapes::ShapeRef.new(shape: Integer, location_name: "AutomaticallyAfterDays"))
    AwsSecretsManagerSecretRotationRules.struct_class = Types::AwsSecretsManagerSecretRotationRules

    AwsSecurityFinding.add_member(:schema_version, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SchemaVersion"))
    AwsSecurityFinding.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    AwsSecurityFinding.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    AwsSecurityFinding.add_member(:product_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProductName"))
    AwsSecurityFinding.add_member(:company_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CompanyName"))
    AwsSecurityFinding.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Region"))
    AwsSecurityFinding.add_member(:generator_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GeneratorId"))
    AwsSecurityFinding.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "AwsAccountId"))
    AwsSecurityFinding.add_member(:types, Shapes::ShapeRef.new(shape: TypeList, location_name: "Types"))
    AwsSecurityFinding.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirstObservedAt"))
    AwsSecurityFinding.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastObservedAt"))
    AwsSecurityFinding.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "CreatedAt"))
    AwsSecurityFinding.add_member(:updated_at, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedAt"))
    AwsSecurityFinding.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "Severity"))
    AwsSecurityFinding.add_member(:confidence, Shapes::ShapeRef.new(shape: Integer, location_name: "Confidence"))
    AwsSecurityFinding.add_member(:criticality, Shapes::ShapeRef.new(shape: Integer, location_name: "Criticality"))
    AwsSecurityFinding.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Title"))
    AwsSecurityFinding.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Description"))
    AwsSecurityFinding.add_member(:remediation, Shapes::ShapeRef.new(shape: Remediation, location_name: "Remediation"))
    AwsSecurityFinding.add_member(:source_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceUrl"))
    AwsSecurityFinding.add_member(:product_fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "ProductFields"))
    AwsSecurityFinding.add_member(:user_defined_fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "UserDefinedFields"))
    AwsSecurityFinding.add_member(:malware, Shapes::ShapeRef.new(shape: MalwareList, location_name: "Malware"))
    AwsSecurityFinding.add_member(:network, Shapes::ShapeRef.new(shape: Network, location_name: "Network"))
    AwsSecurityFinding.add_member(:network_path, Shapes::ShapeRef.new(shape: NetworkPathList, location_name: "NetworkPath"))
    AwsSecurityFinding.add_member(:process, Shapes::ShapeRef.new(shape: ProcessDetails, location_name: "Process"))
    AwsSecurityFinding.add_member(:threats, Shapes::ShapeRef.new(shape: ThreatList, location_name: "Threats"))
    AwsSecurityFinding.add_member(:threat_intel_indicators, Shapes::ShapeRef.new(shape: ThreatIntelIndicatorList, location_name: "ThreatIntelIndicators"))
    AwsSecurityFinding.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "Resources"))
    AwsSecurityFinding.add_member(:compliance, Shapes::ShapeRef.new(shape: Compliance, location_name: "Compliance"))
    AwsSecurityFinding.add_member(:verification_state, Shapes::ShapeRef.new(shape: VerificationState, location_name: "VerificationState"))
    AwsSecurityFinding.add_member(:workflow_state, Shapes::ShapeRef.new(shape: WorkflowState, deprecated: true, location_name: "WorkflowState"))
    AwsSecurityFinding.add_member(:workflow, Shapes::ShapeRef.new(shape: Workflow, location_name: "Workflow"))
    AwsSecurityFinding.add_member(:record_state, Shapes::ShapeRef.new(shape: RecordState, location_name: "RecordState"))
    AwsSecurityFinding.add_member(:related_findings, Shapes::ShapeRef.new(shape: RelatedFindingList, location_name: "RelatedFindings"))
    AwsSecurityFinding.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "Note"))
    AwsSecurityFinding.add_member(:vulnerabilities, Shapes::ShapeRef.new(shape: VulnerabilityList, location_name: "Vulnerabilities"))
    AwsSecurityFinding.add_member(:patch_summary, Shapes::ShapeRef.new(shape: PatchSummary, location_name: "PatchSummary"))
    AwsSecurityFinding.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    AwsSecurityFinding.add_member(:finding_provider_fields, Shapes::ShapeRef.new(shape: FindingProviderFields, location_name: "FindingProviderFields"))
    AwsSecurityFinding.add_member(:sample, Shapes::ShapeRef.new(shape: Boolean, location_name: "Sample"))
    AwsSecurityFinding.struct_class = Types::AwsSecurityFinding

    AwsSecurityFindingFilters.add_member(:product_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProductArn"))
    AwsSecurityFindingFilters.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "AwsAccountId"))
    AwsSecurityFindingFilters.add_member(:id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Id"))
    AwsSecurityFindingFilters.add_member(:generator_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "GeneratorId"))
    AwsSecurityFindingFilters.add_member(:region, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Region"))
    AwsSecurityFindingFilters.add_member(:type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Type"))
    AwsSecurityFindingFilters.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "FirstObservedAt"))
    AwsSecurityFindingFilters.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "LastObservedAt"))
    AwsSecurityFindingFilters.add_member(:created_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "CreatedAt"))
    AwsSecurityFindingFilters.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "UpdatedAt"))
    AwsSecurityFindingFilters.add_member(:severity_product, Shapes::ShapeRef.new(shape: NumberFilterList, deprecated: true, location_name: "SeverityProduct", metadata: {"deprecatedMessage"=>"This filter is deprecated. Instead, use FindingProviderSeverityOriginal."}))
    AwsSecurityFindingFilters.add_member(:severity_normalized, Shapes::ShapeRef.new(shape: NumberFilterList, deprecated: true, location_name: "SeverityNormalized", metadata: {"deprecatedMessage"=>"This filter is deprecated. Instead, use SeverityLabel or FindingProviderFieldsSeverityLabel."}))
    AwsSecurityFindingFilters.add_member(:severity_label, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "SeverityLabel"))
    AwsSecurityFindingFilters.add_member(:confidence, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "Confidence"))
    AwsSecurityFindingFilters.add_member(:criticality, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "Criticality"))
    AwsSecurityFindingFilters.add_member(:title, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Title"))
    AwsSecurityFindingFilters.add_member(:description, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Description"))
    AwsSecurityFindingFilters.add_member(:recommendation_text, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RecommendationText"))
    AwsSecurityFindingFilters.add_member(:source_url, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "SourceUrl"))
    AwsSecurityFindingFilters.add_member(:product_fields, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "ProductFields"))
    AwsSecurityFindingFilters.add_member(:product_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProductName"))
    AwsSecurityFindingFilters.add_member(:company_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "CompanyName"))
    AwsSecurityFindingFilters.add_member(:user_defined_fields, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "UserDefinedFields"))
    AwsSecurityFindingFilters.add_member(:malware_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "MalwareName"))
    AwsSecurityFindingFilters.add_member(:malware_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "MalwareType"))
    AwsSecurityFindingFilters.add_member(:malware_path, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "MalwarePath"))
    AwsSecurityFindingFilters.add_member(:malware_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "MalwareState"))
    AwsSecurityFindingFilters.add_member(:network_direction, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkDirection"))
    AwsSecurityFindingFilters.add_member(:network_protocol, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkProtocol"))
    AwsSecurityFindingFilters.add_member(:network_source_ip_v4, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "NetworkSourceIpV4"))
    AwsSecurityFindingFilters.add_member(:network_source_ip_v6, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "NetworkSourceIpV6"))
    AwsSecurityFindingFilters.add_member(:network_source_port, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "NetworkSourcePort"))
    AwsSecurityFindingFilters.add_member(:network_source_domain, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkSourceDomain"))
    AwsSecurityFindingFilters.add_member(:network_source_mac, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkSourceMac"))
    AwsSecurityFindingFilters.add_member(:network_destination_ip_v4, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "NetworkDestinationIpV4"))
    AwsSecurityFindingFilters.add_member(:network_destination_ip_v6, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "NetworkDestinationIpV6"))
    AwsSecurityFindingFilters.add_member(:network_destination_port, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "NetworkDestinationPort"))
    AwsSecurityFindingFilters.add_member(:network_destination_domain, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkDestinationDomain"))
    AwsSecurityFindingFilters.add_member(:process_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProcessName"))
    AwsSecurityFindingFilters.add_member(:process_path, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProcessPath"))
    AwsSecurityFindingFilters.add_member(:process_pid, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "ProcessPid"))
    AwsSecurityFindingFilters.add_member(:process_parent_pid, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "ProcessParentPid"))
    AwsSecurityFindingFilters.add_member(:process_launched_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ProcessLaunchedAt"))
    AwsSecurityFindingFilters.add_member(:process_terminated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ProcessTerminatedAt"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorType"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_value, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorValue"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_category, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorCategory"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_last_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ThreatIntelIndicatorLastObservedAt"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_source, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorSource"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_source_url, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorSourceUrl"))
    AwsSecurityFindingFilters.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceType"))
    AwsSecurityFindingFilters.add_member(:resource_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceId"))
    AwsSecurityFindingFilters.add_member(:resource_partition, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourcePartition"))
    AwsSecurityFindingFilters.add_member(:resource_region, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceRegion"))
    AwsSecurityFindingFilters.add_member(:resource_tags, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "ResourceTags"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceType"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_image_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceImageId"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_ip_v4_addresses, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "ResourceAwsEc2InstanceIpV4Addresses"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_ip_v6_addresses, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "ResourceAwsEc2InstanceIpV6Addresses"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_key_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceKeyName"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_iam_instance_profile_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceIamInstanceProfileArn"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_vpc_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceVpcId"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_subnet_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceSubnetId"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_launched_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ResourceAwsEc2InstanceLaunchedAt"))
    AwsSecurityFindingFilters.add_member(:resource_aws_s3_bucket_owner_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsS3BucketOwnerId"))
    AwsSecurityFindingFilters.add_member(:resource_aws_s3_bucket_owner_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsS3BucketOwnerName"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_user_name, Shapes::ShapeRef.new(shape: StringFilterList, deprecated: true, location_name: "ResourceAwsIamAccessKeyUserName", metadata: {"deprecatedMessage"=>"This filter is deprecated. Instead, use ResourceAwsIamAccessKeyPrincipalName."}))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_principal_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsIamAccessKeyPrincipalName"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsIamAccessKeyStatus"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_created_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ResourceAwsIamAccessKeyCreatedAt"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_user_user_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsIamUserUserName"))
    AwsSecurityFindingFilters.add_member(:resource_container_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceContainerName"))
    AwsSecurityFindingFilters.add_member(:resource_container_image_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceContainerImageId"))
    AwsSecurityFindingFilters.add_member(:resource_container_image_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceContainerImageName"))
    AwsSecurityFindingFilters.add_member(:resource_container_launched_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ResourceContainerLaunchedAt"))
    AwsSecurityFindingFilters.add_member(:resource_details_other, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "ResourceDetailsOther"))
    AwsSecurityFindingFilters.add_member(:compliance_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ComplianceStatus"))
    AwsSecurityFindingFilters.add_member(:verification_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "VerificationState"))
    AwsSecurityFindingFilters.add_member(:workflow_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "WorkflowState"))
    AwsSecurityFindingFilters.add_member(:workflow_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "WorkflowStatus"))
    AwsSecurityFindingFilters.add_member(:record_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RecordState"))
    AwsSecurityFindingFilters.add_member(:related_findings_product_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RelatedFindingsProductArn"))
    AwsSecurityFindingFilters.add_member(:related_findings_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RelatedFindingsId"))
    AwsSecurityFindingFilters.add_member(:note_text, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NoteText"))
    AwsSecurityFindingFilters.add_member(:note_updated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "NoteUpdatedAt"))
    AwsSecurityFindingFilters.add_member(:note_updated_by, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NoteUpdatedBy"))
    AwsSecurityFindingFilters.add_member(:keyword, Shapes::ShapeRef.new(shape: KeywordFilterList, deprecated: true, location_name: "Keyword", metadata: {"deprecatedMessage"=>"The Keyword property is deprecated."}))
    AwsSecurityFindingFilters.add_member(:finding_provider_fields_confidence, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "FindingProviderFieldsConfidence"))
    AwsSecurityFindingFilters.add_member(:finding_provider_fields_criticality, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "FindingProviderFieldsCriticality"))
    AwsSecurityFindingFilters.add_member(:finding_provider_fields_related_findings_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "FindingProviderFieldsRelatedFindingsId"))
    AwsSecurityFindingFilters.add_member(:finding_provider_fields_related_findings_product_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "FindingProviderFieldsRelatedFindingsProductArn"))
    AwsSecurityFindingFilters.add_member(:finding_provider_fields_severity_label, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "FindingProviderFieldsSeverityLabel"))
    AwsSecurityFindingFilters.add_member(:finding_provider_fields_severity_original, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "FindingProviderFieldsSeverityOriginal"))
    AwsSecurityFindingFilters.add_member(:finding_provider_fields_types, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "FindingProviderFieldsTypes"))
    AwsSecurityFindingFilters.add_member(:sample, Shapes::ShapeRef.new(shape: BooleanFilterList, location_name: "Sample"))
    AwsSecurityFindingFilters.add_member(:compliance_security_control_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ComplianceSecurityControlId"))
    AwsSecurityFindingFilters.add_member(:compliance_associated_standards_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ComplianceAssociatedStandardsId"))
    AwsSecurityFindingFilters.struct_class = Types::AwsSecurityFindingFilters

    AwsSecurityFindingIdentifier.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    AwsSecurityFindingIdentifier.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    AwsSecurityFindingIdentifier.struct_class = Types::AwsSecurityFindingIdentifier

    AwsSecurityFindingIdentifierList.member = Shapes::ShapeRef.new(shape: AwsSecurityFindingIdentifier)

    AwsSecurityFindingList.member = Shapes::ShapeRef.new(shape: AwsSecurityFinding)

    AwsSnsTopicDetails.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsMasterKeyId"))
    AwsSnsTopicDetails.add_member(:subscription, Shapes::ShapeRef.new(shape: AwsSnsTopicSubscriptionList, location_name: "Subscription"))
    AwsSnsTopicDetails.add_member(:topic_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TopicName"))
    AwsSnsTopicDetails.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Owner"))
    AwsSnsTopicDetails.add_member(:sqs_success_feedback_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SqsSuccessFeedbackRoleArn"))
    AwsSnsTopicDetails.add_member(:sqs_failure_feedback_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SqsFailureFeedbackRoleArn"))
    AwsSnsTopicDetails.add_member(:application_success_feedback_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ApplicationSuccessFeedbackRoleArn"))
    AwsSnsTopicDetails.add_member(:firehose_success_feedback_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirehoseSuccessFeedbackRoleArn"))
    AwsSnsTopicDetails.add_member(:firehose_failure_feedback_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirehoseFailureFeedbackRoleArn"))
    AwsSnsTopicDetails.add_member(:http_success_feedback_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpSuccessFeedbackRoleArn"))
    AwsSnsTopicDetails.add_member(:http_failure_feedback_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HttpFailureFeedbackRoleArn"))
    AwsSnsTopicDetails.struct_class = Types::AwsSnsTopicDetails

    AwsSnsTopicSubscription.add_member(:endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Endpoint"))
    AwsSnsTopicSubscription.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    AwsSnsTopicSubscription.struct_class = Types::AwsSnsTopicSubscription

    AwsSnsTopicSubscriptionList.member = Shapes::ShapeRef.new(shape: AwsSnsTopicSubscription)

    AwsSqsQueueDetails.add_member(:kms_data_key_reuse_period_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "KmsDataKeyReusePeriodSeconds"))
    AwsSqsQueueDetails.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsMasterKeyId"))
    AwsSqsQueueDetails.add_member(:queue_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "QueueName"))
    AwsSqsQueueDetails.add_member(:dead_letter_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DeadLetterTargetArn"))
    AwsSqsQueueDetails.struct_class = Types::AwsSqsQueueDetails

    AwsSsmComplianceSummary.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsSsmComplianceSummary.add_member(:compliant_critical_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CompliantCriticalCount"))
    AwsSsmComplianceSummary.add_member(:compliant_high_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CompliantHighCount"))
    AwsSsmComplianceSummary.add_member(:compliant_medium_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CompliantMediumCount"))
    AwsSsmComplianceSummary.add_member(:execution_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ExecutionType"))
    AwsSsmComplianceSummary.add_member(:non_compliant_critical_count, Shapes::ShapeRef.new(shape: Integer, location_name: "NonCompliantCriticalCount"))
    AwsSsmComplianceSummary.add_member(:compliant_informational_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CompliantInformationalCount"))
    AwsSsmComplianceSummary.add_member(:non_compliant_informational_count, Shapes::ShapeRef.new(shape: Integer, location_name: "NonCompliantInformationalCount"))
    AwsSsmComplianceSummary.add_member(:compliant_unspecified_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CompliantUnspecifiedCount"))
    AwsSsmComplianceSummary.add_member(:non_compliant_low_count, Shapes::ShapeRef.new(shape: Integer, location_name: "NonCompliantLowCount"))
    AwsSsmComplianceSummary.add_member(:non_compliant_high_count, Shapes::ShapeRef.new(shape: Integer, location_name: "NonCompliantHighCount"))
    AwsSsmComplianceSummary.add_member(:compliant_low_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CompliantLowCount"))
    AwsSsmComplianceSummary.add_member(:compliance_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ComplianceType"))
    AwsSsmComplianceSummary.add_member(:patch_baseline_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PatchBaselineId"))
    AwsSsmComplianceSummary.add_member(:overall_severity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OverallSeverity"))
    AwsSsmComplianceSummary.add_member(:non_compliant_medium_count, Shapes::ShapeRef.new(shape: Integer, location_name: "NonCompliantMediumCount"))
    AwsSsmComplianceSummary.add_member(:non_compliant_unspecified_count, Shapes::ShapeRef.new(shape: Integer, location_name: "NonCompliantUnspecifiedCount"))
    AwsSsmComplianceSummary.add_member(:patch_group, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PatchGroup"))
    AwsSsmComplianceSummary.struct_class = Types::AwsSsmComplianceSummary

    AwsSsmPatch.add_member(:compliance_summary, Shapes::ShapeRef.new(shape: AwsSsmComplianceSummary, location_name: "ComplianceSummary"))
    AwsSsmPatch.struct_class = Types::AwsSsmPatch

    AwsSsmPatchComplianceDetails.add_member(:patch, Shapes::ShapeRef.new(shape: AwsSsmPatch, location_name: "Patch"))
    AwsSsmPatchComplianceDetails.struct_class = Types::AwsSsmPatchComplianceDetails

    AwsStepFunctionStateMachineDetails.add_member(:label, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Label"))
    AwsStepFunctionStateMachineDetails.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: AwsStepFunctionStateMachineLoggingConfigurationDetails, location_name: "LoggingConfiguration"))
    AwsStepFunctionStateMachineDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsStepFunctionStateMachineDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleArn"))
    AwsStepFunctionStateMachineDetails.add_member(:state_machine_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StateMachineArn"))
    AwsStepFunctionStateMachineDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsStepFunctionStateMachineDetails.add_member(:tracing_configuration, Shapes::ShapeRef.new(shape: AwsStepFunctionStateMachineTracingConfigurationDetails, location_name: "TracingConfiguration"))
    AwsStepFunctionStateMachineDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsStepFunctionStateMachineDetails.struct_class = Types::AwsStepFunctionStateMachineDetails

    AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LogGroupArn"))
    AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails.struct_class = Types::AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails

    AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails.add_member(:cloud_watch_logs_log_group, Shapes::ShapeRef.new(shape: AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails, location_name: "CloudWatchLogsLogGroup"))
    AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails.struct_class = Types::AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails

    AwsStepFunctionStateMachineLoggingConfigurationDestinationsList.member = Shapes::ShapeRef.new(shape: AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails)

    AwsStepFunctionStateMachineLoggingConfigurationDetails.add_member(:destinations, Shapes::ShapeRef.new(shape: AwsStepFunctionStateMachineLoggingConfigurationDestinationsList, location_name: "Destinations"))
    AwsStepFunctionStateMachineLoggingConfigurationDetails.add_member(:include_execution_data, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeExecutionData"))
    AwsStepFunctionStateMachineLoggingConfigurationDetails.add_member(:level, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Level"))
    AwsStepFunctionStateMachineLoggingConfigurationDetails.struct_class = Types::AwsStepFunctionStateMachineLoggingConfigurationDetails

    AwsStepFunctionStateMachineTracingConfigurationDetails.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsStepFunctionStateMachineTracingConfigurationDetails.struct_class = Types::AwsStepFunctionStateMachineTracingConfigurationDetails

    AwsWafRateBasedRuleDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsWafRateBasedRuleDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafRateBasedRuleDetails.add_member(:rate_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RateKey"))
    AwsWafRateBasedRuleDetails.add_member(:rate_limit, Shapes::ShapeRef.new(shape: Long, location_name: "RateLimit"))
    AwsWafRateBasedRuleDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsWafRateBasedRuleDetails.add_member(:match_predicates, Shapes::ShapeRef.new(shape: AwsWafRateBasedRuleMatchPredicateList, location_name: "MatchPredicates"))
    AwsWafRateBasedRuleDetails.struct_class = Types::AwsWafRateBasedRuleDetails

    AwsWafRateBasedRuleMatchPredicate.add_member(:data_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DataId"))
    AwsWafRateBasedRuleMatchPredicate.add_member(:negated, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negated"))
    AwsWafRateBasedRuleMatchPredicate.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRateBasedRuleMatchPredicate.struct_class = Types::AwsWafRateBasedRuleMatchPredicate

    AwsWafRateBasedRuleMatchPredicateList.member = Shapes::ShapeRef.new(shape: AwsWafRateBasedRuleMatchPredicate)

    AwsWafRegionalRateBasedRuleDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsWafRegionalRateBasedRuleDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafRegionalRateBasedRuleDetails.add_member(:rate_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RateKey"))
    AwsWafRegionalRateBasedRuleDetails.add_member(:rate_limit, Shapes::ShapeRef.new(shape: Long, location_name: "RateLimit"))
    AwsWafRegionalRateBasedRuleDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsWafRegionalRateBasedRuleDetails.add_member(:match_predicates, Shapes::ShapeRef.new(shape: AwsWafRegionalRateBasedRuleMatchPredicateList, location_name: "MatchPredicates"))
    AwsWafRegionalRateBasedRuleDetails.struct_class = Types::AwsWafRegionalRateBasedRuleDetails

    AwsWafRegionalRateBasedRuleMatchPredicate.add_member(:data_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DataId"))
    AwsWafRegionalRateBasedRuleMatchPredicate.add_member(:negated, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negated"))
    AwsWafRegionalRateBasedRuleMatchPredicate.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRegionalRateBasedRuleMatchPredicate.struct_class = Types::AwsWafRegionalRateBasedRuleMatchPredicate

    AwsWafRegionalRateBasedRuleMatchPredicateList.member = Shapes::ShapeRef.new(shape: AwsWafRegionalRateBasedRuleMatchPredicate)

    AwsWafRegionalRuleDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsWafRegionalRuleDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafRegionalRuleDetails.add_member(:predicate_list, Shapes::ShapeRef.new(shape: AwsWafRegionalRulePredicateList, location_name: "PredicateList"))
    AwsWafRegionalRuleDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsWafRegionalRuleDetails.struct_class = Types::AwsWafRegionalRuleDetails

    AwsWafRegionalRuleGroupDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsWafRegionalRuleGroupDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafRegionalRuleGroupDetails.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleGroupId"))
    AwsWafRegionalRuleGroupDetails.add_member(:rules, Shapes::ShapeRef.new(shape: AwsWafRegionalRuleGroupRulesList, location_name: "Rules"))
    AwsWafRegionalRuleGroupDetails.struct_class = Types::AwsWafRegionalRuleGroupDetails

    AwsWafRegionalRuleGroupRulesActionDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRegionalRuleGroupRulesActionDetails.struct_class = Types::AwsWafRegionalRuleGroupRulesActionDetails

    AwsWafRegionalRuleGroupRulesDetails.add_member(:action, Shapes::ShapeRef.new(shape: AwsWafRegionalRuleGroupRulesActionDetails, location_name: "Action"))
    AwsWafRegionalRuleGroupRulesDetails.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "Priority"))
    AwsWafRegionalRuleGroupRulesDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsWafRegionalRuleGroupRulesDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRegionalRuleGroupRulesDetails.struct_class = Types::AwsWafRegionalRuleGroupRulesDetails

    AwsWafRegionalRuleGroupRulesList.member = Shapes::ShapeRef.new(shape: AwsWafRegionalRuleGroupRulesDetails)

    AwsWafRegionalRulePredicateList.member = Shapes::ShapeRef.new(shape: AwsWafRegionalRulePredicateListDetails)

    AwsWafRegionalRulePredicateListDetails.add_member(:data_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DataId"))
    AwsWafRegionalRulePredicateListDetails.add_member(:negated, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negated"))
    AwsWafRegionalRulePredicateListDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRegionalRulePredicateListDetails.struct_class = Types::AwsWafRegionalRulePredicateListDetails

    AwsWafRegionalWebAclDetails.add_member(:default_action, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DefaultAction"))
    AwsWafRegionalWebAclDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsWafRegionalWebAclDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafRegionalWebAclDetails.add_member(:rules_list, Shapes::ShapeRef.new(shape: AwsWafRegionalWebAclRulesList, location_name: "RulesList"))
    AwsWafRegionalWebAclDetails.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WebAclId"))
    AwsWafRegionalWebAclDetails.struct_class = Types::AwsWafRegionalWebAclDetails

    AwsWafRegionalWebAclRulesList.member = Shapes::ShapeRef.new(shape: AwsWafRegionalWebAclRulesListDetails)

    AwsWafRegionalWebAclRulesListActionDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRegionalWebAclRulesListActionDetails.struct_class = Types::AwsWafRegionalWebAclRulesListActionDetails

    AwsWafRegionalWebAclRulesListDetails.add_member(:action, Shapes::ShapeRef.new(shape: AwsWafRegionalWebAclRulesListActionDetails, location_name: "Action"))
    AwsWafRegionalWebAclRulesListDetails.add_member(:override_action, Shapes::ShapeRef.new(shape: AwsWafRegionalWebAclRulesListOverrideActionDetails, location_name: "OverrideAction"))
    AwsWafRegionalWebAclRulesListDetails.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "Priority"))
    AwsWafRegionalWebAclRulesListDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsWafRegionalWebAclRulesListDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRegionalWebAclRulesListDetails.struct_class = Types::AwsWafRegionalWebAclRulesListDetails

    AwsWafRegionalWebAclRulesListOverrideActionDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRegionalWebAclRulesListOverrideActionDetails.struct_class = Types::AwsWafRegionalWebAclRulesListOverrideActionDetails

    AwsWafRuleDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsWafRuleDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafRuleDetails.add_member(:predicate_list, Shapes::ShapeRef.new(shape: AwsWafRulePredicateList, location_name: "PredicateList"))
    AwsWafRuleDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsWafRuleDetails.struct_class = Types::AwsWafRuleDetails

    AwsWafRuleGroupDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsWafRuleGroupDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafRuleGroupDetails.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleGroupId"))
    AwsWafRuleGroupDetails.add_member(:rules, Shapes::ShapeRef.new(shape: AwsWafRuleGroupRulesList, location_name: "Rules"))
    AwsWafRuleGroupDetails.struct_class = Types::AwsWafRuleGroupDetails

    AwsWafRuleGroupRulesActionDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRuleGroupRulesActionDetails.struct_class = Types::AwsWafRuleGroupRulesActionDetails

    AwsWafRuleGroupRulesDetails.add_member(:action, Shapes::ShapeRef.new(shape: AwsWafRuleGroupRulesActionDetails, location_name: "Action"))
    AwsWafRuleGroupRulesDetails.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "Priority"))
    AwsWafRuleGroupRulesDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsWafRuleGroupRulesDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRuleGroupRulesDetails.struct_class = Types::AwsWafRuleGroupRulesDetails

    AwsWafRuleGroupRulesList.member = Shapes::ShapeRef.new(shape: AwsWafRuleGroupRulesDetails)

    AwsWafRulePredicateList.member = Shapes::ShapeRef.new(shape: AwsWafRulePredicateListDetails)

    AwsWafRulePredicateListDetails.add_member(:data_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DataId"))
    AwsWafRulePredicateListDetails.add_member(:negated, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negated"))
    AwsWafRulePredicateListDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafRulePredicateListDetails.struct_class = Types::AwsWafRulePredicateListDetails

    AwsWafWebAclDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafWebAclDetails.add_member(:default_action, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DefaultAction"))
    AwsWafWebAclDetails.add_member(:rules, Shapes::ShapeRef.new(shape: AwsWafWebAclRuleList, location_name: "Rules"))
    AwsWafWebAclDetails.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WebAclId"))
    AwsWafWebAclDetails.struct_class = Types::AwsWafWebAclDetails

    AwsWafWebAclRule.add_member(:action, Shapes::ShapeRef.new(shape: WafAction, location_name: "Action"))
    AwsWafWebAclRule.add_member(:excluded_rules, Shapes::ShapeRef.new(shape: WafExcludedRuleList, location_name: "ExcludedRules"))
    AwsWafWebAclRule.add_member(:override_action, Shapes::ShapeRef.new(shape: WafOverrideAction, location_name: "OverrideAction"))
    AwsWafWebAclRule.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "Priority"))
    AwsWafWebAclRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    AwsWafWebAclRule.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsWafWebAclRule.struct_class = Types::AwsWafWebAclRule

    AwsWafWebAclRuleList.member = Shapes::ShapeRef.new(shape: AwsWafWebAclRule)

    AwsWafv2ActionAllowDetails.add_member(:custom_request_handling, Shapes::ShapeRef.new(shape: AwsWafv2CustomRequestHandlingDetails, location_name: "CustomRequestHandling"))
    AwsWafv2ActionAllowDetails.struct_class = Types::AwsWafv2ActionAllowDetails

    AwsWafv2ActionBlockDetails.add_member(:custom_response, Shapes::ShapeRef.new(shape: AwsWafv2CustomResponseDetails, location_name: "CustomResponse"))
    AwsWafv2ActionBlockDetails.struct_class = Types::AwsWafv2ActionBlockDetails

    AwsWafv2CustomHttpHeader.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafv2CustomHttpHeader.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    AwsWafv2CustomHttpHeader.struct_class = Types::AwsWafv2CustomHttpHeader

    AwsWafv2CustomRequestHandlingDetails.add_member(:insert_headers, Shapes::ShapeRef.new(shape: AwsWafv2InsertHeadersList, location_name: "InsertHeaders"))
    AwsWafv2CustomRequestHandlingDetails.struct_class = Types::AwsWafv2CustomRequestHandlingDetails

    AwsWafv2CustomResponseDetails.add_member(:custom_response_body_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CustomResponseBodyKey"))
    AwsWafv2CustomResponseDetails.add_member(:response_code, Shapes::ShapeRef.new(shape: Integer, location_name: "ResponseCode"))
    AwsWafv2CustomResponseDetails.add_member(:response_headers, Shapes::ShapeRef.new(shape: AwsWafv2InsertHeadersList, location_name: "ResponseHeaders"))
    AwsWafv2CustomResponseDetails.struct_class = Types::AwsWafv2CustomResponseDetails

    AwsWafv2InsertHeadersList.member = Shapes::ShapeRef.new(shape: AwsWafv2CustomHttpHeader)

    AwsWafv2RuleGroupDetails.add_member(:capacity, Shapes::ShapeRef.new(shape: Long, location_name: "Capacity"))
    AwsWafv2RuleGroupDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsWafv2RuleGroupDetails.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    AwsWafv2RuleGroupDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafv2RuleGroupDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsWafv2RuleGroupDetails.add_member(:rules, Shapes::ShapeRef.new(shape: AwsWafv2RulesList, location_name: "Rules"))
    AwsWafv2RuleGroupDetails.add_member(:scope, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Scope"))
    AwsWafv2RuleGroupDetails.add_member(:visibility_config, Shapes::ShapeRef.new(shape: AwsWafv2VisibilityConfigDetails, location_name: "VisibilityConfig"))
    AwsWafv2RuleGroupDetails.struct_class = Types::AwsWafv2RuleGroupDetails

    AwsWafv2RulesActionCaptchaDetails.add_member(:custom_request_handling, Shapes::ShapeRef.new(shape: AwsWafv2CustomRequestHandlingDetails, location_name: "CustomRequestHandling"))
    AwsWafv2RulesActionCaptchaDetails.struct_class = Types::AwsWafv2RulesActionCaptchaDetails

    AwsWafv2RulesActionCountDetails.add_member(:custom_request_handling, Shapes::ShapeRef.new(shape: AwsWafv2CustomRequestHandlingDetails, location_name: "CustomRequestHandling"))
    AwsWafv2RulesActionCountDetails.struct_class = Types::AwsWafv2RulesActionCountDetails

    AwsWafv2RulesActionDetails.add_member(:allow, Shapes::ShapeRef.new(shape: AwsWafv2ActionAllowDetails, location_name: "Allow"))
    AwsWafv2RulesActionDetails.add_member(:block, Shapes::ShapeRef.new(shape: AwsWafv2ActionBlockDetails, location_name: "Block"))
    AwsWafv2RulesActionDetails.add_member(:captcha, Shapes::ShapeRef.new(shape: AwsWafv2RulesActionCaptchaDetails, location_name: "Captcha"))
    AwsWafv2RulesActionDetails.add_member(:count, Shapes::ShapeRef.new(shape: AwsWafv2RulesActionCountDetails, location_name: "Count"))
    AwsWafv2RulesActionDetails.struct_class = Types::AwsWafv2RulesActionDetails

    AwsWafv2RulesDetails.add_member(:action, Shapes::ShapeRef.new(shape: AwsWafv2RulesActionDetails, location_name: "Action"))
    AwsWafv2RulesDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafv2RulesDetails.add_member(:override_action, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OverrideAction"))
    AwsWafv2RulesDetails.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "Priority"))
    AwsWafv2RulesDetails.add_member(:visibility_config, Shapes::ShapeRef.new(shape: AwsWafv2VisibilityConfigDetails, location_name: "VisibilityConfig"))
    AwsWafv2RulesDetails.struct_class = Types::AwsWafv2RulesDetails

    AwsWafv2RulesList.member = Shapes::ShapeRef.new(shape: AwsWafv2RulesDetails)

    AwsWafv2VisibilityConfigDetails.add_member(:cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CloudWatchMetricsEnabled"))
    AwsWafv2VisibilityConfigDetails.add_member(:metric_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MetricName"))
    AwsWafv2VisibilityConfigDetails.add_member(:sampled_requests_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SampledRequestsEnabled"))
    AwsWafv2VisibilityConfigDetails.struct_class = Types::AwsWafv2VisibilityConfigDetails

    AwsWafv2WebAclActionDetails.add_member(:allow, Shapes::ShapeRef.new(shape: AwsWafv2ActionAllowDetails, location_name: "Allow"))
    AwsWafv2WebAclActionDetails.add_member(:block, Shapes::ShapeRef.new(shape: AwsWafv2ActionBlockDetails, location_name: "Block"))
    AwsWafv2WebAclActionDetails.struct_class = Types::AwsWafv2WebAclActionDetails

    AwsWafv2WebAclCaptchaConfigDetails.add_member(:immunity_time_property, Shapes::ShapeRef.new(shape: AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails, location_name: "ImmunityTimeProperty"))
    AwsWafv2WebAclCaptchaConfigDetails.struct_class = Types::AwsWafv2WebAclCaptchaConfigDetails

    AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails.add_member(:immunity_time, Shapes::ShapeRef.new(shape: Long, location_name: "ImmunityTime"))
    AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails.struct_class = Types::AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails

    AwsWafv2WebAclDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsWafv2WebAclDetails.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    AwsWafv2WebAclDetails.add_member(:managedby_firewall_manager, Shapes::ShapeRef.new(shape: Boolean, location_name: "ManagedbyFirewallManager"))
    AwsWafv2WebAclDetails.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    AwsWafv2WebAclDetails.add_member(:capacity, Shapes::ShapeRef.new(shape: Long, location_name: "Capacity"))
    AwsWafv2WebAclDetails.add_member(:captcha_config, Shapes::ShapeRef.new(shape: AwsWafv2WebAclCaptchaConfigDetails, location_name: "CaptchaConfig"))
    AwsWafv2WebAclDetails.add_member(:default_action, Shapes::ShapeRef.new(shape: AwsWafv2WebAclActionDetails, location_name: "DefaultAction"))
    AwsWafv2WebAclDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsWafv2WebAclDetails.add_member(:rules, Shapes::ShapeRef.new(shape: AwsWafv2RulesList, location_name: "Rules"))
    AwsWafv2WebAclDetails.add_member(:visibility_config, Shapes::ShapeRef.new(shape: AwsWafv2VisibilityConfigDetails, location_name: "VisibilityConfig"))
    AwsWafv2WebAclDetails.struct_class = Types::AwsWafv2WebAclDetails

    AwsXrayEncryptionConfigDetails.add_member(:key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyId"))
    AwsXrayEncryptionConfigDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsXrayEncryptionConfigDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsXrayEncryptionConfigDetails.struct_class = Types::AwsXrayEncryptionConfigDetails

    BatchDeleteAutomationRulesRequest.add_member(:automation_rules_arns, Shapes::ShapeRef.new(shape: AutomationRulesArnsList, required: true, location_name: "AutomationRulesArns"))
    BatchDeleteAutomationRulesRequest.struct_class = Types::BatchDeleteAutomationRulesRequest

    BatchDeleteAutomationRulesResponse.add_member(:processed_automation_rules, Shapes::ShapeRef.new(shape: AutomationRulesArnsList, location_name: "ProcessedAutomationRules"))
    BatchDeleteAutomationRulesResponse.add_member(:unprocessed_automation_rules, Shapes::ShapeRef.new(shape: UnprocessedAutomationRulesList, location_name: "UnprocessedAutomationRules"))
    BatchDeleteAutomationRulesResponse.struct_class = Types::BatchDeleteAutomationRulesResponse

    BatchDisableStandardsRequest.add_member(:standards_subscription_arns, Shapes::ShapeRef.new(shape: StandardsSubscriptionArns, required: true, location_name: "StandardsSubscriptionArns"))
    BatchDisableStandardsRequest.struct_class = Types::BatchDisableStandardsRequest

    BatchDisableStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    BatchDisableStandardsResponse.struct_class = Types::BatchDisableStandardsResponse

    BatchEnableStandardsRequest.add_member(:standards_subscription_requests, Shapes::ShapeRef.new(shape: StandardsSubscriptionRequests, required: true, location_name: "StandardsSubscriptionRequests"))
    BatchEnableStandardsRequest.struct_class = Types::BatchEnableStandardsRequest

    BatchEnableStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    BatchEnableStandardsResponse.struct_class = Types::BatchEnableStandardsResponse

    BatchGetAutomationRulesRequest.add_member(:automation_rules_arns, Shapes::ShapeRef.new(shape: AutomationRulesArnsList, required: true, location_name: "AutomationRulesArns"))
    BatchGetAutomationRulesRequest.struct_class = Types::BatchGetAutomationRulesRequest

    BatchGetAutomationRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: AutomationRulesConfigList, location_name: "Rules"))
    BatchGetAutomationRulesResponse.add_member(:unprocessed_automation_rules, Shapes::ShapeRef.new(shape: UnprocessedAutomationRulesList, location_name: "UnprocessedAutomationRules"))
    BatchGetAutomationRulesResponse.struct_class = Types::BatchGetAutomationRulesResponse

    BatchGetSecurityControlsRequest.add_member(:security_control_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "SecurityControlIds"))
    BatchGetSecurityControlsRequest.struct_class = Types::BatchGetSecurityControlsRequest

    BatchGetSecurityControlsResponse.add_member(:security_controls, Shapes::ShapeRef.new(shape: SecurityControls, required: true, location_name: "SecurityControls"))
    BatchGetSecurityControlsResponse.add_member(:unprocessed_ids, Shapes::ShapeRef.new(shape: UnprocessedSecurityControls, location_name: "UnprocessedIds"))
    BatchGetSecurityControlsResponse.struct_class = Types::BatchGetSecurityControlsResponse

    BatchGetStandardsControlAssociationsRequest.add_member(:standards_control_association_ids, Shapes::ShapeRef.new(shape: StandardsControlAssociationIds, required: true, location_name: "StandardsControlAssociationIds"))
    BatchGetStandardsControlAssociationsRequest.struct_class = Types::BatchGetStandardsControlAssociationsRequest

    BatchGetStandardsControlAssociationsResponse.add_member(:standards_control_association_details, Shapes::ShapeRef.new(shape: StandardsControlAssociationDetails, required: true, location_name: "StandardsControlAssociationDetails"))
    BatchGetStandardsControlAssociationsResponse.add_member(:unprocessed_associations, Shapes::ShapeRef.new(shape: UnprocessedStandardsControlAssociations, location_name: "UnprocessedAssociations"))
    BatchGetStandardsControlAssociationsResponse.struct_class = Types::BatchGetStandardsControlAssociationsResponse

    BatchImportFindingsRequest.add_member(:findings, Shapes::ShapeRef.new(shape: BatchImportFindingsRequestFindingList, required: true, location_name: "Findings"))
    BatchImportFindingsRequest.struct_class = Types::BatchImportFindingsRequest

    BatchImportFindingsRequestFindingList.member = Shapes::ShapeRef.new(shape: AwsSecurityFinding)

    BatchImportFindingsResponse.add_member(:failed_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "FailedCount"))
    BatchImportFindingsResponse.add_member(:success_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SuccessCount"))
    BatchImportFindingsResponse.add_member(:failed_findings, Shapes::ShapeRef.new(shape: ImportFindingsErrorList, location_name: "FailedFindings"))
    BatchImportFindingsResponse.struct_class = Types::BatchImportFindingsResponse

    BatchUpdateAutomationRulesRequest.add_member(:update_automation_rules_request_items, Shapes::ShapeRef.new(shape: UpdateAutomationRulesRequestItemsList, required: true, location_name: "UpdateAutomationRulesRequestItems"))
    BatchUpdateAutomationRulesRequest.struct_class = Types::BatchUpdateAutomationRulesRequest

    BatchUpdateAutomationRulesResponse.add_member(:processed_automation_rules, Shapes::ShapeRef.new(shape: AutomationRulesArnsList, location_name: "ProcessedAutomationRules"))
    BatchUpdateAutomationRulesResponse.add_member(:unprocessed_automation_rules, Shapes::ShapeRef.new(shape: UnprocessedAutomationRulesList, location_name: "UnprocessedAutomationRules"))
    BatchUpdateAutomationRulesResponse.struct_class = Types::BatchUpdateAutomationRulesResponse

    BatchUpdateFindingsRequest.add_member(:finding_identifiers, Shapes::ShapeRef.new(shape: AwsSecurityFindingIdentifierList, required: true, location_name: "FindingIdentifiers"))
    BatchUpdateFindingsRequest.add_member(:note, Shapes::ShapeRef.new(shape: NoteUpdate, location_name: "Note"))
    BatchUpdateFindingsRequest.add_member(:severity, Shapes::ShapeRef.new(shape: SeverityUpdate, location_name: "Severity"))
    BatchUpdateFindingsRequest.add_member(:verification_state, Shapes::ShapeRef.new(shape: VerificationState, location_name: "VerificationState"))
    BatchUpdateFindingsRequest.add_member(:confidence, Shapes::ShapeRef.new(shape: RatioScale, location_name: "Confidence"))
    BatchUpdateFindingsRequest.add_member(:criticality, Shapes::ShapeRef.new(shape: RatioScale, location_name: "Criticality"))
    BatchUpdateFindingsRequest.add_member(:types, Shapes::ShapeRef.new(shape: TypeList, location_name: "Types"))
    BatchUpdateFindingsRequest.add_member(:user_defined_fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "UserDefinedFields"))
    BatchUpdateFindingsRequest.add_member(:workflow, Shapes::ShapeRef.new(shape: WorkflowUpdate, location_name: "Workflow"))
    BatchUpdateFindingsRequest.add_member(:related_findings, Shapes::ShapeRef.new(shape: RelatedFindingList, location_name: "RelatedFindings"))
    BatchUpdateFindingsRequest.struct_class = Types::BatchUpdateFindingsRequest

    BatchUpdateFindingsResponse.add_member(:processed_findings, Shapes::ShapeRef.new(shape: AwsSecurityFindingIdentifierList, required: true, location_name: "ProcessedFindings"))
    BatchUpdateFindingsResponse.add_member(:unprocessed_findings, Shapes::ShapeRef.new(shape: BatchUpdateFindingsUnprocessedFindingsList, required: true, location_name: "UnprocessedFindings"))
    BatchUpdateFindingsResponse.struct_class = Types::BatchUpdateFindingsResponse

    BatchUpdateFindingsUnprocessedFinding.add_member(:finding_identifier, Shapes::ShapeRef.new(shape: AwsSecurityFindingIdentifier, required: true, location_name: "FindingIdentifier"))
    BatchUpdateFindingsUnprocessedFinding.add_member(:error_code, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ErrorCode"))
    BatchUpdateFindingsUnprocessedFinding.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ErrorMessage"))
    BatchUpdateFindingsUnprocessedFinding.struct_class = Types::BatchUpdateFindingsUnprocessedFinding

    BatchUpdateFindingsUnprocessedFindingsList.member = Shapes::ShapeRef.new(shape: BatchUpdateFindingsUnprocessedFinding)

    BatchUpdateStandardsControlAssociationsRequest.add_member(:standards_control_association_updates, Shapes::ShapeRef.new(shape: StandardsControlAssociationUpdates, required: true, location_name: "StandardsControlAssociationUpdates"))
    BatchUpdateStandardsControlAssociationsRequest.struct_class = Types::BatchUpdateStandardsControlAssociationsRequest

    BatchUpdateStandardsControlAssociationsResponse.add_member(:unprocessed_association_updates, Shapes::ShapeRef.new(shape: UnprocessedStandardsControlAssociationUpdates, location_name: "UnprocessedAssociationUpdates"))
    BatchUpdateStandardsControlAssociationsResponse.struct_class = Types::BatchUpdateStandardsControlAssociationsResponse

    BooleanFilter.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "Value"))
    BooleanFilter.struct_class = Types::BooleanFilter

    BooleanFilterList.member = Shapes::ShapeRef.new(shape: BooleanFilter)

    CategoryList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    Cell.add_member(:column, Shapes::ShapeRef.new(shape: Long, location_name: "Column"))
    Cell.add_member(:row, Shapes::ShapeRef.new(shape: Long, location_name: "Row"))
    Cell.add_member(:column_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ColumnName"))
    Cell.add_member(:cell_reference, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CellReference"))
    Cell.struct_class = Types::Cell

    Cells.member = Shapes::ShapeRef.new(shape: Cell)

    CidrBlockAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociationId"))
    CidrBlockAssociation.add_member(:cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlock"))
    CidrBlockAssociation.add_member(:cidr_block_state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlockState"))
    CidrBlockAssociation.struct_class = Types::CidrBlockAssociation

    CidrBlockAssociationList.member = Shapes::ShapeRef.new(shape: CidrBlockAssociation)

    City.add_member(:city_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CityName"))
    City.struct_class = Types::City

    ClassificationResult.add_member(:mime_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MimeType"))
    ClassificationResult.add_member(:size_classified, Shapes::ShapeRef.new(shape: Long, location_name: "SizeClassified"))
    ClassificationResult.add_member(:additional_occurrences, Shapes::ShapeRef.new(shape: Boolean, location_name: "AdditionalOccurrences"))
    ClassificationResult.add_member(:status, Shapes::ShapeRef.new(shape: ClassificationStatus, location_name: "Status"))
    ClassificationResult.add_member(:sensitive_data, Shapes::ShapeRef.new(shape: SensitiveDataResultList, location_name: "SensitiveData"))
    ClassificationResult.add_member(:custom_data_identifiers, Shapes::ShapeRef.new(shape: CustomDataIdentifiersResult, location_name: "CustomDataIdentifiers"))
    ClassificationResult.struct_class = Types::ClassificationResult

    ClassificationStatus.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    ClassificationStatus.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Reason"))
    ClassificationStatus.struct_class = Types::ClassificationStatus

    Compliance.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "Status"))
    Compliance.add_member(:related_requirements, Shapes::ShapeRef.new(shape: RelatedRequirementsList, location_name: "RelatedRequirements"))
    Compliance.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasonsList, location_name: "StatusReasons"))
    Compliance.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SecurityControlId"))
    Compliance.add_member(:associated_standards, Shapes::ShapeRef.new(shape: AssociatedStandardsList, location_name: "AssociatedStandards"))
    Compliance.struct_class = Types::Compliance

    ContainerDetails.add_member(:container_runtime, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContainerRuntime"))
    ContainerDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    ContainerDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageId"))
    ContainerDetails.add_member(:image_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageName"))
    ContainerDetails.add_member(:launched_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchedAt"))
    ContainerDetails.add_member(:volume_mounts, Shapes::ShapeRef.new(shape: VolumeMountList, location_name: "VolumeMounts"))
    ContainerDetails.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "Privileged"))
    ContainerDetails.struct_class = Types::ContainerDetails

    Country.add_member(:country_code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CountryCode"))
    Country.add_member(:country_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CountryName"))
    Country.struct_class = Types::Country

    CreateActionTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    CreateActionTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Description"))
    CreateActionTargetRequest.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    CreateActionTargetRequest.struct_class = Types::CreateActionTargetRequest

    CreateActionTargetResponse.add_member(:action_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ActionTargetArn"))
    CreateActionTargetResponse.struct_class = Types::CreateActionTargetResponse

    CreateAutomationRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateAutomationRuleRequest.add_member(:rule_status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "RuleStatus"))
    CreateAutomationRuleRequest.add_member(:rule_order, Shapes::ShapeRef.new(shape: RuleOrderValue, required: true, location_name: "RuleOrder"))
    CreateAutomationRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "RuleName"))
    CreateAutomationRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Description"))
    CreateAutomationRuleRequest.add_member(:is_terminal, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsTerminal"))
    CreateAutomationRuleRequest.add_member(:criteria, Shapes::ShapeRef.new(shape: AutomationRulesFindingFilters, required: true, location_name: "Criteria"))
    CreateAutomationRuleRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, required: true, location_name: "Actions"))
    CreateAutomationRuleRequest.struct_class = Types::CreateAutomationRuleRequest

    CreateAutomationRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleArn"))
    CreateAutomationRuleResponse.struct_class = Types::CreateAutomationRuleResponse

    CreateFindingAggregatorRequest.add_member(:region_linking_mode, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "RegionLinkingMode"))
    CreateFindingAggregatorRequest.add_member(:regions, Shapes::ShapeRef.new(shape: StringList, location_name: "Regions"))
    CreateFindingAggregatorRequest.struct_class = Types::CreateFindingAggregatorRequest

    CreateFindingAggregatorResponse.add_member(:finding_aggregator_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FindingAggregatorArn"))
    CreateFindingAggregatorResponse.add_member(:finding_aggregation_region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FindingAggregationRegion"))
    CreateFindingAggregatorResponse.add_member(:region_linking_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegionLinkingMode"))
    CreateFindingAggregatorResponse.add_member(:regions, Shapes::ShapeRef.new(shape: StringList, location_name: "Regions"))
    CreateFindingAggregatorResponse.struct_class = Types::CreateFindingAggregatorResponse

    CreateInsightRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    CreateInsightRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, required: true, location_name: "Filters"))
    CreateInsightRequest.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttribute"))
    CreateInsightRequest.struct_class = Types::CreateInsightRequest

    CreateInsightResponse.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    CreateInsightResponse.struct_class = Types::CreateInsightResponse

    CreateMembersRequest.add_member(:account_details, Shapes::ShapeRef.new(shape: AccountDetailsList, required: true, location_name: "AccountDetails"))
    CreateMembersRequest.struct_class = Types::CreateMembersRequest

    CreateMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    CreateMembersResponse.struct_class = Types::CreateMembersResponse

    CustomDataIdentifiersDetections.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "Count"))
    CustomDataIdentifiersDetections.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Arn"))
    CustomDataIdentifiersDetections.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    CustomDataIdentifiersDetections.add_member(:occurrences, Shapes::ShapeRef.new(shape: Occurrences, location_name: "Occurrences"))
    CustomDataIdentifiersDetections.struct_class = Types::CustomDataIdentifiersDetections

    CustomDataIdentifiersDetectionsList.member = Shapes::ShapeRef.new(shape: CustomDataIdentifiersDetections)

    CustomDataIdentifiersResult.add_member(:detections, Shapes::ShapeRef.new(shape: CustomDataIdentifiersDetectionsList, location_name: "Detections"))
    CustomDataIdentifiersResult.add_member(:total_count, Shapes::ShapeRef.new(shape: Long, location_name: "TotalCount"))
    CustomDataIdentifiersResult.struct_class = Types::CustomDataIdentifiersResult

    Cvss.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    Cvss.add_member(:base_score, Shapes::ShapeRef.new(shape: Double, location_name: "BaseScore"))
    Cvss.add_member(:base_vector, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BaseVector"))
    Cvss.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Source"))
    Cvss.add_member(:adjustments, Shapes::ShapeRef.new(shape: AdjustmentList, location_name: "Adjustments"))
    Cvss.struct_class = Types::Cvss

    CvssList.member = Shapes::ShapeRef.new(shape: Cvss)

    DataClassificationDetails.add_member(:detailed_results_location, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DetailedResultsLocation"))
    DataClassificationDetails.add_member(:result, Shapes::ShapeRef.new(shape: ClassificationResult, location_name: "Result"))
    DataClassificationDetails.struct_class = Types::DataClassificationDetails

    DateFilter.add_member(:start, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Start"))
    DateFilter.add_member(:end, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "End"))
    DateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: DateRange, location_name: "DateRange"))
    DateFilter.struct_class = Types::DateFilter

    DateFilterList.member = Shapes::ShapeRef.new(shape: DateFilter)

    DateRange.add_member(:value, Shapes::ShapeRef.new(shape: Integer, location_name: "Value"))
    DateRange.add_member(:unit, Shapes::ShapeRef.new(shape: DateRangeUnit, location_name: "Unit"))
    DateRange.struct_class = Types::DateRange

    DeclineInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    DeclineInvitationsRequest.struct_class = Types::DeclineInvitationsRequest

    DeclineInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    DeclineInvitationsResponse.struct_class = Types::DeclineInvitationsResponse

    DeleteActionTargetRequest.add_member(:action_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "ActionTargetArn"))
    DeleteActionTargetRequest.struct_class = Types::DeleteActionTargetRequest

    DeleteActionTargetResponse.add_member(:action_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ActionTargetArn"))
    DeleteActionTargetResponse.struct_class = Types::DeleteActionTargetResponse

    DeleteFindingAggregatorRequest.add_member(:finding_aggregator_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "FindingAggregatorArn"))
    DeleteFindingAggregatorRequest.struct_class = Types::DeleteFindingAggregatorRequest

    DeleteFindingAggregatorResponse.struct_class = Types::DeleteFindingAggregatorResponse

    DeleteInsightRequest.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "InsightArn"))
    DeleteInsightRequest.struct_class = Types::DeleteInsightRequest

    DeleteInsightResponse.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    DeleteInsightResponse.struct_class = Types::DeleteInsightResponse

    DeleteInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    DeleteInvitationsRequest.struct_class = Types::DeleteInvitationsRequest

    DeleteInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    DeleteInvitationsResponse.struct_class = Types::DeleteInvitationsResponse

    DeleteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    DeleteMembersRequest.struct_class = Types::DeleteMembersRequest

    DeleteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    DeleteMembersResponse.struct_class = Types::DeleteMembersResponse

    DescribeActionTargetsRequest.add_member(:action_target_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "ActionTargetArns"))
    DescribeActionTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeActionTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeActionTargetsRequest.struct_class = Types::DescribeActionTargetsRequest

    DescribeActionTargetsResponse.add_member(:action_targets, Shapes::ShapeRef.new(shape: ActionTargetList, required: true, location_name: "ActionTargets"))
    DescribeActionTargetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeActionTargetsResponse.struct_class = Types::DescribeActionTargetsResponse

    DescribeHubRequest.add_member(:hub_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location: "querystring", location_name: "HubArn"))
    DescribeHubRequest.struct_class = Types::DescribeHubRequest

    DescribeHubResponse.add_member(:hub_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HubArn"))
    DescribeHubResponse.add_member(:subscribed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubscribedAt"))
    DescribeHubResponse.add_member(:auto_enable_controls, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnableControls"))
    DescribeHubResponse.add_member(:control_finding_generator, Shapes::ShapeRef.new(shape: ControlFindingGenerator, location_name: "ControlFindingGenerator"))
    DescribeHubResponse.struct_class = Types::DescribeHubResponse

    DescribeOrganizationConfigurationRequest.struct_class = Types::DescribeOrganizationConfigurationRequest

    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnable"))
    DescribeOrganizationConfigurationResponse.add_member(:member_account_limit_reached, Shapes::ShapeRef.new(shape: Boolean, location_name: "MemberAccountLimitReached"))
    DescribeOrganizationConfigurationResponse.add_member(:auto_enable_standards, Shapes::ShapeRef.new(shape: AutoEnableStandards, location_name: "AutoEnableStandards"))
    DescribeOrganizationConfigurationResponse.struct_class = Types::DescribeOrganizationConfigurationResponse

    DescribeProductsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    DescribeProductsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    DescribeProductsRequest.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location: "querystring", location_name: "ProductArn"))
    DescribeProductsRequest.struct_class = Types::DescribeProductsRequest

    DescribeProductsResponse.add_member(:products, Shapes::ShapeRef.new(shape: ProductsList, required: true, location_name: "Products"))
    DescribeProductsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeProductsResponse.struct_class = Types::DescribeProductsResponse

    DescribeStandardsControlsRequest.add_member(:standards_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "StandardsSubscriptionArn"))
    DescribeStandardsControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    DescribeStandardsControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    DescribeStandardsControlsRequest.struct_class = Types::DescribeStandardsControlsRequest

    DescribeStandardsControlsResponse.add_member(:controls, Shapes::ShapeRef.new(shape: StandardsControls, location_name: "Controls"))
    DescribeStandardsControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStandardsControlsResponse.struct_class = Types::DescribeStandardsControlsResponse

    DescribeStandardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    DescribeStandardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    DescribeStandardsRequest.struct_class = Types::DescribeStandardsRequest

    DescribeStandardsResponse.add_member(:standards, Shapes::ShapeRef.new(shape: Standards, location_name: "Standards"))
    DescribeStandardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeStandardsResponse.struct_class = Types::DescribeStandardsResponse

    DisableImportFindingsForProductRequest.add_member(:product_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "ProductSubscriptionArn"))
    DisableImportFindingsForProductRequest.struct_class = Types::DisableImportFindingsForProductRequest

    DisableImportFindingsForProductResponse.struct_class = Types::DisableImportFindingsForProductResponse

    DisableOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "AdminAccountId"))
    DisableOrganizationAdminAccountRequest.struct_class = Types::DisableOrganizationAdminAccountRequest

    DisableOrganizationAdminAccountResponse.struct_class = Types::DisableOrganizationAdminAccountResponse

    DisableSecurityHubRequest.struct_class = Types::DisableSecurityHubRequest

    DisableSecurityHubResponse.struct_class = Types::DisableSecurityHubResponse

    DisassociateFromAdministratorAccountRequest.struct_class = Types::DisassociateFromAdministratorAccountRequest

    DisassociateFromAdministratorAccountResponse.struct_class = Types::DisassociateFromAdministratorAccountResponse

    DisassociateFromMasterAccountRequest.struct_class = Types::DisassociateFromMasterAccountRequest

    DisassociateFromMasterAccountResponse.struct_class = Types::DisassociateFromMasterAccountResponse

    DisassociateMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    DisassociateMembersRequest.struct_class = Types::DisassociateMembersRequest

    DisassociateMembersResponse.struct_class = Types::DisassociateMembersResponse

    DnsRequestAction.add_member(:domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Domain"))
    DnsRequestAction.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    DnsRequestAction.add_member(:blocked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Blocked"))
    DnsRequestAction.struct_class = Types::DnsRequestAction

    EnableImportFindingsForProductRequest.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    EnableImportFindingsForProductRequest.struct_class = Types::EnableImportFindingsForProductRequest

    EnableImportFindingsForProductResponse.add_member(:product_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProductSubscriptionArn"))
    EnableImportFindingsForProductResponse.struct_class = Types::EnableImportFindingsForProductResponse

    EnableOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "AdminAccountId"))
    EnableOrganizationAdminAccountRequest.struct_class = Types::EnableOrganizationAdminAccountRequest

    EnableOrganizationAdminAccountResponse.struct_class = Types::EnableOrganizationAdminAccountResponse

    EnableSecurityHubRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EnableSecurityHubRequest.add_member(:enable_default_standards, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableDefaultStandards"))
    EnableSecurityHubRequest.add_member(:control_finding_generator, Shapes::ShapeRef.new(shape: ControlFindingGenerator, location_name: "ControlFindingGenerator"))
    EnableSecurityHubRequest.struct_class = Types::EnableSecurityHubRequest

    EnableSecurityHubResponse.struct_class = Types::EnableSecurityHubResponse

    FieldMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    FieldMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    FilePathList.member = Shapes::ShapeRef.new(shape: FilePaths)

    FilePaths.add_member(:file_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FilePath"))
    FilePaths.add_member(:file_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FileName"))
    FilePaths.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceId"))
    FilePaths.add_member(:hash, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Hash"))
    FilePaths.struct_class = Types::FilePaths

    FindingAggregator.add_member(:finding_aggregator_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FindingAggregatorArn"))
    FindingAggregator.struct_class = Types::FindingAggregator

    FindingAggregatorList.member = Shapes::ShapeRef.new(shape: FindingAggregator)

    FindingHistoryRecord.add_member(:finding_identifier, Shapes::ShapeRef.new(shape: AwsSecurityFindingIdentifier, location_name: "FindingIdentifier"))
    FindingHistoryRecord.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateTime"))
    FindingHistoryRecord.add_member(:finding_created, Shapes::ShapeRef.new(shape: Boolean, location_name: "FindingCreated"))
    FindingHistoryRecord.add_member(:update_source, Shapes::ShapeRef.new(shape: FindingHistoryUpdateSource, location_name: "UpdateSource"))
    FindingHistoryRecord.add_member(:updates, Shapes::ShapeRef.new(shape: FindingHistoryUpdatesList, location_name: "Updates"))
    FindingHistoryRecord.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    FindingHistoryRecord.struct_class = Types::FindingHistoryRecord

    FindingHistoryRecordList.member = Shapes::ShapeRef.new(shape: FindingHistoryRecord)

    FindingHistoryUpdate.add_member(:updated_field, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UpdatedField"))
    FindingHistoryUpdate.add_member(:old_value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OldValue"))
    FindingHistoryUpdate.add_member(:new_value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NewValue"))
    FindingHistoryUpdate.struct_class = Types::FindingHistoryUpdate

    FindingHistoryUpdateSource.add_member(:type, Shapes::ShapeRef.new(shape: FindingHistoryUpdateSourceType, location_name: "Type"))
    FindingHistoryUpdateSource.add_member(:identity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Identity"))
    FindingHistoryUpdateSource.struct_class = Types::FindingHistoryUpdateSource

    FindingHistoryUpdatesList.member = Shapes::ShapeRef.new(shape: FindingHistoryUpdate)

    FindingProviderFields.add_member(:confidence, Shapes::ShapeRef.new(shape: RatioScale, location_name: "Confidence"))
    FindingProviderFields.add_member(:criticality, Shapes::ShapeRef.new(shape: RatioScale, location_name: "Criticality"))
    FindingProviderFields.add_member(:related_findings, Shapes::ShapeRef.new(shape: RelatedFindingList, location_name: "RelatedFindings"))
    FindingProviderFields.add_member(:severity, Shapes::ShapeRef.new(shape: FindingProviderSeverity, location_name: "Severity"))
    FindingProviderFields.add_member(:types, Shapes::ShapeRef.new(shape: TypeList, location_name: "Types"))
    FindingProviderFields.struct_class = Types::FindingProviderFields

    FindingProviderSeverity.add_member(:label, Shapes::ShapeRef.new(shape: SeverityLabel, location_name: "Label"))
    FindingProviderSeverity.add_member(:original, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Original"))
    FindingProviderSeverity.struct_class = Types::FindingProviderSeverity

    FirewallPolicyDetails.add_member(:stateful_rule_group_references, Shapes::ShapeRef.new(shape: FirewallPolicyStatefulRuleGroupReferencesList, location_name: "StatefulRuleGroupReferences"))
    FirewallPolicyDetails.add_member(:stateless_custom_actions, Shapes::ShapeRef.new(shape: FirewallPolicyStatelessCustomActionsList, location_name: "StatelessCustomActions"))
    FirewallPolicyDetails.add_member(:stateless_default_actions, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "StatelessDefaultActions"))
    FirewallPolicyDetails.add_member(:stateless_fragment_default_actions, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "StatelessFragmentDefaultActions"))
    FirewallPolicyDetails.add_member(:stateless_rule_group_references, Shapes::ShapeRef.new(shape: FirewallPolicyStatelessRuleGroupReferencesList, location_name: "StatelessRuleGroupReferences"))
    FirewallPolicyDetails.struct_class = Types::FirewallPolicyDetails

    FirewallPolicyStatefulRuleGroupReferencesDetails.add_member(:resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceArn"))
    FirewallPolicyStatefulRuleGroupReferencesDetails.struct_class = Types::FirewallPolicyStatefulRuleGroupReferencesDetails

    FirewallPolicyStatefulRuleGroupReferencesList.member = Shapes::ShapeRef.new(shape: FirewallPolicyStatefulRuleGroupReferencesDetails)

    FirewallPolicyStatelessCustomActionsDetails.add_member(:action_definition, Shapes::ShapeRef.new(shape: StatelessCustomActionDefinition, location_name: "ActionDefinition"))
    FirewallPolicyStatelessCustomActionsDetails.add_member(:action_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ActionName"))
    FirewallPolicyStatelessCustomActionsDetails.struct_class = Types::FirewallPolicyStatelessCustomActionsDetails

    FirewallPolicyStatelessCustomActionsList.member = Shapes::ShapeRef.new(shape: FirewallPolicyStatelessCustomActionsDetails)

    FirewallPolicyStatelessRuleGroupReferencesDetails.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "Priority"))
    FirewallPolicyStatelessRuleGroupReferencesDetails.add_member(:resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceArn"))
    FirewallPolicyStatelessRuleGroupReferencesDetails.struct_class = Types::FirewallPolicyStatelessRuleGroupReferencesDetails

    FirewallPolicyStatelessRuleGroupReferencesList.member = Shapes::ShapeRef.new(shape: FirewallPolicyStatelessRuleGroupReferencesDetails)

    GeoLocation.add_member(:lon, Shapes::ShapeRef.new(shape: Double, location_name: "Lon"))
    GeoLocation.add_member(:lat, Shapes::ShapeRef.new(shape: Double, location_name: "Lat"))
    GeoLocation.struct_class = Types::GeoLocation

    GetAdministratorAccountRequest.struct_class = Types::GetAdministratorAccountRequest

    GetAdministratorAccountResponse.add_member(:administrator, Shapes::ShapeRef.new(shape: Invitation, location_name: "Administrator"))
    GetAdministratorAccountResponse.struct_class = Types::GetAdministratorAccountResponse

    GetEnabledStandardsRequest.add_member(:standards_subscription_arns, Shapes::ShapeRef.new(shape: StandardsSubscriptionArns, location_name: "StandardsSubscriptionArns"))
    GetEnabledStandardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEnabledStandardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetEnabledStandardsRequest.struct_class = Types::GetEnabledStandardsRequest

    GetEnabledStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    GetEnabledStandardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEnabledStandardsResponse.struct_class = Types::GetEnabledStandardsResponse

    GetFindingAggregatorRequest.add_member(:finding_aggregator_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "FindingAggregatorArn"))
    GetFindingAggregatorRequest.struct_class = Types::GetFindingAggregatorRequest

    GetFindingAggregatorResponse.add_member(:finding_aggregator_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FindingAggregatorArn"))
    GetFindingAggregatorResponse.add_member(:finding_aggregation_region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FindingAggregationRegion"))
    GetFindingAggregatorResponse.add_member(:region_linking_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegionLinkingMode"))
    GetFindingAggregatorResponse.add_member(:regions, Shapes::ShapeRef.new(shape: StringList, location_name: "Regions"))
    GetFindingAggregatorResponse.struct_class = Types::GetFindingAggregatorResponse

    GetFindingHistoryRequest.add_member(:finding_identifier, Shapes::ShapeRef.new(shape: AwsSecurityFindingIdentifier, required: true, location_name: "FindingIdentifier"))
    GetFindingHistoryRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    GetFindingHistoryRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    GetFindingHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetFindingHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetFindingHistoryRequest.struct_class = Types::GetFindingHistoryRequest

    GetFindingHistoryResponse.add_member(:records, Shapes::ShapeRef.new(shape: FindingHistoryRecordList, location_name: "Records"))
    GetFindingHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetFindingHistoryResponse.struct_class = Types::GetFindingHistoryResponse

    GetFindingsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, location_name: "Filters"))
    GetFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "SortCriteria"))
    GetFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetFindingsRequest.struct_class = Types::GetFindingsRequest

    GetFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: AwsSecurityFindingList, required: true, location_name: "Findings"))
    GetFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetFindingsResponse.struct_class = Types::GetFindingsResponse

    GetInsightResultsRequest.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "InsightArn"))
    GetInsightResultsRequest.struct_class = Types::GetInsightResultsRequest

    GetInsightResultsResponse.add_member(:insight_results, Shapes::ShapeRef.new(shape: InsightResults, required: true, location_name: "InsightResults"))
    GetInsightResultsResponse.struct_class = Types::GetInsightResultsResponse

    GetInsightsRequest.add_member(:insight_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "InsightArns"))
    GetInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetInsightsRequest.struct_class = Types::GetInsightsRequest

    GetInsightsResponse.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, required: true, location_name: "Insights"))
    GetInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInsightsResponse.struct_class = Types::GetInsightsResponse

    GetInvitationsCountRequest.struct_class = Types::GetInvitationsCountRequest

    GetInvitationsCountResponse.add_member(:invitations_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InvitationsCount"))
    GetInvitationsCountResponse.struct_class = Types::GetInvitationsCountResponse

    GetMasterAccountRequest.struct_class = Types::GetMasterAccountRequest

    GetMasterAccountResponse.add_member(:master, Shapes::ShapeRef.new(shape: Invitation, location_name: "Master"))
    GetMasterAccountResponse.struct_class = Types::GetMasterAccountResponse

    GetMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    GetMembersRequest.struct_class = Types::GetMembersRequest

    GetMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, location_name: "Members"))
    GetMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    GetMembersResponse.struct_class = Types::GetMembersResponse

    IcmpTypeCode.add_member(:code, Shapes::ShapeRef.new(shape: Integer, location_name: "Code"))
    IcmpTypeCode.add_member(:type, Shapes::ShapeRef.new(shape: Integer, location_name: "Type"))
    IcmpTypeCode.struct_class = Types::IcmpTypeCode

    ImportFindingsError.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    ImportFindingsError.add_member(:error_code, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ErrorCode"))
    ImportFindingsError.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ErrorMessage"))
    ImportFindingsError.struct_class = Types::ImportFindingsError

    ImportFindingsErrorList.member = Shapes::ShapeRef.new(shape: ImportFindingsError)

    Insight.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    Insight.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    Insight.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, required: true, location_name: "Filters"))
    Insight.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttribute"))
    Insight.struct_class = Types::Insight

    InsightList.member = Shapes::ShapeRef.new(shape: Insight)

    InsightResultValue.add_member(:group_by_attribute_value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttributeValue"))
    InsightResultValue.add_member(:count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Count"))
    InsightResultValue.struct_class = Types::InsightResultValue

    InsightResultValueList.member = Shapes::ShapeRef.new(shape: InsightResultValue)

    InsightResults.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    InsightResults.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttribute"))
    InsightResults.add_member(:result_values, Shapes::ShapeRef.new(shape: InsightResultValueList, required: true, location_name: "ResultValues"))
    InsightResults.struct_class = Types::InsightResults

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    IntegrationTypeList.member = Shapes::ShapeRef.new(shape: IntegrationType)

    InternalException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InternalException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    InternalException.struct_class = Types::InternalException

    InvalidAccessException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InvalidAccessException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    InvalidAccessException.struct_class = Types::InvalidAccessException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InvalidInputException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    InvalidInputException.struct_class = Types::InvalidInputException

    Invitation.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Invitation.add_member(:invitation_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InvitationId"))
    Invitation.add_member(:invited_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InvitedAt"))
    Invitation.add_member(:member_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberStatus"))
    Invitation.struct_class = Types::Invitation

    InvitationList.member = Shapes::ShapeRef.new(shape: Invitation)

    InviteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    InviteMembersRequest.struct_class = Types::InviteMembersRequest

    InviteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    InviteMembersResponse.struct_class = Types::InviteMembersResponse

    IpFilter.add_member(:cidr, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Cidr"))
    IpFilter.struct_class = Types::IpFilter

    IpFilterList.member = Shapes::ShapeRef.new(shape: IpFilter)

    IpOrganizationDetails.add_member(:asn, Shapes::ShapeRef.new(shape: Integer, location_name: "Asn"))
    IpOrganizationDetails.add_member(:asn_org, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AsnOrg"))
    IpOrganizationDetails.add_member(:isp, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Isp"))
    IpOrganizationDetails.add_member(:org, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Org"))
    IpOrganizationDetails.struct_class = Types::IpOrganizationDetails

    Ipv6CidrBlockAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociationId"))
    Ipv6CidrBlockAssociation.add_member(:ipv_6_cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ipv6CidrBlock"))
    Ipv6CidrBlockAssociation.add_member(:cidr_block_state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlockState"))
    Ipv6CidrBlockAssociation.struct_class = Types::Ipv6CidrBlockAssociation

    Ipv6CidrBlockAssociationList.member = Shapes::ShapeRef.new(shape: Ipv6CidrBlockAssociation)

    KeywordFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    KeywordFilter.struct_class = Types::KeywordFilter

    KeywordFilterList.member = Shapes::ShapeRef.new(shape: KeywordFilter)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    LimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAutomationRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListAutomationRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListAutomationRulesRequest.struct_class = Types::ListAutomationRulesRequest

    ListAutomationRulesResponse.add_member(:automation_rules_metadata, Shapes::ShapeRef.new(shape: AutomationRulesMetadataList, location_name: "AutomationRulesMetadata"))
    ListAutomationRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAutomationRulesResponse.struct_class = Types::ListAutomationRulesResponse

    ListEnabledProductsForImportRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListEnabledProductsForImportRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListEnabledProductsForImportRequest.struct_class = Types::ListEnabledProductsForImportRequest

    ListEnabledProductsForImportResponse.add_member(:product_subscriptions, Shapes::ShapeRef.new(shape: ProductSubscriptionArnList, location_name: "ProductSubscriptions"))
    ListEnabledProductsForImportResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEnabledProductsForImportResponse.struct_class = Types::ListEnabledProductsForImportResponse

    ListFindingAggregatorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListFindingAggregatorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListFindingAggregatorsRequest.struct_class = Types::ListFindingAggregatorsRequest

    ListFindingAggregatorsResponse.add_member(:finding_aggregators, Shapes::ShapeRef.new(shape: FindingAggregatorList, location_name: "FindingAggregators"))
    ListFindingAggregatorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFindingAggregatorsResponse.struct_class = Types::ListFindingAggregatorsResponse

    ListInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CrossAccountMaxResults, location: "querystring", location_name: "MaxResults"))
    ListInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListInvitationsRequest.struct_class = Types::ListInvitationsRequest

    ListInvitationsResponse.add_member(:invitations, Shapes::ShapeRef.new(shape: InvitationList, location_name: "Invitations"))
    ListInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListInvitationsResponse.struct_class = Types::ListInvitationsResponse

    ListMembersRequest.add_member(:only_associated, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "OnlyAssociated"))
    ListMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CrossAccountMaxResults, location: "querystring", location_name: "MaxResults"))
    ListMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListMembersRequest.struct_class = Types::ListMembersRequest

    ListMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, location_name: "Members"))
    ListMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListMembersResponse.struct_class = Types::ListMembersResponse

    ListOrganizationAdminAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: AdminsMaxResults, location: "querystring", location_name: "MaxResults"))
    ListOrganizationAdminAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListOrganizationAdminAccountsRequest.struct_class = Types::ListOrganizationAdminAccountsRequest

    ListOrganizationAdminAccountsResponse.add_member(:admin_accounts, Shapes::ShapeRef.new(shape: AdminAccounts, location_name: "AdminAccounts"))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOrganizationAdminAccountsResponse.struct_class = Types::ListOrganizationAdminAccountsResponse

    ListSecurityControlDefinitionsRequest.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location: "querystring", location_name: "StandardsArn"))
    ListSecurityControlDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListSecurityControlDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListSecurityControlDefinitionsRequest.struct_class = Types::ListSecurityControlDefinitionsRequest

    ListSecurityControlDefinitionsResponse.add_member(:security_control_definitions, Shapes::ShapeRef.new(shape: SecurityControlDefinitions, required: true, location_name: "SecurityControlDefinitions"))
    ListSecurityControlDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityControlDefinitionsResponse.struct_class = Types::ListSecurityControlDefinitionsResponse

    ListStandardsControlAssociationsRequest.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "querystring", location_name: "SecurityControlId"))
    ListStandardsControlAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListStandardsControlAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListStandardsControlAssociationsRequest.struct_class = Types::ListStandardsControlAssociationsRequest

    ListStandardsControlAssociationsResponse.add_member(:standards_control_association_summaries, Shapes::ShapeRef.new(shape: StandardsControlAssociationSummaries, required: true, location_name: "StandardsControlAssociationSummaries"))
    ListStandardsControlAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStandardsControlAssociationsResponse.struct_class = Types::ListStandardsControlAssociationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoadBalancerState.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    LoadBalancerState.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Reason"))
    LoadBalancerState.struct_class = Types::LoadBalancerState

    Malware.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    Malware.add_member(:type, Shapes::ShapeRef.new(shape: MalwareType, location_name: "Type"))
    Malware.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    Malware.add_member(:state, Shapes::ShapeRef.new(shape: MalwareState, location_name: "State"))
    Malware.struct_class = Types::Malware

    MalwareList.member = Shapes::ShapeRef.new(shape: Malware)

    MapFilter.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Key"))
    MapFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    MapFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: MapFilterComparison, location_name: "Comparison"))
    MapFilter.struct_class = Types::MapFilter

    MapFilterList.member = Shapes::ShapeRef.new(shape: MapFilter)

    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Member.add_member(:email, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Email"))
    Member.add_member(:master_id, Shapes::ShapeRef.new(shape: NonEmptyString, deprecated: true, location_name: "MasterId", metadata: {"deprecatedMessage"=>"This field is deprecated, use AdministratorId instead."}))
    Member.add_member(:administrator_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AdministratorId"))
    Member.add_member(:member_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberStatus"))
    Member.add_member(:invited_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InvitedAt"))
    Member.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Member.struct_class = Types::Member

    MemberList.member = Shapes::ShapeRef.new(shape: Member)

    Network.add_member(:direction, Shapes::ShapeRef.new(shape: NetworkDirection, location_name: "Direction"))
    Network.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    Network.add_member(:open_port_range, Shapes::ShapeRef.new(shape: PortRange, location_name: "OpenPortRange"))
    Network.add_member(:source_ip_v4, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceIpV4"))
    Network.add_member(:source_ip_v6, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceIpV6"))
    Network.add_member(:source_port, Shapes::ShapeRef.new(shape: Integer, location_name: "SourcePort"))
    Network.add_member(:source_domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceDomain"))
    Network.add_member(:source_mac, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceMac"))
    Network.add_member(:destination_ip_v4, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationIpV4"))
    Network.add_member(:destination_ip_v6, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationIpV6"))
    Network.add_member(:destination_port, Shapes::ShapeRef.new(shape: Integer, location_name: "DestinationPort"))
    Network.add_member(:destination_domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationDomain"))
    Network.struct_class = Types::Network

    NetworkConnectionAction.add_member(:connection_direction, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ConnectionDirection"))
    NetworkConnectionAction.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: ActionRemoteIpDetails, location_name: "RemoteIpDetails"))
    NetworkConnectionAction.add_member(:remote_port_details, Shapes::ShapeRef.new(shape: ActionRemotePortDetails, location_name: "RemotePortDetails"))
    NetworkConnectionAction.add_member(:local_port_details, Shapes::ShapeRef.new(shape: ActionLocalPortDetails, location_name: "LocalPortDetails"))
    NetworkConnectionAction.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    NetworkConnectionAction.add_member(:blocked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Blocked"))
    NetworkConnectionAction.struct_class = Types::NetworkConnectionAction

    NetworkHeader.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    NetworkHeader.add_member(:destination, Shapes::ShapeRef.new(shape: NetworkPathComponentDetails, location_name: "Destination"))
    NetworkHeader.add_member(:source, Shapes::ShapeRef.new(shape: NetworkPathComponentDetails, location_name: "Source"))
    NetworkHeader.struct_class = Types::NetworkHeader

    NetworkPathComponent.add_member(:component_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ComponentId"))
    NetworkPathComponent.add_member(:component_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ComponentType"))
    NetworkPathComponent.add_member(:egress, Shapes::ShapeRef.new(shape: NetworkHeader, location_name: "Egress"))
    NetworkPathComponent.add_member(:ingress, Shapes::ShapeRef.new(shape: NetworkHeader, location_name: "Ingress"))
    NetworkPathComponent.struct_class = Types::NetworkPathComponent

    NetworkPathComponentDetails.add_member(:address, Shapes::ShapeRef.new(shape: StringList, location_name: "Address"))
    NetworkPathComponentDetails.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRangeList, location_name: "PortRanges"))
    NetworkPathComponentDetails.struct_class = Types::NetworkPathComponentDetails

    NetworkPathList.member = Shapes::ShapeRef.new(shape: NetworkPathComponent)

    NonEmptyStringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    Note.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Text"))
    Note.add_member(:updated_by, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedBy"))
    Note.add_member(:updated_at, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedAt"))
    Note.struct_class = Types::Note

    NoteUpdate.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Text"))
    NoteUpdate.add_member(:updated_by, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedBy"))
    NoteUpdate.struct_class = Types::NoteUpdate

    NumberFilter.add_member(:gte, Shapes::ShapeRef.new(shape: Double, location_name: "Gte"))
    NumberFilter.add_member(:lte, Shapes::ShapeRef.new(shape: Double, location_name: "Lte"))
    NumberFilter.add_member(:eq, Shapes::ShapeRef.new(shape: Double, location_name: "Eq"))
    NumberFilter.struct_class = Types::NumberFilter

    NumberFilterList.member = Shapes::ShapeRef.new(shape: NumberFilter)

    Occurrences.add_member(:line_ranges, Shapes::ShapeRef.new(shape: Ranges, location_name: "LineRanges"))
    Occurrences.add_member(:offset_ranges, Shapes::ShapeRef.new(shape: Ranges, location_name: "OffsetRanges"))
    Occurrences.add_member(:pages, Shapes::ShapeRef.new(shape: Pages, location_name: "Pages"))
    Occurrences.add_member(:records, Shapes::ShapeRef.new(shape: Records, location_name: "Records"))
    Occurrences.add_member(:cells, Shapes::ShapeRef.new(shape: Cells, location_name: "Cells"))
    Occurrences.struct_class = Types::Occurrences

    Page.add_member(:page_number, Shapes::ShapeRef.new(shape: Long, location_name: "PageNumber"))
    Page.add_member(:line_range, Shapes::ShapeRef.new(shape: Range, location_name: "LineRange"))
    Page.add_member(:offset_range, Shapes::ShapeRef.new(shape: Range, location_name: "OffsetRange"))
    Page.struct_class = Types::Page

    Pages.member = Shapes::ShapeRef.new(shape: Page)

    PatchSummary.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    PatchSummary.add_member(:installed_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstalledCount"))
    PatchSummary.add_member(:missing_count, Shapes::ShapeRef.new(shape: Integer, location_name: "MissingCount"))
    PatchSummary.add_member(:failed_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedCount"))
    PatchSummary.add_member(:installed_other_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstalledOtherCount"))
    PatchSummary.add_member(:installed_rejected_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstalledRejectedCount"))
    PatchSummary.add_member(:installed_pending_reboot, Shapes::ShapeRef.new(shape: Integer, location_name: "InstalledPendingReboot"))
    PatchSummary.add_member(:operation_start_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OperationStartTime"))
    PatchSummary.add_member(:operation_end_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OperationEndTime"))
    PatchSummary.add_member(:reboot_option, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RebootOption"))
    PatchSummary.add_member(:operation, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Operation"))
    PatchSummary.struct_class = Types::PatchSummary

    PortProbeAction.add_member(:port_probe_details, Shapes::ShapeRef.new(shape: PortProbeDetailList, location_name: "PortProbeDetails"))
    PortProbeAction.add_member(:blocked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Blocked"))
    PortProbeAction.struct_class = Types::PortProbeAction

    PortProbeDetail.add_member(:local_port_details, Shapes::ShapeRef.new(shape: ActionLocalPortDetails, location_name: "LocalPortDetails"))
    PortProbeDetail.add_member(:local_ip_details, Shapes::ShapeRef.new(shape: ActionLocalIpDetails, location_name: "LocalIpDetails"))
    PortProbeDetail.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: ActionRemoteIpDetails, location_name: "RemoteIpDetails"))
    PortProbeDetail.struct_class = Types::PortProbeDetail

    PortProbeDetailList.member = Shapes::ShapeRef.new(shape: PortProbeDetail)

    PortRange.add_member(:begin, Shapes::ShapeRef.new(shape: Integer, location_name: "Begin"))
    PortRange.add_member(:end, Shapes::ShapeRef.new(shape: Integer, location_name: "End"))
    PortRange.struct_class = Types::PortRange

    PortRangeFromTo.add_member(:from, Shapes::ShapeRef.new(shape: Integer, location_name: "From"))
    PortRangeFromTo.add_member(:to, Shapes::ShapeRef.new(shape: Integer, location_name: "To"))
    PortRangeFromTo.struct_class = Types::PortRangeFromTo

    PortRangeList.member = Shapes::ShapeRef.new(shape: PortRange)

    ProcessDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    ProcessDetails.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    ProcessDetails.add_member(:pid, Shapes::ShapeRef.new(shape: Integer, location_name: "Pid"))
    ProcessDetails.add_member(:parent_pid, Shapes::ShapeRef.new(shape: Integer, location_name: "ParentPid"))
    ProcessDetails.add_member(:launched_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchedAt"))
    ProcessDetails.add_member(:terminated_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TerminatedAt"))
    ProcessDetails.struct_class = Types::ProcessDetails

    Product.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    Product.add_member(:product_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProductName"))
    Product.add_member(:company_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CompanyName"))
    Product.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    Product.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Categories"))
    Product.add_member(:integration_types, Shapes::ShapeRef.new(shape: IntegrationTypeList, location_name: "IntegrationTypes"))
    Product.add_member(:marketplace_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MarketplaceUrl"))
    Product.add_member(:activation_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ActivationUrl"))
    Product.add_member(:product_subscription_resource_policy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProductSubscriptionResourcePolicy"))
    Product.struct_class = Types::Product

    ProductSubscriptionArnList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ProductsList.member = Shapes::ShapeRef.new(shape: Product)

    PropagatingVgwSetDetails.add_member(:gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GatewayId"))
    PropagatingVgwSetDetails.struct_class = Types::PropagatingVgwSetDetails

    PropagatingVgwSetList.member = Shapes::ShapeRef.new(shape: PropagatingVgwSetDetails)

    Range.add_member(:start, Shapes::ShapeRef.new(shape: Long, location_name: "Start"))
    Range.add_member(:end, Shapes::ShapeRef.new(shape: Long, location_name: "End"))
    Range.add_member(:start_column, Shapes::ShapeRef.new(shape: Long, location_name: "StartColumn"))
    Range.struct_class = Types::Range

    Ranges.member = Shapes::ShapeRef.new(shape: Range)

    Recommendation.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    Recommendation.add_member(:url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Url"))
    Recommendation.struct_class = Types::Recommendation

    Record.add_member(:json_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "JsonPath"))
    Record.add_member(:record_index, Shapes::ShapeRef.new(shape: Long, location_name: "RecordIndex"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    RelatedFinding.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    RelatedFinding.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    RelatedFinding.struct_class = Types::RelatedFinding

    RelatedFindingList.member = Shapes::ShapeRef.new(shape: RelatedFinding)

    RelatedRequirementsList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    Remediation.add_member(:recommendation, Shapes::ShapeRef.new(shape: Recommendation, location_name: "Recommendation"))
    Remediation.struct_class = Types::Remediation

    Resource.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Type"))
    Resource.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    Resource.add_member(:partition, Shapes::ShapeRef.new(shape: Partition, location_name: "Partition"))
    Resource.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Region"))
    Resource.add_member(:resource_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceRole"))
    Resource.add_member(:tags, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Tags"))
    Resource.add_member(:data_classification, Shapes::ShapeRef.new(shape: DataClassificationDetails, location_name: "DataClassification"))
    Resource.add_member(:details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "Details"))
    Resource.struct_class = Types::Resource

    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ResourceConflictException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceDetails.add_member(:aws_auto_scaling_auto_scaling_group, Shapes::ShapeRef.new(shape: AwsAutoScalingAutoScalingGroupDetails, location_name: "AwsAutoScalingAutoScalingGroup"))
    ResourceDetails.add_member(:aws_code_build_project, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectDetails, location_name: "AwsCodeBuildProject"))
    ResourceDetails.add_member(:aws_cloud_front_distribution, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionDetails, location_name: "AwsCloudFrontDistribution"))
    ResourceDetails.add_member(:aws_ec2_instance, Shapes::ShapeRef.new(shape: AwsEc2InstanceDetails, location_name: "AwsEc2Instance"))
    ResourceDetails.add_member(:aws_ec2_network_interface, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceDetails, location_name: "AwsEc2NetworkInterface"))
    ResourceDetails.add_member(:aws_ec2_security_group, Shapes::ShapeRef.new(shape: AwsEc2SecurityGroupDetails, location_name: "AwsEc2SecurityGroup"))
    ResourceDetails.add_member(:aws_ec2_volume, Shapes::ShapeRef.new(shape: AwsEc2VolumeDetails, location_name: "AwsEc2Volume"))
    ResourceDetails.add_member(:aws_ec2_vpc, Shapes::ShapeRef.new(shape: AwsEc2VpcDetails, location_name: "AwsEc2Vpc"))
    ResourceDetails.add_member(:aws_ec2_eip, Shapes::ShapeRef.new(shape: AwsEc2EipDetails, location_name: "AwsEc2Eip"))
    ResourceDetails.add_member(:aws_ec2_subnet, Shapes::ShapeRef.new(shape: AwsEc2SubnetDetails, location_name: "AwsEc2Subnet"))
    ResourceDetails.add_member(:aws_ec2_network_acl, Shapes::ShapeRef.new(shape: AwsEc2NetworkAclDetails, location_name: "AwsEc2NetworkAcl"))
    ResourceDetails.add_member(:aws_elbv_2_load_balancer, Shapes::ShapeRef.new(shape: AwsElbv2LoadBalancerDetails, location_name: "AwsElbv2LoadBalancer"))
    ResourceDetails.add_member(:aws_elastic_beanstalk_environment, Shapes::ShapeRef.new(shape: AwsElasticBeanstalkEnvironmentDetails, location_name: "AwsElasticBeanstalkEnvironment"))
    ResourceDetails.add_member(:aws_elasticsearch_domain, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainDetails, location_name: "AwsElasticsearchDomain"))
    ResourceDetails.add_member(:aws_s3_bucket, Shapes::ShapeRef.new(shape: AwsS3BucketDetails, location_name: "AwsS3Bucket"))
    ResourceDetails.add_member(:aws_s3_account_public_access_block, Shapes::ShapeRef.new(shape: AwsS3AccountPublicAccessBlockDetails, location_name: "AwsS3AccountPublicAccessBlock"))
    ResourceDetails.add_member(:aws_s3_object, Shapes::ShapeRef.new(shape: AwsS3ObjectDetails, location_name: "AwsS3Object"))
    ResourceDetails.add_member(:aws_secrets_manager_secret, Shapes::ShapeRef.new(shape: AwsSecretsManagerSecretDetails, location_name: "AwsSecretsManagerSecret"))
    ResourceDetails.add_member(:aws_iam_access_key, Shapes::ShapeRef.new(shape: AwsIamAccessKeyDetails, location_name: "AwsIamAccessKey"))
    ResourceDetails.add_member(:aws_iam_user, Shapes::ShapeRef.new(shape: AwsIamUserDetails, location_name: "AwsIamUser"))
    ResourceDetails.add_member(:aws_iam_policy, Shapes::ShapeRef.new(shape: AwsIamPolicyDetails, location_name: "AwsIamPolicy"))
    ResourceDetails.add_member(:aws_api_gateway_v2_stage, Shapes::ShapeRef.new(shape: AwsApiGatewayV2StageDetails, location_name: "AwsApiGatewayV2Stage"))
    ResourceDetails.add_member(:aws_api_gateway_v2_api, Shapes::ShapeRef.new(shape: AwsApiGatewayV2ApiDetails, location_name: "AwsApiGatewayV2Api"))
    ResourceDetails.add_member(:aws_dynamo_db_table, Shapes::ShapeRef.new(shape: AwsDynamoDbTableDetails, location_name: "AwsDynamoDbTable"))
    ResourceDetails.add_member(:aws_api_gateway_stage, Shapes::ShapeRef.new(shape: AwsApiGatewayStageDetails, location_name: "AwsApiGatewayStage"))
    ResourceDetails.add_member(:aws_api_gateway_rest_api, Shapes::ShapeRef.new(shape: AwsApiGatewayRestApiDetails, location_name: "AwsApiGatewayRestApi"))
    ResourceDetails.add_member(:aws_cloud_trail_trail, Shapes::ShapeRef.new(shape: AwsCloudTrailTrailDetails, location_name: "AwsCloudTrailTrail"))
    ResourceDetails.add_member(:aws_ssm_patch_compliance, Shapes::ShapeRef.new(shape: AwsSsmPatchComplianceDetails, location_name: "AwsSsmPatchCompliance"))
    ResourceDetails.add_member(:aws_certificate_manager_certificate, Shapes::ShapeRef.new(shape: AwsCertificateManagerCertificateDetails, location_name: "AwsCertificateManagerCertificate"))
    ResourceDetails.add_member(:aws_redshift_cluster, Shapes::ShapeRef.new(shape: AwsRedshiftClusterDetails, location_name: "AwsRedshiftCluster"))
    ResourceDetails.add_member(:aws_elb_load_balancer, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerDetails, location_name: "AwsElbLoadBalancer"))
    ResourceDetails.add_member(:aws_iam_group, Shapes::ShapeRef.new(shape: AwsIamGroupDetails, location_name: "AwsIamGroup"))
    ResourceDetails.add_member(:aws_iam_role, Shapes::ShapeRef.new(shape: AwsIamRoleDetails, location_name: "AwsIamRole"))
    ResourceDetails.add_member(:aws_kms_key, Shapes::ShapeRef.new(shape: AwsKmsKeyDetails, location_name: "AwsKmsKey"))
    ResourceDetails.add_member(:aws_lambda_function, Shapes::ShapeRef.new(shape: AwsLambdaFunctionDetails, location_name: "AwsLambdaFunction"))
    ResourceDetails.add_member(:aws_lambda_layer_version, Shapes::ShapeRef.new(shape: AwsLambdaLayerVersionDetails, location_name: "AwsLambdaLayerVersion"))
    ResourceDetails.add_member(:aws_rds_db_instance, Shapes::ShapeRef.new(shape: AwsRdsDbInstanceDetails, location_name: "AwsRdsDbInstance"))
    ResourceDetails.add_member(:aws_sns_topic, Shapes::ShapeRef.new(shape: AwsSnsTopicDetails, location_name: "AwsSnsTopic"))
    ResourceDetails.add_member(:aws_sqs_queue, Shapes::ShapeRef.new(shape: AwsSqsQueueDetails, location_name: "AwsSqsQueue"))
    ResourceDetails.add_member(:aws_waf_web_acl, Shapes::ShapeRef.new(shape: AwsWafWebAclDetails, location_name: "AwsWafWebAcl"))
    ResourceDetails.add_member(:aws_rds_db_snapshot, Shapes::ShapeRef.new(shape: AwsRdsDbSnapshotDetails, location_name: "AwsRdsDbSnapshot"))
    ResourceDetails.add_member(:aws_rds_db_cluster_snapshot, Shapes::ShapeRef.new(shape: AwsRdsDbClusterSnapshotDetails, location_name: "AwsRdsDbClusterSnapshot"))
    ResourceDetails.add_member(:aws_rds_db_cluster, Shapes::ShapeRef.new(shape: AwsRdsDbClusterDetails, location_name: "AwsRdsDbCluster"))
    ResourceDetails.add_member(:aws_ecs_cluster, Shapes::ShapeRef.new(shape: AwsEcsClusterDetails, location_name: "AwsEcsCluster"))
    ResourceDetails.add_member(:aws_ecs_container, Shapes::ShapeRef.new(shape: AwsEcsContainerDetails, location_name: "AwsEcsContainer"))
    ResourceDetails.add_member(:aws_ecs_task_definition, Shapes::ShapeRef.new(shape: AwsEcsTaskDefinitionDetails, location_name: "AwsEcsTaskDefinition"))
    ResourceDetails.add_member(:container, Shapes::ShapeRef.new(shape: ContainerDetails, location_name: "Container"))
    ResourceDetails.add_member(:other, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Other"))
    ResourceDetails.add_member(:aws_rds_event_subscription, Shapes::ShapeRef.new(shape: AwsRdsEventSubscriptionDetails, location_name: "AwsRdsEventSubscription"))
    ResourceDetails.add_member(:aws_ecs_service, Shapes::ShapeRef.new(shape: AwsEcsServiceDetails, location_name: "AwsEcsService"))
    ResourceDetails.add_member(:aws_auto_scaling_launch_configuration, Shapes::ShapeRef.new(shape: AwsAutoScalingLaunchConfigurationDetails, location_name: "AwsAutoScalingLaunchConfiguration"))
    ResourceDetails.add_member(:aws_ec2_vpn_connection, Shapes::ShapeRef.new(shape: AwsEc2VpnConnectionDetails, location_name: "AwsEc2VpnConnection"))
    ResourceDetails.add_member(:aws_ecr_container_image, Shapes::ShapeRef.new(shape: AwsEcrContainerImageDetails, location_name: "AwsEcrContainerImage"))
    ResourceDetails.add_member(:aws_open_search_service_domain, Shapes::ShapeRef.new(shape: AwsOpenSearchServiceDomainDetails, location_name: "AwsOpenSearchServiceDomain"))
    ResourceDetails.add_member(:aws_ec2_vpc_endpoint_service, Shapes::ShapeRef.new(shape: AwsEc2VpcEndpointServiceDetails, location_name: "AwsEc2VpcEndpointService"))
    ResourceDetails.add_member(:aws_xray_encryption_config, Shapes::ShapeRef.new(shape: AwsXrayEncryptionConfigDetails, location_name: "AwsXrayEncryptionConfig"))
    ResourceDetails.add_member(:aws_waf_rate_based_rule, Shapes::ShapeRef.new(shape: AwsWafRateBasedRuleDetails, location_name: "AwsWafRateBasedRule"))
    ResourceDetails.add_member(:aws_waf_regional_rate_based_rule, Shapes::ShapeRef.new(shape: AwsWafRegionalRateBasedRuleDetails, location_name: "AwsWafRegionalRateBasedRule"))
    ResourceDetails.add_member(:aws_ecr_repository, Shapes::ShapeRef.new(shape: AwsEcrRepositoryDetails, location_name: "AwsEcrRepository"))
    ResourceDetails.add_member(:aws_eks_cluster, Shapes::ShapeRef.new(shape: AwsEksClusterDetails, location_name: "AwsEksCluster"))
    ResourceDetails.add_member(:aws_network_firewall_firewall_policy, Shapes::ShapeRef.new(shape: AwsNetworkFirewallFirewallPolicyDetails, location_name: "AwsNetworkFirewallFirewallPolicy"))
    ResourceDetails.add_member(:aws_network_firewall_firewall, Shapes::ShapeRef.new(shape: AwsNetworkFirewallFirewallDetails, location_name: "AwsNetworkFirewallFirewall"))
    ResourceDetails.add_member(:aws_network_firewall_rule_group, Shapes::ShapeRef.new(shape: AwsNetworkFirewallRuleGroupDetails, location_name: "AwsNetworkFirewallRuleGroup"))
    ResourceDetails.add_member(:aws_rds_db_security_group, Shapes::ShapeRef.new(shape: AwsRdsDbSecurityGroupDetails, location_name: "AwsRdsDbSecurityGroup"))
    ResourceDetails.add_member(:aws_kinesis_stream, Shapes::ShapeRef.new(shape: AwsKinesisStreamDetails, location_name: "AwsKinesisStream"))
    ResourceDetails.add_member(:aws_ec2_transit_gateway, Shapes::ShapeRef.new(shape: AwsEc2TransitGatewayDetails, location_name: "AwsEc2TransitGateway"))
    ResourceDetails.add_member(:aws_efs_access_point, Shapes::ShapeRef.new(shape: AwsEfsAccessPointDetails, location_name: "AwsEfsAccessPoint"))
    ResourceDetails.add_member(:aws_cloud_formation_stack, Shapes::ShapeRef.new(shape: AwsCloudFormationStackDetails, location_name: "AwsCloudFormationStack"))
    ResourceDetails.add_member(:aws_cloud_watch_alarm, Shapes::ShapeRef.new(shape: AwsCloudWatchAlarmDetails, location_name: "AwsCloudWatchAlarm"))
    ResourceDetails.add_member(:aws_ec2_vpc_peering_connection, Shapes::ShapeRef.new(shape: AwsEc2VpcPeeringConnectionDetails, location_name: "AwsEc2VpcPeeringConnection"))
    ResourceDetails.add_member(:aws_waf_regional_rule_group, Shapes::ShapeRef.new(shape: AwsWafRegionalRuleGroupDetails, location_name: "AwsWafRegionalRuleGroup"))
    ResourceDetails.add_member(:aws_waf_regional_rule, Shapes::ShapeRef.new(shape: AwsWafRegionalRuleDetails, location_name: "AwsWafRegionalRule"))
    ResourceDetails.add_member(:aws_waf_regional_web_acl, Shapes::ShapeRef.new(shape: AwsWafRegionalWebAclDetails, location_name: "AwsWafRegionalWebAcl"))
    ResourceDetails.add_member(:aws_waf_rule, Shapes::ShapeRef.new(shape: AwsWafRuleDetails, location_name: "AwsWafRule"))
    ResourceDetails.add_member(:aws_waf_rule_group, Shapes::ShapeRef.new(shape: AwsWafRuleGroupDetails, location_name: "AwsWafRuleGroup"))
    ResourceDetails.add_member(:aws_ecs_task, Shapes::ShapeRef.new(shape: AwsEcsTaskDetails, location_name: "AwsEcsTask"))
    ResourceDetails.add_member(:aws_backup_backup_vault, Shapes::ShapeRef.new(shape: AwsBackupBackupVaultDetails, location_name: "AwsBackupBackupVault"))
    ResourceDetails.add_member(:aws_backup_backup_plan, Shapes::ShapeRef.new(shape: AwsBackupBackupPlanDetails, location_name: "AwsBackupBackupPlan"))
    ResourceDetails.add_member(:aws_backup_recovery_point, Shapes::ShapeRef.new(shape: AwsBackupRecoveryPointDetails, location_name: "AwsBackupRecoveryPoint"))
    ResourceDetails.add_member(:aws_ec2_launch_template, Shapes::ShapeRef.new(shape: AwsEc2LaunchTemplateDetails, location_name: "AwsEc2LaunchTemplate"))
    ResourceDetails.add_member(:aws_sage_maker_notebook_instance, Shapes::ShapeRef.new(shape: AwsSageMakerNotebookInstanceDetails, location_name: "AwsSageMakerNotebookInstance"))
    ResourceDetails.add_member(:aws_wafv_2_web_acl, Shapes::ShapeRef.new(shape: AwsWafv2WebAclDetails, location_name: "AwsWafv2WebAcl"))
    ResourceDetails.add_member(:aws_wafv_2_rule_group, Shapes::ShapeRef.new(shape: AwsWafv2RuleGroupDetails, location_name: "AwsWafv2RuleGroup"))
    ResourceDetails.add_member(:aws_ec2_route_table, Shapes::ShapeRef.new(shape: AwsEc2RouteTableDetails, location_name: "AwsEc2RouteTable"))
    ResourceDetails.add_member(:aws_amazon_mq_broker, Shapes::ShapeRef.new(shape: AwsAmazonMqBrokerDetails, location_name: "AwsAmazonMqBroker"))
    ResourceDetails.add_member(:aws_app_sync_graph_ql_api, Shapes::ShapeRef.new(shape: AwsAppSyncGraphQlApiDetails, location_name: "AwsAppSyncGraphQlApi"))
    ResourceDetails.add_member(:aws_event_schemas_registry, Shapes::ShapeRef.new(shape: AwsEventSchemasRegistryDetails, location_name: "AwsEventSchemasRegistry"))
    ResourceDetails.add_member(:aws_guard_duty_detector, Shapes::ShapeRef.new(shape: AwsGuardDutyDetectorDetails, location_name: "AwsGuardDutyDetector"))
    ResourceDetails.add_member(:aws_step_function_state_machine, Shapes::ShapeRef.new(shape: AwsStepFunctionStateMachineDetails, location_name: "AwsStepFunctionStateMachine"))
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Result.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Result.add_member(:processing_result, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProcessingResult"))
    Result.struct_class = Types::Result

    ResultList.member = Shapes::ShapeRef.new(shape: Result)

    RouteSetDetails.add_member(:carrier_gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CarrierGatewayId"))
    RouteSetDetails.add_member(:core_network_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CoreNetworkArn"))
    RouteSetDetails.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationCidrBlock"))
    RouteSetDetails.add_member(:destination_ipv_6_cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationIpv6CidrBlock"))
    RouteSetDetails.add_member(:destination_prefix_list_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationPrefixListId"))
    RouteSetDetails.add_member(:egress_only_internet_gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EgressOnlyInternetGatewayId"))
    RouteSetDetails.add_member(:gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GatewayId"))
    RouteSetDetails.add_member(:instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceId"))
    RouteSetDetails.add_member(:instance_owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceOwnerId"))
    RouteSetDetails.add_member(:local_gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LocalGatewayId"))
    RouteSetDetails.add_member(:nat_gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NatGatewayId"))
    RouteSetDetails.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NetworkInterfaceId"))
    RouteSetDetails.add_member(:origin, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Origin"))
    RouteSetDetails.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "State"))
    RouteSetDetails.add_member(:transit_gateway_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TransitGatewayId"))
    RouteSetDetails.add_member(:vpc_peering_connection_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcPeeringConnectionId"))
    RouteSetDetails.struct_class = Types::RouteSetDetails

    RouteSetList.member = Shapes::ShapeRef.new(shape: RouteSetDetails)

    RuleGroupDetails.add_member(:rule_variables, Shapes::ShapeRef.new(shape: RuleGroupVariables, location_name: "RuleVariables"))
    RuleGroupDetails.add_member(:rules_source, Shapes::ShapeRef.new(shape: RuleGroupSource, location_name: "RulesSource"))
    RuleGroupDetails.struct_class = Types::RuleGroupDetails

    RuleGroupSource.add_member(:rules_source_list, Shapes::ShapeRef.new(shape: RuleGroupSourceListDetails, location_name: "RulesSourceList"))
    RuleGroupSource.add_member(:rules_string, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RulesString"))
    RuleGroupSource.add_member(:stateful_rules, Shapes::ShapeRef.new(shape: RuleGroupSourceStatefulRulesList, location_name: "StatefulRules"))
    RuleGroupSource.add_member(:stateless_rules_and_custom_actions, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRulesAndCustomActionsDetails, location_name: "StatelessRulesAndCustomActions"))
    RuleGroupSource.struct_class = Types::RuleGroupSource

    RuleGroupSourceCustomActionsDetails.add_member(:action_definition, Shapes::ShapeRef.new(shape: StatelessCustomActionDefinition, location_name: "ActionDefinition"))
    RuleGroupSourceCustomActionsDetails.add_member(:action_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ActionName"))
    RuleGroupSourceCustomActionsDetails.struct_class = Types::RuleGroupSourceCustomActionsDetails

    RuleGroupSourceCustomActionsList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceCustomActionsDetails)

    RuleGroupSourceListDetails.add_member(:generated_rules_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GeneratedRulesType"))
    RuleGroupSourceListDetails.add_member(:target_types, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "TargetTypes"))
    RuleGroupSourceListDetails.add_member(:targets, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Targets"))
    RuleGroupSourceListDetails.struct_class = Types::RuleGroupSourceListDetails

    RuleGroupSourceStatefulRulesDetails.add_member(:action, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Action"))
    RuleGroupSourceStatefulRulesDetails.add_member(:header, Shapes::ShapeRef.new(shape: RuleGroupSourceStatefulRulesHeaderDetails, location_name: "Header"))
    RuleGroupSourceStatefulRulesDetails.add_member(:rule_options, Shapes::ShapeRef.new(shape: RuleGroupSourceStatefulRulesOptionsList, location_name: "RuleOptions"))
    RuleGroupSourceStatefulRulesDetails.struct_class = Types::RuleGroupSourceStatefulRulesDetails

    RuleGroupSourceStatefulRulesHeaderDetails.add_member(:destination, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Destination"))
    RuleGroupSourceStatefulRulesHeaderDetails.add_member(:destination_port, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationPort"))
    RuleGroupSourceStatefulRulesHeaderDetails.add_member(:direction, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Direction"))
    RuleGroupSourceStatefulRulesHeaderDetails.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    RuleGroupSourceStatefulRulesHeaderDetails.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Source"))
    RuleGroupSourceStatefulRulesHeaderDetails.add_member(:source_port, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourcePort"))
    RuleGroupSourceStatefulRulesHeaderDetails.struct_class = Types::RuleGroupSourceStatefulRulesHeaderDetails

    RuleGroupSourceStatefulRulesList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceStatefulRulesDetails)

    RuleGroupSourceStatefulRulesOptionsDetails.add_member(:keyword, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Keyword"))
    RuleGroupSourceStatefulRulesOptionsDetails.add_member(:settings, Shapes::ShapeRef.new(shape: RuleGroupSourceStatefulRulesRuleOptionsSettingsList, location_name: "Settings"))
    RuleGroupSourceStatefulRulesOptionsDetails.struct_class = Types::RuleGroupSourceStatefulRulesOptionsDetails

    RuleGroupSourceStatefulRulesOptionsList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceStatefulRulesOptionsDetails)

    RuleGroupSourceStatefulRulesRuleOptionsSettingsList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    RuleGroupSourceStatelessRuleDefinition.add_member(:actions, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Actions"))
    RuleGroupSourceStatelessRuleDefinition.add_member(:match_attributes, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributes, location_name: "MatchAttributes"))
    RuleGroupSourceStatelessRuleDefinition.struct_class = Types::RuleGroupSourceStatelessRuleDefinition

    RuleGroupSourceStatelessRuleMatchAttributes.add_member(:destination_ports, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList, location_name: "DestinationPorts"))
    RuleGroupSourceStatelessRuleMatchAttributes.add_member(:destinations, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesDestinationsList, location_name: "Destinations"))
    RuleGroupSourceStatelessRuleMatchAttributes.add_member(:protocols, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesProtocolsList, location_name: "Protocols"))
    RuleGroupSourceStatelessRuleMatchAttributes.add_member(:source_ports, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList, location_name: "SourcePorts"))
    RuleGroupSourceStatelessRuleMatchAttributes.add_member(:sources, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesSourcesList, location_name: "Sources"))
    RuleGroupSourceStatelessRuleMatchAttributes.add_member(:tcp_flags, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList, location_name: "TcpFlags"))
    RuleGroupSourceStatelessRuleMatchAttributes.struct_class = Types::RuleGroupSourceStatelessRuleMatchAttributes

    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.add_member(:from_port, Shapes::ShapeRef.new(shape: Integer, location_name: "FromPort"))
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.add_member(:to_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ToPort"))
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.struct_class = Types::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts

    RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts)

    RuleGroupSourceStatelessRuleMatchAttributesDestinations.add_member(:address_definition, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AddressDefinition"))
    RuleGroupSourceStatelessRuleMatchAttributesDestinations.struct_class = Types::RuleGroupSourceStatelessRuleMatchAttributesDestinations

    RuleGroupSourceStatelessRuleMatchAttributesDestinationsList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesDestinations)

    RuleGroupSourceStatelessRuleMatchAttributesProtocolsList.member = Shapes::ShapeRef.new(shape: Integer)

    RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.add_member(:from_port, Shapes::ShapeRef.new(shape: Integer, location_name: "FromPort"))
    RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.add_member(:to_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ToPort"))
    RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.struct_class = Types::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts

    RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesSourcePorts)

    RuleGroupSourceStatelessRuleMatchAttributesSources.add_member(:address_definition, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AddressDefinition"))
    RuleGroupSourceStatelessRuleMatchAttributesSources.struct_class = Types::RuleGroupSourceStatelessRuleMatchAttributesSources

    RuleGroupSourceStatelessRuleMatchAttributesSourcesList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesSources)

    RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.add_member(:flags, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Flags"))
    RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.add_member(:masks, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Masks"))
    RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.struct_class = Types::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags

    RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleMatchAttributesTcpFlags)

    RuleGroupSourceStatelessRulesAndCustomActionsDetails.add_member(:custom_actions, Shapes::ShapeRef.new(shape: RuleGroupSourceCustomActionsList, location_name: "CustomActions"))
    RuleGroupSourceStatelessRulesAndCustomActionsDetails.add_member(:stateless_rules, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRulesList, location_name: "StatelessRules"))
    RuleGroupSourceStatelessRulesAndCustomActionsDetails.struct_class = Types::RuleGroupSourceStatelessRulesAndCustomActionsDetails

    RuleGroupSourceStatelessRulesDetails.add_member(:priority, Shapes::ShapeRef.new(shape: Integer, location_name: "Priority"))
    RuleGroupSourceStatelessRulesDetails.add_member(:rule_definition, Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRuleDefinition, location_name: "RuleDefinition"))
    RuleGroupSourceStatelessRulesDetails.struct_class = Types::RuleGroupSourceStatelessRulesDetails

    RuleGroupSourceStatelessRulesList.member = Shapes::ShapeRef.new(shape: RuleGroupSourceStatelessRulesDetails)

    RuleGroupVariables.add_member(:ip_sets, Shapes::ShapeRef.new(shape: RuleGroupVariablesIpSetsDetails, location_name: "IpSets"))
    RuleGroupVariables.add_member(:port_sets, Shapes::ShapeRef.new(shape: RuleGroupVariablesPortSetsDetails, location_name: "PortSets"))
    RuleGroupVariables.struct_class = Types::RuleGroupVariables

    RuleGroupVariablesIpSetsDetails.add_member(:definition, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Definition"))
    RuleGroupVariablesIpSetsDetails.struct_class = Types::RuleGroupVariablesIpSetsDetails

    RuleGroupVariablesPortSetsDetails.add_member(:definition, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "Definition"))
    RuleGroupVariablesPortSetsDetails.struct_class = Types::RuleGroupVariablesPortSetsDetails

    SecurityControl.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlId"))
    SecurityControl.add_member(:security_control_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlArn"))
    SecurityControl.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Title"))
    SecurityControl.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Description"))
    SecurityControl.add_member(:remediation_url, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "RemediationUrl"))
    SecurityControl.add_member(:severity_rating, Shapes::ShapeRef.new(shape: SeverityRating, required: true, location_name: "SeverityRating"))
    SecurityControl.add_member(:security_control_status, Shapes::ShapeRef.new(shape: ControlStatus, required: true, location_name: "SecurityControlStatus"))
    SecurityControl.struct_class = Types::SecurityControl

    SecurityControlDefinition.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlId"))
    SecurityControlDefinition.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Title"))
    SecurityControlDefinition.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Description"))
    SecurityControlDefinition.add_member(:remediation_url, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "RemediationUrl"))
    SecurityControlDefinition.add_member(:severity_rating, Shapes::ShapeRef.new(shape: SeverityRating, required: true, location_name: "SeverityRating"))
    SecurityControlDefinition.add_member(:current_region_availability, Shapes::ShapeRef.new(shape: RegionAvailabilityStatus, required: true, location_name: "CurrentRegionAvailability"))
    SecurityControlDefinition.struct_class = Types::SecurityControlDefinition

    SecurityControlDefinitions.member = Shapes::ShapeRef.new(shape: SecurityControlDefinition)

    SecurityControls.member = Shapes::ShapeRef.new(shape: SecurityControl)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    SensitiveDataDetections.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "Count"))
    SensitiveDataDetections.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    SensitiveDataDetections.add_member(:occurrences, Shapes::ShapeRef.new(shape: Occurrences, location_name: "Occurrences"))
    SensitiveDataDetections.struct_class = Types::SensitiveDataDetections

    SensitiveDataDetectionsList.member = Shapes::ShapeRef.new(shape: SensitiveDataDetections)

    SensitiveDataResult.add_member(:category, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Category"))
    SensitiveDataResult.add_member(:detections, Shapes::ShapeRef.new(shape: SensitiveDataDetectionsList, location_name: "Detections"))
    SensitiveDataResult.add_member(:total_count, Shapes::ShapeRef.new(shape: Long, location_name: "TotalCount"))
    SensitiveDataResult.struct_class = Types::SensitiveDataResult

    SensitiveDataResultList.member = Shapes::ShapeRef.new(shape: SensitiveDataResult)

    Severity.add_member(:product, Shapes::ShapeRef.new(shape: Double, location_name: "Product"))
    Severity.add_member(:label, Shapes::ShapeRef.new(shape: SeverityLabel, location_name: "Label"))
    Severity.add_member(:normalized, Shapes::ShapeRef.new(shape: Integer, location_name: "Normalized"))
    Severity.add_member(:original, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Original"))
    Severity.struct_class = Types::Severity

    SeverityUpdate.add_member(:normalized, Shapes::ShapeRef.new(shape: RatioScale, location_name: "Normalized"))
    SeverityUpdate.add_member(:product, Shapes::ShapeRef.new(shape: Double, location_name: "Product"))
    SeverityUpdate.add_member(:label, Shapes::ShapeRef.new(shape: SeverityLabel, location_name: "Label"))
    SeverityUpdate.struct_class = Types::SeverityUpdate

    SoftwarePackage.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    SoftwarePackage.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    SoftwarePackage.add_member(:epoch, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Epoch"))
    SoftwarePackage.add_member(:release, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Release"))
    SoftwarePackage.add_member(:architecture, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Architecture"))
    SoftwarePackage.add_member(:package_manager, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PackageManager"))
    SoftwarePackage.add_member(:file_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FilePath"))
    SoftwarePackage.add_member(:fixed_in_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FixedInVersion"))
    SoftwarePackage.add_member(:remediation, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Remediation"))
    SoftwarePackage.add_member(:source_layer_hash, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceLayerHash"))
    SoftwarePackage.add_member(:source_layer_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceLayerArn"))
    SoftwarePackage.struct_class = Types::SoftwarePackage

    SoftwarePackageList.member = Shapes::ShapeRef.new(shape: SoftwarePackage)

    SortCriteria.member = Shapes::ShapeRef.new(shape: SortCriterion)

    SortCriterion.add_member(:field, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Field"))
    SortCriterion.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SortCriterion.struct_class = Types::SortCriterion

    Standard.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StandardsArn"))
    Standard.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    Standard.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    Standard.add_member(:enabled_by_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnabledByDefault"))
    Standard.add_member(:standards_managed_by, Shapes::ShapeRef.new(shape: StandardsManagedBy, location_name: "StandardsManagedBy"))
    Standard.struct_class = Types::Standard

    Standards.member = Shapes::ShapeRef.new(shape: Standard)

    StandardsControl.add_member(:standards_control_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StandardsControlArn"))
    StandardsControl.add_member(:control_status, Shapes::ShapeRef.new(shape: ControlStatus, location_name: "ControlStatus"))
    StandardsControl.add_member(:disabled_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DisabledReason"))
    StandardsControl.add_member(:control_status_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ControlStatusUpdatedAt"))
    StandardsControl.add_member(:control_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ControlId"))
    StandardsControl.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Title"))
    StandardsControl.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    StandardsControl.add_member(:remediation_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RemediationUrl"))
    StandardsControl.add_member(:severity_rating, Shapes::ShapeRef.new(shape: SeverityRating, location_name: "SeverityRating"))
    StandardsControl.add_member(:related_requirements, Shapes::ShapeRef.new(shape: RelatedRequirementsList, location_name: "RelatedRequirements"))
    StandardsControl.struct_class = Types::StandardsControl

    StandardsControlArnList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    StandardsControlAssociationDetail.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsControlAssociationDetail.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlId"))
    StandardsControlAssociationDetail.add_member(:security_control_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlArn"))
    StandardsControlAssociationDetail.add_member(:association_status, Shapes::ShapeRef.new(shape: AssociationStatus, required: true, location_name: "AssociationStatus"))
    StandardsControlAssociationDetail.add_member(:related_requirements, Shapes::ShapeRef.new(shape: RelatedRequirementsList, location_name: "RelatedRequirements"))
    StandardsControlAssociationDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    StandardsControlAssociationDetail.add_member(:updated_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UpdatedReason"))
    StandardsControlAssociationDetail.add_member(:standards_control_title, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StandardsControlTitle"))
    StandardsControlAssociationDetail.add_member(:standards_control_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StandardsControlDescription"))
    StandardsControlAssociationDetail.add_member(:standards_control_arns, Shapes::ShapeRef.new(shape: StandardsControlArnList, location_name: "StandardsControlArns"))
    StandardsControlAssociationDetail.struct_class = Types::StandardsControlAssociationDetail

    StandardsControlAssociationDetails.member = Shapes::ShapeRef.new(shape: StandardsControlAssociationDetail)

    StandardsControlAssociationId.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlId"))
    StandardsControlAssociationId.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsControlAssociationId.struct_class = Types::StandardsControlAssociationId

    StandardsControlAssociationIds.member = Shapes::ShapeRef.new(shape: StandardsControlAssociationId)

    StandardsControlAssociationSummaries.member = Shapes::ShapeRef.new(shape: StandardsControlAssociationSummary)

    StandardsControlAssociationSummary.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsControlAssociationSummary.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlId"))
    StandardsControlAssociationSummary.add_member(:security_control_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlArn"))
    StandardsControlAssociationSummary.add_member(:association_status, Shapes::ShapeRef.new(shape: AssociationStatus, required: true, location_name: "AssociationStatus"))
    StandardsControlAssociationSummary.add_member(:related_requirements, Shapes::ShapeRef.new(shape: RelatedRequirementsList, location_name: "RelatedRequirements"))
    StandardsControlAssociationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    StandardsControlAssociationSummary.add_member(:updated_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UpdatedReason"))
    StandardsControlAssociationSummary.add_member(:standards_control_title, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StandardsControlTitle"))
    StandardsControlAssociationSummary.add_member(:standards_control_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "StandardsControlDescription"))
    StandardsControlAssociationSummary.struct_class = Types::StandardsControlAssociationSummary

    StandardsControlAssociationUpdate.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsControlAssociationUpdate.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlId"))
    StandardsControlAssociationUpdate.add_member(:association_status, Shapes::ShapeRef.new(shape: AssociationStatus, required: true, location_name: "AssociationStatus"))
    StandardsControlAssociationUpdate.add_member(:updated_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UpdatedReason"))
    StandardsControlAssociationUpdate.struct_class = Types::StandardsControlAssociationUpdate

    StandardsControlAssociationUpdates.member = Shapes::ShapeRef.new(shape: StandardsControlAssociationUpdate)

    StandardsControls.member = Shapes::ShapeRef.new(shape: StandardsControl)

    StandardsInputParameterMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    StandardsInputParameterMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    StandardsManagedBy.add_member(:company, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Company"))
    StandardsManagedBy.add_member(:product, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Product"))
    StandardsManagedBy.struct_class = Types::StandardsManagedBy

    StandardsStatusReason.add_member(:status_reason_code, Shapes::ShapeRef.new(shape: StatusReasonCode, required: true, location_name: "StatusReasonCode"))
    StandardsStatusReason.struct_class = Types::StandardsStatusReason

    StandardsSubscription.add_member(:standards_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsSubscriptionArn"))
    StandardsSubscription.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsSubscription.add_member(:standards_input, Shapes::ShapeRef.new(shape: StandardsInputParameterMap, required: true, location_name: "StandardsInput"))
    StandardsSubscription.add_member(:standards_status, Shapes::ShapeRef.new(shape: StandardsStatus, required: true, location_name: "StandardsStatus"))
    StandardsSubscription.add_member(:standards_status_reason, Shapes::ShapeRef.new(shape: StandardsStatusReason, location_name: "StandardsStatusReason"))
    StandardsSubscription.struct_class = Types::StandardsSubscription

    StandardsSubscriptionArns.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    StandardsSubscriptionRequest.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsSubscriptionRequest.add_member(:standards_input, Shapes::ShapeRef.new(shape: StandardsInputParameterMap, location_name: "StandardsInput"))
    StandardsSubscriptionRequest.struct_class = Types::StandardsSubscriptionRequest

    StandardsSubscriptionRequests.member = Shapes::ShapeRef.new(shape: StandardsSubscriptionRequest)

    StandardsSubscriptions.member = Shapes::ShapeRef.new(shape: StandardsSubscription)

    StatelessCustomActionDefinition.add_member(:publish_metric_action, Shapes::ShapeRef.new(shape: StatelessCustomPublishMetricAction, location_name: "PublishMetricAction"))
    StatelessCustomActionDefinition.struct_class = Types::StatelessCustomActionDefinition

    StatelessCustomPublishMetricAction.add_member(:dimensions, Shapes::ShapeRef.new(shape: StatelessCustomPublishMetricActionDimensionsList, location_name: "Dimensions"))
    StatelessCustomPublishMetricAction.struct_class = Types::StatelessCustomPublishMetricAction

    StatelessCustomPublishMetricActionDimension.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    StatelessCustomPublishMetricActionDimension.struct_class = Types::StatelessCustomPublishMetricActionDimension

    StatelessCustomPublishMetricActionDimensionsList.member = Shapes::ShapeRef.new(shape: StatelessCustomPublishMetricActionDimension)

    StatusReason.add_member(:reason_code, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ReasonCode"))
    StatusReason.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    StatusReason.struct_class = Types::StatusReason

    StatusReasonsList.member = Shapes::ShapeRef.new(shape: StatusReason)

    StringFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    StringFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: StringFilterComparison, location_name: "Comparison"))
    StringFilter.struct_class = Types::StringFilter

    StringFilterList.member = Shapes::ShapeRef.new(shape: StringFilter)

    StringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Threat.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    Threat.add_member(:severity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Severity"))
    Threat.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ItemCount"))
    Threat.add_member(:file_paths, Shapes::ShapeRef.new(shape: FilePathList, location_name: "FilePaths"))
    Threat.struct_class = Types::Threat

    ThreatIntelIndicator.add_member(:type, Shapes::ShapeRef.new(shape: ThreatIntelIndicatorType, location_name: "Type"))
    ThreatIntelIndicator.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    ThreatIntelIndicator.add_member(:category, Shapes::ShapeRef.new(shape: ThreatIntelIndicatorCategory, location_name: "Category"))
    ThreatIntelIndicator.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastObservedAt"))
    ThreatIntelIndicator.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Source"))
    ThreatIntelIndicator.add_member(:source_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceUrl"))
    ThreatIntelIndicator.struct_class = Types::ThreatIntelIndicator

    ThreatIntelIndicatorList.member = Shapes::ShapeRef.new(shape: ThreatIntelIndicator)

    ThreatList.member = Shapes::ShapeRef.new(shape: Threat)

    TypeList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    UnprocessedAutomationRule.add_member(:rule_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleArn"))
    UnprocessedAutomationRule.add_member(:error_code, Shapes::ShapeRef.new(shape: Integer, location_name: "ErrorCode"))
    UnprocessedAutomationRule.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ErrorMessage"))
    UnprocessedAutomationRule.struct_class = Types::UnprocessedAutomationRule

    UnprocessedAutomationRulesList.member = Shapes::ShapeRef.new(shape: UnprocessedAutomationRule)

    UnprocessedSecurityControl.add_member(:security_control_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SecurityControlId"))
    UnprocessedSecurityControl.add_member(:error_code, Shapes::ShapeRef.new(shape: UnprocessedErrorCode, required: true, location_name: "ErrorCode"))
    UnprocessedSecurityControl.add_member(:error_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ErrorReason"))
    UnprocessedSecurityControl.struct_class = Types::UnprocessedSecurityControl

    UnprocessedSecurityControls.member = Shapes::ShapeRef.new(shape: UnprocessedSecurityControl)

    UnprocessedStandardsControlAssociation.add_member(:standards_control_association_id, Shapes::ShapeRef.new(shape: StandardsControlAssociationId, required: true, location_name: "StandardsControlAssociationId"))
    UnprocessedStandardsControlAssociation.add_member(:error_code, Shapes::ShapeRef.new(shape: UnprocessedErrorCode, required: true, location_name: "ErrorCode"))
    UnprocessedStandardsControlAssociation.add_member(:error_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ErrorReason"))
    UnprocessedStandardsControlAssociation.struct_class = Types::UnprocessedStandardsControlAssociation

    UnprocessedStandardsControlAssociationUpdate.add_member(:standards_control_association_update, Shapes::ShapeRef.new(shape: StandardsControlAssociationUpdate, required: true, location_name: "StandardsControlAssociationUpdate"))
    UnprocessedStandardsControlAssociationUpdate.add_member(:error_code, Shapes::ShapeRef.new(shape: UnprocessedErrorCode, required: true, location_name: "ErrorCode"))
    UnprocessedStandardsControlAssociationUpdate.add_member(:error_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ErrorReason"))
    UnprocessedStandardsControlAssociationUpdate.struct_class = Types::UnprocessedStandardsControlAssociationUpdate

    UnprocessedStandardsControlAssociationUpdates.member = Shapes::ShapeRef.new(shape: UnprocessedStandardsControlAssociationUpdate)

    UnprocessedStandardsControlAssociations.member = Shapes::ShapeRef.new(shape: UnprocessedStandardsControlAssociation)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateActionTargetRequest.add_member(:action_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "ActionTargetArn"))
    UpdateActionTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    UpdateActionTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    UpdateActionTargetRequest.struct_class = Types::UpdateActionTargetRequest

    UpdateActionTargetResponse.struct_class = Types::UpdateActionTargetResponse

    UpdateAutomationRulesRequestItem.add_member(:rule_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "RuleArn"))
    UpdateAutomationRulesRequestItem.add_member(:rule_status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "RuleStatus"))
    UpdateAutomationRulesRequestItem.add_member(:rule_order, Shapes::ShapeRef.new(shape: RuleOrderValue, location_name: "RuleOrder"))
    UpdateAutomationRulesRequestItem.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    UpdateAutomationRulesRequestItem.add_member(:rule_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleName"))
    UpdateAutomationRulesRequestItem.add_member(:is_terminal, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsTerminal"))
    UpdateAutomationRulesRequestItem.add_member(:criteria, Shapes::ShapeRef.new(shape: AutomationRulesFindingFilters, location_name: "Criteria"))
    UpdateAutomationRulesRequestItem.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "Actions"))
    UpdateAutomationRulesRequestItem.struct_class = Types::UpdateAutomationRulesRequestItem

    UpdateAutomationRulesRequestItemsList.member = Shapes::ShapeRef.new(shape: UpdateAutomationRulesRequestItem)

    UpdateFindingAggregatorRequest.add_member(:finding_aggregator_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "FindingAggregatorArn"))
    UpdateFindingAggregatorRequest.add_member(:region_linking_mode, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "RegionLinkingMode"))
    UpdateFindingAggregatorRequest.add_member(:regions, Shapes::ShapeRef.new(shape: StringList, location_name: "Regions"))
    UpdateFindingAggregatorRequest.struct_class = Types::UpdateFindingAggregatorRequest

    UpdateFindingAggregatorResponse.add_member(:finding_aggregator_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FindingAggregatorArn"))
    UpdateFindingAggregatorResponse.add_member(:finding_aggregation_region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FindingAggregationRegion"))
    UpdateFindingAggregatorResponse.add_member(:region_linking_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RegionLinkingMode"))
    UpdateFindingAggregatorResponse.add_member(:regions, Shapes::ShapeRef.new(shape: StringList, location_name: "Regions"))
    UpdateFindingAggregatorResponse.struct_class = Types::UpdateFindingAggregatorResponse

    UpdateFindingsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, required: true, location_name: "Filters"))
    UpdateFindingsRequest.add_member(:note, Shapes::ShapeRef.new(shape: NoteUpdate, location_name: "Note"))
    UpdateFindingsRequest.add_member(:record_state, Shapes::ShapeRef.new(shape: RecordState, location_name: "RecordState"))
    UpdateFindingsRequest.struct_class = Types::UpdateFindingsRequest

    UpdateFindingsResponse.struct_class = Types::UpdateFindingsResponse

    UpdateInsightRequest.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "InsightArn"))
    UpdateInsightRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    UpdateInsightRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, location_name: "Filters"))
    UpdateInsightRequest.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupByAttribute"))
    UpdateInsightRequest.struct_class = Types::UpdateInsightRequest

    UpdateInsightResponse.struct_class = Types::UpdateInsightResponse

    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "AutoEnable"))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable_standards, Shapes::ShapeRef.new(shape: AutoEnableStandards, location_name: "AutoEnableStandards"))
    UpdateOrganizationConfigurationRequest.struct_class = Types::UpdateOrganizationConfigurationRequest

    UpdateOrganizationConfigurationResponse.struct_class = Types::UpdateOrganizationConfigurationResponse

    UpdateSecurityHubConfigurationRequest.add_member(:auto_enable_controls, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnableControls"))
    UpdateSecurityHubConfigurationRequest.add_member(:control_finding_generator, Shapes::ShapeRef.new(shape: ControlFindingGenerator, location_name: "ControlFindingGenerator"))
    UpdateSecurityHubConfigurationRequest.struct_class = Types::UpdateSecurityHubConfigurationRequest

    UpdateSecurityHubConfigurationResponse.struct_class = Types::UpdateSecurityHubConfigurationResponse

    UpdateStandardsControlRequest.add_member(:standards_control_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "StandardsControlArn"))
    UpdateStandardsControlRequest.add_member(:control_status, Shapes::ShapeRef.new(shape: ControlStatus, location_name: "ControlStatus"))
    UpdateStandardsControlRequest.add_member(:disabled_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DisabledReason"))
    UpdateStandardsControlRequest.struct_class = Types::UpdateStandardsControlRequest

    UpdateStandardsControlResponse.struct_class = Types::UpdateStandardsControlResponse

    VolumeMount.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    VolumeMount.add_member(:mount_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MountPath"))
    VolumeMount.struct_class = Types::VolumeMount

    VolumeMountList.member = Shapes::ShapeRef.new(shape: VolumeMount)

    VpcInfoCidrBlockSetDetails.add_member(:cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlock"))
    VpcInfoCidrBlockSetDetails.struct_class = Types::VpcInfoCidrBlockSetDetails

    VpcInfoCidrBlockSetList.member = Shapes::ShapeRef.new(shape: VpcInfoCidrBlockSetDetails)

    VpcInfoIpv6CidrBlockSetDetails.add_member(:ipv_6_cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Ipv6CidrBlock"))
    VpcInfoIpv6CidrBlockSetDetails.struct_class = Types::VpcInfoIpv6CidrBlockSetDetails

    VpcInfoIpv6CidrBlockSetList.member = Shapes::ShapeRef.new(shape: VpcInfoIpv6CidrBlockSetDetails)

    VpcInfoPeeringOptionsDetails.add_member(:allow_dns_resolution_from_remote_vpc, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowDnsResolutionFromRemoteVpc"))
    VpcInfoPeeringOptionsDetails.add_member(:allow_egress_from_local_classic_link_to_remote_vpc, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowEgressFromLocalClassicLinkToRemoteVpc"))
    VpcInfoPeeringOptionsDetails.add_member(:allow_egress_from_local_vpc_to_remote_classic_link, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowEgressFromLocalVpcToRemoteClassicLink"))
    VpcInfoPeeringOptionsDetails.struct_class = Types::VpcInfoPeeringOptionsDetails

    Vulnerability.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    Vulnerability.add_member(:vulnerable_packages, Shapes::ShapeRef.new(shape: SoftwarePackageList, location_name: "VulnerablePackages"))
    Vulnerability.add_member(:cvss, Shapes::ShapeRef.new(shape: CvssList, location_name: "Cvss"))
    Vulnerability.add_member(:related_vulnerabilities, Shapes::ShapeRef.new(shape: StringList, location_name: "RelatedVulnerabilities"))
    Vulnerability.add_member(:vendor, Shapes::ShapeRef.new(shape: VulnerabilityVendor, location_name: "Vendor"))
    Vulnerability.add_member(:reference_urls, Shapes::ShapeRef.new(shape: StringList, location_name: "ReferenceUrls"))
    Vulnerability.add_member(:fix_available, Shapes::ShapeRef.new(shape: VulnerabilityFixAvailable, location_name: "FixAvailable"))
    Vulnerability.struct_class = Types::Vulnerability

    VulnerabilityList.member = Shapes::ShapeRef.new(shape: Vulnerability)

    VulnerabilityVendor.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    VulnerabilityVendor.add_member(:url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Url"))
    VulnerabilityVendor.add_member(:vendor_severity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VendorSeverity"))
    VulnerabilityVendor.add_member(:vendor_created_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VendorCreatedAt"))
    VulnerabilityVendor.add_member(:vendor_updated_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VendorUpdatedAt"))
    VulnerabilityVendor.struct_class = Types::VulnerabilityVendor

    WafAction.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    WafAction.struct_class = Types::WafAction

    WafExcludedRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RuleId"))
    WafExcludedRule.struct_class = Types::WafExcludedRule

    WafExcludedRuleList.member = Shapes::ShapeRef.new(shape: WafExcludedRule)

    WafOverrideAction.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    WafOverrideAction.struct_class = Types::WafOverrideAction

    Workflow.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "Status"))
    Workflow.struct_class = Types::Workflow

    WorkflowUpdate.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "Status"))
    WorkflowUpdate.struct_class = Types::WorkflowUpdate


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-26"

      api.metadata = {
        "apiVersion" => "2018-10-26",
        "endpointPrefix" => "securityhub",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS SecurityHub",
        "serviceId" => "SecurityHub",
        "signatureVersion" => "v4",
        "signingName" => "securityhub",
        "uid" => "securityhub-2018-10-26",
      }

      api.add_operation(:accept_administrator_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptAdministratorInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/administrator"
        o.input = Shapes::ShapeRef.new(shape: AcceptAdministratorInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptAdministratorInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
      end)

      api.add_operation(:accept_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/master"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
      end)

      api.add_operation(:batch_delete_automation_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteAutomationRules"
        o.http_method = "POST"
        o.http_request_uri = "/automationrules/delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteAutomationRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteAutomationRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_disable_standards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisableStandards"
        o.http_method = "POST"
        o.http_request_uri = "/standards/deregister"
        o.input = Shapes::ShapeRef.new(shape: BatchDisableStandardsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisableStandardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:batch_enable_standards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchEnableStandards"
        o.http_method = "POST"
        o.http_request_uri = "/standards/register"
        o.input = Shapes::ShapeRef.new(shape: BatchEnableStandardsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchEnableStandardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:batch_get_automation_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetAutomationRules"
        o.http_method = "POST"
        o.http_request_uri = "/automationrules/get"
        o.input = Shapes::ShapeRef.new(shape: BatchGetAutomationRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetAutomationRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_get_security_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetSecurityControls"
        o.http_method = "POST"
        o.http_request_uri = "/securityControls/batchGet"
        o.input = Shapes::ShapeRef.new(shape: BatchGetSecurityControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetSecurityControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:batch_get_standards_control_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetStandardsControlAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/associations/batchGet"
        o.input = Shapes::ShapeRef.new(shape: BatchGetStandardsControlAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetStandardsControlAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:batch_import_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchImportFindings"
        o.http_method = "POST"
        o.http_request_uri = "/findings/import"
        o.input = Shapes::ShapeRef.new(shape: BatchImportFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchImportFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
      end)

      api.add_operation(:batch_update_automation_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateAutomationRules"
        o.http_method = "PATCH"
        o.http_request_uri = "/automationrules/update"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateAutomationRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateAutomationRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_update_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateFindings"
        o.http_method = "PATCH"
        o.http_request_uri = "/findings/batchupdate"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
      end)

      api.add_operation(:batch_update_standards_control_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateStandardsControlAssociations"
        o.http_method = "PATCH"
        o.http_request_uri = "/associations"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateStandardsControlAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateStandardsControlAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:create_action_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateActionTarget"
        o.http_method = "POST"
        o.http_request_uri = "/actionTargets"
        o.input = Shapes::ShapeRef.new(shape: CreateActionTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateActionTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:create_automation_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutomationRule"
        o.http_method = "POST"
        o.http_request_uri = "/automationrules/create"
        o.input = Shapes::ShapeRef.new(shape: CreateAutomationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAutomationRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_finding_aggregator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFindingAggregator"
        o.http_method = "POST"
        o.http_request_uri = "/findingAggregator/create"
        o.input = Shapes::ShapeRef.new(shape: CreateFindingAggregatorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFindingAggregatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:create_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInsight"
        o.http_method = "POST"
        o.http_request_uri = "/insights"
        o.input = Shapes::ShapeRef.new(shape: CreateInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:create_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members"
        o.input = Shapes::ShapeRef.new(shape: CreateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:decline_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeclineInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/decline"
        o.input = Shapes::ShapeRef.new(shape: DeclineInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeclineInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_action_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteActionTarget"
        o.http_method = "DELETE"
        o.http_request_uri = "/actionTargets/{ActionTargetArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteActionTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteActionTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_finding_aggregator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFindingAggregator"
        o.http_method = "DELETE"
        o.http_request_uri = "/findingAggregator/delete/{FindingAggregatorArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFindingAggregatorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFindingAggregatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInsight"
        o.http_method = "DELETE"
        o.http_request_uri = "/insights/{InsightArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
      end)

      api.add_operation(:delete_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_action_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeActionTargets"
        o.http_method = "POST"
        o.http_request_uri = "/actionTargets/get"
        o.input = Shapes::ShapeRef.new(shape: DescribeActionTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeActionTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHub"
        o.http_method = "GET"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: DescribeHubRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/organization/configuration"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:describe_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProducts"
        o.http_method = "GET"
        o.http_request_uri = "/products"
        o.input = Shapes::ShapeRef.new(shape: DescribeProductsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProductsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_standards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStandards"
        o.http_method = "GET"
        o.http_request_uri = "/standards"
        o.input = Shapes::ShapeRef.new(shape: DescribeStandardsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStandardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_standards_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStandardsControls"
        o.http_method = "GET"
        o.http_request_uri = "/standards/controls/{StandardsSubscriptionArn+}"
        o.input = Shapes::ShapeRef.new(shape: DescribeStandardsControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStandardsControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disable_import_findings_for_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableImportFindingsForProduct"
        o.http_method = "DELETE"
        o.http_request_uri = "/productSubscriptions/{ProductSubscriptionArn+}"
        o.input = Shapes::ShapeRef.new(shape: DisableImportFindingsForProductRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableImportFindingsForProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:disable_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/organization/admin/disable"
        o.input = Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:disable_security_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableSecurityHub"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: DisableSecurityHubRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableSecurityHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_from_administrator_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromAdministratorAccount"
        o.http_method = "POST"
        o.http_request_uri = "/administrator/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_from_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromMasterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/master/disassociate"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:enable_import_findings_for_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableImportFindingsForProduct"
        o.http_method = "POST"
        o.http_request_uri = "/productSubscriptions"
        o.input = Shapes::ShapeRef.new(shape: EnableImportFindingsForProductRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableImportFindingsForProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:enable_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/organization/admin/enable"
        o.input = Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:enable_security_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableSecurityHub"
        o.http_method = "POST"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: EnableSecurityHubRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableSecurityHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_administrator_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdministratorAccount"
        o.http_method = "GET"
        o.http_request_uri = "/administrator"
        o.input = Shapes::ShapeRef.new(shape: GetAdministratorAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdministratorAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_enabled_standards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnabledStandards"
        o.http_method = "POST"
        o.http_request_uri = "/standards/get"
        o.input = Shapes::ShapeRef.new(shape: GetEnabledStandardsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnabledStandardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_finding_aggregator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingAggregator"
        o.http_method = "GET"
        o.http_request_uri = "/findingAggregator/get/{FindingAggregatorArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetFindingAggregatorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingAggregatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_finding_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingHistory"
        o.http_method = "POST"
        o.http_request_uri = "/findingHistory/get"
        o.input = Shapes::ShapeRef.new(shape: GetFindingHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindings"
        o.http_method = "POST"
        o.http_request_uri = "/findings"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_insight_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsightResults"
        o.http_method = "GET"
        o.http_request_uri = "/insights/results/{InsightArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetInsightResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInsightResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsights"
        o.http_method = "POST"
        o.http_request_uri = "/insights/get"
        o.input = Shapes::ShapeRef.new(shape: GetInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_invitations_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvitationsCount"
        o.http_method = "GET"
        o.http_request_uri = "/invitations/count"
        o.input = Shapes::ShapeRef.new(shape: GetInvitationsCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvitationsCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMasterAccount"
        o.http_method = "GET"
        o.http_request_uri = "/master"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/get"
        o.input = Shapes::ShapeRef.new(shape: GetMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:invite_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/invite"
        o.input = Shapes::ShapeRef.new(shape: InviteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: InviteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_automation_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomationRules"
        o.http_method = "GET"
        o.http_request_uri = "/automationrules/list"
        o.input = Shapes::ShapeRef.new(shape: ListAutomationRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomationRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:list_enabled_products_for_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnabledProductsForImport"
        o.http_method = "GET"
        o.http_request_uri = "/productSubscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListEnabledProductsForImportRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnabledProductsForImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_finding_aggregators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindingAggregators"
        o.http_method = "GET"
        o.http_request_uri = "/findingAggregator/list"
        o.input = Shapes::ShapeRef.new(shape: ListFindingAggregatorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingAggregatorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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
        o.http_request_uri = "/invitations"
        o.input = Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
        o.http_request_uri = "/members"
        o.input = Shapes::ShapeRef.new(shape: ListMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
        o.http_request_uri = "/organization/admin"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_control_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityControlDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/securityControls/definitions"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityControlDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityControlDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_standards_control_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStandardsControlAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/associations"
        o.input = Shapes::ShapeRef.new(shape: ListStandardsControlAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStandardsControlAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_action_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateActionTarget"
        o.http_method = "PATCH"
        o.http_request_uri = "/actionTargets/{ActionTargetArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateActionTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateActionTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_finding_aggregator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFindingAggregator"
        o.http_method = "PATCH"
        o.http_request_uri = "/findingAggregator/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingAggregatorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFindingAggregatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFindings"
        o.http_method = "PATCH"
        o.http_request_uri = "/findings"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInsight"
        o.http_method = "PATCH"
        o.http_request_uri = "/insights/{InsightArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/organization/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_security_hub_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecurityHubConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecurityHubConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecurityHubConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_standards_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStandardsControl"
        o.http_method = "PATCH"
        o.http_request_uri = "/standards/control/{StandardsControlArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStandardsControlRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStandardsControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
