# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityHub
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptInvitationRequest = Shapes::StructureShape.new(name: 'AcceptInvitationRequest')
    AcceptInvitationResponse = Shapes::StructureShape.new(name: 'AcceptInvitationResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountDetails = Shapes::StructureShape.new(name: 'AccountDetails')
    AccountDetailsList = Shapes::ListShape.new(name: 'AccountDetailsList')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    ActionTarget = Shapes::StructureShape.new(name: 'ActionTarget')
    ActionTargetList = Shapes::ListShape.new(name: 'ActionTargetList')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
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
    AwsAutoScalingAutoScalingGroupDetails = Shapes::StructureShape.new(name: 'AwsAutoScalingAutoScalingGroupDetails')
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
    AwsCloudFrontDistributionCacheBehavior = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionCacheBehavior')
    AwsCloudFrontDistributionCacheBehaviors = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionCacheBehaviors')
    AwsCloudFrontDistributionCacheBehaviorsItemList = Shapes::ListShape.new(name: 'AwsCloudFrontDistributionCacheBehaviorsItemList')
    AwsCloudFrontDistributionDefaultCacheBehavior = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionDefaultCacheBehavior')
    AwsCloudFrontDistributionDetails = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionDetails')
    AwsCloudFrontDistributionLogging = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionLogging')
    AwsCloudFrontDistributionOriginGroup = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginGroup')
    AwsCloudFrontDistributionOriginGroupFailover = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginGroupFailover')
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginGroupFailoverStatusCodes')
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList = Shapes::ListShape.new(name: 'AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList')
    AwsCloudFrontDistributionOriginGroups = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginGroups')
    AwsCloudFrontDistributionOriginGroupsItemList = Shapes::ListShape.new(name: 'AwsCloudFrontDistributionOriginGroupsItemList')
    AwsCloudFrontDistributionOriginItem = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginItem')
    AwsCloudFrontDistributionOriginItemList = Shapes::ListShape.new(name: 'AwsCloudFrontDistributionOriginItemList')
    AwsCloudFrontDistributionOriginS3OriginConfig = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOriginS3OriginConfig')
    AwsCloudFrontDistributionOrigins = Shapes::StructureShape.new(name: 'AwsCloudFrontDistributionOrigins')
    AwsCloudTrailTrailDetails = Shapes::StructureShape.new(name: 'AwsCloudTrailTrailDetails')
    AwsCodeBuildProjectDetails = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectDetails')
    AwsCodeBuildProjectEnvironment = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectEnvironment')
    AwsCodeBuildProjectEnvironmentRegistryCredential = Shapes::StructureShape.new(name: 'AwsCodeBuildProjectEnvironmentRegistryCredential')
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
    AwsEc2NetworkInterfaceAttachment = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceAttachment')
    AwsEc2NetworkInterfaceDetails = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceDetails')
    AwsEc2NetworkInterfaceSecurityGroup = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceSecurityGroup')
    AwsEc2NetworkInterfaceSecurityGroupList = Shapes::ListShape.new(name: 'AwsEc2NetworkInterfaceSecurityGroupList')
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
    AwsEc2VolumeAttachment = Shapes::StructureShape.new(name: 'AwsEc2VolumeAttachment')
    AwsEc2VolumeAttachmentList = Shapes::ListShape.new(name: 'AwsEc2VolumeAttachmentList')
    AwsEc2VolumeDetails = Shapes::StructureShape.new(name: 'AwsEc2VolumeDetails')
    AwsEc2VpcDetails = Shapes::StructureShape.new(name: 'AwsEc2VpcDetails')
    AwsElasticsearchDomainDetails = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainDetails')
    AwsElasticsearchDomainDomainEndpointOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainDomainEndpointOptions')
    AwsElasticsearchDomainEncryptionAtRestOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainEncryptionAtRestOptions')
    AwsElasticsearchDomainNodeToNodeEncryptionOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainNodeToNodeEncryptionOptions')
    AwsElasticsearchDomainVPCOptions = Shapes::StructureShape.new(name: 'AwsElasticsearchDomainVPCOptions')
    AwsElbAppCookieStickinessPolicies = Shapes::ListShape.new(name: 'AwsElbAppCookieStickinessPolicies')
    AwsElbAppCookieStickinessPolicy = Shapes::StructureShape.new(name: 'AwsElbAppCookieStickinessPolicy')
    AwsElbLbCookieStickinessPolicies = Shapes::ListShape.new(name: 'AwsElbLbCookieStickinessPolicies')
    AwsElbLbCookieStickinessPolicy = Shapes::StructureShape.new(name: 'AwsElbLbCookieStickinessPolicy')
    AwsElbLoadBalancerAccessLog = Shapes::StructureShape.new(name: 'AwsElbLoadBalancerAccessLog')
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
    AwsElbv2LoadBalancerDetails = Shapes::StructureShape.new(name: 'AwsElbv2LoadBalancerDetails')
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
    AwsRdsDbSnapshotDetails = Shapes::StructureShape.new(name: 'AwsRdsDbSnapshotDetails')
    AwsRdsDbStatusInfo = Shapes::StructureShape.new(name: 'AwsRdsDbStatusInfo')
    AwsRdsDbStatusInfos = Shapes::ListShape.new(name: 'AwsRdsDbStatusInfos')
    AwsRdsDbSubnetGroup = Shapes::StructureShape.new(name: 'AwsRdsDbSubnetGroup')
    AwsRdsDbSubnetGroupSubnet = Shapes::StructureShape.new(name: 'AwsRdsDbSubnetGroupSubnet')
    AwsRdsDbSubnetGroupSubnetAvailabilityZone = Shapes::StructureShape.new(name: 'AwsRdsDbSubnetGroupSubnetAvailabilityZone')
    AwsRdsDbSubnetGroupSubnets = Shapes::ListShape.new(name: 'AwsRdsDbSubnetGroupSubnets')
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
    AwsRedshiftClusterPendingModifiedValues = Shapes::StructureShape.new(name: 'AwsRedshiftClusterPendingModifiedValues')
    AwsRedshiftClusterResizeInfo = Shapes::StructureShape.new(name: 'AwsRedshiftClusterResizeInfo')
    AwsRedshiftClusterRestoreStatus = Shapes::StructureShape.new(name: 'AwsRedshiftClusterRestoreStatus')
    AwsRedshiftClusterVpcSecurityGroup = Shapes::StructureShape.new(name: 'AwsRedshiftClusterVpcSecurityGroup')
    AwsRedshiftClusterVpcSecurityGroups = Shapes::ListShape.new(name: 'AwsRedshiftClusterVpcSecurityGroups')
    AwsS3BucketDetails = Shapes::StructureShape.new(name: 'AwsS3BucketDetails')
    AwsS3BucketServerSideEncryptionByDefault = Shapes::StructureShape.new(name: 'AwsS3BucketServerSideEncryptionByDefault')
    AwsS3BucketServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'AwsS3BucketServerSideEncryptionConfiguration')
    AwsS3BucketServerSideEncryptionRule = Shapes::StructureShape.new(name: 'AwsS3BucketServerSideEncryptionRule')
    AwsS3BucketServerSideEncryptionRules = Shapes::ListShape.new(name: 'AwsS3BucketServerSideEncryptionRules')
    AwsS3ObjectDetails = Shapes::StructureShape.new(name: 'AwsS3ObjectDetails')
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
    AwsWafWebAclDetails = Shapes::StructureShape.new(name: 'AwsWafWebAclDetails')
    AwsWafWebAclRule = Shapes::StructureShape.new(name: 'AwsWafWebAclRule')
    AwsWafWebAclRuleList = Shapes::ListShape.new(name: 'AwsWafWebAclRuleList')
    BatchDisableStandardsRequest = Shapes::StructureShape.new(name: 'BatchDisableStandardsRequest')
    BatchDisableStandardsResponse = Shapes::StructureShape.new(name: 'BatchDisableStandardsResponse')
    BatchEnableStandardsRequest = Shapes::StructureShape.new(name: 'BatchEnableStandardsRequest')
    BatchEnableStandardsResponse = Shapes::StructureShape.new(name: 'BatchEnableStandardsResponse')
    BatchImportFindingsRequest = Shapes::StructureShape.new(name: 'BatchImportFindingsRequest')
    BatchImportFindingsResponse = Shapes::StructureShape.new(name: 'BatchImportFindingsResponse')
    BatchUpdateFindingsRequest = Shapes::StructureShape.new(name: 'BatchUpdateFindingsRequest')
    BatchUpdateFindingsResponse = Shapes::StructureShape.new(name: 'BatchUpdateFindingsResponse')
    BatchUpdateFindingsUnprocessedFinding = Shapes::StructureShape.new(name: 'BatchUpdateFindingsUnprocessedFinding')
    BatchUpdateFindingsUnprocessedFindingsList = Shapes::ListShape.new(name: 'BatchUpdateFindingsUnprocessedFindingsList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    CidrBlockAssociation = Shapes::StructureShape.new(name: 'CidrBlockAssociation')
    CidrBlockAssociationList = Shapes::ListShape.new(name: 'CidrBlockAssociationList')
    Compliance = Shapes::StructureShape.new(name: 'Compliance')
    ComplianceStatus = Shapes::StringShape.new(name: 'ComplianceStatus')
    ContainerDetails = Shapes::StructureShape.new(name: 'ContainerDetails')
    ControlStatus = Shapes::StringShape.new(name: 'ControlStatus')
    CreateActionTargetRequest = Shapes::StructureShape.new(name: 'CreateActionTargetRequest')
    CreateActionTargetResponse = Shapes::StructureShape.new(name: 'CreateActionTargetResponse')
    CreateInsightRequest = Shapes::StructureShape.new(name: 'CreateInsightRequest')
    CreateInsightResponse = Shapes::StructureShape.new(name: 'CreateInsightResponse')
    CreateMembersRequest = Shapes::StructureShape.new(name: 'CreateMembersRequest')
    CreateMembersResponse = Shapes::StructureShape.new(name: 'CreateMembersResponse')
    Cvss = Shapes::StructureShape.new(name: 'Cvss')
    CvssList = Shapes::ListShape.new(name: 'CvssList')
    DateFilter = Shapes::StructureShape.new(name: 'DateFilter')
    DateFilterList = Shapes::ListShape.new(name: 'DateFilterList')
    DateRange = Shapes::StructureShape.new(name: 'DateRange')
    DateRangeUnit = Shapes::StringShape.new(name: 'DateRangeUnit')
    DeclineInvitationsRequest = Shapes::StructureShape.new(name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = Shapes::StructureShape.new(name: 'DeclineInvitationsResponse')
    DeleteActionTargetRequest = Shapes::StructureShape.new(name: 'DeleteActionTargetRequest')
    DeleteActionTargetResponse = Shapes::StructureShape.new(name: 'DeleteActionTargetResponse')
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
    DescribeProductsRequest = Shapes::StructureShape.new(name: 'DescribeProductsRequest')
    DescribeProductsResponse = Shapes::StructureShape.new(name: 'DescribeProductsResponse')
    DescribeStandardsControlsRequest = Shapes::StructureShape.new(name: 'DescribeStandardsControlsRequest')
    DescribeStandardsControlsResponse = Shapes::StructureShape.new(name: 'DescribeStandardsControlsResponse')
    DescribeStandardsRequest = Shapes::StructureShape.new(name: 'DescribeStandardsRequest')
    DescribeStandardsResponse = Shapes::StructureShape.new(name: 'DescribeStandardsResponse')
    DisableImportFindingsForProductRequest = Shapes::StructureShape.new(name: 'DisableImportFindingsForProductRequest')
    DisableImportFindingsForProductResponse = Shapes::StructureShape.new(name: 'DisableImportFindingsForProductResponse')
    DisableSecurityHubRequest = Shapes::StructureShape.new(name: 'DisableSecurityHubRequest')
    DisableSecurityHubResponse = Shapes::StructureShape.new(name: 'DisableSecurityHubResponse')
    DisassociateFromMasterAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountRequest')
    DisassociateFromMasterAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountResponse')
    DisassociateMembersRequest = Shapes::StructureShape.new(name: 'DisassociateMembersRequest')
    DisassociateMembersResponse = Shapes::StructureShape.new(name: 'DisassociateMembersResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    EnableImportFindingsForProductRequest = Shapes::StructureShape.new(name: 'EnableImportFindingsForProductRequest')
    EnableImportFindingsForProductResponse = Shapes::StructureShape.new(name: 'EnableImportFindingsForProductResponse')
    EnableSecurityHubRequest = Shapes::StructureShape.new(name: 'EnableSecurityHubRequest')
    EnableSecurityHubResponse = Shapes::StructureShape.new(name: 'EnableSecurityHubResponse')
    FieldMap = Shapes::MapShape.new(name: 'FieldMap')
    GetEnabledStandardsRequest = Shapes::StructureShape.new(name: 'GetEnabledStandardsRequest')
    GetEnabledStandardsResponse = Shapes::StructureShape.new(name: 'GetEnabledStandardsResponse')
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
    ImportFindingsError = Shapes::StructureShape.new(name: 'ImportFindingsError')
    ImportFindingsErrorList = Shapes::ListShape.new(name: 'ImportFindingsErrorList')
    Insight = Shapes::StructureShape.new(name: 'Insight')
    InsightList = Shapes::ListShape.new(name: 'InsightList')
    InsightResultValue = Shapes::StructureShape.new(name: 'InsightResultValue')
    InsightResultValueList = Shapes::ListShape.new(name: 'InsightResultValueList')
    InsightResults = Shapes::StructureShape.new(name: 'InsightResults')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
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
    Ipv6CidrBlockAssociation = Shapes::StructureShape.new(name: 'Ipv6CidrBlockAssociation')
    Ipv6CidrBlockAssociationList = Shapes::ListShape.new(name: 'Ipv6CidrBlockAssociationList')
    KeywordFilter = Shapes::StructureShape.new(name: 'KeywordFilter')
    KeywordFilterList = Shapes::ListShape.new(name: 'KeywordFilterList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListEnabledProductsForImportRequest = Shapes::StructureShape.new(name: 'ListEnabledProductsForImportRequest')
    ListEnabledProductsForImportResponse = Shapes::StructureShape.new(name: 'ListEnabledProductsForImportResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
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
    Partition = Shapes::StringShape.new(name: 'Partition')
    PatchSummary = Shapes::StructureShape.new(name: 'PatchSummary')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    PortRangeList = Shapes::ListShape.new(name: 'PortRangeList')
    ProcessDetails = Shapes::StructureShape.new(name: 'ProcessDetails')
    Product = Shapes::StructureShape.new(name: 'Product')
    ProductSubscriptionArnList = Shapes::ListShape.new(name: 'ProductSubscriptionArnList')
    ProductsList = Shapes::ListShape.new(name: 'ProductsList')
    RatioScale = Shapes::IntegerShape.new(name: 'RatioScale')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecordState = Shapes::StringShape.new(name: 'RecordState')
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
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
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
    StandardsControls = Shapes::ListShape.new(name: 'StandardsControls')
    StandardsInputParameterMap = Shapes::MapShape.new(name: 'StandardsInputParameterMap')
    StandardsStatus = Shapes::StringShape.new(name: 'StandardsStatus')
    StandardsSubscription = Shapes::StructureShape.new(name: 'StandardsSubscription')
    StandardsSubscriptionArns = Shapes::ListShape.new(name: 'StandardsSubscriptionArns')
    StandardsSubscriptionRequest = Shapes::StructureShape.new(name: 'StandardsSubscriptionRequest')
    StandardsSubscriptionRequests = Shapes::ListShape.new(name: 'StandardsSubscriptionRequests')
    StandardsSubscriptions = Shapes::ListShape.new(name: 'StandardsSubscriptions')
    StatusReason = Shapes::StructureShape.new(name: 'StatusReason')
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
    ThreatIntelIndicator = Shapes::StructureShape.new(name: 'ThreatIntelIndicator')
    ThreatIntelIndicatorCategory = Shapes::StringShape.new(name: 'ThreatIntelIndicatorCategory')
    ThreatIntelIndicatorList = Shapes::ListShape.new(name: 'ThreatIntelIndicatorList')
    ThreatIntelIndicatorType = Shapes::StringShape.new(name: 'ThreatIntelIndicatorType')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TypeList = Shapes::ListShape.new(name: 'TypeList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateActionTargetRequest = Shapes::StructureShape.new(name: 'UpdateActionTargetRequest')
    UpdateActionTargetResponse = Shapes::StructureShape.new(name: 'UpdateActionTargetResponse')
    UpdateFindingsRequest = Shapes::StructureShape.new(name: 'UpdateFindingsRequest')
    UpdateFindingsResponse = Shapes::StructureShape.new(name: 'UpdateFindingsResponse')
    UpdateInsightRequest = Shapes::StructureShape.new(name: 'UpdateInsightRequest')
    UpdateInsightResponse = Shapes::StructureShape.new(name: 'UpdateInsightResponse')
    UpdateSecurityHubConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateSecurityHubConfigurationRequest')
    UpdateSecurityHubConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateSecurityHubConfigurationResponse')
    UpdateStandardsControlRequest = Shapes::StructureShape.new(name: 'UpdateStandardsControlRequest')
    UpdateStandardsControlResponse = Shapes::StructureShape.new(name: 'UpdateStandardsControlResponse')
    VerificationState = Shapes::StringShape.new(name: 'VerificationState')
    Vulnerability = Shapes::StructureShape.new(name: 'Vulnerability')
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

    AcceptInvitationRequest.add_member(:master_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "MasterId"))
    AcceptInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InvitationId"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    AcceptInvitationResponse.struct_class = Types::AcceptInvitationResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountDetails.add_member(:email, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Email"))
    AccountDetails.struct_class = Types::AccountDetails

    AccountDetailsList.member = Shapes::ShapeRef.new(shape: AccountDetails)

    AccountIdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ActionTarget.add_member(:action_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ActionTargetArn"))
    ActionTarget.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    ActionTarget.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Description"))
    ActionTarget.struct_class = Types::ActionTarget

    ActionTargetList.member = Shapes::ShapeRef.new(shape: ActionTarget)

    ArnList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    AvailabilityZone.add_member(:zone_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ZoneName"))
    AvailabilityZone.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

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

    AwsAutoScalingAutoScalingGroupDetails.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchConfigurationName"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: StringList, location_name: "LoadBalancerNames"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:health_check_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "HealthCheckType"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:health_check_grace_period, Shapes::ShapeRef.new(shape: Integer, location_name: "HealthCheckGracePeriod"))
    AwsAutoScalingAutoScalingGroupDetails.add_member(:created_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedTime"))
    AwsAutoScalingAutoScalingGroupDetails.struct_class = Types::AwsAutoScalingAutoScalingGroupDetails

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
    AwsCloudFrontDistributionDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsCloudFrontDistributionDetails.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "WebAclId"))
    AwsCloudFrontDistributionDetails.struct_class = Types::AwsCloudFrontDistributionDetails

    AwsCloudFrontDistributionLogging.add_member(:bucket, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Bucket"))
    AwsCloudFrontDistributionLogging.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsCloudFrontDistributionLogging.add_member(:include_cookies, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeCookies"))
    AwsCloudFrontDistributionLogging.add_member(:prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Prefix"))
    AwsCloudFrontDistributionLogging.struct_class = Types::AwsCloudFrontDistributionLogging

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
    AwsCloudFrontDistributionOriginItem.struct_class = Types::AwsCloudFrontDistributionOriginItem

    AwsCloudFrontDistributionOriginItemList.member = Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginItem)

    AwsCloudFrontDistributionOriginS3OriginConfig.add_member(:origin_access_identity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OriginAccessIdentity"))
    AwsCloudFrontDistributionOriginS3OriginConfig.struct_class = Types::AwsCloudFrontDistributionOriginS3OriginConfig

    AwsCloudFrontDistributionOrigins.add_member(:items, Shapes::ShapeRef.new(shape: AwsCloudFrontDistributionOriginItemList, location_name: "Items"))
    AwsCloudFrontDistributionOrigins.struct_class = Types::AwsCloudFrontDistributionOrigins

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

    AwsCodeBuildProjectDetails.add_member(:encryption_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EncryptionKey"))
    AwsCodeBuildProjectDetails.add_member(:environment, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectEnvironment, location_name: "Environment"))
    AwsCodeBuildProjectDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    AwsCodeBuildProjectDetails.add_member(:source, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectSource, location_name: "Source"))
    AwsCodeBuildProjectDetails.add_member(:service_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServiceRole"))
    AwsCodeBuildProjectDetails.add_member(:vpc_config, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectVpcConfig, location_name: "VpcConfig"))
    AwsCodeBuildProjectDetails.struct_class = Types::AwsCodeBuildProjectDetails

    AwsCodeBuildProjectEnvironment.add_member(:certificate, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Certificate"))
    AwsCodeBuildProjectEnvironment.add_member(:image_pull_credentials_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImagePullCredentialsType"))
    AwsCodeBuildProjectEnvironment.add_member(:registry_credential, Shapes::ShapeRef.new(shape: AwsCodeBuildProjectEnvironmentRegistryCredential, location_name: "RegistryCredential"))
    AwsCodeBuildProjectEnvironment.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsCodeBuildProjectEnvironment.struct_class = Types::AwsCodeBuildProjectEnvironment

    AwsCodeBuildProjectEnvironmentRegistryCredential.add_member(:credential, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Credential"))
    AwsCodeBuildProjectEnvironmentRegistryCredential.add_member(:credential_provider, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CredentialProvider"))
    AwsCodeBuildProjectEnvironmentRegistryCredential.struct_class = Types::AwsCodeBuildProjectEnvironmentRegistryCredential

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
    AwsEc2InstanceDetails.struct_class = Types::AwsEc2InstanceDetails

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
    AwsEc2NetworkInterfaceDetails.struct_class = Types::AwsEc2NetworkInterfaceDetails

    AwsEc2NetworkInterfaceSecurityGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    AwsEc2NetworkInterfaceSecurityGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupId"))
    AwsEc2NetworkInterfaceSecurityGroup.struct_class = Types::AwsEc2NetworkInterfaceSecurityGroup

    AwsEc2NetworkInterfaceSecurityGroupList.member = Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceSecurityGroup)

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

    AwsEc2VolumeAttachment.add_member(:attach_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AttachTime"))
    AwsEc2VolumeAttachment.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteOnTermination"))
    AwsEc2VolumeAttachment.add_member(:instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceId"))
    AwsEc2VolumeAttachment.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsEc2VolumeAttachment.struct_class = Types::AwsEc2VolumeAttachment

    AwsEc2VolumeAttachmentList.member = Shapes::ShapeRef.new(shape: AwsEc2VolumeAttachment)

    AwsEc2VolumeDetails.add_member(:create_time, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreateTime"))
    AwsEc2VolumeDetails.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    AwsEc2VolumeDetails.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "Size"))
    AwsEc2VolumeDetails.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SnapshotId"))
    AwsEc2VolumeDetails.add_member(:status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Status"))
    AwsEc2VolumeDetails.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsEc2VolumeDetails.add_member(:attachments, Shapes::ShapeRef.new(shape: AwsEc2VolumeAttachmentList, location_name: "Attachments"))
    AwsEc2VolumeDetails.struct_class = Types::AwsEc2VolumeDetails

    AwsEc2VpcDetails.add_member(:cidr_block_association_set, Shapes::ShapeRef.new(shape: CidrBlockAssociationList, location_name: "CidrBlockAssociationSet"))
    AwsEc2VpcDetails.add_member(:ipv_6_cidr_block_association_set, Shapes::ShapeRef.new(shape: Ipv6CidrBlockAssociationList, location_name: "Ipv6CidrBlockAssociationSet"))
    AwsEc2VpcDetails.add_member(:dhcp_options_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DhcpOptionsId"))
    AwsEc2VpcDetails.add_member(:state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "State"))
    AwsEc2VpcDetails.struct_class = Types::AwsEc2VpcDetails

    AwsElasticsearchDomainDetails.add_member(:access_policies, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessPolicies"))
    AwsElasticsearchDomainDetails.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainDomainEndpointOptions, location_name: "DomainEndpointOptions"))
    AwsElasticsearchDomainDetails.add_member(:domain_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainId"))
    AwsElasticsearchDomainDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DomainName"))
    AwsElasticsearchDomainDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Endpoint"))
    AwsElasticsearchDomainDetails.add_member(:endpoints, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Endpoints"))
    AwsElasticsearchDomainDetails.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ElasticsearchVersion"))
    AwsElasticsearchDomainDetails.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainEncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    AwsElasticsearchDomainDetails.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainNodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    AwsElasticsearchDomainDetails.add_member(:vpc_options, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainVPCOptions, location_name: "VPCOptions"))
    AwsElasticsearchDomainDetails.struct_class = Types::AwsElasticsearchDomainDetails

    AwsElasticsearchDomainDomainEndpointOptions.add_member(:enforce_https, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnforceHTTPS"))
    AwsElasticsearchDomainDomainEndpointOptions.add_member(:tls_security_policy, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TLSSecurityPolicy"))
    AwsElasticsearchDomainDomainEndpointOptions.struct_class = Types::AwsElasticsearchDomainDomainEndpointOptions

    AwsElasticsearchDomainEncryptionAtRestOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsElasticsearchDomainEncryptionAtRestOptions.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KmsKeyId"))
    AwsElasticsearchDomainEncryptionAtRestOptions.struct_class = Types::AwsElasticsearchDomainEncryptionAtRestOptions

    AwsElasticsearchDomainNodeToNodeEncryptionOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AwsElasticsearchDomainNodeToNodeEncryptionOptions.struct_class = Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions

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

    AwsElbLoadBalancerAttributes.add_member(:access_log, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerAccessLog, location_name: "AccessLog"))
    AwsElbLoadBalancerAttributes.add_member(:connection_draining, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerConnectionDraining, location_name: "ConnectionDraining"))
    AwsElbLoadBalancerAttributes.add_member(:connection_settings, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerConnectionSettings, location_name: "ConnectionSettings"))
    AwsElbLoadBalancerAttributes.add_member(:cross_zone_load_balancing, Shapes::ShapeRef.new(shape: AwsElbLoadBalancerCrossZoneLoadBalancing, location_name: "CrossZoneLoadBalancing"))
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
    AwsElbv2LoadBalancerDetails.struct_class = Types::AwsElbv2LoadBalancerDetails

    AwsIamAccessKeyDetails.add_member(:user_name, Shapes::ShapeRef.new(shape: NonEmptyString, deprecated: true, location_name: "UserName", metadata: {"deprecatedMessage"=>"This field is deprecated, use PrincipalName instead."}))
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

    AwsKmsKeyDetails.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AWSAccountId"))
    AwsKmsKeyDetails.add_member(:creation_date, Shapes::ShapeRef.new(shape: Double, location_name: "CreationDate"))
    AwsKmsKeyDetails.add_member(:key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyId"))
    AwsKmsKeyDetails.add_member(:key_manager, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyManager"))
    AwsKmsKeyDetails.add_member(:key_state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyState"))
    AwsKmsKeyDetails.add_member(:origin, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Origin"))
    AwsKmsKeyDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
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

    AwsS3BucketDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsS3BucketDetails.add_member(:owner_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerName"))
    AwsS3BucketDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedAt"))
    AwsS3BucketDetails.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: AwsS3BucketServerSideEncryptionConfiguration, location_name: "ServerSideEncryptionConfiguration"))
    AwsS3BucketDetails.struct_class = Types::AwsS3BucketDetails

    AwsS3BucketServerSideEncryptionByDefault.add_member(:sse_algorithm, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SSEAlgorithm"))
    AwsS3BucketServerSideEncryptionByDefault.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KMSMasterKeyID"))
    AwsS3BucketServerSideEncryptionByDefault.struct_class = Types::AwsS3BucketServerSideEncryptionByDefault

    AwsS3BucketServerSideEncryptionConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: AwsS3BucketServerSideEncryptionRules, location_name: "Rules"))
    AwsS3BucketServerSideEncryptionConfiguration.struct_class = Types::AwsS3BucketServerSideEncryptionConfiguration

    AwsS3BucketServerSideEncryptionRule.add_member(:apply_server_side_encryption_by_default, Shapes::ShapeRef.new(shape: AwsS3BucketServerSideEncryptionByDefault, location_name: "ApplyServerSideEncryptionByDefault"))
    AwsS3BucketServerSideEncryptionRule.struct_class = Types::AwsS3BucketServerSideEncryptionRule

    AwsS3BucketServerSideEncryptionRules.member = Shapes::ShapeRef.new(shape: AwsS3BucketServerSideEncryptionRule)

    AwsS3ObjectDetails.add_member(:last_modified, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastModified"))
    AwsS3ObjectDetails.add_member(:etag, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ETag"))
    AwsS3ObjectDetails.add_member(:version_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VersionId"))
    AwsS3ObjectDetails.add_member(:content_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ContentType"))
    AwsS3ObjectDetails.add_member(:server_side_encryption, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ServerSideEncryption"))
    AwsS3ObjectDetails.add_member(:ssekms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SSEKMSKeyId"))
    AwsS3ObjectDetails.struct_class = Types::AwsS3ObjectDetails

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
    AwsSecurityFinding.add_member(:generator_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GeneratorId"))
    AwsSecurityFinding.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "AwsAccountId"))
    AwsSecurityFinding.add_member(:types, Shapes::ShapeRef.new(shape: TypeList, required: true, location_name: "Types"))
    AwsSecurityFinding.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirstObservedAt"))
    AwsSecurityFinding.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastObservedAt"))
    AwsSecurityFinding.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "CreatedAt"))
    AwsSecurityFinding.add_member(:updated_at, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedAt"))
    AwsSecurityFinding.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, required: true, location_name: "Severity"))
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
    AwsSecurityFinding.struct_class = Types::AwsSecurityFinding

    AwsSecurityFindingFilters.add_member(:product_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProductArn"))
    AwsSecurityFindingFilters.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "AwsAccountId"))
    AwsSecurityFindingFilters.add_member(:id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Id"))
    AwsSecurityFindingFilters.add_member(:generator_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "GeneratorId"))
    AwsSecurityFindingFilters.add_member(:type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Type"))
    AwsSecurityFindingFilters.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "FirstObservedAt"))
    AwsSecurityFindingFilters.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "LastObservedAt"))
    AwsSecurityFindingFilters.add_member(:created_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "CreatedAt"))
    AwsSecurityFindingFilters.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "UpdatedAt"))
    AwsSecurityFindingFilters.add_member(:severity_product, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "SeverityProduct"))
    AwsSecurityFindingFilters.add_member(:severity_normalized, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "SeverityNormalized"))
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
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_user_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsIamAccessKeyUserName"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsIamAccessKeyStatus"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_created_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ResourceAwsIamAccessKeyCreatedAt"))
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
    AwsSecurityFindingFilters.add_member(:keyword, Shapes::ShapeRef.new(shape: KeywordFilterList, location_name: "Keyword"))
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

    BatchDisableStandardsRequest.add_member(:standards_subscription_arns, Shapes::ShapeRef.new(shape: StandardsSubscriptionArns, required: true, location_name: "StandardsSubscriptionArns"))
    BatchDisableStandardsRequest.struct_class = Types::BatchDisableStandardsRequest

    BatchDisableStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    BatchDisableStandardsResponse.struct_class = Types::BatchDisableStandardsResponse

    BatchEnableStandardsRequest.add_member(:standards_subscription_requests, Shapes::ShapeRef.new(shape: StandardsSubscriptionRequests, required: true, location_name: "StandardsSubscriptionRequests"))
    BatchEnableStandardsRequest.struct_class = Types::BatchEnableStandardsRequest

    BatchEnableStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    BatchEnableStandardsResponse.struct_class = Types::BatchEnableStandardsResponse

    BatchImportFindingsRequest.add_member(:findings, Shapes::ShapeRef.new(shape: AwsSecurityFindingList, required: true, location_name: "Findings"))
    BatchImportFindingsRequest.struct_class = Types::BatchImportFindingsRequest

    BatchImportFindingsResponse.add_member(:failed_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "FailedCount"))
    BatchImportFindingsResponse.add_member(:success_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SuccessCount"))
    BatchImportFindingsResponse.add_member(:failed_findings, Shapes::ShapeRef.new(shape: ImportFindingsErrorList, location_name: "FailedFindings"))
    BatchImportFindingsResponse.struct_class = Types::BatchImportFindingsResponse

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

    CategoryList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    CidrBlockAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociationId"))
    CidrBlockAssociation.add_member(:cidr_block, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlock"))
    CidrBlockAssociation.add_member(:cidr_block_state, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CidrBlockState"))
    CidrBlockAssociation.struct_class = Types::CidrBlockAssociation

    CidrBlockAssociationList.member = Shapes::ShapeRef.new(shape: CidrBlockAssociation)

    Compliance.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "Status"))
    Compliance.add_member(:related_requirements, Shapes::ShapeRef.new(shape: RelatedRequirementsList, location_name: "RelatedRequirements"))
    Compliance.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasonsList, location_name: "StatusReasons"))
    Compliance.struct_class = Types::Compliance

    ContainerDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    ContainerDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageId"))
    ContainerDetails.add_member(:image_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageName"))
    ContainerDetails.add_member(:launched_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchedAt"))
    ContainerDetails.struct_class = Types::ContainerDetails

    CreateActionTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    CreateActionTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Description"))
    CreateActionTargetRequest.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    CreateActionTargetRequest.struct_class = Types::CreateActionTargetRequest

    CreateActionTargetResponse.add_member(:action_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ActionTargetArn"))
    CreateActionTargetResponse.struct_class = Types::CreateActionTargetResponse

    CreateInsightRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    CreateInsightRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, required: true, location_name: "Filters"))
    CreateInsightRequest.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttribute"))
    CreateInsightRequest.struct_class = Types::CreateInsightRequest

    CreateInsightResponse.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    CreateInsightResponse.struct_class = Types::CreateInsightResponse

    CreateMembersRequest.add_member(:account_details, Shapes::ShapeRef.new(shape: AccountDetailsList, location_name: "AccountDetails"))
    CreateMembersRequest.struct_class = Types::CreateMembersRequest

    CreateMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    CreateMembersResponse.struct_class = Types::CreateMembersResponse

    Cvss.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Version"))
    Cvss.add_member(:base_score, Shapes::ShapeRef.new(shape: Double, location_name: "BaseScore"))
    Cvss.add_member(:base_vector, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "BaseVector"))
    Cvss.struct_class = Types::Cvss

    CvssList.member = Shapes::ShapeRef.new(shape: Cvss)

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

    DeleteInsightRequest.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "InsightArn"))
    DeleteInsightRequest.struct_class = Types::DeleteInsightRequest

    DeleteInsightResponse.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    DeleteInsightResponse.struct_class = Types::DeleteInsightResponse

    DeleteInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    DeleteInvitationsRequest.struct_class = Types::DeleteInvitationsRequest

    DeleteInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    DeleteInvitationsResponse.struct_class = Types::DeleteInvitationsResponse

    DeleteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
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
    DescribeHubResponse.struct_class = Types::DescribeHubResponse

    DescribeProductsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    DescribeProductsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
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

    DisableSecurityHubRequest.struct_class = Types::DisableSecurityHubRequest

    DisableSecurityHubResponse.struct_class = Types::DisableSecurityHubResponse

    DisassociateFromMasterAccountRequest.struct_class = Types::DisassociateFromMasterAccountRequest

    DisassociateFromMasterAccountResponse.struct_class = Types::DisassociateFromMasterAccountResponse

    DisassociateMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DisassociateMembersRequest.struct_class = Types::DisassociateMembersRequest

    DisassociateMembersResponse.struct_class = Types::DisassociateMembersResponse

    EnableImportFindingsForProductRequest.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    EnableImportFindingsForProductRequest.struct_class = Types::EnableImportFindingsForProductRequest

    EnableImportFindingsForProductResponse.add_member(:product_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProductSubscriptionArn"))
    EnableImportFindingsForProductResponse.struct_class = Types::EnableImportFindingsForProductResponse

    EnableSecurityHubRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EnableSecurityHubRequest.add_member(:enable_default_standards, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableDefaultStandards"))
    EnableSecurityHubRequest.struct_class = Types::EnableSecurityHubRequest

    EnableSecurityHubResponse.struct_class = Types::EnableSecurityHubResponse

    FieldMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    FieldMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    GetEnabledStandardsRequest.add_member(:standards_subscription_arns, Shapes::ShapeRef.new(shape: StandardsSubscriptionArns, location_name: "StandardsSubscriptionArns"))
    GetEnabledStandardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEnabledStandardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetEnabledStandardsRequest.struct_class = Types::GetEnabledStandardsRequest

    GetEnabledStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    GetEnabledStandardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEnabledStandardsResponse.struct_class = Types::GetEnabledStandardsResponse

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

    InviteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    InviteMembersRequest.struct_class = Types::InviteMembersRequest

    InviteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    InviteMembersResponse.struct_class = Types::InviteMembersResponse

    IpFilter.add_member(:cidr, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Cidr"))
    IpFilter.struct_class = Types::IpFilter

    IpFilterList.member = Shapes::ShapeRef.new(shape: IpFilter)

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

    ListEnabledProductsForImportRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListEnabledProductsForImportRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListEnabledProductsForImportRequest.struct_class = Types::ListEnabledProductsForImportRequest

    ListEnabledProductsForImportResponse.add_member(:product_subscriptions, Shapes::ShapeRef.new(shape: ProductSubscriptionArnList, location_name: "ProductSubscriptions"))
    ListEnabledProductsForImportResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEnabledProductsForImportResponse.struct_class = Types::ListEnabledProductsForImportResponse

    ListInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListInvitationsRequest.struct_class = Types::ListInvitationsRequest

    ListInvitationsResponse.add_member(:invitations, Shapes::ShapeRef.new(shape: InvitationList, location_name: "Invitations"))
    ListInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListInvitationsResponse.struct_class = Types::ListInvitationsResponse

    ListMembersRequest.add_member(:only_associated, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "OnlyAssociated"))
    ListMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListMembersRequest.struct_class = Types::ListMembersRequest

    ListMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, location_name: "Members"))
    ListMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListMembersResponse.struct_class = Types::ListMembersResponse

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
    Member.add_member(:master_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterId"))
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

    PortRange.add_member(:begin, Shapes::ShapeRef.new(shape: Integer, location_name: "Begin"))
    PortRange.add_member(:end, Shapes::ShapeRef.new(shape: Integer, location_name: "End"))
    PortRange.struct_class = Types::PortRange

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

    Recommendation.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    Recommendation.add_member(:url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Url"))
    Recommendation.struct_class = Types::Recommendation

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
    ResourceDetails.add_member(:aws_elbv_2_load_balancer, Shapes::ShapeRef.new(shape: AwsElbv2LoadBalancerDetails, location_name: "AwsElbv2LoadBalancer"))
    ResourceDetails.add_member(:aws_elasticsearch_domain, Shapes::ShapeRef.new(shape: AwsElasticsearchDomainDetails, location_name: "AwsElasticsearchDomain"))
    ResourceDetails.add_member(:aws_s3_bucket, Shapes::ShapeRef.new(shape: AwsS3BucketDetails, location_name: "AwsS3Bucket"))
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
    ResourceDetails.add_member(:container, Shapes::ShapeRef.new(shape: ContainerDetails, location_name: "Container"))
    ResourceDetails.add_member(:other, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Other"))
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Result.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Result.add_member(:processing_result, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProcessingResult"))
    Result.struct_class = Types::Result

    ResultList.member = Shapes::ShapeRef.new(shape: Result)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: NonEmptyString)

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

    StandardsControls.member = Shapes::ShapeRef.new(shape: StandardsControl)

    StandardsInputParameterMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    StandardsInputParameterMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    StandardsSubscription.add_member(:standards_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsSubscriptionArn"))
    StandardsSubscription.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsSubscription.add_member(:standards_input, Shapes::ShapeRef.new(shape: StandardsInputParameterMap, required: true, location_name: "StandardsInput"))
    StandardsSubscription.add_member(:standards_status, Shapes::ShapeRef.new(shape: StandardsStatus, required: true, location_name: "StandardsStatus"))
    StandardsSubscription.struct_class = Types::StandardsSubscription

    StandardsSubscriptionArns.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    StandardsSubscriptionRequest.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsSubscriptionRequest.add_member(:standards_input, Shapes::ShapeRef.new(shape: StandardsInputParameterMap, location_name: "StandardsInput"))
    StandardsSubscriptionRequest.struct_class = Types::StandardsSubscriptionRequest

    StandardsSubscriptionRequests.member = Shapes::ShapeRef.new(shape: StandardsSubscriptionRequest)

    StandardsSubscriptions.member = Shapes::ShapeRef.new(shape: StandardsSubscription)

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

    ThreatIntelIndicator.add_member(:type, Shapes::ShapeRef.new(shape: ThreatIntelIndicatorType, location_name: "Type"))
    ThreatIntelIndicator.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    ThreatIntelIndicator.add_member(:category, Shapes::ShapeRef.new(shape: ThreatIntelIndicatorCategory, location_name: "Category"))
    ThreatIntelIndicator.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastObservedAt"))
    ThreatIntelIndicator.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Source"))
    ThreatIntelIndicator.add_member(:source_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceUrl"))
    ThreatIntelIndicator.struct_class = Types::ThreatIntelIndicator

    ThreatIntelIndicatorList.member = Shapes::ShapeRef.new(shape: ThreatIntelIndicator)

    TypeList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateActionTargetRequest.add_member(:action_target_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "ActionTargetArn"))
    UpdateActionTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    UpdateActionTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    UpdateActionTargetRequest.struct_class = Types::UpdateActionTargetRequest

    UpdateActionTargetResponse.struct_class = Types::UpdateActionTargetResponse

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

    UpdateSecurityHubConfigurationRequest.add_member(:auto_enable_controls, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnableControls"))
    UpdateSecurityHubConfigurationRequest.struct_class = Types::UpdateSecurityHubConfigurationRequest

    UpdateSecurityHubConfigurationResponse.struct_class = Types::UpdateSecurityHubConfigurationResponse

    UpdateStandardsControlRequest.add_member(:standards_control_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "StandardsControlArn"))
    UpdateStandardsControlRequest.add_member(:control_status, Shapes::ShapeRef.new(shape: ControlStatus, location_name: "ControlStatus"))
    UpdateStandardsControlRequest.add_member(:disabled_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DisabledReason"))
    UpdateStandardsControlRequest.struct_class = Types::UpdateStandardsControlRequest

    UpdateStandardsControlResponse.struct_class = Types::UpdateStandardsControlResponse

    Vulnerability.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    Vulnerability.add_member(:vulnerable_packages, Shapes::ShapeRef.new(shape: SoftwarePackageList, location_name: "VulnerablePackages"))
    Vulnerability.add_member(:cvss, Shapes::ShapeRef.new(shape: CvssList, location_name: "Cvss"))
    Vulnerability.add_member(:related_vulnerabilities, Shapes::ShapeRef.new(shape: StringList, location_name: "RelatedVulnerabilities"))
    Vulnerability.add_member(:vendor, Shapes::ShapeRef.new(shape: VulnerabilityVendor, location_name: "Vendor"))
    Vulnerability.add_member(:reference_urls, Shapes::ShapeRef.new(shape: StringList, location_name: "ReferenceUrls"))
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

      api.add_operation(:accept_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/master"
        o.input = Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
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

      api.add_operation(:disassociate_from_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromMasterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/master/disassociate"
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
