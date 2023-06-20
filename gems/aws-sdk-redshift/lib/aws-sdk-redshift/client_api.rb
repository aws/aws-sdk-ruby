# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Redshift
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptReservedNodeExchangeInputMessage = Shapes::StructureShape.new(name: 'AcceptReservedNodeExchangeInputMessage')
    AcceptReservedNodeExchangeOutputMessage = Shapes::StructureShape.new(name: 'AcceptReservedNodeExchangeOutputMessage')
    AccessToClusterDeniedFault = Shapes::StructureShape.new(name: 'AccessToClusterDeniedFault')
    AccessToSnapshotDeniedFault = Shapes::StructureShape.new(name: 'AccessToSnapshotDeniedFault')
    AccountAttribute = Shapes::StructureShape.new(name: 'AccountAttribute')
    AccountAttributeList = Shapes::StructureShape.new(name: 'AccountAttributeList')
    AccountWithRestoreAccess = Shapes::StructureShape.new(name: 'AccountWithRestoreAccess')
    AccountsWithRestoreAccessList = Shapes::ListShape.new(name: 'AccountsWithRestoreAccessList')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    AquaConfiguration = Shapes::StructureShape.new(name: 'AquaConfiguration')
    AquaConfigurationStatus = Shapes::StringShape.new(name: 'AquaConfigurationStatus')
    AquaStatus = Shapes::StringShape.new(name: 'AquaStatus')
    AssociateDataShareConsumerMessage = Shapes::StructureShape.new(name: 'AssociateDataShareConsumerMessage')
    AssociatedClusterList = Shapes::ListShape.new(name: 'AssociatedClusterList')
    Association = Shapes::StructureShape.new(name: 'Association')
    AssociationList = Shapes::ListShape.new(name: 'AssociationList')
    AttributeList = Shapes::ListShape.new(name: 'AttributeList')
    AttributeNameList = Shapes::ListShape.new(name: 'AttributeNameList')
    AttributeValueList = Shapes::ListShape.new(name: 'AttributeValueList')
    AttributeValueTarget = Shapes::StructureShape.new(name: 'AttributeValueTarget')
    AuthenticationProfile = Shapes::StructureShape.new(name: 'AuthenticationProfile')
    AuthenticationProfileAlreadyExistsFault = Shapes::StructureShape.new(name: 'AuthenticationProfileAlreadyExistsFault')
    AuthenticationProfileList = Shapes::ListShape.new(name: 'AuthenticationProfileList')
    AuthenticationProfileNameString = Shapes::StringShape.new(name: 'AuthenticationProfileNameString')
    AuthenticationProfileNotFoundFault = Shapes::StructureShape.new(name: 'AuthenticationProfileNotFoundFault')
    AuthenticationProfileQuotaExceededFault = Shapes::StructureShape.new(name: 'AuthenticationProfileQuotaExceededFault')
    AuthorizationAlreadyExistsFault = Shapes::StructureShape.new(name: 'AuthorizationAlreadyExistsFault')
    AuthorizationNotFoundFault = Shapes::StructureShape.new(name: 'AuthorizationNotFoundFault')
    AuthorizationQuotaExceededFault = Shapes::StructureShape.new(name: 'AuthorizationQuotaExceededFault')
    AuthorizationStatus = Shapes::StringShape.new(name: 'AuthorizationStatus')
    AuthorizeClusterSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'AuthorizeClusterSecurityGroupIngressMessage')
    AuthorizeClusterSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'AuthorizeClusterSecurityGroupIngressResult')
    AuthorizeDataShareMessage = Shapes::StructureShape.new(name: 'AuthorizeDataShareMessage')
    AuthorizeEndpointAccessMessage = Shapes::StructureShape.new(name: 'AuthorizeEndpointAccessMessage')
    AuthorizeSnapshotAccessMessage = Shapes::StructureShape.new(name: 'AuthorizeSnapshotAccessMessage')
    AuthorizeSnapshotAccessResult = Shapes::StructureShape.new(name: 'AuthorizeSnapshotAccessResult')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    BatchDeleteClusterSnapshotsRequest = Shapes::StructureShape.new(name: 'BatchDeleteClusterSnapshotsRequest')
    BatchDeleteClusterSnapshotsResult = Shapes::StructureShape.new(name: 'BatchDeleteClusterSnapshotsResult')
    BatchDeleteRequestSizeExceededFault = Shapes::StructureShape.new(name: 'BatchDeleteRequestSizeExceededFault')
    BatchModifyClusterSnapshotsLimitExceededFault = Shapes::StructureShape.new(name: 'BatchModifyClusterSnapshotsLimitExceededFault')
    BatchModifyClusterSnapshotsMessage = Shapes::StructureShape.new(name: 'BatchModifyClusterSnapshotsMessage')
    BatchModifyClusterSnapshotsOutputMessage = Shapes::StructureShape.new(name: 'BatchModifyClusterSnapshotsOutputMessage')
    BatchSnapshotOperationErrorList = Shapes::ListShape.new(name: 'BatchSnapshotOperationErrorList')
    BatchSnapshotOperationErrors = Shapes::ListShape.new(name: 'BatchSnapshotOperationErrors')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    BucketNotFoundFault = Shapes::StructureShape.new(name: 'BucketNotFoundFault')
    CancelResizeMessage = Shapes::StructureShape.new(name: 'CancelResizeMessage')
    CertificateAssociation = Shapes::StructureShape.new(name: 'CertificateAssociation')
    CertificateAssociationList = Shapes::ListShape.new(name: 'CertificateAssociationList')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'ClusterAlreadyExistsFault')
    ClusterAssociatedToSchedule = Shapes::StructureShape.new(name: 'ClusterAssociatedToSchedule')
    ClusterCredentials = Shapes::StructureShape.new(name: 'ClusterCredentials')
    ClusterDbRevision = Shapes::StructureShape.new(name: 'ClusterDbRevision')
    ClusterDbRevisionsList = Shapes::ListShape.new(name: 'ClusterDbRevisionsList')
    ClusterDbRevisionsMessage = Shapes::StructureShape.new(name: 'ClusterDbRevisionsMessage')
    ClusterExtendedCredentials = Shapes::StructureShape.new(name: 'ClusterExtendedCredentials')
    ClusterIamRole = Shapes::StructureShape.new(name: 'ClusterIamRole')
    ClusterIamRoleList = Shapes::ListShape.new(name: 'ClusterIamRoleList')
    ClusterList = Shapes::ListShape.new(name: 'ClusterList')
    ClusterNode = Shapes::StructureShape.new(name: 'ClusterNode')
    ClusterNodesList = Shapes::ListShape.new(name: 'ClusterNodesList')
    ClusterNotFoundFault = Shapes::StructureShape.new(name: 'ClusterNotFoundFault')
    ClusterOnLatestRevisionFault = Shapes::StructureShape.new(name: 'ClusterOnLatestRevisionFault')
    ClusterParameterGroup = Shapes::StructureShape.new(name: 'ClusterParameterGroup')
    ClusterParameterGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'ClusterParameterGroupAlreadyExistsFault')
    ClusterParameterGroupDetails = Shapes::StructureShape.new(name: 'ClusterParameterGroupDetails')
    ClusterParameterGroupNameMessage = Shapes::StructureShape.new(name: 'ClusterParameterGroupNameMessage')
    ClusterParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'ClusterParameterGroupNotFoundFault')
    ClusterParameterGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'ClusterParameterGroupQuotaExceededFault')
    ClusterParameterGroupStatus = Shapes::StructureShape.new(name: 'ClusterParameterGroupStatus')
    ClusterParameterGroupStatusList = Shapes::ListShape.new(name: 'ClusterParameterGroupStatusList')
    ClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'ClusterParameterGroupsMessage')
    ClusterParameterStatus = Shapes::StructureShape.new(name: 'ClusterParameterStatus')
    ClusterParameterStatusList = Shapes::ListShape.new(name: 'ClusterParameterStatusList')
    ClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'ClusterQuotaExceededFault')
    ClusterSecurityGroup = Shapes::StructureShape.new(name: 'ClusterSecurityGroup')
    ClusterSecurityGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'ClusterSecurityGroupAlreadyExistsFault')
    ClusterSecurityGroupMembership = Shapes::StructureShape.new(name: 'ClusterSecurityGroupMembership')
    ClusterSecurityGroupMembershipList = Shapes::ListShape.new(name: 'ClusterSecurityGroupMembershipList')
    ClusterSecurityGroupMessage = Shapes::StructureShape.new(name: 'ClusterSecurityGroupMessage')
    ClusterSecurityGroupNameList = Shapes::ListShape.new(name: 'ClusterSecurityGroupNameList')
    ClusterSecurityGroupNotFoundFault = Shapes::StructureShape.new(name: 'ClusterSecurityGroupNotFoundFault')
    ClusterSecurityGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'ClusterSecurityGroupQuotaExceededFault')
    ClusterSecurityGroups = Shapes::ListShape.new(name: 'ClusterSecurityGroups')
    ClusterSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'ClusterSnapshotAlreadyExistsFault')
    ClusterSnapshotCopyStatus = Shapes::StructureShape.new(name: 'ClusterSnapshotCopyStatus')
    ClusterSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'ClusterSnapshotNotFoundFault')
    ClusterSnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'ClusterSnapshotQuotaExceededFault')
    ClusterSubnetGroup = Shapes::StructureShape.new(name: 'ClusterSubnetGroup')
    ClusterSubnetGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'ClusterSubnetGroupAlreadyExistsFault')
    ClusterSubnetGroupMessage = Shapes::StructureShape.new(name: 'ClusterSubnetGroupMessage')
    ClusterSubnetGroupNotFoundFault = Shapes::StructureShape.new(name: 'ClusterSubnetGroupNotFoundFault')
    ClusterSubnetGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'ClusterSubnetGroupQuotaExceededFault')
    ClusterSubnetGroups = Shapes::ListShape.new(name: 'ClusterSubnetGroups')
    ClusterSubnetQuotaExceededFault = Shapes::StructureShape.new(name: 'ClusterSubnetQuotaExceededFault')
    ClusterVersion = Shapes::StructureShape.new(name: 'ClusterVersion')
    ClusterVersionList = Shapes::ListShape.new(name: 'ClusterVersionList')
    ClusterVersionsMessage = Shapes::StructureShape.new(name: 'ClusterVersionsMessage')
    ClustersMessage = Shapes::StructureShape.new(name: 'ClustersMessage')
    CopyClusterSnapshotMessage = Shapes::StructureShape.new(name: 'CopyClusterSnapshotMessage')
    CopyClusterSnapshotResult = Shapes::StructureShape.new(name: 'CopyClusterSnapshotResult')
    CopyToRegionDisabledFault = Shapes::StructureShape.new(name: 'CopyToRegionDisabledFault')
    CreateAuthenticationProfileMessage = Shapes::StructureShape.new(name: 'CreateAuthenticationProfileMessage')
    CreateAuthenticationProfileResult = Shapes::StructureShape.new(name: 'CreateAuthenticationProfileResult')
    CreateClusterMessage = Shapes::StructureShape.new(name: 'CreateClusterMessage')
    CreateClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'CreateClusterParameterGroupMessage')
    CreateClusterParameterGroupResult = Shapes::StructureShape.new(name: 'CreateClusterParameterGroupResult')
    CreateClusterResult = Shapes::StructureShape.new(name: 'CreateClusterResult')
    CreateClusterSecurityGroupMessage = Shapes::StructureShape.new(name: 'CreateClusterSecurityGroupMessage')
    CreateClusterSecurityGroupResult = Shapes::StructureShape.new(name: 'CreateClusterSecurityGroupResult')
    CreateClusterSnapshotMessage = Shapes::StructureShape.new(name: 'CreateClusterSnapshotMessage')
    CreateClusterSnapshotResult = Shapes::StructureShape.new(name: 'CreateClusterSnapshotResult')
    CreateClusterSubnetGroupMessage = Shapes::StructureShape.new(name: 'CreateClusterSubnetGroupMessage')
    CreateClusterSubnetGroupResult = Shapes::StructureShape.new(name: 'CreateClusterSubnetGroupResult')
    CreateCustomDomainAssociationMessage = Shapes::StructureShape.new(name: 'CreateCustomDomainAssociationMessage')
    CreateCustomDomainAssociationResult = Shapes::StructureShape.new(name: 'CreateCustomDomainAssociationResult')
    CreateEndpointAccessMessage = Shapes::StructureShape.new(name: 'CreateEndpointAccessMessage')
    CreateEventSubscriptionMessage = Shapes::StructureShape.new(name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = Shapes::StructureShape.new(name: 'CreateEventSubscriptionResult')
    CreateHsmClientCertificateMessage = Shapes::StructureShape.new(name: 'CreateHsmClientCertificateMessage')
    CreateHsmClientCertificateResult = Shapes::StructureShape.new(name: 'CreateHsmClientCertificateResult')
    CreateHsmConfigurationMessage = Shapes::StructureShape.new(name: 'CreateHsmConfigurationMessage')
    CreateHsmConfigurationResult = Shapes::StructureShape.new(name: 'CreateHsmConfigurationResult')
    CreateScheduledActionMessage = Shapes::StructureShape.new(name: 'CreateScheduledActionMessage')
    CreateSnapshotCopyGrantMessage = Shapes::StructureShape.new(name: 'CreateSnapshotCopyGrantMessage')
    CreateSnapshotCopyGrantResult = Shapes::StructureShape.new(name: 'CreateSnapshotCopyGrantResult')
    CreateSnapshotScheduleMessage = Shapes::StructureShape.new(name: 'CreateSnapshotScheduleMessage')
    CreateTagsMessage = Shapes::StructureShape.new(name: 'CreateTagsMessage')
    CreateUsageLimitMessage = Shapes::StructureShape.new(name: 'CreateUsageLimitMessage')
    CustomCnameAssociationFault = Shapes::StructureShape.new(name: 'CustomCnameAssociationFault')
    CustomDomainAssociationNotFoundFault = Shapes::StructureShape.new(name: 'CustomDomainAssociationNotFoundFault')
    CustomDomainAssociationsMessage = Shapes::StructureShape.new(name: 'CustomDomainAssociationsMessage')
    CustomDomainCertificateArnString = Shapes::StringShape.new(name: 'CustomDomainCertificateArnString')
    CustomDomainNameString = Shapes::StringShape.new(name: 'CustomDomainNameString')
    CustomerStorageMessage = Shapes::StructureShape.new(name: 'CustomerStorageMessage')
    DataShare = Shapes::StructureShape.new(name: 'DataShare')
    DataShareAssociation = Shapes::StructureShape.new(name: 'DataShareAssociation')
    DataShareAssociationList = Shapes::ListShape.new(name: 'DataShareAssociationList')
    DataShareList = Shapes::ListShape.new(name: 'DataShareList')
    DataShareStatus = Shapes::StringShape.new(name: 'DataShareStatus')
    DataShareStatusForConsumer = Shapes::StringShape.new(name: 'DataShareStatusForConsumer')
    DataShareStatusForProducer = Shapes::StringShape.new(name: 'DataShareStatusForProducer')
    DataTransferProgress = Shapes::StructureShape.new(name: 'DataTransferProgress')
    DbGroupList = Shapes::ListShape.new(name: 'DbGroupList')
    DeauthorizeDataShareMessage = Shapes::StructureShape.new(name: 'DeauthorizeDataShareMessage')
    DefaultClusterParameters = Shapes::StructureShape.new(name: 'DefaultClusterParameters')
    DeferredMaintenanceWindow = Shapes::StructureShape.new(name: 'DeferredMaintenanceWindow')
    DeferredMaintenanceWindowsList = Shapes::ListShape.new(name: 'DeferredMaintenanceWindowsList')
    DeleteAuthenticationProfileMessage = Shapes::StructureShape.new(name: 'DeleteAuthenticationProfileMessage')
    DeleteAuthenticationProfileResult = Shapes::StructureShape.new(name: 'DeleteAuthenticationProfileResult')
    DeleteClusterMessage = Shapes::StructureShape.new(name: 'DeleteClusterMessage')
    DeleteClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'DeleteClusterParameterGroupMessage')
    DeleteClusterResult = Shapes::StructureShape.new(name: 'DeleteClusterResult')
    DeleteClusterSecurityGroupMessage = Shapes::StructureShape.new(name: 'DeleteClusterSecurityGroupMessage')
    DeleteClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DeleteClusterSnapshotMessage')
    DeleteClusterSnapshotMessageList = Shapes::ListShape.new(name: 'DeleteClusterSnapshotMessageList')
    DeleteClusterSnapshotResult = Shapes::StructureShape.new(name: 'DeleteClusterSnapshotResult')
    DeleteClusterSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteClusterSubnetGroupMessage')
    DeleteCustomDomainAssociationMessage = Shapes::StructureShape.new(name: 'DeleteCustomDomainAssociationMessage')
    DeleteEndpointAccessMessage = Shapes::StructureShape.new(name: 'DeleteEndpointAccessMessage')
    DeleteEventSubscriptionMessage = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionMessage')
    DeleteHsmClientCertificateMessage = Shapes::StructureShape.new(name: 'DeleteHsmClientCertificateMessage')
    DeleteHsmConfigurationMessage = Shapes::StructureShape.new(name: 'DeleteHsmConfigurationMessage')
    DeleteScheduledActionMessage = Shapes::StructureShape.new(name: 'DeleteScheduledActionMessage')
    DeleteSnapshotCopyGrantMessage = Shapes::StructureShape.new(name: 'DeleteSnapshotCopyGrantMessage')
    DeleteSnapshotScheduleMessage = Shapes::StructureShape.new(name: 'DeleteSnapshotScheduleMessage')
    DeleteTagsMessage = Shapes::StructureShape.new(name: 'DeleteTagsMessage')
    DeleteUsageLimitMessage = Shapes::StructureShape.new(name: 'DeleteUsageLimitMessage')
    DependentServiceRequestThrottlingFault = Shapes::StructureShape.new(name: 'DependentServiceRequestThrottlingFault')
    DependentServiceUnavailableFault = Shapes::StructureShape.new(name: 'DependentServiceUnavailableFault')
    DescribeAccountAttributesMessage = Shapes::StructureShape.new(name: 'DescribeAccountAttributesMessage')
    DescribeAuthenticationProfilesMessage = Shapes::StructureShape.new(name: 'DescribeAuthenticationProfilesMessage')
    DescribeAuthenticationProfilesResult = Shapes::StructureShape.new(name: 'DescribeAuthenticationProfilesResult')
    DescribeClusterDbRevisionsMessage = Shapes::StructureShape.new(name: 'DescribeClusterDbRevisionsMessage')
    DescribeClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeClusterParameterGroupsMessage')
    DescribeClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeClusterParametersMessage')
    DescribeClusterSecurityGroupsMessage = Shapes::StructureShape.new(name: 'DescribeClusterSecurityGroupsMessage')
    DescribeClusterSnapshotsMessage = Shapes::StructureShape.new(name: 'DescribeClusterSnapshotsMessage')
    DescribeClusterSubnetGroupsMessage = Shapes::StructureShape.new(name: 'DescribeClusterSubnetGroupsMessage')
    DescribeClusterTracksMessage = Shapes::StructureShape.new(name: 'DescribeClusterTracksMessage')
    DescribeClusterVersionsMessage = Shapes::StructureShape.new(name: 'DescribeClusterVersionsMessage')
    DescribeClustersMessage = Shapes::StructureShape.new(name: 'DescribeClustersMessage')
    DescribeCustomDomainAssociationsMessage = Shapes::StructureShape.new(name: 'DescribeCustomDomainAssociationsMessage')
    DescribeDataSharesForConsumerMessage = Shapes::StructureShape.new(name: 'DescribeDataSharesForConsumerMessage')
    DescribeDataSharesForConsumerResult = Shapes::StructureShape.new(name: 'DescribeDataSharesForConsumerResult')
    DescribeDataSharesForProducerMessage = Shapes::StructureShape.new(name: 'DescribeDataSharesForProducerMessage')
    DescribeDataSharesForProducerResult = Shapes::StructureShape.new(name: 'DescribeDataSharesForProducerResult')
    DescribeDataSharesMessage = Shapes::StructureShape.new(name: 'DescribeDataSharesMessage')
    DescribeDataSharesResult = Shapes::StructureShape.new(name: 'DescribeDataSharesResult')
    DescribeDefaultClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeDefaultClusterParametersMessage')
    DescribeDefaultClusterParametersResult = Shapes::StructureShape.new(name: 'DescribeDefaultClusterParametersResult')
    DescribeEndpointAccessMessage = Shapes::StructureShape.new(name: 'DescribeEndpointAccessMessage')
    DescribeEndpointAuthorizationMessage = Shapes::StructureShape.new(name: 'DescribeEndpointAuthorizationMessage')
    DescribeEventCategoriesMessage = Shapes::StructureShape.new(name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = Shapes::StructureShape.new(name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeHsmClientCertificatesMessage = Shapes::StructureShape.new(name: 'DescribeHsmClientCertificatesMessage')
    DescribeHsmConfigurationsMessage = Shapes::StructureShape.new(name: 'DescribeHsmConfigurationsMessage')
    DescribeLoggingStatusMessage = Shapes::StructureShape.new(name: 'DescribeLoggingStatusMessage')
    DescribeNodeConfigurationOptionsMessage = Shapes::StructureShape.new(name: 'DescribeNodeConfigurationOptionsMessage')
    DescribeOrderableClusterOptionsMessage = Shapes::StructureShape.new(name: 'DescribeOrderableClusterOptionsMessage')
    DescribePartnersInputMessage = Shapes::StructureShape.new(name: 'DescribePartnersInputMessage')
    DescribePartnersOutputMessage = Shapes::StructureShape.new(name: 'DescribePartnersOutputMessage')
    DescribeReservedNodeExchangeStatusInputMessage = Shapes::StructureShape.new(name: 'DescribeReservedNodeExchangeStatusInputMessage')
    DescribeReservedNodeExchangeStatusOutputMessage = Shapes::StructureShape.new(name: 'DescribeReservedNodeExchangeStatusOutputMessage')
    DescribeReservedNodeOfferingsMessage = Shapes::StructureShape.new(name: 'DescribeReservedNodeOfferingsMessage')
    DescribeReservedNodesMessage = Shapes::StructureShape.new(name: 'DescribeReservedNodesMessage')
    DescribeResizeMessage = Shapes::StructureShape.new(name: 'DescribeResizeMessage')
    DescribeScheduledActionsMessage = Shapes::StructureShape.new(name: 'DescribeScheduledActionsMessage')
    DescribeSnapshotCopyGrantsMessage = Shapes::StructureShape.new(name: 'DescribeSnapshotCopyGrantsMessage')
    DescribeSnapshotSchedulesMessage = Shapes::StructureShape.new(name: 'DescribeSnapshotSchedulesMessage')
    DescribeSnapshotSchedulesOutputMessage = Shapes::StructureShape.new(name: 'DescribeSnapshotSchedulesOutputMessage')
    DescribeTableRestoreStatusMessage = Shapes::StructureShape.new(name: 'DescribeTableRestoreStatusMessage')
    DescribeTagsMessage = Shapes::StructureShape.new(name: 'DescribeTagsMessage')
    DescribeUsageLimitsMessage = Shapes::StructureShape.new(name: 'DescribeUsageLimitsMessage')
    DisableLoggingMessage = Shapes::StructureShape.new(name: 'DisableLoggingMessage')
    DisableSnapshotCopyMessage = Shapes::StructureShape.new(name: 'DisableSnapshotCopyMessage')
    DisableSnapshotCopyResult = Shapes::StructureShape.new(name: 'DisableSnapshotCopyResult')
    DisassociateDataShareConsumerMessage = Shapes::StructureShape.new(name: 'DisassociateDataShareConsumerMessage')
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleOptional = Shapes::FloatShape.new(name: 'DoubleOptional')
    EC2SecurityGroup = Shapes::StructureShape.new(name: 'EC2SecurityGroup')
    EC2SecurityGroupList = Shapes::ListShape.new(name: 'EC2SecurityGroupList')
    ElasticIpStatus = Shapes::StructureShape.new(name: 'ElasticIpStatus')
    EligibleTracksToUpdateList = Shapes::ListShape.new(name: 'EligibleTracksToUpdateList')
    EnableLoggingMessage = Shapes::StructureShape.new(name: 'EnableLoggingMessage')
    EnableSnapshotCopyMessage = Shapes::StructureShape.new(name: 'EnableSnapshotCopyMessage')
    EnableSnapshotCopyResult = Shapes::StructureShape.new(name: 'EnableSnapshotCopyResult')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointAccess = Shapes::StructureShape.new(name: 'EndpointAccess')
    EndpointAccessList = Shapes::StructureShape.new(name: 'EndpointAccessList')
    EndpointAccesses = Shapes::ListShape.new(name: 'EndpointAccesses')
    EndpointAlreadyExistsFault = Shapes::StructureShape.new(name: 'EndpointAlreadyExistsFault')
    EndpointAuthorization = Shapes::StructureShape.new(name: 'EndpointAuthorization')
    EndpointAuthorizationAlreadyExistsFault = Shapes::StructureShape.new(name: 'EndpointAuthorizationAlreadyExistsFault')
    EndpointAuthorizationList = Shapes::StructureShape.new(name: 'EndpointAuthorizationList')
    EndpointAuthorizationNotFoundFault = Shapes::StructureShape.new(name: 'EndpointAuthorizationNotFoundFault')
    EndpointAuthorizations = Shapes::ListShape.new(name: 'EndpointAuthorizations')
    EndpointAuthorizationsPerClusterLimitExceededFault = Shapes::StructureShape.new(name: 'EndpointAuthorizationsPerClusterLimitExceededFault')
    EndpointNotFoundFault = Shapes::StructureShape.new(name: 'EndpointNotFoundFault')
    EndpointsPerAuthorizationLimitExceededFault = Shapes::StructureShape.new(name: 'EndpointsPerAuthorizationLimitExceededFault')
    EndpointsPerClusterLimitExceededFault = Shapes::StructureShape.new(name: 'EndpointsPerClusterLimitExceededFault')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategoriesList = Shapes::ListShape.new(name: 'EventCategoriesList')
    EventCategoriesMap = Shapes::StructureShape.new(name: 'EventCategoriesMap')
    EventCategoriesMapList = Shapes::ListShape.new(name: 'EventCategoriesMapList')
    EventCategoriesMessage = Shapes::StructureShape.new(name: 'EventCategoriesMessage')
    EventInfoMap = Shapes::StructureShape.new(name: 'EventInfoMap')
    EventInfoMapList = Shapes::ListShape.new(name: 'EventInfoMapList')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventSubscription = Shapes::StructureShape.new(name: 'EventSubscription')
    EventSubscriptionQuotaExceededFault = Shapes::StructureShape.new(name: 'EventSubscriptionQuotaExceededFault')
    EventSubscriptionsList = Shapes::ListShape.new(name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = Shapes::StructureShape.new(name: 'EventSubscriptionsMessage')
    EventsMessage = Shapes::StructureShape.new(name: 'EventsMessage')
    GetClusterCredentialsMessage = Shapes::StructureShape.new(name: 'GetClusterCredentialsMessage')
    GetClusterCredentialsWithIAMMessage = Shapes::StructureShape.new(name: 'GetClusterCredentialsWithIAMMessage')
    GetReservedNodeExchangeConfigurationOptionsInputMessage = Shapes::StructureShape.new(name: 'GetReservedNodeExchangeConfigurationOptionsInputMessage')
    GetReservedNodeExchangeConfigurationOptionsOutputMessage = Shapes::StructureShape.new(name: 'GetReservedNodeExchangeConfigurationOptionsOutputMessage')
    GetReservedNodeExchangeOfferingsInputMessage = Shapes::StructureShape.new(name: 'GetReservedNodeExchangeOfferingsInputMessage')
    GetReservedNodeExchangeOfferingsOutputMessage = Shapes::StructureShape.new(name: 'GetReservedNodeExchangeOfferingsOutputMessage')
    HsmClientCertificate = Shapes::StructureShape.new(name: 'HsmClientCertificate')
    HsmClientCertificateAlreadyExistsFault = Shapes::StructureShape.new(name: 'HsmClientCertificateAlreadyExistsFault')
    HsmClientCertificateList = Shapes::ListShape.new(name: 'HsmClientCertificateList')
    HsmClientCertificateMessage = Shapes::StructureShape.new(name: 'HsmClientCertificateMessage')
    HsmClientCertificateNotFoundFault = Shapes::StructureShape.new(name: 'HsmClientCertificateNotFoundFault')
    HsmClientCertificateQuotaExceededFault = Shapes::StructureShape.new(name: 'HsmClientCertificateQuotaExceededFault')
    HsmConfiguration = Shapes::StructureShape.new(name: 'HsmConfiguration')
    HsmConfigurationAlreadyExistsFault = Shapes::StructureShape.new(name: 'HsmConfigurationAlreadyExistsFault')
    HsmConfigurationList = Shapes::ListShape.new(name: 'HsmConfigurationList')
    HsmConfigurationMessage = Shapes::StructureShape.new(name: 'HsmConfigurationMessage')
    HsmConfigurationNotFoundFault = Shapes::StructureShape.new(name: 'HsmConfigurationNotFoundFault')
    HsmConfigurationQuotaExceededFault = Shapes::StructureShape.new(name: 'HsmConfigurationQuotaExceededFault')
    HsmStatus = Shapes::StructureShape.new(name: 'HsmStatus')
    IPRange = Shapes::StructureShape.new(name: 'IPRange')
    IPRangeList = Shapes::ListShape.new(name: 'IPRangeList')
    IamRoleArnList = Shapes::ListShape.new(name: 'IamRoleArnList')
    ImportTablesCompleted = Shapes::ListShape.new(name: 'ImportTablesCompleted')
    ImportTablesInProgress = Shapes::ListShape.new(name: 'ImportTablesInProgress')
    ImportTablesNotStarted = Shapes::ListShape.new(name: 'ImportTablesNotStarted')
    InProgressTableRestoreQuotaExceededFault = Shapes::StructureShape.new(name: 'InProgressTableRestoreQuotaExceededFault')
    IncompatibleOrderableOptions = Shapes::StructureShape.new(name: 'IncompatibleOrderableOptions')
    InsufficientClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientClusterCapacityFault')
    InsufficientS3BucketPolicyFault = Shapes::StructureShape.new(name: 'InsufficientS3BucketPolicyFault')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidAuthenticationProfileRequestFault = Shapes::StructureShape.new(name: 'InvalidAuthenticationProfileRequestFault')
    InvalidAuthorizationStateFault = Shapes::StructureShape.new(name: 'InvalidAuthorizationStateFault')
    InvalidClusterParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidClusterParameterGroupStateFault')
    InvalidClusterSecurityGroupStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSecurityGroupStateFault')
    InvalidClusterSnapshotScheduleStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSnapshotScheduleStateFault')
    InvalidClusterSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSnapshotStateFault')
    InvalidClusterStateFault = Shapes::StructureShape.new(name: 'InvalidClusterStateFault')
    InvalidClusterSubnetGroupStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSubnetGroupStateFault')
    InvalidClusterSubnetStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSubnetStateFault')
    InvalidClusterTrackFault = Shapes::StructureShape.new(name: 'InvalidClusterTrackFault')
    InvalidDataShareFault = Shapes::StructureShape.new(name: 'InvalidDataShareFault')
    InvalidElasticIpFault = Shapes::StructureShape.new(name: 'InvalidElasticIpFault')
    InvalidEndpointStateFault = Shapes::StructureShape.new(name: 'InvalidEndpointStateFault')
    InvalidHsmClientCertificateStateFault = Shapes::StructureShape.new(name: 'InvalidHsmClientCertificateStateFault')
    InvalidHsmConfigurationStateFault = Shapes::StructureShape.new(name: 'InvalidHsmConfigurationStateFault')
    InvalidNamespaceFault = Shapes::StructureShape.new(name: 'InvalidNamespaceFault')
    InvalidReservedNodeStateFault = Shapes::StructureShape.new(name: 'InvalidReservedNodeStateFault')
    InvalidRestoreFault = Shapes::StructureShape.new(name: 'InvalidRestoreFault')
    InvalidRetentionPeriodFault = Shapes::StructureShape.new(name: 'InvalidRetentionPeriodFault')
    InvalidS3BucketNameFault = Shapes::StructureShape.new(name: 'InvalidS3BucketNameFault')
    InvalidS3KeyPrefixFault = Shapes::StructureShape.new(name: 'InvalidS3KeyPrefixFault')
    InvalidScheduleFault = Shapes::StructureShape.new(name: 'InvalidScheduleFault')
    InvalidScheduledActionFault = Shapes::StructureShape.new(name: 'InvalidScheduledActionFault')
    InvalidSnapshotCopyGrantStateFault = Shapes::StructureShape.new(name: 'InvalidSnapshotCopyGrantStateFault')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    InvalidSubscriptionStateFault = Shapes::StructureShape.new(name: 'InvalidSubscriptionStateFault')
    InvalidTableRestoreArgumentFault = Shapes::StructureShape.new(name: 'InvalidTableRestoreArgumentFault')
    InvalidTagFault = Shapes::StructureShape.new(name: 'InvalidTagFault')
    InvalidUsageLimitFault = Shapes::StructureShape.new(name: 'InvalidUsageLimitFault')
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault')
    LimitExceededFault = Shapes::StructureShape.new(name: 'LimitExceededFault')
    LogDestinationType = Shapes::StringShape.new(name: 'LogDestinationType')
    LogTypeList = Shapes::ListShape.new(name: 'LogTypeList')
    LoggingStatus = Shapes::StructureShape.new(name: 'LoggingStatus')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongOptional = Shapes::IntegerShape.new(name: 'LongOptional')
    MaintenanceTrack = Shapes::StructureShape.new(name: 'MaintenanceTrack')
    Mode = Shapes::StringShape.new(name: 'Mode')
    ModifyAquaInputMessage = Shapes::StructureShape.new(name: 'ModifyAquaInputMessage')
    ModifyAquaOutputMessage = Shapes::StructureShape.new(name: 'ModifyAquaOutputMessage')
    ModifyAuthenticationProfileMessage = Shapes::StructureShape.new(name: 'ModifyAuthenticationProfileMessage')
    ModifyAuthenticationProfileResult = Shapes::StructureShape.new(name: 'ModifyAuthenticationProfileResult')
    ModifyClusterDbRevisionMessage = Shapes::StructureShape.new(name: 'ModifyClusterDbRevisionMessage')
    ModifyClusterDbRevisionResult = Shapes::StructureShape.new(name: 'ModifyClusterDbRevisionResult')
    ModifyClusterIamRolesMessage = Shapes::StructureShape.new(name: 'ModifyClusterIamRolesMessage')
    ModifyClusterIamRolesResult = Shapes::StructureShape.new(name: 'ModifyClusterIamRolesResult')
    ModifyClusterMaintenanceMessage = Shapes::StructureShape.new(name: 'ModifyClusterMaintenanceMessage')
    ModifyClusterMaintenanceResult = Shapes::StructureShape.new(name: 'ModifyClusterMaintenanceResult')
    ModifyClusterMessage = Shapes::StructureShape.new(name: 'ModifyClusterMessage')
    ModifyClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyClusterParameterGroupMessage')
    ModifyClusterResult = Shapes::StructureShape.new(name: 'ModifyClusterResult')
    ModifyClusterSnapshotMessage = Shapes::StructureShape.new(name: 'ModifyClusterSnapshotMessage')
    ModifyClusterSnapshotResult = Shapes::StructureShape.new(name: 'ModifyClusterSnapshotResult')
    ModifyClusterSnapshotScheduleMessage = Shapes::StructureShape.new(name: 'ModifyClusterSnapshotScheduleMessage')
    ModifyClusterSubnetGroupMessage = Shapes::StructureShape.new(name: 'ModifyClusterSubnetGroupMessage')
    ModifyClusterSubnetGroupResult = Shapes::StructureShape.new(name: 'ModifyClusterSubnetGroupResult')
    ModifyCustomDomainAssociationMessage = Shapes::StructureShape.new(name: 'ModifyCustomDomainAssociationMessage')
    ModifyCustomDomainAssociationResult = Shapes::StructureShape.new(name: 'ModifyCustomDomainAssociationResult')
    ModifyEndpointAccessMessage = Shapes::StructureShape.new(name: 'ModifyEndpointAccessMessage')
    ModifyEventSubscriptionMessage = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionResult')
    ModifyScheduledActionMessage = Shapes::StructureShape.new(name: 'ModifyScheduledActionMessage')
    ModifySnapshotCopyRetentionPeriodMessage = Shapes::StructureShape.new(name: 'ModifySnapshotCopyRetentionPeriodMessage')
    ModifySnapshotCopyRetentionPeriodResult = Shapes::StructureShape.new(name: 'ModifySnapshotCopyRetentionPeriodResult')
    ModifySnapshotScheduleMessage = Shapes::StructureShape.new(name: 'ModifySnapshotScheduleMessage')
    ModifyUsageLimitMessage = Shapes::StructureShape.new(name: 'ModifyUsageLimitMessage')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceList = Shapes::ListShape.new(name: 'NetworkInterfaceList')
    NodeConfigurationOption = Shapes::StructureShape.new(name: 'NodeConfigurationOption')
    NodeConfigurationOptionList = Shapes::ListShape.new(name: 'NodeConfigurationOptionList')
    NodeConfigurationOptionsFilter = Shapes::StructureShape.new(name: 'NodeConfigurationOptionsFilter')
    NodeConfigurationOptionsFilterList = Shapes::ListShape.new(name: 'NodeConfigurationOptionsFilterList')
    NodeConfigurationOptionsFilterName = Shapes::StringShape.new(name: 'NodeConfigurationOptionsFilterName')
    NodeConfigurationOptionsMessage = Shapes::StructureShape.new(name: 'NodeConfigurationOptionsMessage')
    NumberOfNodesPerClusterLimitExceededFault = Shapes::StructureShape.new(name: 'NumberOfNodesPerClusterLimitExceededFault')
    NumberOfNodesQuotaExceededFault = Shapes::StructureShape.new(name: 'NumberOfNodesQuotaExceededFault')
    OperatorType = Shapes::StringShape.new(name: 'OperatorType')
    OrderableClusterOption = Shapes::StructureShape.new(name: 'OrderableClusterOption')
    OrderableClusterOptionsList = Shapes::ListShape.new(name: 'OrderableClusterOptionsList')
    OrderableClusterOptionsMessage = Shapes::StructureShape.new(name: 'OrderableClusterOptionsMessage')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterApplyType = Shapes::StringShape.new(name: 'ParameterApplyType')
    ParameterGroupList = Shapes::ListShape.new(name: 'ParameterGroupList')
    ParametersList = Shapes::ListShape.new(name: 'ParametersList')
    PartnerIntegrationAccountId = Shapes::StringShape.new(name: 'PartnerIntegrationAccountId')
    PartnerIntegrationClusterIdentifier = Shapes::StringShape.new(name: 'PartnerIntegrationClusterIdentifier')
    PartnerIntegrationDatabaseName = Shapes::StringShape.new(name: 'PartnerIntegrationDatabaseName')
    PartnerIntegrationInfo = Shapes::StructureShape.new(name: 'PartnerIntegrationInfo')
    PartnerIntegrationInfoList = Shapes::ListShape.new(name: 'PartnerIntegrationInfoList')
    PartnerIntegrationInputMessage = Shapes::StructureShape.new(name: 'PartnerIntegrationInputMessage')
    PartnerIntegrationOutputMessage = Shapes::StructureShape.new(name: 'PartnerIntegrationOutputMessage')
    PartnerIntegrationPartnerName = Shapes::StringShape.new(name: 'PartnerIntegrationPartnerName')
    PartnerIntegrationStatus = Shapes::StringShape.new(name: 'PartnerIntegrationStatus')
    PartnerIntegrationStatusMessage = Shapes::StringShape.new(name: 'PartnerIntegrationStatusMessage')
    PartnerNotFoundFault = Shapes::StructureShape.new(name: 'PartnerNotFoundFault')
    PauseClusterMessage = Shapes::StructureShape.new(name: 'PauseClusterMessage')
    PauseClusterResult = Shapes::StructureShape.new(name: 'PauseClusterResult')
    PendingActionsList = Shapes::ListShape.new(name: 'PendingActionsList')
    PendingModifiedValues = Shapes::StructureShape.new(name: 'PendingModifiedValues')
    PurchaseReservedNodeOfferingMessage = Shapes::StructureShape.new(name: 'PurchaseReservedNodeOfferingMessage')
    PurchaseReservedNodeOfferingResult = Shapes::StructureShape.new(name: 'PurchaseReservedNodeOfferingResult')
    RebootClusterMessage = Shapes::StructureShape.new(name: 'RebootClusterMessage')
    RebootClusterResult = Shapes::StructureShape.new(name: 'RebootClusterResult')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    RejectDataShareMessage = Shapes::StructureShape.new(name: 'RejectDataShareMessage')
    ReservedNode = Shapes::StructureShape.new(name: 'ReservedNode')
    ReservedNodeAlreadyExistsFault = Shapes::StructureShape.new(name: 'ReservedNodeAlreadyExistsFault')
    ReservedNodeAlreadyMigratedFault = Shapes::StructureShape.new(name: 'ReservedNodeAlreadyMigratedFault')
    ReservedNodeConfigurationOption = Shapes::StructureShape.new(name: 'ReservedNodeConfigurationOption')
    ReservedNodeConfigurationOptionList = Shapes::ListShape.new(name: 'ReservedNodeConfigurationOptionList')
    ReservedNodeExchangeActionType = Shapes::StringShape.new(name: 'ReservedNodeExchangeActionType')
    ReservedNodeExchangeNotFoundFault = Shapes::StructureShape.new(name: 'ReservedNodeExchangeNotFoundFault')
    ReservedNodeExchangeStatus = Shapes::StructureShape.new(name: 'ReservedNodeExchangeStatus')
    ReservedNodeExchangeStatusList = Shapes::ListShape.new(name: 'ReservedNodeExchangeStatusList')
    ReservedNodeExchangeStatusType = Shapes::StringShape.new(name: 'ReservedNodeExchangeStatusType')
    ReservedNodeList = Shapes::ListShape.new(name: 'ReservedNodeList')
    ReservedNodeNotFoundFault = Shapes::StructureShape.new(name: 'ReservedNodeNotFoundFault')
    ReservedNodeOffering = Shapes::StructureShape.new(name: 'ReservedNodeOffering')
    ReservedNodeOfferingList = Shapes::ListShape.new(name: 'ReservedNodeOfferingList')
    ReservedNodeOfferingNotFoundFault = Shapes::StructureShape.new(name: 'ReservedNodeOfferingNotFoundFault')
    ReservedNodeOfferingType = Shapes::StringShape.new(name: 'ReservedNodeOfferingType')
    ReservedNodeOfferingsMessage = Shapes::StructureShape.new(name: 'ReservedNodeOfferingsMessage')
    ReservedNodeQuotaExceededFault = Shapes::StructureShape.new(name: 'ReservedNodeQuotaExceededFault')
    ReservedNodesMessage = Shapes::StructureShape.new(name: 'ReservedNodesMessage')
    ResetClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetClusterParameterGroupMessage')
    ResizeClusterMessage = Shapes::StructureShape.new(name: 'ResizeClusterMessage')
    ResizeClusterResult = Shapes::StructureShape.new(name: 'ResizeClusterResult')
    ResizeInfo = Shapes::StructureShape.new(name: 'ResizeInfo')
    ResizeNotFoundFault = Shapes::StructureShape.new(name: 'ResizeNotFoundFault')
    ResizeProgressMessage = Shapes::StructureShape.new(name: 'ResizeProgressMessage')
    ResourceNotFoundFault = Shapes::StructureShape.new(name: 'ResourceNotFoundFault')
    RestorableNodeTypeList = Shapes::ListShape.new(name: 'RestorableNodeTypeList')
    RestoreFromClusterSnapshotMessage = Shapes::StructureShape.new(name: 'RestoreFromClusterSnapshotMessage')
    RestoreFromClusterSnapshotResult = Shapes::StructureShape.new(name: 'RestoreFromClusterSnapshotResult')
    RestoreStatus = Shapes::StructureShape.new(name: 'RestoreStatus')
    RestoreTableFromClusterSnapshotMessage = Shapes::StructureShape.new(name: 'RestoreTableFromClusterSnapshotMessage')
    RestoreTableFromClusterSnapshotResult = Shapes::StructureShape.new(name: 'RestoreTableFromClusterSnapshotResult')
    ResumeClusterMessage = Shapes::StructureShape.new(name: 'ResumeClusterMessage')
    ResumeClusterResult = Shapes::StructureShape.new(name: 'ResumeClusterResult')
    RevisionTarget = Shapes::StructureShape.new(name: 'RevisionTarget')
    RevisionTargetsList = Shapes::ListShape.new(name: 'RevisionTargetsList')
    RevokeClusterSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'RevokeClusterSecurityGroupIngressMessage')
    RevokeClusterSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'RevokeClusterSecurityGroupIngressResult')
    RevokeEndpointAccessMessage = Shapes::StructureShape.new(name: 'RevokeEndpointAccessMessage')
    RevokeSnapshotAccessMessage = Shapes::StructureShape.new(name: 'RevokeSnapshotAccessMessage')
    RevokeSnapshotAccessResult = Shapes::StructureShape.new(name: 'RevokeSnapshotAccessResult')
    RotateEncryptionKeyMessage = Shapes::StructureShape.new(name: 'RotateEncryptionKeyMessage')
    RotateEncryptionKeyResult = Shapes::StructureShape.new(name: 'RotateEncryptionKeyResult')
    SNSInvalidTopicFault = Shapes::StructureShape.new(name: 'SNSInvalidTopicFault')
    SNSNoAuthorizationFault = Shapes::StructureShape.new(name: 'SNSNoAuthorizationFault')
    SNSTopicArnNotFoundFault = Shapes::StructureShape.new(name: 'SNSTopicArnNotFoundFault')
    ScheduleDefinitionList = Shapes::ListShape.new(name: 'ScheduleDefinitionList')
    ScheduleDefinitionTypeUnsupportedFault = Shapes::StructureShape.new(name: 'ScheduleDefinitionTypeUnsupportedFault')
    ScheduleState = Shapes::StringShape.new(name: 'ScheduleState')
    ScheduledAction = Shapes::StructureShape.new(name: 'ScheduledAction')
    ScheduledActionAlreadyExistsFault = Shapes::StructureShape.new(name: 'ScheduledActionAlreadyExistsFault')
    ScheduledActionFilter = Shapes::StructureShape.new(name: 'ScheduledActionFilter')
    ScheduledActionFilterList = Shapes::ListShape.new(name: 'ScheduledActionFilterList')
    ScheduledActionFilterName = Shapes::StringShape.new(name: 'ScheduledActionFilterName')
    ScheduledActionList = Shapes::ListShape.new(name: 'ScheduledActionList')
    ScheduledActionNotFoundFault = Shapes::StructureShape.new(name: 'ScheduledActionNotFoundFault')
    ScheduledActionQuotaExceededFault = Shapes::StructureShape.new(name: 'ScheduledActionQuotaExceededFault')
    ScheduledActionState = Shapes::StringShape.new(name: 'ScheduledActionState')
    ScheduledActionTimeList = Shapes::ListShape.new(name: 'ScheduledActionTimeList')
    ScheduledActionType = Shapes::StructureShape.new(name: 'ScheduledActionType')
    ScheduledActionTypeUnsupportedFault = Shapes::StructureShape.new(name: 'ScheduledActionTypeUnsupportedFault')
    ScheduledActionTypeValues = Shapes::StringShape.new(name: 'ScheduledActionTypeValues')
    ScheduledActionsMessage = Shapes::StructureShape.new(name: 'ScheduledActionsMessage')
    ScheduledSnapshotTimeList = Shapes::ListShape.new(name: 'ScheduledSnapshotTimeList')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotAttributeToSortBy = Shapes::StringShape.new(name: 'SnapshotAttributeToSortBy')
    SnapshotCopyAlreadyDisabledFault = Shapes::StructureShape.new(name: 'SnapshotCopyAlreadyDisabledFault')
    SnapshotCopyAlreadyEnabledFault = Shapes::StructureShape.new(name: 'SnapshotCopyAlreadyEnabledFault')
    SnapshotCopyDisabledFault = Shapes::StructureShape.new(name: 'SnapshotCopyDisabledFault')
    SnapshotCopyGrant = Shapes::StructureShape.new(name: 'SnapshotCopyGrant')
    SnapshotCopyGrantAlreadyExistsFault = Shapes::StructureShape.new(name: 'SnapshotCopyGrantAlreadyExistsFault')
    SnapshotCopyGrantList = Shapes::ListShape.new(name: 'SnapshotCopyGrantList')
    SnapshotCopyGrantMessage = Shapes::StructureShape.new(name: 'SnapshotCopyGrantMessage')
    SnapshotCopyGrantNotFoundFault = Shapes::StructureShape.new(name: 'SnapshotCopyGrantNotFoundFault')
    SnapshotCopyGrantQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotCopyGrantQuotaExceededFault')
    SnapshotErrorMessage = Shapes::StructureShape.new(name: 'SnapshotErrorMessage')
    SnapshotIdentifierList = Shapes::ListShape.new(name: 'SnapshotIdentifierList')
    SnapshotList = Shapes::ListShape.new(name: 'SnapshotList')
    SnapshotMessage = Shapes::StructureShape.new(name: 'SnapshotMessage')
    SnapshotSchedule = Shapes::StructureShape.new(name: 'SnapshotSchedule')
    SnapshotScheduleAlreadyExistsFault = Shapes::StructureShape.new(name: 'SnapshotScheduleAlreadyExistsFault')
    SnapshotScheduleList = Shapes::ListShape.new(name: 'SnapshotScheduleList')
    SnapshotScheduleNotFoundFault = Shapes::StructureShape.new(name: 'SnapshotScheduleNotFoundFault')
    SnapshotScheduleQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotScheduleQuotaExceededFault')
    SnapshotScheduleUpdateInProgressFault = Shapes::StructureShape.new(name: 'SnapshotScheduleUpdateInProgressFault')
    SnapshotSortingEntity = Shapes::StructureShape.new(name: 'SnapshotSortingEntity')
    SnapshotSortingEntityList = Shapes::ListShape.new(name: 'SnapshotSortingEntityList')
    SortByOrder = Shapes::StringShape.new(name: 'SortByOrder')
    SourceIdsList = Shapes::ListShape.new(name: 'SourceIdsList')
    SourceNotFoundFault = Shapes::StructureShape.new(name: 'SourceNotFoundFault')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    String = Shapes::StringShape.new(name: 'String')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetAlreadyInUse = Shapes::StructureShape.new(name: 'SubnetAlreadyInUse')
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    SubscriptionAlreadyExistFault = Shapes::StructureShape.new(name: 'SubscriptionAlreadyExistFault')
    SubscriptionCategoryNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionCategoryNotFoundFault')
    SubscriptionEventIdNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionEventIdNotFoundFault')
    SubscriptionNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionNotFoundFault')
    SubscriptionSeverityNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionSeverityNotFoundFault')
    SupportedOperation = Shapes::StructureShape.new(name: 'SupportedOperation')
    SupportedOperationList = Shapes::ListShape.new(name: 'SupportedOperationList')
    SupportedPlatform = Shapes::StructureShape.new(name: 'SupportedPlatform')
    SupportedPlatformsList = Shapes::ListShape.new(name: 'SupportedPlatformsList')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    TableLimitExceededFault = Shapes::StructureShape.new(name: 'TableLimitExceededFault')
    TableRestoreNotFoundFault = Shapes::StructureShape.new(name: 'TableRestoreNotFoundFault')
    TableRestoreStatus = Shapes::StructureShape.new(name: 'TableRestoreStatus')
    TableRestoreStatusList = Shapes::ListShape.new(name: 'TableRestoreStatusList')
    TableRestoreStatusMessage = Shapes::StructureShape.new(name: 'TableRestoreStatusMessage')
    TableRestoreStatusType = Shapes::StringShape.new(name: 'TableRestoreStatusType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagLimitExceededFault = Shapes::StructureShape.new(name: 'TagLimitExceededFault')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValueList = Shapes::ListShape.new(name: 'TagValueList')
    TaggedResource = Shapes::StructureShape.new(name: 'TaggedResource')
    TaggedResourceList = Shapes::ListShape.new(name: 'TaggedResourceList')
    TaggedResourceListMessage = Shapes::StructureShape.new(name: 'TaggedResourceListMessage')
    TrackList = Shapes::ListShape.new(name: 'TrackList')
    TrackListMessage = Shapes::StructureShape.new(name: 'TrackListMessage')
    UnauthorizedOperation = Shapes::StructureShape.new(name: 'UnauthorizedOperation')
    UnauthorizedPartnerIntegrationFault = Shapes::StructureShape.new(name: 'UnauthorizedPartnerIntegrationFault')
    UnknownSnapshotCopyRegionFault = Shapes::StructureShape.new(name: 'UnknownSnapshotCopyRegionFault')
    UnsupportedOperationFault = Shapes::StructureShape.new(name: 'UnsupportedOperationFault')
    UnsupportedOptionFault = Shapes::StructureShape.new(name: 'UnsupportedOptionFault')
    UpdatePartnerStatusInputMessage = Shapes::StructureShape.new(name: 'UpdatePartnerStatusInputMessage')
    UpdateTarget = Shapes::StructureShape.new(name: 'UpdateTarget')
    UsageLimit = Shapes::StructureShape.new(name: 'UsageLimit')
    UsageLimitAlreadyExistsFault = Shapes::StructureShape.new(name: 'UsageLimitAlreadyExistsFault')
    UsageLimitBreachAction = Shapes::StringShape.new(name: 'UsageLimitBreachAction')
    UsageLimitFeatureType = Shapes::StringShape.new(name: 'UsageLimitFeatureType')
    UsageLimitLimitType = Shapes::StringShape.new(name: 'UsageLimitLimitType')
    UsageLimitList = Shapes::StructureShape.new(name: 'UsageLimitList')
    UsageLimitNotFoundFault = Shapes::StructureShape.new(name: 'UsageLimitNotFoundFault')
    UsageLimitPeriod = Shapes::StringShape.new(name: 'UsageLimitPeriod')
    UsageLimits = Shapes::ListShape.new(name: 'UsageLimits')
    ValueStringList = Shapes::ListShape.new(name: 'ValueStringList')
    VpcEndpoint = Shapes::StructureShape.new(name: 'VpcEndpoint')
    VpcEndpointsList = Shapes::ListShape.new(name: 'VpcEndpointsList')
    VpcIdentifierList = Shapes::ListShape.new(name: 'VpcIdentifierList')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')

    AcceptReservedNodeExchangeInputMessage.add_member(:reserved_node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReservedNodeId"))
    AcceptReservedNodeExchangeInputMessage.add_member(:target_reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetReservedNodeOfferingId"))
    AcceptReservedNodeExchangeInputMessage.struct_class = Types::AcceptReservedNodeExchangeInputMessage

    AcceptReservedNodeExchangeOutputMessage.add_member(:exchanged_reserved_node, Shapes::ShapeRef.new(shape: ReservedNode, location_name: "ExchangedReservedNode"))
    AcceptReservedNodeExchangeOutputMessage.struct_class = Types::AcceptReservedNodeExchangeOutputMessage

    AccessToClusterDeniedFault.struct_class = Types::AccessToClusterDeniedFault

    AccessToSnapshotDeniedFault.struct_class = Types::AccessToSnapshotDeniedFault

    AccountAttribute.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "AttributeName"))
    AccountAttribute.add_member(:attribute_values, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValues"))
    AccountAttribute.struct_class = Types::AccountAttribute

    AccountAttributeList.add_member(:account_attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "AccountAttributes"))
    AccountAttributeList.struct_class = Types::AccountAttributeList

    AccountWithRestoreAccess.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    AccountWithRestoreAccess.add_member(:account_alias, Shapes::ShapeRef.new(shape: String, location_name: "AccountAlias"))
    AccountWithRestoreAccess.struct_class = Types::AccountWithRestoreAccess

    AccountsWithRestoreAccessList.member = Shapes::ShapeRef.new(shape: AccountWithRestoreAccess, location_name: "AccountWithRestoreAccess")

    AquaConfiguration.add_member(:aqua_status, Shapes::ShapeRef.new(shape: AquaStatus, location_name: "AquaStatus"))
    AquaConfiguration.add_member(:aqua_configuration_status, Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: "AquaConfigurationStatus"))
    AquaConfiguration.struct_class = Types::AquaConfiguration

    AssociateDataShareConsumerMessage.add_member(:data_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataShareArn"))
    AssociateDataShareConsumerMessage.add_member(:associate_entire_account, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AssociateEntireAccount"))
    AssociateDataShareConsumerMessage.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConsumerArn"))
    AssociateDataShareConsumerMessage.add_member(:consumer_region, Shapes::ShapeRef.new(shape: String, location_name: "ConsumerRegion"))
    AssociateDataShareConsumerMessage.struct_class = Types::AssociateDataShareConsumerMessage

    AssociatedClusterList.member = Shapes::ShapeRef.new(shape: ClusterAssociatedToSchedule, location_name: "ClusterAssociatedToSchedule")

    Association.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CustomDomainCertificateArn"))
    Association.add_member(:custom_domain_certificate_expiry_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CustomDomainCertificateExpiryDate"))
    Association.add_member(:certificate_associations, Shapes::ShapeRef.new(shape: CertificateAssociationList, location_name: "CertificateAssociations"))
    Association.struct_class = Types::Association

    AssociationList.member = Shapes::ShapeRef.new(shape: Association, location_name: "Association")

    AttributeList.member = Shapes::ShapeRef.new(shape: AccountAttribute, location_name: "AccountAttribute")

    AttributeNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "AttributeName")

    AttributeValueList.member = Shapes::ShapeRef.new(shape: AttributeValueTarget, location_name: "AttributeValueTarget")

    AttributeValueTarget.add_member(:attribute_value, Shapes::ShapeRef.new(shape: String, location_name: "AttributeValue"))
    AttributeValueTarget.struct_class = Types::AttributeValueTarget

    AuthenticationProfile.add_member(:authentication_profile_name, Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: "AuthenticationProfileName"))
    AuthenticationProfile.add_member(:authentication_profile_content, Shapes::ShapeRef.new(shape: String, location_name: "AuthenticationProfileContent"))
    AuthenticationProfile.struct_class = Types::AuthenticationProfile

    AuthenticationProfileAlreadyExistsFault.struct_class = Types::AuthenticationProfileAlreadyExistsFault

    AuthenticationProfileList.member = Shapes::ShapeRef.new(shape: AuthenticationProfile)

    AuthenticationProfileNotFoundFault.struct_class = Types::AuthenticationProfileNotFoundFault

    AuthenticationProfileQuotaExceededFault.struct_class = Types::AuthenticationProfileQuotaExceededFault

    AuthorizationAlreadyExistsFault.struct_class = Types::AuthorizationAlreadyExistsFault

    AuthorizationNotFoundFault.struct_class = Types::AuthorizationNotFoundFault

    AuthorizationQuotaExceededFault.struct_class = Types::AuthorizationQuotaExceededFault

    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSecurityGroupName"))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cidrip, Shapes::ShapeRef.new(shape: String, location_name: "CIDRIP"))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupName"))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupOwnerId"))
    AuthorizeClusterSecurityGroupIngressMessage.struct_class = Types::AuthorizeClusterSecurityGroupIngressMessage

    AuthorizeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: "ClusterSecurityGroup"))
    AuthorizeClusterSecurityGroupIngressResult.struct_class = Types::AuthorizeClusterSecurityGroupIngressResult

    AuthorizeDataShareMessage.add_member(:data_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataShareArn"))
    AuthorizeDataShareMessage.add_member(:consumer_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ConsumerIdentifier"))
    AuthorizeDataShareMessage.struct_class = Types::AuthorizeDataShareMessage

    AuthorizeEndpointAccessMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    AuthorizeEndpointAccessMessage.add_member(:account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Account"))
    AuthorizeEndpointAccessMessage.add_member(:vpc_ids, Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: "VpcIds"))
    AuthorizeEndpointAccessMessage.struct_class = Types::AuthorizeEndpointAccessMessage

    AuthorizeSnapshotAccessMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotArn"))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotClusterIdentifier"))
    AuthorizeSnapshotAccessMessage.add_member(:account_with_restore_access, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountWithRestoreAccess"))
    AuthorizeSnapshotAccessMessage.struct_class = Types::AuthorizeSnapshotAccessMessage

    AuthorizeSnapshotAccessResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    AuthorizeSnapshotAccessResult.struct_class = Types::AuthorizeSnapshotAccessResult

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.add_member(:supported_platforms, Shapes::ShapeRef.new(shape: SupportedPlatformsList, location_name: "SupportedPlatforms"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone")

    BatchDeleteClusterSnapshotsRequest.add_member(:identifiers, Shapes::ShapeRef.new(shape: DeleteClusterSnapshotMessageList, required: true, location_name: "Identifiers"))
    BatchDeleteClusterSnapshotsRequest.struct_class = Types::BatchDeleteClusterSnapshotsRequest

    BatchDeleteClusterSnapshotsResult.add_member(:resources, Shapes::ShapeRef.new(shape: SnapshotIdentifierList, location_name: "Resources"))
    BatchDeleteClusterSnapshotsResult.add_member(:errors, Shapes::ShapeRef.new(shape: BatchSnapshotOperationErrorList, location_name: "Errors"))
    BatchDeleteClusterSnapshotsResult.struct_class = Types::BatchDeleteClusterSnapshotsResult

    BatchDeleteRequestSizeExceededFault.struct_class = Types::BatchDeleteRequestSizeExceededFault

    BatchModifyClusterSnapshotsLimitExceededFault.struct_class = Types::BatchModifyClusterSnapshotsLimitExceededFault

    BatchModifyClusterSnapshotsMessage.add_member(:snapshot_identifier_list, Shapes::ShapeRef.new(shape: SnapshotIdentifierList, required: true, location_name: "SnapshotIdentifierList"))
    BatchModifyClusterSnapshotsMessage.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    BatchModifyClusterSnapshotsMessage.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    BatchModifyClusterSnapshotsMessage.struct_class = Types::BatchModifyClusterSnapshotsMessage

    BatchModifyClusterSnapshotsOutputMessage.add_member(:resources, Shapes::ShapeRef.new(shape: SnapshotIdentifierList, location_name: "Resources"))
    BatchModifyClusterSnapshotsOutputMessage.add_member(:errors, Shapes::ShapeRef.new(shape: BatchSnapshotOperationErrors, location_name: "Errors"))
    BatchModifyClusterSnapshotsOutputMessage.struct_class = Types::BatchModifyClusterSnapshotsOutputMessage

    BatchSnapshotOperationErrorList.member = Shapes::ShapeRef.new(shape: SnapshotErrorMessage, location_name: "SnapshotErrorMessage")

    BatchSnapshotOperationErrors.member = Shapes::ShapeRef.new(shape: SnapshotErrorMessage, location_name: "SnapshotErrorMessage")

    BucketNotFoundFault.struct_class = Types::BucketNotFoundFault

    CancelResizeMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    CancelResizeMessage.struct_class = Types::CancelResizeMessage

    CertificateAssociation.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: String, location_name: "CustomDomainName"))
    CertificateAssociation.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    CertificateAssociation.struct_class = Types::CertificateAssociation

    CertificateAssociationList.member = Shapes::ShapeRef.new(shape: CertificateAssociation, location_name: "CertificateAssociation")

    Cluster.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    Cluster.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    Cluster.add_member(:cluster_status, Shapes::ShapeRef.new(shape: String, location_name: "ClusterStatus"))
    Cluster.add_member(:cluster_availability_status, Shapes::ShapeRef.new(shape: String, location_name: "ClusterAvailabilityStatus"))
    Cluster.add_member(:modify_status, Shapes::ShapeRef.new(shape: String, location_name: "ModifyStatus"))
    Cluster.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    Cluster.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    Cluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    Cluster.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    Cluster.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "AutomatedSnapshotRetentionPeriod"))
    Cluster.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "ManualSnapshotRetentionPeriod"))
    Cluster.add_member(:cluster_security_groups, Shapes::ShapeRef.new(shape: ClusterSecurityGroupMembershipList, location_name: "ClusterSecurityGroups"))
    Cluster.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    Cluster.add_member(:cluster_parameter_groups, Shapes::ShapeRef.new(shape: ClusterParameterGroupStatusList, location_name: "ClusterParameterGroups"))
    Cluster.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSubnetGroupName"))
    Cluster.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    Cluster.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    Cluster.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    Cluster.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: "PendingModifiedValues"))
    Cluster.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    Cluster.add_member(:allow_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowVersionUpgrade"))
    Cluster.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfNodes"))
    Cluster.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    Cluster.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    Cluster.add_member(:restore_status, Shapes::ShapeRef.new(shape: RestoreStatus, location_name: "RestoreStatus"))
    Cluster.add_member(:data_transfer_progress, Shapes::ShapeRef.new(shape: DataTransferProgress, location_name: "DataTransferProgress"))
    Cluster.add_member(:hsm_status, Shapes::ShapeRef.new(shape: HsmStatus, location_name: "HsmStatus"))
    Cluster.add_member(:cluster_snapshot_copy_status, Shapes::ShapeRef.new(shape: ClusterSnapshotCopyStatus, location_name: "ClusterSnapshotCopyStatus"))
    Cluster.add_member(:cluster_public_key, Shapes::ShapeRef.new(shape: String, location_name: "ClusterPublicKey"))
    Cluster.add_member(:cluster_nodes, Shapes::ShapeRef.new(shape: ClusterNodesList, location_name: "ClusterNodes"))
    Cluster.add_member(:elastic_ip_status, Shapes::ShapeRef.new(shape: ElasticIpStatus, location_name: "ElasticIpStatus"))
    Cluster.add_member(:cluster_revision_number, Shapes::ShapeRef.new(shape: String, location_name: "ClusterRevisionNumber"))
    Cluster.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Cluster.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    Cluster.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnhancedVpcRouting"))
    Cluster.add_member(:iam_roles, Shapes::ShapeRef.new(shape: ClusterIamRoleList, location_name: "IamRoles"))
    Cluster.add_member(:pending_actions, Shapes::ShapeRef.new(shape: PendingActionsList, location_name: "PendingActions"))
    Cluster.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    Cluster.add_member(:elastic_resize_number_of_node_options, Shapes::ShapeRef.new(shape: String, location_name: "ElasticResizeNumberOfNodeOptions"))
    Cluster.add_member(:deferred_maintenance_windows, Shapes::ShapeRef.new(shape: DeferredMaintenanceWindowsList, location_name: "DeferredMaintenanceWindows"))
    Cluster.add_member(:snapshot_schedule_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotScheduleIdentifier"))
    Cluster.add_member(:snapshot_schedule_state, Shapes::ShapeRef.new(shape: ScheduleState, location_name: "SnapshotScheduleState"))
    Cluster.add_member(:expected_next_snapshot_schedule_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ExpectedNextSnapshotScheduleTime"))
    Cluster.add_member(:expected_next_snapshot_schedule_time_status, Shapes::ShapeRef.new(shape: String, location_name: "ExpectedNextSnapshotScheduleTimeStatus"))
    Cluster.add_member(:next_maintenance_window_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "NextMaintenanceWindowStartTime"))
    Cluster.add_member(:resize_info, Shapes::ShapeRef.new(shape: ResizeInfo, location_name: "ResizeInfo"))
    Cluster.add_member(:availability_zone_relocation_status, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZoneRelocationStatus"))
    Cluster.add_member(:cluster_namespace_arn, Shapes::ShapeRef.new(shape: String, location_name: "ClusterNamespaceArn"))
    Cluster.add_member(:total_storage_capacity_in_mega_bytes, Shapes::ShapeRef.new(shape: LongOptional, location_name: "TotalStorageCapacityInMegaBytes"))
    Cluster.add_member(:aqua_configuration, Shapes::ShapeRef.new(shape: AquaConfiguration, location_name: "AquaConfiguration"))
    Cluster.add_member(:default_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "DefaultIamRoleArn"))
    Cluster.add_member(:reserved_node_exchange_status, Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatus, location_name: "ReservedNodeExchangeStatus"))
    Cluster.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: String, location_name: "CustomDomainName"))
    Cluster.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CustomDomainCertificateArn"))
    Cluster.add_member(:custom_domain_certificate_expiry_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CustomDomainCertificateExpiryDate"))
    Cluster.struct_class = Types::Cluster

    ClusterAlreadyExistsFault.struct_class = Types::ClusterAlreadyExistsFault

    ClusterAssociatedToSchedule.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    ClusterAssociatedToSchedule.add_member(:schedule_association_state, Shapes::ShapeRef.new(shape: ScheduleState, location_name: "ScheduleAssociationState"))
    ClusterAssociatedToSchedule.struct_class = Types::ClusterAssociatedToSchedule

    ClusterCredentials.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    ClusterCredentials.add_member(:db_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "DbPassword"))
    ClusterCredentials.add_member(:expiration, Shapes::ShapeRef.new(shape: TStamp, location_name: "Expiration"))
    ClusterCredentials.struct_class = Types::ClusterCredentials

    ClusterDbRevision.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    ClusterDbRevision.add_member(:current_database_revision, Shapes::ShapeRef.new(shape: String, location_name: "CurrentDatabaseRevision"))
    ClusterDbRevision.add_member(:database_revision_release_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "DatabaseRevisionReleaseDate"))
    ClusterDbRevision.add_member(:revision_targets, Shapes::ShapeRef.new(shape: RevisionTargetsList, location_name: "RevisionTargets"))
    ClusterDbRevision.struct_class = Types::ClusterDbRevision

    ClusterDbRevisionsList.member = Shapes::ShapeRef.new(shape: ClusterDbRevision, location_name: "ClusterDbRevision")

    ClusterDbRevisionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterDbRevisionsMessage.add_member(:cluster_db_revisions, Shapes::ShapeRef.new(shape: ClusterDbRevisionsList, location_name: "ClusterDbRevisions"))
    ClusterDbRevisionsMessage.struct_class = Types::ClusterDbRevisionsMessage

    ClusterExtendedCredentials.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    ClusterExtendedCredentials.add_member(:db_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "DbPassword"))
    ClusterExtendedCredentials.add_member(:expiration, Shapes::ShapeRef.new(shape: TStamp, location_name: "Expiration"))
    ClusterExtendedCredentials.add_member(:next_refresh_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "NextRefreshTime"))
    ClusterExtendedCredentials.struct_class = Types::ClusterExtendedCredentials

    ClusterIamRole.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn"))
    ClusterIamRole.add_member(:apply_status, Shapes::ShapeRef.new(shape: String, location_name: "ApplyStatus"))
    ClusterIamRole.struct_class = Types::ClusterIamRole

    ClusterIamRoleList.member = Shapes::ShapeRef.new(shape: ClusterIamRole, location_name: "ClusterIamRole")

    ClusterList.member = Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster")

    ClusterNode.add_member(:node_role, Shapes::ShapeRef.new(shape: String, location_name: "NodeRole"))
    ClusterNode.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "PrivateIPAddress"))
    ClusterNode.add_member(:public_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "PublicIPAddress"))
    ClusterNode.struct_class = Types::ClusterNode

    ClusterNodesList.member = Shapes::ShapeRef.new(shape: ClusterNode)

    ClusterNotFoundFault.struct_class = Types::ClusterNotFoundFault

    ClusterOnLatestRevisionFault.struct_class = Types::ClusterOnLatestRevisionFault

    ClusterParameterGroup.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    ClusterParameterGroup.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupFamily"))
    ClusterParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterParameterGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ClusterParameterGroup.struct_class = Types::ClusterParameterGroup

    ClusterParameterGroupAlreadyExistsFault.struct_class = Types::ClusterParameterGroupAlreadyExistsFault

    ClusterParameterGroupDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    ClusterParameterGroupDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterParameterGroupDetails.struct_class = Types::ClusterParameterGroupDetails

    ClusterParameterGroupNameMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    ClusterParameterGroupNameMessage.add_member(:parameter_group_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupStatus"))
    ClusterParameterGroupNameMessage.struct_class = Types::ClusterParameterGroupNameMessage

    ClusterParameterGroupNotFoundFault.struct_class = Types::ClusterParameterGroupNotFoundFault

    ClusterParameterGroupQuotaExceededFault.struct_class = Types::ClusterParameterGroupQuotaExceededFault

    ClusterParameterGroupStatus.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    ClusterParameterGroupStatus.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterApplyStatus"))
    ClusterParameterGroupStatus.add_member(:cluster_parameter_status_list, Shapes::ShapeRef.new(shape: ClusterParameterStatusList, location_name: "ClusterParameterStatusList"))
    ClusterParameterGroupStatus.struct_class = Types::ClusterParameterGroupStatus

    ClusterParameterGroupStatusList.member = Shapes::ShapeRef.new(shape: ClusterParameterGroupStatus, location_name: "ClusterParameterGroup")

    ClusterParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterParameterGroupsMessage.add_member(:parameter_groups, Shapes::ShapeRef.new(shape: ParameterGroupList, location_name: "ParameterGroups"))
    ClusterParameterGroupsMessage.struct_class = Types::ClusterParameterGroupsMessage

    ClusterParameterStatus.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    ClusterParameterStatus.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterApplyStatus"))
    ClusterParameterStatus.add_member(:parameter_apply_error_description, Shapes::ShapeRef.new(shape: String, location_name: "ParameterApplyErrorDescription"))
    ClusterParameterStatus.struct_class = Types::ClusterParameterStatus

    ClusterParameterStatusList.member = Shapes::ShapeRef.new(shape: ClusterParameterStatus)

    ClusterQuotaExceededFault.struct_class = Types::ClusterQuotaExceededFault

    ClusterSecurityGroup.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSecurityGroupName"))
    ClusterSecurityGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterSecurityGroup.add_member(:ec2_security_groups, Shapes::ShapeRef.new(shape: EC2SecurityGroupList, location_name: "EC2SecurityGroups"))
    ClusterSecurityGroup.add_member(:ip_ranges, Shapes::ShapeRef.new(shape: IPRangeList, location_name: "IPRanges"))
    ClusterSecurityGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ClusterSecurityGroup.struct_class = Types::ClusterSecurityGroup

    ClusterSecurityGroupAlreadyExistsFault.struct_class = Types::ClusterSecurityGroupAlreadyExistsFault

    ClusterSecurityGroupMembership.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSecurityGroupName"))
    ClusterSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ClusterSecurityGroupMembership.struct_class = Types::ClusterSecurityGroupMembership

    ClusterSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: ClusterSecurityGroupMembership, location_name: "ClusterSecurityGroup")

    ClusterSecurityGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterSecurityGroupMessage.add_member(:cluster_security_groups, Shapes::ShapeRef.new(shape: ClusterSecurityGroups, location_name: "ClusterSecurityGroups"))
    ClusterSecurityGroupMessage.struct_class = Types::ClusterSecurityGroupMessage

    ClusterSecurityGroupNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "ClusterSecurityGroupName")

    ClusterSecurityGroupNotFoundFault.struct_class = Types::ClusterSecurityGroupNotFoundFault

    ClusterSecurityGroupQuotaExceededFault.struct_class = Types::ClusterSecurityGroupQuotaExceededFault

    ClusterSecurityGroups.member = Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: "ClusterSecurityGroup")

    ClusterSnapshotAlreadyExistsFault.struct_class = Types::ClusterSnapshotAlreadyExistsFault

    ClusterSnapshotCopyStatus.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, location_name: "DestinationRegion"))
    ClusterSnapshotCopyStatus.add_member(:retention_period, Shapes::ShapeRef.new(shape: Long, location_name: "RetentionPeriod"))
    ClusterSnapshotCopyStatus.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "ManualSnapshotRetentionPeriod"))
    ClusterSnapshotCopyStatus.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotCopyGrantName"))
    ClusterSnapshotCopyStatus.struct_class = Types::ClusterSnapshotCopyStatus

    ClusterSnapshotNotFoundFault.struct_class = Types::ClusterSnapshotNotFoundFault

    ClusterSnapshotQuotaExceededFault.struct_class = Types::ClusterSnapshotQuotaExceededFault

    ClusterSubnetGroup.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSubnetGroupName"))
    ClusterSubnetGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    ClusterSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    ClusterSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    ClusterSubnetGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ClusterSubnetGroup.struct_class = Types::ClusterSubnetGroup

    ClusterSubnetGroupAlreadyExistsFault.struct_class = Types::ClusterSubnetGroupAlreadyExistsFault

    ClusterSubnetGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterSubnetGroupMessage.add_member(:cluster_subnet_groups, Shapes::ShapeRef.new(shape: ClusterSubnetGroups, location_name: "ClusterSubnetGroups"))
    ClusterSubnetGroupMessage.struct_class = Types::ClusterSubnetGroupMessage

    ClusterSubnetGroupNotFoundFault.struct_class = Types::ClusterSubnetGroupNotFoundFault

    ClusterSubnetGroupQuotaExceededFault.struct_class = Types::ClusterSubnetGroupQuotaExceededFault

    ClusterSubnetGroups.member = Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: "ClusterSubnetGroup")

    ClusterSubnetQuotaExceededFault.struct_class = Types::ClusterSubnetQuotaExceededFault

    ClusterVersion.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    ClusterVersion.add_member(:cluster_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "ClusterParameterGroupFamily"))
    ClusterVersion.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterVersion.struct_class = Types::ClusterVersion

    ClusterVersionList.member = Shapes::ShapeRef.new(shape: ClusterVersion, location_name: "ClusterVersion")

    ClusterVersionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterVersionsMessage.add_member(:cluster_versions, Shapes::ShapeRef.new(shape: ClusterVersionList, location_name: "ClusterVersions"))
    ClusterVersionsMessage.struct_class = Types::ClusterVersionsMessage

    ClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClustersMessage.add_member(:clusters, Shapes::ShapeRef.new(shape: ClusterList, location_name: "Clusters"))
    ClustersMessage.struct_class = Types::ClustersMessage

    CopyClusterSnapshotMessage.add_member(:source_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceSnapshotIdentifier"))
    CopyClusterSnapshotMessage.add_member(:source_snapshot_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceSnapshotClusterIdentifier"))
    CopyClusterSnapshotMessage.add_member(:target_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetSnapshotIdentifier"))
    CopyClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    CopyClusterSnapshotMessage.struct_class = Types::CopyClusterSnapshotMessage

    CopyClusterSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    CopyClusterSnapshotResult.struct_class = Types::CopyClusterSnapshotResult

    CopyToRegionDisabledFault.struct_class = Types::CopyToRegionDisabledFault

    CreateAuthenticationProfileMessage.add_member(:authentication_profile_name, Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, required: true, location_name: "AuthenticationProfileName"))
    CreateAuthenticationProfileMessage.add_member(:authentication_profile_content, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AuthenticationProfileContent"))
    CreateAuthenticationProfileMessage.struct_class = Types::CreateAuthenticationProfileMessage

    CreateAuthenticationProfileResult.add_member(:authentication_profile_name, Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: "AuthenticationProfileName"))
    CreateAuthenticationProfileResult.add_member(:authentication_profile_content, Shapes::ShapeRef.new(shape: String, location_name: "AuthenticationProfileContent"))
    CreateAuthenticationProfileResult.struct_class = Types::CreateAuthenticationProfileResult

    CreateClusterMessage.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    CreateClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    CreateClusterMessage.add_member(:cluster_type, Shapes::ShapeRef.new(shape: String, location_name: "ClusterType"))
    CreateClusterMessage.add_member(:node_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "NodeType"))
    CreateClusterMessage.add_member(:master_username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MasterUsername"))
    CreateClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MasterUserPassword"))
    CreateClusterMessage.add_member(:cluster_security_groups, Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: "ClusterSecurityGroups"))
    CreateClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateClusterMessage.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSubnetGroupName"))
    CreateClusterMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateClusterMessage.add_member(:cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterParameterGroupName"))
    CreateClusterMessage.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AutomatedSnapshotRetentionPeriod"))
    CreateClusterMessage.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    CreateClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateClusterMessage.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    CreateClusterMessage.add_member(:allow_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowVersionUpgrade"))
    CreateClusterMessage.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfNodes"))
    CreateClusterMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateClusterMessage.add_member(:encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Encrypted"))
    CreateClusterMessage.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmClientCertificateIdentifier"))
    CreateClusterMessage.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmConfigurationIdentifier"))
    CreateClusterMessage.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, location_name: "ElasticIp"))
    CreateClusterMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateClusterMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateClusterMessage.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnhancedVpcRouting"))
    CreateClusterMessage.add_member(:additional_info, Shapes::ShapeRef.new(shape: String, location_name: "AdditionalInfo"))
    CreateClusterMessage.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "IamRoles"))
    CreateClusterMessage.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    CreateClusterMessage.add_member(:snapshot_schedule_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotScheduleIdentifier"))
    CreateClusterMessage.add_member(:availability_zone_relocation, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AvailabilityZoneRelocation"))
    CreateClusterMessage.add_member(:aqua_configuration_status, Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: "AquaConfigurationStatus"))
    CreateClusterMessage.add_member(:default_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "DefaultIamRoleArn"))
    CreateClusterMessage.add_member(:load_sample_data, Shapes::ShapeRef.new(shape: String, location_name: "LoadSampleData"))
    CreateClusterMessage.struct_class = Types::CreateClusterMessage

    CreateClusterParameterGroupMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    CreateClusterParameterGroupMessage.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupFamily"))
    CreateClusterParameterGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateClusterParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateClusterParameterGroupMessage.struct_class = Types::CreateClusterParameterGroupMessage

    CreateClusterParameterGroupResult.add_member(:cluster_parameter_group, Shapes::ShapeRef.new(shape: ClusterParameterGroup, location_name: "ClusterParameterGroup"))
    CreateClusterParameterGroupResult.struct_class = Types::CreateClusterParameterGroupResult

    CreateClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    CreateClusterResult.struct_class = Types::CreateClusterResult

    CreateClusterSecurityGroupMessage.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSecurityGroupName"))
    CreateClusterSecurityGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateClusterSecurityGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateClusterSecurityGroupMessage.struct_class = Types::CreateClusterSecurityGroupMessage

    CreateClusterSecurityGroupResult.add_member(:cluster_security_group, Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: "ClusterSecurityGroup"))
    CreateClusterSecurityGroupResult.struct_class = Types::CreateClusterSecurityGroupResult

    CreateClusterSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    CreateClusterSnapshotMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    CreateClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    CreateClusterSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateClusterSnapshotMessage.struct_class = Types::CreateClusterSnapshotMessage

    CreateClusterSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    CreateClusterSnapshotResult.struct_class = Types::CreateClusterSnapshotResult

    CreateClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSubnetGroupName"))
    CreateClusterSubnetGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateClusterSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateClusterSubnetGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateClusterSubnetGroupMessage.struct_class = Types::CreateClusterSubnetGroupMessage

    CreateClusterSubnetGroupResult.add_member(:cluster_subnet_group, Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: "ClusterSubnetGroup"))
    CreateClusterSubnetGroupResult.struct_class = Types::CreateClusterSubnetGroupResult

    CreateCustomDomainAssociationMessage.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainNameString, required: true, location_name: "CustomDomainName"))
    CreateCustomDomainAssociationMessage.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, required: true, location_name: "CustomDomainCertificateArn"))
    CreateCustomDomainAssociationMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    CreateCustomDomainAssociationMessage.struct_class = Types::CreateCustomDomainAssociationMessage

    CreateCustomDomainAssociationResult.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: "CustomDomainName"))
    CreateCustomDomainAssociationResult.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "CustomDomainCertificateArn"))
    CreateCustomDomainAssociationResult.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    CreateCustomDomainAssociationResult.add_member(:custom_domain_cert_expiry_time, Shapes::ShapeRef.new(shape: String, location_name: "CustomDomainCertExpiryTime"))
    CreateCustomDomainAssociationResult.struct_class = Types::CreateCustomDomainAssociationResult

    CreateEndpointAccessMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    CreateEndpointAccessMessage.add_member(:resource_owner, Shapes::ShapeRef.new(shape: String, location_name: "ResourceOwner"))
    CreateEndpointAccessMessage.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointName"))
    CreateEndpointAccessMessage.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubnetGroupName"))
    CreateEndpointAccessMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateEndpointAccessMessage.struct_class = Types::CreateEndpointAccessMessage

    CreateEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnsTopicArn"))
    CreateEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:source_ids, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "Severity"))
    CreateEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEventSubscriptionMessage.struct_class = Types::CreateEventSubscriptionMessage

    CreateEventSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    CreateEventSubscriptionResult.struct_class = Types::CreateEventSubscriptionResult

    CreateHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmClientCertificateIdentifier"))
    CreateHsmClientCertificateMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHsmClientCertificateMessage.struct_class = Types::CreateHsmClientCertificateMessage

    CreateHsmClientCertificateResult.add_member(:hsm_client_certificate, Shapes::ShapeRef.new(shape: HsmClientCertificate, location_name: "HsmClientCertificate"))
    CreateHsmClientCertificateResult.struct_class = Types::CreateHsmClientCertificateResult

    CreateHsmConfigurationMessage.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmConfigurationIdentifier"))
    CreateHsmConfigurationMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateHsmConfigurationMessage.add_member(:hsm_ip_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmIpAddress"))
    CreateHsmConfigurationMessage.add_member(:hsm_partition_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmPartitionName"))
    CreateHsmConfigurationMessage.add_member(:hsm_partition_password, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmPartitionPassword"))
    CreateHsmConfigurationMessage.add_member(:hsm_server_public_certificate, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmServerPublicCertificate"))
    CreateHsmConfigurationMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHsmConfigurationMessage.struct_class = Types::CreateHsmConfigurationMessage

    CreateHsmConfigurationResult.add_member(:hsm_configuration, Shapes::ShapeRef.new(shape: HsmConfiguration, location_name: "HsmConfiguration"))
    CreateHsmConfigurationResult.struct_class = Types::CreateHsmConfigurationResult

    CreateScheduledActionMessage.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduledActionName"))
    CreateScheduledActionMessage.add_member(:target_action, Shapes::ShapeRef.new(shape: ScheduledActionType, required: true, location_name: "TargetAction"))
    CreateScheduledActionMessage.add_member(:schedule, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Schedule"))
    CreateScheduledActionMessage.add_member(:iam_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamRole"))
    CreateScheduledActionMessage.add_member(:scheduled_action_description, Shapes::ShapeRef.new(shape: String, location_name: "ScheduledActionDescription"))
    CreateScheduledActionMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    CreateScheduledActionMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    CreateScheduledActionMessage.add_member(:enable, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enable"))
    CreateScheduledActionMessage.struct_class = Types::CreateScheduledActionMessage

    CreateSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotCopyGrantName"))
    CreateSnapshotCopyGrantMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateSnapshotCopyGrantMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSnapshotCopyGrantMessage.struct_class = Types::CreateSnapshotCopyGrantMessage

    CreateSnapshotCopyGrantResult.add_member(:snapshot_copy_grant, Shapes::ShapeRef.new(shape: SnapshotCopyGrant, location_name: "SnapshotCopyGrant"))
    CreateSnapshotCopyGrantResult.struct_class = Types::CreateSnapshotCopyGrantResult

    CreateSnapshotScheduleMessage.add_member(:schedule_definitions, Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: "ScheduleDefinitions"))
    CreateSnapshotScheduleMessage.add_member(:schedule_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleIdentifier"))
    CreateSnapshotScheduleMessage.add_member(:schedule_description, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleDescription"))
    CreateSnapshotScheduleMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSnapshotScheduleMessage.add_member(:dry_run, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DryRun"))
    CreateSnapshotScheduleMessage.add_member(:next_invocations, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NextInvocations"))
    CreateSnapshotScheduleMessage.struct_class = Types::CreateSnapshotScheduleMessage

    CreateTagsMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    CreateTagsMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    CreateTagsMessage.struct_class = Types::CreateTagsMessage

    CreateUsageLimitMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    CreateUsageLimitMessage.add_member(:feature_type, Shapes::ShapeRef.new(shape: UsageLimitFeatureType, required: true, location_name: "FeatureType"))
    CreateUsageLimitMessage.add_member(:limit_type, Shapes::ShapeRef.new(shape: UsageLimitLimitType, required: true, location_name: "LimitType"))
    CreateUsageLimitMessage.add_member(:amount, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "Amount"))
    CreateUsageLimitMessage.add_member(:period, Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: "Period"))
    CreateUsageLimitMessage.add_member(:breach_action, Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: "BreachAction"))
    CreateUsageLimitMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateUsageLimitMessage.struct_class = Types::CreateUsageLimitMessage

    CustomCnameAssociationFault.struct_class = Types::CustomCnameAssociationFault

    CustomDomainAssociationNotFoundFault.struct_class = Types::CustomDomainAssociationNotFoundFault

    CustomDomainAssociationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CustomDomainAssociationsMessage.add_member(:associations, Shapes::ShapeRef.new(shape: AssociationList, location_name: "Associations"))
    CustomDomainAssociationsMessage.struct_class = Types::CustomDomainAssociationsMessage

    CustomerStorageMessage.add_member(:total_backup_size_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "TotalBackupSizeInMegaBytes"))
    CustomerStorageMessage.add_member(:total_provisioned_storage_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "TotalProvisionedStorageInMegaBytes"))
    CustomerStorageMessage.struct_class = Types::CustomerStorageMessage

    DataShare.add_member(:data_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataShareArn"))
    DataShare.add_member(:producer_arn, Shapes::ShapeRef.new(shape: String, location_name: "ProducerArn"))
    DataShare.add_member(:allow_publicly_accessible_consumers, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowPubliclyAccessibleConsumers"))
    DataShare.add_member(:data_share_associations, Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: "DataShareAssociations"))
    DataShare.add_member(:managed_by, Shapes::ShapeRef.new(shape: String, location_name: "ManagedBy"))
    DataShare.struct_class = Types::DataShare

    DataShareAssociation.add_member(:consumer_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ConsumerIdentifier"))
    DataShareAssociation.add_member(:status, Shapes::ShapeRef.new(shape: DataShareStatus, location_name: "Status"))
    DataShareAssociation.add_member(:consumer_region, Shapes::ShapeRef.new(shape: String, location_name: "ConsumerRegion"))
    DataShareAssociation.add_member(:created_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedDate"))
    DataShareAssociation.add_member(:status_change_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "StatusChangeDate"))
    DataShareAssociation.struct_class = Types::DataShareAssociation

    DataShareAssociationList.member = Shapes::ShapeRef.new(shape: DataShareAssociation)

    DataShareList.member = Shapes::ShapeRef.new(shape: DataShare)

    DataTransferProgress.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DataTransferProgress.add_member(:current_rate_in_mega_bytes_per_second, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "CurrentRateInMegaBytesPerSecond"))
    DataTransferProgress.add_member(:total_data_in_mega_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "TotalDataInMegaBytes"))
    DataTransferProgress.add_member(:data_transferred_in_mega_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "DataTransferredInMegaBytes"))
    DataTransferProgress.add_member(:estimated_time_to_completion_in_seconds, Shapes::ShapeRef.new(shape: LongOptional, location_name: "EstimatedTimeToCompletionInSeconds"))
    DataTransferProgress.add_member(:elapsed_time_in_seconds, Shapes::ShapeRef.new(shape: LongOptional, location_name: "ElapsedTimeInSeconds"))
    DataTransferProgress.struct_class = Types::DataTransferProgress

    DbGroupList.member = Shapes::ShapeRef.new(shape: String, location_name: "DbGroup")

    DeauthorizeDataShareMessage.add_member(:data_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataShareArn"))
    DeauthorizeDataShareMessage.add_member(:consumer_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ConsumerIdentifier"))
    DeauthorizeDataShareMessage.struct_class = Types::DeauthorizeDataShareMessage

    DefaultClusterParameters.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupFamily"))
    DefaultClusterParameters.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DefaultClusterParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    DefaultClusterParameters.struct_class = Types::DefaultClusterParameters

    DeferredMaintenanceWindow.add_member(:defer_maintenance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DeferMaintenanceIdentifier"))
    DeferredMaintenanceWindow.add_member(:defer_maintenance_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "DeferMaintenanceStartTime"))
    DeferredMaintenanceWindow.add_member(:defer_maintenance_end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "DeferMaintenanceEndTime"))
    DeferredMaintenanceWindow.struct_class = Types::DeferredMaintenanceWindow

    DeferredMaintenanceWindowsList.member = Shapes::ShapeRef.new(shape: DeferredMaintenanceWindow, location_name: "DeferredMaintenanceWindow")

    DeleteAuthenticationProfileMessage.add_member(:authentication_profile_name, Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, required: true, location_name: "AuthenticationProfileName"))
    DeleteAuthenticationProfileMessage.struct_class = Types::DeleteAuthenticationProfileMessage

    DeleteAuthenticationProfileResult.add_member(:authentication_profile_name, Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: "AuthenticationProfileName"))
    DeleteAuthenticationProfileResult.struct_class = Types::DeleteAuthenticationProfileResult

    DeleteClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DeleteClusterMessage.add_member(:skip_final_cluster_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalClusterSnapshot"))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalClusterSnapshotIdentifier"))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "FinalClusterSnapshotRetentionPeriod"))
    DeleteClusterMessage.struct_class = Types::DeleteClusterMessage

    DeleteClusterParameterGroupMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    DeleteClusterParameterGroupMessage.struct_class = Types::DeleteClusterParameterGroupMessage

    DeleteClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DeleteClusterResult.struct_class = Types::DeleteClusterResult

    DeleteClusterSecurityGroupMessage.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSecurityGroupName"))
    DeleteClusterSecurityGroupMessage.struct_class = Types::DeleteClusterSecurityGroupMessage

    DeleteClusterSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    DeleteClusterSnapshotMessage.add_member(:snapshot_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotClusterIdentifier"))
    DeleteClusterSnapshotMessage.struct_class = Types::DeleteClusterSnapshotMessage

    DeleteClusterSnapshotMessageList.member = Shapes::ShapeRef.new(shape: DeleteClusterSnapshotMessage, location_name: "DeleteClusterSnapshotMessage")

    DeleteClusterSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    DeleteClusterSnapshotResult.struct_class = Types::DeleteClusterSnapshotResult

    DeleteClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSubnetGroupName"))
    DeleteClusterSubnetGroupMessage.struct_class = Types::DeleteClusterSubnetGroupMessage

    DeleteCustomDomainAssociationMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DeleteCustomDomainAssociationMessage.struct_class = Types::DeleteCustomDomainAssociationMessage

    DeleteEndpointAccessMessage.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointName"))
    DeleteEndpointAccessMessage.struct_class = Types::DeleteEndpointAccessMessage

    DeleteEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    DeleteEventSubscriptionMessage.struct_class = Types::DeleteEventSubscriptionMessage

    DeleteHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmClientCertificateIdentifier"))
    DeleteHsmClientCertificateMessage.struct_class = Types::DeleteHsmClientCertificateMessage

    DeleteHsmConfigurationMessage.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmConfigurationIdentifier"))
    DeleteHsmConfigurationMessage.struct_class = Types::DeleteHsmConfigurationMessage

    DeleteScheduledActionMessage.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduledActionName"))
    DeleteScheduledActionMessage.struct_class = Types::DeleteScheduledActionMessage

    DeleteSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotCopyGrantName"))
    DeleteSnapshotCopyGrantMessage.struct_class = Types::DeleteSnapshotCopyGrantMessage

    DeleteSnapshotScheduleMessage.add_member(:schedule_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduleIdentifier"))
    DeleteSnapshotScheduleMessage.struct_class = Types::DeleteSnapshotScheduleMessage

    DeleteTagsMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    DeleteTagsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    DeleteTagsMessage.struct_class = Types::DeleteTagsMessage

    DeleteUsageLimitMessage.add_member(:usage_limit_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "UsageLimitId"))
    DeleteUsageLimitMessage.struct_class = Types::DeleteUsageLimitMessage

    DependentServiceRequestThrottlingFault.struct_class = Types::DependentServiceRequestThrottlingFault

    DependentServiceUnavailableFault.struct_class = Types::DependentServiceUnavailableFault

    DescribeAccountAttributesMessage.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributeNames"))
    DescribeAccountAttributesMessage.struct_class = Types::DescribeAccountAttributesMessage

    DescribeAuthenticationProfilesMessage.add_member(:authentication_profile_name, Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: "AuthenticationProfileName"))
    DescribeAuthenticationProfilesMessage.struct_class = Types::DescribeAuthenticationProfilesMessage

    DescribeAuthenticationProfilesResult.add_member(:authentication_profiles, Shapes::ShapeRef.new(shape: AuthenticationProfileList, location_name: "AuthenticationProfiles"))
    DescribeAuthenticationProfilesResult.struct_class = Types::DescribeAuthenticationProfilesResult

    DescribeClusterDbRevisionsMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeClusterDbRevisionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterDbRevisionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterDbRevisionsMessage.struct_class = Types::DescribeClusterDbRevisionsMessage

    DescribeClusterParameterGroupsMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    DescribeClusterParameterGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterParameterGroupsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeClusterParameterGroupsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeClusterParameterGroupsMessage.struct_class = Types::DescribeClusterParameterGroupsMessage

    DescribeClusterParametersMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    DescribeClusterParametersMessage.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterParametersMessage.struct_class = Types::DescribeClusterParametersMessage

    DescribeClusterSecurityGroupsMessage.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSecurityGroupName"))
    DescribeClusterSecurityGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterSecurityGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterSecurityGroupsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeClusterSecurityGroupsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeClusterSecurityGroupsMessage.struct_class = Types::DescribeClusterSecurityGroupsMessage

    DescribeClusterSnapshotsMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotArn"))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DescribeClusterSnapshotsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeClusterSnapshotsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeClusterSnapshotsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterSnapshotsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterSnapshotsMessage.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "OwnerAccount"))
    DescribeClusterSnapshotsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeClusterSnapshotsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeClusterSnapshotsMessage.add_member(:cluster_exists, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ClusterExists"))
    DescribeClusterSnapshotsMessage.add_member(:sorting_entities, Shapes::ShapeRef.new(shape: SnapshotSortingEntityList, location_name: "SortingEntities"))
    DescribeClusterSnapshotsMessage.struct_class = Types::DescribeClusterSnapshotsMessage

    DescribeClusterSubnetGroupsMessage.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSubnetGroupName"))
    DescribeClusterSubnetGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterSubnetGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterSubnetGroupsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeClusterSubnetGroupsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeClusterSubnetGroupsMessage.struct_class = Types::DescribeClusterSubnetGroupsMessage

    DescribeClusterTracksMessage.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    DescribeClusterTracksMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterTracksMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterTracksMessage.struct_class = Types::DescribeClusterTracksMessage

    DescribeClusterVersionsMessage.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    DescribeClusterVersionsMessage.add_member(:cluster_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "ClusterParameterGroupFamily"))
    DescribeClusterVersionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterVersionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterVersionsMessage.struct_class = Types::DescribeClusterVersionsMessage

    DescribeClustersMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeClustersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClustersMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeClustersMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeClustersMessage.struct_class = Types::DescribeClustersMessage

    DescribeCustomDomainAssociationsMessage.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: "CustomDomainName"))
    DescribeCustomDomainAssociationsMessage.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "CustomDomainCertificateArn"))
    DescribeCustomDomainAssociationsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCustomDomainAssociationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCustomDomainAssociationsMessage.struct_class = Types::DescribeCustomDomainAssociationsMessage

    DescribeDataSharesForConsumerMessage.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConsumerArn"))
    DescribeDataSharesForConsumerMessage.add_member(:status, Shapes::ShapeRef.new(shape: DataShareStatusForConsumer, location_name: "Status"))
    DescribeDataSharesForConsumerMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDataSharesForConsumerMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataSharesForConsumerMessage.struct_class = Types::DescribeDataSharesForConsumerMessage

    DescribeDataSharesForConsumerResult.add_member(:data_shares, Shapes::ShapeRef.new(shape: DataShareList, location_name: "DataShares"))
    DescribeDataSharesForConsumerResult.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataSharesForConsumerResult.struct_class = Types::DescribeDataSharesForConsumerResult

    DescribeDataSharesForProducerMessage.add_member(:producer_arn, Shapes::ShapeRef.new(shape: String, location_name: "ProducerArn"))
    DescribeDataSharesForProducerMessage.add_member(:status, Shapes::ShapeRef.new(shape: DataShareStatusForProducer, location_name: "Status"))
    DescribeDataSharesForProducerMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDataSharesForProducerMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataSharesForProducerMessage.struct_class = Types::DescribeDataSharesForProducerMessage

    DescribeDataSharesForProducerResult.add_member(:data_shares, Shapes::ShapeRef.new(shape: DataShareList, location_name: "DataShares"))
    DescribeDataSharesForProducerResult.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataSharesForProducerResult.struct_class = Types::DescribeDataSharesForProducerResult

    DescribeDataSharesMessage.add_member(:data_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "DataShareArn"))
    DescribeDataSharesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDataSharesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataSharesMessage.struct_class = Types::DescribeDataSharesMessage

    DescribeDataSharesResult.add_member(:data_shares, Shapes::ShapeRef.new(shape: DataShareList, location_name: "DataShares"))
    DescribeDataSharesResult.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDataSharesResult.struct_class = Types::DescribeDataSharesResult

    DescribeDefaultClusterParametersMessage.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupFamily"))
    DescribeDefaultClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDefaultClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDefaultClusterParametersMessage.struct_class = Types::DescribeDefaultClusterParametersMessage

    DescribeDefaultClusterParametersResult.add_member(:default_cluster_parameters, Shapes::ShapeRef.new(shape: DefaultClusterParameters, location_name: "DefaultClusterParameters"))
    DescribeDefaultClusterParametersResult.struct_class = Types::DescribeDefaultClusterParametersResult

    DescribeEndpointAccessMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeEndpointAccessMessage.add_member(:resource_owner, Shapes::ShapeRef.new(shape: String, location_name: "ResourceOwner"))
    DescribeEndpointAccessMessage.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, location_name: "EndpointName"))
    DescribeEndpointAccessMessage.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DescribeEndpointAccessMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointAccessMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointAccessMessage.struct_class = Types::DescribeEndpointAccessMessage

    DescribeEndpointAuthorizationMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeEndpointAuthorizationMessage.add_member(:account, Shapes::ShapeRef.new(shape: String, location_name: "Account"))
    DescribeEndpointAuthorizationMessage.add_member(:grantee, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Grantee"))
    DescribeEndpointAuthorizationMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointAuthorizationMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointAuthorizationMessage.struct_class = Types::DescribeEndpointAuthorizationMessage

    DescribeEventCategoriesMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    DescribeEventCategoriesMessage.struct_class = Types::DescribeEventCategoriesMessage

    DescribeEventSubscriptionsMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeEventSubscriptionsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeEventSubscriptionsMessage.struct_class = Types::DescribeEventSubscriptionsMessage

    DescribeEventsMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Duration"))
    DescribeEventsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsMessage.struct_class = Types::DescribeEventsMessage

    DescribeHsmClientCertificatesMessage.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmClientCertificateIdentifier"))
    DescribeHsmClientCertificatesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeHsmClientCertificatesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeHsmClientCertificatesMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeHsmClientCertificatesMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeHsmClientCertificatesMessage.struct_class = Types::DescribeHsmClientCertificatesMessage

    DescribeHsmConfigurationsMessage.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmConfigurationIdentifier"))
    DescribeHsmConfigurationsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeHsmConfigurationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeHsmConfigurationsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeHsmConfigurationsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeHsmConfigurationsMessage.struct_class = Types::DescribeHsmConfigurationsMessage

    DescribeLoggingStatusMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DescribeLoggingStatusMessage.struct_class = Types::DescribeLoggingStatusMessage

    DescribeNodeConfigurationOptionsMessage.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "ActionType"))
    DescribeNodeConfigurationOptionsMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeNodeConfigurationOptionsMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    DescribeNodeConfigurationOptionsMessage.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotArn"))
    DescribeNodeConfigurationOptionsMessage.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "OwnerAccount"))
    DescribeNodeConfigurationOptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilterList, location_name: "Filter"))
    DescribeNodeConfigurationOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeNodeConfigurationOptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeNodeConfigurationOptionsMessage.struct_class = Types::DescribeNodeConfigurationOptionsMessage

    DescribeOrderableClusterOptionsMessage.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    DescribeOrderableClusterOptionsMessage.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    DescribeOrderableClusterOptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOrderableClusterOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableClusterOptionsMessage.struct_class = Types::DescribeOrderableClusterOptionsMessage

    DescribePartnersInputMessage.add_member(:account_id, Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, required: true, location_name: "AccountId"))
    DescribePartnersInputMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, required: true, location_name: "ClusterIdentifier"))
    DescribePartnersInputMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: "DatabaseName"))
    DescribePartnersInputMessage.add_member(:partner_name, Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: "PartnerName"))
    DescribePartnersInputMessage.struct_class = Types::DescribePartnersInputMessage

    DescribePartnersOutputMessage.add_member(:partner_integration_info_list, Shapes::ShapeRef.new(shape: PartnerIntegrationInfoList, location_name: "PartnerIntegrationInfoList"))
    DescribePartnersOutputMessage.struct_class = Types::DescribePartnersOutputMessage

    DescribeReservedNodeExchangeStatusInputMessage.add_member(:reserved_node_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeId"))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:reserved_node_exchange_request_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeExchangeRequestId"))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReservedNodeExchangeStatusInputMessage.struct_class = Types::DescribeReservedNodeExchangeStatusInputMessage

    DescribeReservedNodeExchangeStatusOutputMessage.add_member(:reserved_node_exchange_status_details, Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatusList, location_name: "ReservedNodeExchangeStatusDetails"))
    DescribeReservedNodeExchangeStatusOutputMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReservedNodeExchangeStatusOutputMessage.struct_class = Types::DescribeReservedNodeExchangeStatusOutputMessage

    DescribeReservedNodeOfferingsMessage.add_member(:reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeOfferingId"))
    DescribeReservedNodeOfferingsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReservedNodeOfferingsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReservedNodeOfferingsMessage.struct_class = Types::DescribeReservedNodeOfferingsMessage

    DescribeReservedNodesMessage.add_member(:reserved_node_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeId"))
    DescribeReservedNodesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReservedNodesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReservedNodesMessage.struct_class = Types::DescribeReservedNodesMessage

    DescribeResizeMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DescribeResizeMessage.struct_class = Types::DescribeResizeMessage

    DescribeScheduledActionsMessage.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: String, location_name: "ScheduledActionName"))
    DescribeScheduledActionsMessage.add_member(:target_action_type, Shapes::ShapeRef.new(shape: ScheduledActionTypeValues, location_name: "TargetActionType"))
    DescribeScheduledActionsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeScheduledActionsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeScheduledActionsMessage.add_member(:active, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Active"))
    DescribeScheduledActionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: ScheduledActionFilterList, location_name: "Filters"))
    DescribeScheduledActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeScheduledActionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeScheduledActionsMessage.struct_class = Types::DescribeScheduledActionsMessage

    DescribeSnapshotCopyGrantsMessage.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotCopyGrantName"))
    DescribeSnapshotCopyGrantsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeSnapshotCopyGrantsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeSnapshotCopyGrantsMessage.struct_class = Types::DescribeSnapshotCopyGrantsMessage

    DescribeSnapshotSchedulesMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeSnapshotSchedulesMessage.add_member(:schedule_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleIdentifier"))
    DescribeSnapshotSchedulesMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeSnapshotSchedulesMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeSnapshotSchedulesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSnapshotSchedulesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeSnapshotSchedulesMessage.struct_class = Types::DescribeSnapshotSchedulesMessage

    DescribeSnapshotSchedulesOutputMessage.add_member(:snapshot_schedules, Shapes::ShapeRef.new(shape: SnapshotScheduleList, location_name: "SnapshotSchedules"))
    DescribeSnapshotSchedulesOutputMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSnapshotSchedulesOutputMessage.struct_class = Types::DescribeSnapshotSchedulesOutputMessage

    DescribeTableRestoreStatusMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeTableRestoreStatusMessage.add_member(:table_restore_request_id, Shapes::ShapeRef.new(shape: String, location_name: "TableRestoreRequestId"))
    DescribeTableRestoreStatusMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeTableRestoreStatusMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTableRestoreStatusMessage.struct_class = Types::DescribeTableRestoreStatusMessage

    DescribeTagsMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "ResourceName"))
    DescribeTagsMessage.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    DescribeTagsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeTagsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTagsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeTagsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeTagsMessage.struct_class = Types::DescribeTagsMessage

    DescribeUsageLimitsMessage.add_member(:usage_limit_id, Shapes::ShapeRef.new(shape: String, location_name: "UsageLimitId"))
    DescribeUsageLimitsMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    DescribeUsageLimitsMessage.add_member(:feature_type, Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: "FeatureType"))
    DescribeUsageLimitsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeUsageLimitsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeUsageLimitsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeUsageLimitsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeUsageLimitsMessage.struct_class = Types::DescribeUsageLimitsMessage

    DisableLoggingMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DisableLoggingMessage.struct_class = Types::DisableLoggingMessage

    DisableSnapshotCopyMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DisableSnapshotCopyMessage.struct_class = Types::DisableSnapshotCopyMessage

    DisableSnapshotCopyResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DisableSnapshotCopyResult.struct_class = Types::DisableSnapshotCopyResult

    DisassociateDataShareConsumerMessage.add_member(:data_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataShareArn"))
    DisassociateDataShareConsumerMessage.add_member(:disassociate_entire_account, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DisassociateEntireAccount"))
    DisassociateDataShareConsumerMessage.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConsumerArn"))
    DisassociateDataShareConsumerMessage.add_member(:consumer_region, Shapes::ShapeRef.new(shape: String, location_name: "ConsumerRegion"))
    DisassociateDataShareConsumerMessage.struct_class = Types::DisassociateDataShareConsumerMessage

    EC2SecurityGroup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EC2SecurityGroup.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupName"))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupOwnerId"))
    EC2SecurityGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    EC2SecurityGroup.struct_class = Types::EC2SecurityGroup

    EC2SecurityGroupList.member = Shapes::ShapeRef.new(shape: EC2SecurityGroup, location_name: "EC2SecurityGroup")

    ElasticIpStatus.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, location_name: "ElasticIp"))
    ElasticIpStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ElasticIpStatus.struct_class = Types::ElasticIpStatus

    EligibleTracksToUpdateList.member = Shapes::ShapeRef.new(shape: UpdateTarget, location_name: "UpdateTarget")

    EnableLoggingMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    EnableLoggingMessage.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    EnableLoggingMessage.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    EnableLoggingMessage.add_member(:log_destination_type, Shapes::ShapeRef.new(shape: LogDestinationType, location_name: "LogDestinationType"))
    EnableLoggingMessage.add_member(:log_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "LogExports"))
    EnableLoggingMessage.struct_class = Types::EnableLoggingMessage

    EnableSnapshotCopyMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    EnableSnapshotCopyMessage.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DestinationRegion"))
    EnableSnapshotCopyMessage.add_member(:retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "RetentionPeriod"))
    EnableSnapshotCopyMessage.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotCopyGrantName"))
    EnableSnapshotCopyMessage.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    EnableSnapshotCopyMessage.struct_class = Types::EnableSnapshotCopyMessage

    EnableSnapshotCopyResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    EnableSnapshotCopyResult.struct_class = Types::EnableSnapshotCopyResult

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Endpoint.add_member(:vpc_endpoints, Shapes::ShapeRef.new(shape: VpcEndpointsList, location_name: "VpcEndpoints"))
    Endpoint.struct_class = Types::Endpoint

    EndpointAccess.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    EndpointAccess.add_member(:resource_owner, Shapes::ShapeRef.new(shape: String, location_name: "ResourceOwner"))
    EndpointAccess.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupName"))
    EndpointAccess.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: String, location_name: "EndpointStatus"))
    EndpointAccess.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, location_name: "EndpointName"))
    EndpointAccess.add_member(:endpoint_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndpointCreateTime"))
    EndpointAccess.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    EndpointAccess.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    EndpointAccess.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    EndpointAccess.add_member(:vpc_endpoint, Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: "VpcEndpoint"))
    EndpointAccess.struct_class = Types::EndpointAccess

    EndpointAccessList.add_member(:endpoint_access_list, Shapes::ShapeRef.new(shape: EndpointAccesses, location_name: "EndpointAccessList"))
    EndpointAccessList.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EndpointAccessList.struct_class = Types::EndpointAccessList

    EndpointAccesses.member = Shapes::ShapeRef.new(shape: EndpointAccess)

    EndpointAlreadyExistsFault.struct_class = Types::EndpointAlreadyExistsFault

    EndpointAuthorization.add_member(:grantor, Shapes::ShapeRef.new(shape: String, location_name: "Grantor"))
    EndpointAuthorization.add_member(:grantee, Shapes::ShapeRef.new(shape: String, location_name: "Grantee"))
    EndpointAuthorization.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    EndpointAuthorization.add_member(:authorize_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "AuthorizeTime"))
    EndpointAuthorization.add_member(:cluster_status, Shapes::ShapeRef.new(shape: String, location_name: "ClusterStatus"))
    EndpointAuthorization.add_member(:status, Shapes::ShapeRef.new(shape: AuthorizationStatus, location_name: "Status"))
    EndpointAuthorization.add_member(:allowed_all_vp_cs, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowedAllVPCs"))
    EndpointAuthorization.add_member(:allowed_vp_cs, Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: "AllowedVPCs"))
    EndpointAuthorization.add_member(:endpoint_count, Shapes::ShapeRef.new(shape: Integer, location_name: "EndpointCount"))
    EndpointAuthorization.struct_class = Types::EndpointAuthorization

    EndpointAuthorizationAlreadyExistsFault.struct_class = Types::EndpointAuthorizationAlreadyExistsFault

    EndpointAuthorizationList.add_member(:endpoint_authorization_list, Shapes::ShapeRef.new(shape: EndpointAuthorizations, location_name: "EndpointAuthorizationList"))
    EndpointAuthorizationList.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EndpointAuthorizationList.struct_class = Types::EndpointAuthorizationList

    EndpointAuthorizationNotFoundFault.struct_class = Types::EndpointAuthorizationNotFoundFault

    EndpointAuthorizations.member = Shapes::ShapeRef.new(shape: EndpointAuthorization)

    EndpointAuthorizationsPerClusterLimitExceededFault.struct_class = Types::EndpointAuthorizationsPerClusterLimitExceededFault

    EndpointNotFoundFault.struct_class = Types::EndpointNotFoundFault

    EndpointsPerAuthorizationLimitExceededFault.struct_class = Types::EndpointsPerAuthorizationLimitExceededFault

    EndpointsPerClusterLimitExceededFault.struct_class = Types::EndpointsPerClusterLimitExceededFault

    Event.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    Event.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "Severity"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: String, location_name: "EventId"))
    Event.struct_class = Types::Event

    EventCategoriesList.member = Shapes::ShapeRef.new(shape: String, location_name: "EventCategory")

    EventCategoriesMap.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventCategoriesMap.add_member(:events, Shapes::ShapeRef.new(shape: EventInfoMapList, location_name: "Events"))
    EventCategoriesMap.struct_class = Types::EventCategoriesMap

    EventCategoriesMapList.member = Shapes::ShapeRef.new(shape: EventCategoriesMap, location_name: "EventCategoriesMap")

    EventCategoriesMessage.add_member(:event_categories_map_list, Shapes::ShapeRef.new(shape: EventCategoriesMapList, location_name: "EventCategoriesMapList"))
    EventCategoriesMessage.struct_class = Types::EventCategoriesMessage

    EventInfoMap.add_member(:event_id, Shapes::ShapeRef.new(shape: String, location_name: "EventId"))
    EventInfoMap.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    EventInfoMap.add_member(:event_description, Shapes::ShapeRef.new(shape: String, location_name: "EventDescription"))
    EventInfoMap.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "Severity"))
    EventInfoMap.struct_class = Types::EventInfoMap

    EventInfoMapList.member = Shapes::ShapeRef.new(shape: EventInfoMap, location_name: "EventInfoMap")

    EventList.member = Shapes::ShapeRef.new(shape: Event, location_name: "Event")

    EventSubscription.add_member(:customer_aws_id, Shapes::ShapeRef.new(shape: String, location_name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    EventSubscription.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategoriesList"))
    EventSubscription.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "Severity"))
    EventSubscription.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventSubscription.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    EventSubscription.struct_class = Types::EventSubscription

    EventSubscriptionQuotaExceededFault.struct_class = Types::EventSubscriptionQuotaExceededFault

    EventSubscriptionsList.member = Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription")

    EventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: "EventSubscriptionsList"))
    EventSubscriptionsMessage.struct_class = Types::EventSubscriptionsMessage

    EventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventsMessage.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    EventsMessage.struct_class = Types::EventsMessage

    GetClusterCredentialsMessage.add_member(:db_user, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DbUser"))
    GetClusterCredentialsMessage.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DbName"))
    GetClusterCredentialsMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    GetClusterCredentialsMessage.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DurationSeconds"))
    GetClusterCredentialsMessage.add_member(:auto_create, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoCreate"))
    GetClusterCredentialsMessage.add_member(:db_groups, Shapes::ShapeRef.new(shape: DbGroupList, location_name: "DbGroups"))
    GetClusterCredentialsMessage.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: String, location_name: "CustomDomainName"))
    GetClusterCredentialsMessage.struct_class = Types::GetClusterCredentialsMessage

    GetClusterCredentialsWithIAMMessage.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DbName"))
    GetClusterCredentialsWithIAMMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    GetClusterCredentialsWithIAMMessage.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DurationSeconds"))
    GetClusterCredentialsWithIAMMessage.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: String, location_name: "CustomDomainName"))
    GetClusterCredentialsWithIAMMessage.struct_class = Types::GetClusterCredentialsWithIAMMessage

    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:action_type, Shapes::ShapeRef.new(shape: ReservedNodeExchangeActionType, required: true, location_name: "ActionType"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.struct_class = Types::GetReservedNodeExchangeConfigurationOptionsInputMessage

    GetReservedNodeExchangeConfigurationOptionsOutputMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.add_member(:reserved_node_configuration_option_list, Shapes::ShapeRef.new(shape: ReservedNodeConfigurationOptionList, location_name: "ReservedNodeConfigurationOptionList"))
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.struct_class = Types::GetReservedNodeExchangeConfigurationOptionsOutputMessage

    GetReservedNodeExchangeOfferingsInputMessage.add_member(:reserved_node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReservedNodeId"))
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    GetReservedNodeExchangeOfferingsInputMessage.struct_class = Types::GetReservedNodeExchangeOfferingsInputMessage

    GetReservedNodeExchangeOfferingsOutputMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    GetReservedNodeExchangeOfferingsOutputMessage.add_member(:reserved_node_offerings, Shapes::ShapeRef.new(shape: ReservedNodeOfferingList, location_name: "ReservedNodeOfferings"))
    GetReservedNodeExchangeOfferingsOutputMessage.struct_class = Types::GetReservedNodeExchangeOfferingsOutputMessage

    HsmClientCertificate.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmClientCertificateIdentifier"))
    HsmClientCertificate.add_member(:hsm_client_certificate_public_key, Shapes::ShapeRef.new(shape: String, location_name: "HsmClientCertificatePublicKey"))
    HsmClientCertificate.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    HsmClientCertificate.struct_class = Types::HsmClientCertificate

    HsmClientCertificateAlreadyExistsFault.struct_class = Types::HsmClientCertificateAlreadyExistsFault

    HsmClientCertificateList.member = Shapes::ShapeRef.new(shape: HsmClientCertificate, location_name: "HsmClientCertificate")

    HsmClientCertificateMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    HsmClientCertificateMessage.add_member(:hsm_client_certificates, Shapes::ShapeRef.new(shape: HsmClientCertificateList, location_name: "HsmClientCertificates"))
    HsmClientCertificateMessage.struct_class = Types::HsmClientCertificateMessage

    HsmClientCertificateNotFoundFault.struct_class = Types::HsmClientCertificateNotFoundFault

    HsmClientCertificateQuotaExceededFault.struct_class = Types::HsmClientCertificateQuotaExceededFault

    HsmConfiguration.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmConfigurationIdentifier"))
    HsmConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    HsmConfiguration.add_member(:hsm_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "HsmIpAddress"))
    HsmConfiguration.add_member(:hsm_partition_name, Shapes::ShapeRef.new(shape: String, location_name: "HsmPartitionName"))
    HsmConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    HsmConfiguration.struct_class = Types::HsmConfiguration

    HsmConfigurationAlreadyExistsFault.struct_class = Types::HsmConfigurationAlreadyExistsFault

    HsmConfigurationList.member = Shapes::ShapeRef.new(shape: HsmConfiguration, location_name: "HsmConfiguration")

    HsmConfigurationMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    HsmConfigurationMessage.add_member(:hsm_configurations, Shapes::ShapeRef.new(shape: HsmConfigurationList, location_name: "HsmConfigurations"))
    HsmConfigurationMessage.struct_class = Types::HsmConfigurationMessage

    HsmConfigurationNotFoundFault.struct_class = Types::HsmConfigurationNotFoundFault

    HsmConfigurationQuotaExceededFault.struct_class = Types::HsmConfigurationQuotaExceededFault

    HsmStatus.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmClientCertificateIdentifier"))
    HsmStatus.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmConfigurationIdentifier"))
    HsmStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    HsmStatus.struct_class = Types::HsmStatus

    IPRange.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    IPRange.add_member(:cidrip, Shapes::ShapeRef.new(shape: String, location_name: "CIDRIP"))
    IPRange.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    IPRange.struct_class = Types::IPRange

    IPRangeList.member = Shapes::ShapeRef.new(shape: IPRange, location_name: "IPRange")

    IamRoleArnList.member = Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn")

    ImportTablesCompleted.member = Shapes::ShapeRef.new(shape: String)

    ImportTablesInProgress.member = Shapes::ShapeRef.new(shape: String)

    ImportTablesNotStarted.member = Shapes::ShapeRef.new(shape: String)

    InProgressTableRestoreQuotaExceededFault.struct_class = Types::InProgressTableRestoreQuotaExceededFault

    IncompatibleOrderableOptions.struct_class = Types::IncompatibleOrderableOptions

    InsufficientClusterCapacityFault.struct_class = Types::InsufficientClusterCapacityFault

    InsufficientS3BucketPolicyFault.struct_class = Types::InsufficientS3BucketPolicyFault

    InvalidAuthenticationProfileRequestFault.struct_class = Types::InvalidAuthenticationProfileRequestFault

    InvalidAuthorizationStateFault.struct_class = Types::InvalidAuthorizationStateFault

    InvalidClusterParameterGroupStateFault.struct_class = Types::InvalidClusterParameterGroupStateFault

    InvalidClusterSecurityGroupStateFault.struct_class = Types::InvalidClusterSecurityGroupStateFault

    InvalidClusterSnapshotScheduleStateFault.struct_class = Types::InvalidClusterSnapshotScheduleStateFault

    InvalidClusterSnapshotStateFault.struct_class = Types::InvalidClusterSnapshotStateFault

    InvalidClusterStateFault.struct_class = Types::InvalidClusterStateFault

    InvalidClusterSubnetGroupStateFault.struct_class = Types::InvalidClusterSubnetGroupStateFault

    InvalidClusterSubnetStateFault.struct_class = Types::InvalidClusterSubnetStateFault

    InvalidClusterTrackFault.struct_class = Types::InvalidClusterTrackFault

    InvalidDataShareFault.struct_class = Types::InvalidDataShareFault

    InvalidElasticIpFault.struct_class = Types::InvalidElasticIpFault

    InvalidEndpointStateFault.struct_class = Types::InvalidEndpointStateFault

    InvalidHsmClientCertificateStateFault.struct_class = Types::InvalidHsmClientCertificateStateFault

    InvalidHsmConfigurationStateFault.struct_class = Types::InvalidHsmConfigurationStateFault

    InvalidNamespaceFault.struct_class = Types::InvalidNamespaceFault

    InvalidReservedNodeStateFault.struct_class = Types::InvalidReservedNodeStateFault

    InvalidRestoreFault.struct_class = Types::InvalidRestoreFault

    InvalidRetentionPeriodFault.struct_class = Types::InvalidRetentionPeriodFault

    InvalidS3BucketNameFault.struct_class = Types::InvalidS3BucketNameFault

    InvalidS3KeyPrefixFault.struct_class = Types::InvalidS3KeyPrefixFault

    InvalidScheduleFault.struct_class = Types::InvalidScheduleFault

    InvalidScheduledActionFault.struct_class = Types::InvalidScheduledActionFault

    InvalidSnapshotCopyGrantStateFault.struct_class = Types::InvalidSnapshotCopyGrantStateFault

    InvalidSubnet.struct_class = Types::InvalidSubnet

    InvalidSubscriptionStateFault.struct_class = Types::InvalidSubscriptionStateFault

    InvalidTableRestoreArgumentFault.struct_class = Types::InvalidTableRestoreArgumentFault

    InvalidTagFault.struct_class = Types::InvalidTagFault

    InvalidUsageLimitFault.struct_class = Types::InvalidUsageLimitFault

    InvalidVPCNetworkStateFault.struct_class = Types::InvalidVPCNetworkStateFault

    LimitExceededFault.struct_class = Types::LimitExceededFault

    LogTypeList.member = Shapes::ShapeRef.new(shape: String)

    LoggingStatus.add_member(:logging_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "LoggingEnabled"))
    LoggingStatus.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    LoggingStatus.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    LoggingStatus.add_member(:last_successful_delivery_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastSuccessfulDeliveryTime"))
    LoggingStatus.add_member(:last_failure_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastFailureTime"))
    LoggingStatus.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    LoggingStatus.add_member(:log_destination_type, Shapes::ShapeRef.new(shape: LogDestinationType, location_name: "LogDestinationType"))
    LoggingStatus.add_member(:log_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "LogExports"))
    LoggingStatus.struct_class = Types::LoggingStatus

    MaintenanceTrack.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    MaintenanceTrack.add_member(:database_version, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseVersion"))
    MaintenanceTrack.add_member(:update_targets, Shapes::ShapeRef.new(shape: EligibleTracksToUpdateList, location_name: "UpdateTargets"))
    MaintenanceTrack.struct_class = Types::MaintenanceTrack

    ModifyAquaInputMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyAquaInputMessage.add_member(:aqua_configuration_status, Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: "AquaConfigurationStatus"))
    ModifyAquaInputMessage.struct_class = Types::ModifyAquaInputMessage

    ModifyAquaOutputMessage.add_member(:aqua_configuration, Shapes::ShapeRef.new(shape: AquaConfiguration, location_name: "AquaConfiguration"))
    ModifyAquaOutputMessage.struct_class = Types::ModifyAquaOutputMessage

    ModifyAuthenticationProfileMessage.add_member(:authentication_profile_name, Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, required: true, location_name: "AuthenticationProfileName"))
    ModifyAuthenticationProfileMessage.add_member(:authentication_profile_content, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AuthenticationProfileContent"))
    ModifyAuthenticationProfileMessage.struct_class = Types::ModifyAuthenticationProfileMessage

    ModifyAuthenticationProfileResult.add_member(:authentication_profile_name, Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: "AuthenticationProfileName"))
    ModifyAuthenticationProfileResult.add_member(:authentication_profile_content, Shapes::ShapeRef.new(shape: String, location_name: "AuthenticationProfileContent"))
    ModifyAuthenticationProfileResult.struct_class = Types::ModifyAuthenticationProfileResult

    ModifyClusterDbRevisionMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyClusterDbRevisionMessage.add_member(:revision_target, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RevisionTarget"))
    ModifyClusterDbRevisionMessage.struct_class = Types::ModifyClusterDbRevisionMessage

    ModifyClusterDbRevisionResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifyClusterDbRevisionResult.struct_class = Types::ModifyClusterDbRevisionResult

    ModifyClusterIamRolesMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyClusterIamRolesMessage.add_member(:add_iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "AddIamRoles"))
    ModifyClusterIamRolesMessage.add_member(:remove_iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "RemoveIamRoles"))
    ModifyClusterIamRolesMessage.add_member(:default_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "DefaultIamRoleArn"))
    ModifyClusterIamRolesMessage.struct_class = Types::ModifyClusterIamRolesMessage

    ModifyClusterIamRolesResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifyClusterIamRolesResult.struct_class = Types::ModifyClusterIamRolesResult

    ModifyClusterMaintenanceMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeferMaintenance"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DeferMaintenanceIdentifier"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "DeferMaintenanceStartTime"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "DeferMaintenanceEndTime"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DeferMaintenanceDuration"))
    ModifyClusterMaintenanceMessage.struct_class = Types::ModifyClusterMaintenanceMessage

    ModifyClusterMaintenanceResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifyClusterMaintenanceResult.struct_class = Types::ModifyClusterMaintenanceResult

    ModifyClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyClusterMessage.add_member(:cluster_type, Shapes::ShapeRef.new(shape: String, location_name: "ClusterType"))
    ModifyClusterMessage.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    ModifyClusterMessage.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfNodes"))
    ModifyClusterMessage.add_member(:cluster_security_groups, Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: "ClusterSecurityGroups"))
    ModifyClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    ModifyClusterMessage.add_member(:cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterParameterGroupName"))
    ModifyClusterMessage.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AutomatedSnapshotRetentionPeriod"))
    ModifyClusterMessage.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    ModifyClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyClusterMessage.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    ModifyClusterMessage.add_member(:allow_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowVersionUpgrade"))
    ModifyClusterMessage.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmClientCertificateIdentifier"))
    ModifyClusterMessage.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmConfigurationIdentifier"))
    ModifyClusterMessage.add_member(:new_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewClusterIdentifier"))
    ModifyClusterMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    ModifyClusterMessage.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, location_name: "ElasticIp"))
    ModifyClusterMessage.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnhancedVpcRouting"))
    ModifyClusterMessage.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    ModifyClusterMessage.add_member(:encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Encrypted"))
    ModifyClusterMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    ModifyClusterMessage.add_member(:availability_zone_relocation, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AvailabilityZoneRelocation"))
    ModifyClusterMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    ModifyClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    ModifyClusterMessage.struct_class = Types::ModifyClusterMessage

    ModifyClusterParameterGroupMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    ModifyClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, required: true, location_name: "Parameters"))
    ModifyClusterParameterGroupMessage.struct_class = Types::ModifyClusterParameterGroupMessage

    ModifyClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifyClusterResult.struct_class = Types::ModifyClusterResult

    ModifyClusterSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    ModifyClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    ModifyClusterSnapshotMessage.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    ModifyClusterSnapshotMessage.struct_class = Types::ModifyClusterSnapshotMessage

    ModifyClusterSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    ModifyClusterSnapshotResult.struct_class = Types::ModifyClusterSnapshotResult

    ModifyClusterSnapshotScheduleMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyClusterSnapshotScheduleMessage.add_member(:schedule_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleIdentifier"))
    ModifyClusterSnapshotScheduleMessage.add_member(:disassociate_schedule, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DisassociateSchedule"))
    ModifyClusterSnapshotScheduleMessage.struct_class = Types::ModifyClusterSnapshotScheduleMessage

    ModifyClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSubnetGroupName"))
    ModifyClusterSubnetGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ModifyClusterSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    ModifyClusterSubnetGroupMessage.struct_class = Types::ModifyClusterSubnetGroupMessage

    ModifyClusterSubnetGroupResult.add_member(:cluster_subnet_group, Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: "ClusterSubnetGroup"))
    ModifyClusterSubnetGroupResult.struct_class = Types::ModifyClusterSubnetGroupResult

    ModifyCustomDomainAssociationMessage.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: "CustomDomainName"))
    ModifyCustomDomainAssociationMessage.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "CustomDomainCertificateArn"))
    ModifyCustomDomainAssociationMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyCustomDomainAssociationMessage.struct_class = Types::ModifyCustomDomainAssociationMessage

    ModifyCustomDomainAssociationResult.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: "CustomDomainName"))
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "CustomDomainCertificateArn"))
    ModifyCustomDomainAssociationResult.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_cert_expiry_time, Shapes::ShapeRef.new(shape: String, location_name: "CustomDomainCertExpiryTime"))
    ModifyCustomDomainAssociationResult.struct_class = Types::ModifyCustomDomainAssociationResult

    ModifyEndpointAccessMessage.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointName"))
    ModifyEndpointAccessMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyEndpointAccessMessage.struct_class = Types::ModifyEndpointAccessMessage

    ModifyEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:source_ids, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIds"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "Severity"))
    ModifyEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    ModifyEventSubscriptionMessage.struct_class = Types::ModifyEventSubscriptionMessage

    ModifyEventSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    ModifyEventSubscriptionResult.struct_class = Types::ModifyEventSubscriptionResult

    ModifyScheduledActionMessage.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduledActionName"))
    ModifyScheduledActionMessage.add_member(:target_action, Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: "TargetAction"))
    ModifyScheduledActionMessage.add_member(:schedule, Shapes::ShapeRef.new(shape: String, location_name: "Schedule"))
    ModifyScheduledActionMessage.add_member(:iam_role, Shapes::ShapeRef.new(shape: String, location_name: "IamRole"))
    ModifyScheduledActionMessage.add_member(:scheduled_action_description, Shapes::ShapeRef.new(shape: String, location_name: "ScheduledActionDescription"))
    ModifyScheduledActionMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    ModifyScheduledActionMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    ModifyScheduledActionMessage.add_member(:enable, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enable"))
    ModifyScheduledActionMessage.struct_class = Types::ModifyScheduledActionMessage

    ModifySnapshotCopyRetentionPeriodMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:retention_period, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "RetentionPeriod"))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:manual, Shapes::ShapeRef.new(shape: Boolean, location_name: "Manual"))
    ModifySnapshotCopyRetentionPeriodMessage.struct_class = Types::ModifySnapshotCopyRetentionPeriodMessage

    ModifySnapshotCopyRetentionPeriodResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifySnapshotCopyRetentionPeriodResult.struct_class = Types::ModifySnapshotCopyRetentionPeriodResult

    ModifySnapshotScheduleMessage.add_member(:schedule_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduleIdentifier"))
    ModifySnapshotScheduleMessage.add_member(:schedule_definitions, Shapes::ShapeRef.new(shape: ScheduleDefinitionList, required: true, location_name: "ScheduleDefinitions"))
    ModifySnapshotScheduleMessage.struct_class = Types::ModifySnapshotScheduleMessage

    ModifyUsageLimitMessage.add_member(:usage_limit_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "UsageLimitId"))
    ModifyUsageLimitMessage.add_member(:amount, Shapes::ShapeRef.new(shape: LongOptional, location_name: "Amount"))
    ModifyUsageLimitMessage.add_member(:breach_action, Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: "BreachAction"))
    ModifyUsageLimitMessage.struct_class = Types::ModifyUsageLimitMessage

    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: String, location_name: "NetworkInterfaceId"))
    NetworkInterface.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "SubnetId"))
    NetworkInterface.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "PrivateIpAddress"))
    NetworkInterface.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaceList.member = Shapes::ShapeRef.new(shape: NetworkInterface, location_name: "NetworkInterface")

    NodeConfigurationOption.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    NodeConfigurationOption.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfNodes"))
    NodeConfigurationOption.add_member(:estimated_disk_utilization_percent, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "EstimatedDiskUtilizationPercent"))
    NodeConfigurationOption.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "Mode"))
    NodeConfigurationOption.struct_class = Types::NodeConfigurationOption

    NodeConfigurationOptionList.member = Shapes::ShapeRef.new(shape: NodeConfigurationOption, location_name: "NodeConfigurationOption")

    NodeConfigurationOptionsFilter.add_member(:name, Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilterName, location_name: "Name"))
    NodeConfigurationOptionsFilter.add_member(:operator, Shapes::ShapeRef.new(shape: OperatorType, location_name: "Operator"))
    NodeConfigurationOptionsFilter.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, location_name: "Value"))
    NodeConfigurationOptionsFilter.struct_class = Types::NodeConfigurationOptionsFilter

    NodeConfigurationOptionsFilterList.member = Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilter, location_name: "NodeConfigurationOptionsFilter")

    NodeConfigurationOptionsMessage.add_member(:node_configuration_option_list, Shapes::ShapeRef.new(shape: NodeConfigurationOptionList, location_name: "NodeConfigurationOptionList"))
    NodeConfigurationOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    NodeConfigurationOptionsMessage.struct_class = Types::NodeConfigurationOptionsMessage

    NumberOfNodesPerClusterLimitExceededFault.struct_class = Types::NumberOfNodesPerClusterLimitExceededFault

    NumberOfNodesQuotaExceededFault.struct_class = Types::NumberOfNodesQuotaExceededFault

    OrderableClusterOption.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    OrderableClusterOption.add_member(:cluster_type, Shapes::ShapeRef.new(shape: String, location_name: "ClusterType"))
    OrderableClusterOption.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    OrderableClusterOption.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "AvailabilityZones"))
    OrderableClusterOption.struct_class = Types::OrderableClusterOption

    OrderableClusterOptionsList.member = Shapes::ShapeRef.new(shape: OrderableClusterOption, location_name: "OrderableClusterOption")

    OrderableClusterOptionsMessage.add_member(:orderable_cluster_options, Shapes::ShapeRef.new(shape: OrderableClusterOptionsList, location_name: "OrderableClusterOptions"))
    OrderableClusterOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    OrderableClusterOptionsMessage.struct_class = Types::OrderableClusterOptionsMessage

    Parameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Parameter.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    Parameter.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    Parameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    Parameter.add_member(:apply_type, Shapes::ShapeRef.new(shape: ParameterApplyType, location_name: "ApplyType"))
    Parameter.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    Parameter.struct_class = Types::Parameter

    ParameterGroupList.member = Shapes::ShapeRef.new(shape: ClusterParameterGroup, location_name: "ClusterParameterGroup")

    ParametersList.member = Shapes::ShapeRef.new(shape: Parameter, location_name: "Parameter")

    PartnerIntegrationInfo.add_member(:database_name, Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: "DatabaseName"))
    PartnerIntegrationInfo.add_member(:partner_name, Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: "PartnerName"))
    PartnerIntegrationInfo.add_member(:status, Shapes::ShapeRef.new(shape: PartnerIntegrationStatus, location_name: "Status"))
    PartnerIntegrationInfo.add_member(:status_message, Shapes::ShapeRef.new(shape: PartnerIntegrationStatusMessage, location_name: "StatusMessage"))
    PartnerIntegrationInfo.add_member(:created_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedAt"))
    PartnerIntegrationInfo.add_member(:updated_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "UpdatedAt"))
    PartnerIntegrationInfo.struct_class = Types::PartnerIntegrationInfo

    PartnerIntegrationInfoList.member = Shapes::ShapeRef.new(shape: PartnerIntegrationInfo, location_name: "PartnerIntegrationInfo")

    PartnerIntegrationInputMessage.add_member(:account_id, Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, required: true, location_name: "AccountId"))
    PartnerIntegrationInputMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, required: true, location_name: "ClusterIdentifier"))
    PartnerIntegrationInputMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, required: true, location_name: "DatabaseName"))
    PartnerIntegrationInputMessage.add_member(:partner_name, Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, required: true, location_name: "PartnerName"))
    PartnerIntegrationInputMessage.struct_class = Types::PartnerIntegrationInputMessage

    PartnerIntegrationOutputMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: "DatabaseName"))
    PartnerIntegrationOutputMessage.add_member(:partner_name, Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: "PartnerName"))
    PartnerIntegrationOutputMessage.struct_class = Types::PartnerIntegrationOutputMessage

    PartnerNotFoundFault.struct_class = Types::PartnerNotFoundFault

    PauseClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    PauseClusterMessage.struct_class = Types::PauseClusterMessage

    PauseClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    PauseClusterResult.struct_class = Types::PauseClusterResult

    PendingActionsList.member = Shapes::ShapeRef.new(shape: String)

    PendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    PendingModifiedValues.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    PendingModifiedValues.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfNodes"))
    PendingModifiedValues.add_member(:cluster_type, Shapes::ShapeRef.new(shape: String, location_name: "ClusterType"))
    PendingModifiedValues.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    PendingModifiedValues.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AutomatedSnapshotRetentionPeriod"))
    PendingModifiedValues.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    PendingModifiedValues.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    PendingModifiedValues.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnhancedVpcRouting"))
    PendingModifiedValues.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    PendingModifiedValues.add_member(:encryption_type, Shapes::ShapeRef.new(shape: String, location_name: "EncryptionType"))
    PendingModifiedValues.struct_class = Types::PendingModifiedValues

    PurchaseReservedNodeOfferingMessage.add_member(:reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReservedNodeOfferingId"))
    PurchaseReservedNodeOfferingMessage.add_member(:node_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NodeCount"))
    PurchaseReservedNodeOfferingMessage.struct_class = Types::PurchaseReservedNodeOfferingMessage

    PurchaseReservedNodeOfferingResult.add_member(:reserved_node, Shapes::ShapeRef.new(shape: ReservedNode, location_name: "ReservedNode"))
    PurchaseReservedNodeOfferingResult.struct_class = Types::PurchaseReservedNodeOfferingResult

    RebootClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    RebootClusterMessage.struct_class = Types::RebootClusterMessage

    RebootClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    RebootClusterResult.struct_class = Types::RebootClusterResult

    RecurringCharge.add_member(:recurring_charge_amount, Shapes::ShapeRef.new(shape: Double, location_name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, Shapes::ShapeRef.new(shape: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.struct_class = Types::RecurringCharge

    RecurringChargeList.member = Shapes::ShapeRef.new(shape: RecurringCharge, location_name: "RecurringCharge")

    RejectDataShareMessage.add_member(:data_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataShareArn"))
    RejectDataShareMessage.struct_class = Types::RejectDataShareMessage

    ReservedNode.add_member(:reserved_node_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeId"))
    ReservedNode.add_member(:reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeOfferingId"))
    ReservedNode.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    ReservedNode.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    ReservedNode.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedNode.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedNode.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedNode.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedNode.add_member(:node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "NodeCount"))
    ReservedNode.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    ReservedNode.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    ReservedNode.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedNode.add_member(:reserved_node_offering_type, Shapes::ShapeRef.new(shape: ReservedNodeOfferingType, location_name: "ReservedNodeOfferingType"))
    ReservedNode.struct_class = Types::ReservedNode

    ReservedNodeAlreadyExistsFault.struct_class = Types::ReservedNodeAlreadyExistsFault

    ReservedNodeAlreadyMigratedFault.struct_class = Types::ReservedNodeAlreadyMigratedFault

    ReservedNodeConfigurationOption.add_member(:source_reserved_node, Shapes::ShapeRef.new(shape: ReservedNode, location_name: "SourceReservedNode"))
    ReservedNodeConfigurationOption.add_member(:target_reserved_node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TargetReservedNodeCount"))
    ReservedNodeConfigurationOption.add_member(:target_reserved_node_offering, Shapes::ShapeRef.new(shape: ReservedNodeOffering, location_name: "TargetReservedNodeOffering"))
    ReservedNodeConfigurationOption.struct_class = Types::ReservedNodeConfigurationOption

    ReservedNodeConfigurationOptionList.member = Shapes::ShapeRef.new(shape: ReservedNodeConfigurationOption, location_name: "ReservedNodeConfigurationOption")

    ReservedNodeExchangeNotFoundFault.struct_class = Types::ReservedNodeExchangeNotFoundFault

    ReservedNodeExchangeStatus.add_member(:reserved_node_exchange_request_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeExchangeRequestId"))
    ReservedNodeExchangeStatus.add_member(:status, Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatusType, location_name: "Status"))
    ReservedNodeExchangeStatus.add_member(:request_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "RequestTime"))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_id, Shapes::ShapeRef.new(shape: String, location_name: "SourceReservedNodeId"))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceReservedNodeType"))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "SourceReservedNodeCount"))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "TargetReservedNodeOfferingId"))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_type, Shapes::ShapeRef.new(shape: String, location_name: "TargetReservedNodeType"))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TargetReservedNodeCount"))
    ReservedNodeExchangeStatus.struct_class = Types::ReservedNodeExchangeStatus

    ReservedNodeExchangeStatusList.member = Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatus, location_name: "ReservedNodeExchangeStatus")

    ReservedNodeList.member = Shapes::ShapeRef.new(shape: ReservedNode, location_name: "ReservedNode")

    ReservedNodeNotFoundFault.struct_class = Types::ReservedNodeNotFoundFault

    ReservedNodeOffering.add_member(:reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeOfferingId"))
    ReservedNodeOffering.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    ReservedNodeOffering.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedNodeOffering.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedNodeOffering.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedNodeOffering.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedNodeOffering.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    ReservedNodeOffering.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedNodeOffering.add_member(:reserved_node_offering_type, Shapes::ShapeRef.new(shape: ReservedNodeOfferingType, location_name: "ReservedNodeOfferingType"))
    ReservedNodeOffering.struct_class = Types::ReservedNodeOffering

    ReservedNodeOfferingList.member = Shapes::ShapeRef.new(shape: ReservedNodeOffering, location_name: "ReservedNodeOffering")

    ReservedNodeOfferingNotFoundFault.struct_class = Types::ReservedNodeOfferingNotFoundFault

    ReservedNodeOfferingsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ReservedNodeOfferingsMessage.add_member(:reserved_node_offerings, Shapes::ShapeRef.new(shape: ReservedNodeOfferingList, location_name: "ReservedNodeOfferings"))
    ReservedNodeOfferingsMessage.struct_class = Types::ReservedNodeOfferingsMessage

    ReservedNodeQuotaExceededFault.struct_class = Types::ReservedNodeQuotaExceededFault

    ReservedNodesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ReservedNodesMessage.add_member(:reserved_nodes, Shapes::ShapeRef.new(shape: ReservedNodeList, location_name: "ReservedNodes"))
    ReservedNodesMessage.struct_class = Types::ReservedNodesMessage

    ResetClusterParameterGroupMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    ResetClusterParameterGroupMessage.add_member(:reset_all_parameters, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetAllParameters"))
    ResetClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    ResetClusterParameterGroupMessage.struct_class = Types::ResetClusterParameterGroupMessage

    ResizeClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ResizeClusterMessage.add_member(:cluster_type, Shapes::ShapeRef.new(shape: String, location_name: "ClusterType"))
    ResizeClusterMessage.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    ResizeClusterMessage.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfNodes"))
    ResizeClusterMessage.add_member(:classic, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Classic"))
    ResizeClusterMessage.add_member(:reserved_node_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeId"))
    ResizeClusterMessage.add_member(:target_reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "TargetReservedNodeOfferingId"))
    ResizeClusterMessage.struct_class = Types::ResizeClusterMessage

    ResizeClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ResizeClusterResult.struct_class = Types::ResizeClusterResult

    ResizeInfo.add_member(:resize_type, Shapes::ShapeRef.new(shape: String, location_name: "ResizeType"))
    ResizeInfo.add_member(:allow_cancel_resize, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowCancelResize"))
    ResizeInfo.struct_class = Types::ResizeInfo

    ResizeNotFoundFault.struct_class = Types::ResizeNotFoundFault

    ResizeProgressMessage.add_member(:target_node_type, Shapes::ShapeRef.new(shape: String, location_name: "TargetNodeType"))
    ResizeProgressMessage.add_member(:target_number_of_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "TargetNumberOfNodes"))
    ResizeProgressMessage.add_member(:target_cluster_type, Shapes::ShapeRef.new(shape: String, location_name: "TargetClusterType"))
    ResizeProgressMessage.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ResizeProgressMessage.add_member(:import_tables_completed, Shapes::ShapeRef.new(shape: ImportTablesCompleted, location_name: "ImportTablesCompleted"))
    ResizeProgressMessage.add_member(:import_tables_in_progress, Shapes::ShapeRef.new(shape: ImportTablesInProgress, location_name: "ImportTablesInProgress"))
    ResizeProgressMessage.add_member(:import_tables_not_started, Shapes::ShapeRef.new(shape: ImportTablesNotStarted, location_name: "ImportTablesNotStarted"))
    ResizeProgressMessage.add_member(:avg_resize_rate_in_mega_bytes_per_second, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "AvgResizeRateInMegaBytesPerSecond"))
    ResizeProgressMessage.add_member(:total_resize_data_in_mega_bytes, Shapes::ShapeRef.new(shape: LongOptional, location_name: "TotalResizeDataInMegaBytes"))
    ResizeProgressMessage.add_member(:progress_in_mega_bytes, Shapes::ShapeRef.new(shape: LongOptional, location_name: "ProgressInMegaBytes"))
    ResizeProgressMessage.add_member(:elapsed_time_in_seconds, Shapes::ShapeRef.new(shape: LongOptional, location_name: "ElapsedTimeInSeconds"))
    ResizeProgressMessage.add_member(:estimated_time_to_completion_in_seconds, Shapes::ShapeRef.new(shape: LongOptional, location_name: "EstimatedTimeToCompletionInSeconds"))
    ResizeProgressMessage.add_member(:resize_type, Shapes::ShapeRef.new(shape: String, location_name: "ResizeType"))
    ResizeProgressMessage.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResizeProgressMessage.add_member(:target_encryption_type, Shapes::ShapeRef.new(shape: String, location_name: "TargetEncryptionType"))
    ResizeProgressMessage.add_member(:data_transfer_progress_percent, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "DataTransferProgressPercent"))
    ResizeProgressMessage.struct_class = Types::ResizeProgressMessage

    ResourceNotFoundFault.struct_class = Types::ResourceNotFoundFault

    RestorableNodeTypeList.member = Shapes::ShapeRef.new(shape: String, location_name: "NodeType")

    RestoreFromClusterSnapshotMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotArn"))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotClusterIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreFromClusterSnapshotMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    RestoreFromClusterSnapshotMessage.add_member(:allow_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowVersionUpgrade"))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSubnetGroupName"))
    RestoreFromClusterSnapshotMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    RestoreFromClusterSnapshotMessage.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "OwnerAccount"))
    RestoreFromClusterSnapshotMessage.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmClientCertificateIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmConfigurationIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, location_name: "ElasticIp"))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterParameterGroupName"))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_security_groups, Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: "ClusterSecurityGroups"))
    RestoreFromClusterSnapshotMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreFromClusterSnapshotMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    RestoreFromClusterSnapshotMessage.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AutomatedSnapshotRetentionPeriod"))
    RestoreFromClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    RestoreFromClusterSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreFromClusterSnapshotMessage.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    RestoreFromClusterSnapshotMessage.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnhancedVpcRouting"))
    RestoreFromClusterSnapshotMessage.add_member(:additional_info, Shapes::ShapeRef.new(shape: String, location_name: "AdditionalInfo"))
    RestoreFromClusterSnapshotMessage.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "IamRoles"))
    RestoreFromClusterSnapshotMessage.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_schedule_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotScheduleIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfNodes"))
    RestoreFromClusterSnapshotMessage.add_member(:availability_zone_relocation, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AvailabilityZoneRelocation"))
    RestoreFromClusterSnapshotMessage.add_member(:aqua_configuration_status, Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: "AquaConfigurationStatus"))
    RestoreFromClusterSnapshotMessage.add_member(:default_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "DefaultIamRoleArn"))
    RestoreFromClusterSnapshotMessage.add_member(:reserved_node_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodeId"))
    RestoreFromClusterSnapshotMessage.add_member(:target_reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "TargetReservedNodeOfferingId"))
    RestoreFromClusterSnapshotMessage.add_member(:encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Encrypted"))
    RestoreFromClusterSnapshotMessage.struct_class = Types::RestoreFromClusterSnapshotMessage

    RestoreFromClusterSnapshotResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    RestoreFromClusterSnapshotResult.struct_class = Types::RestoreFromClusterSnapshotResult

    RestoreStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    RestoreStatus.add_member(:current_restore_rate_in_mega_bytes_per_second, Shapes::ShapeRef.new(shape: Double, location_name: "CurrentRestoreRateInMegaBytesPerSecond"))
    RestoreStatus.add_member(:snapshot_size_in_mega_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "SnapshotSizeInMegaBytes"))
    RestoreStatus.add_member(:progress_in_mega_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "ProgressInMegaBytes"))
    RestoreStatus.add_member(:elapsed_time_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeInSeconds"))
    RestoreStatus.add_member(:estimated_time_to_completion_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "EstimatedTimeToCompletionInSeconds"))
    RestoreStatus.struct_class = Types::RestoreStatus

    RestoreTableFromClusterSnapshotMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    RestoreTableFromClusterSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_database_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDatabaseName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceSchemaName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceTableName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:target_database_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetDatabaseName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:target_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetSchemaName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:new_table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "NewTableName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:enable_case_sensitive_identifier, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCaseSensitiveIdentifier"))
    RestoreTableFromClusterSnapshotMessage.struct_class = Types::RestoreTableFromClusterSnapshotMessage

    RestoreTableFromClusterSnapshotResult.add_member(:table_restore_status, Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: "TableRestoreStatus"))
    RestoreTableFromClusterSnapshotResult.struct_class = Types::RestoreTableFromClusterSnapshotResult

    ResumeClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ResumeClusterMessage.struct_class = Types::ResumeClusterMessage

    ResumeClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ResumeClusterResult.struct_class = Types::ResumeClusterResult

    RevisionTarget.add_member(:database_revision, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseRevision"))
    RevisionTarget.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    RevisionTarget.add_member(:database_revision_release_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "DatabaseRevisionReleaseDate"))
    RevisionTarget.struct_class = Types::RevisionTarget

    RevisionTargetsList.member = Shapes::ShapeRef.new(shape: RevisionTarget, location_name: "RevisionTarget")

    RevokeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSecurityGroupName"))
    RevokeClusterSecurityGroupIngressMessage.add_member(:cidrip, Shapes::ShapeRef.new(shape: String, location_name: "CIDRIP"))
    RevokeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupName"))
    RevokeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupOwnerId"))
    RevokeClusterSecurityGroupIngressMessage.struct_class = Types::RevokeClusterSecurityGroupIngressMessage

    RevokeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: "ClusterSecurityGroup"))
    RevokeClusterSecurityGroupIngressResult.struct_class = Types::RevokeClusterSecurityGroupIngressResult

    RevokeEndpointAccessMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    RevokeEndpointAccessMessage.add_member(:account, Shapes::ShapeRef.new(shape: String, location_name: "Account"))
    RevokeEndpointAccessMessage.add_member(:vpc_ids, Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: "VpcIds"))
    RevokeEndpointAccessMessage.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    RevokeEndpointAccessMessage.struct_class = Types::RevokeEndpointAccessMessage

    RevokeSnapshotAccessMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    RevokeSnapshotAccessMessage.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotArn"))
    RevokeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotClusterIdentifier"))
    RevokeSnapshotAccessMessage.add_member(:account_with_restore_access, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountWithRestoreAccess"))
    RevokeSnapshotAccessMessage.struct_class = Types::RevokeSnapshotAccessMessage

    RevokeSnapshotAccessResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    RevokeSnapshotAccessResult.struct_class = Types::RevokeSnapshotAccessResult

    RotateEncryptionKeyMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    RotateEncryptionKeyMessage.struct_class = Types::RotateEncryptionKeyMessage

    RotateEncryptionKeyResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    RotateEncryptionKeyResult.struct_class = Types::RotateEncryptionKeyResult

    SNSInvalidTopicFault.struct_class = Types::SNSInvalidTopicFault

    SNSNoAuthorizationFault.struct_class = Types::SNSNoAuthorizationFault

    SNSTopicArnNotFoundFault.struct_class = Types::SNSTopicArnNotFoundFault

    ScheduleDefinitionList.member = Shapes::ShapeRef.new(shape: String, location_name: "ScheduleDefinition")

    ScheduleDefinitionTypeUnsupportedFault.struct_class = Types::ScheduleDefinitionTypeUnsupportedFault

    ScheduledAction.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: String, location_name: "ScheduledActionName"))
    ScheduledAction.add_member(:target_action, Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: "TargetAction"))
    ScheduledAction.add_member(:schedule, Shapes::ShapeRef.new(shape: String, location_name: "Schedule"))
    ScheduledAction.add_member(:iam_role, Shapes::ShapeRef.new(shape: String, location_name: "IamRole"))
    ScheduledAction.add_member(:scheduled_action_description, Shapes::ShapeRef.new(shape: String, location_name: "ScheduledActionDescription"))
    ScheduledAction.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledActionState, location_name: "State"))
    ScheduledAction.add_member(:next_invocations, Shapes::ShapeRef.new(shape: ScheduledActionTimeList, location_name: "NextInvocations"))
    ScheduledAction.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    ScheduledAction.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    ScheduledAction.struct_class = Types::ScheduledAction

    ScheduledActionAlreadyExistsFault.struct_class = Types::ScheduledActionAlreadyExistsFault

    ScheduledActionFilter.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledActionFilterName, required: true, location_name: "Name"))
    ScheduledActionFilter.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, required: true, location_name: "Values"))
    ScheduledActionFilter.struct_class = Types::ScheduledActionFilter

    ScheduledActionFilterList.member = Shapes::ShapeRef.new(shape: ScheduledActionFilter, location_name: "ScheduledActionFilter")

    ScheduledActionList.member = Shapes::ShapeRef.new(shape: ScheduledAction, location_name: "ScheduledAction")

    ScheduledActionNotFoundFault.struct_class = Types::ScheduledActionNotFoundFault

    ScheduledActionQuotaExceededFault.struct_class = Types::ScheduledActionQuotaExceededFault

    ScheduledActionTimeList.member = Shapes::ShapeRef.new(shape: TStamp, location_name: "ScheduledActionTime")

    ScheduledActionType.add_member(:resize_cluster, Shapes::ShapeRef.new(shape: ResizeClusterMessage, location_name: "ResizeCluster"))
    ScheduledActionType.add_member(:pause_cluster, Shapes::ShapeRef.new(shape: PauseClusterMessage, location_name: "PauseCluster"))
    ScheduledActionType.add_member(:resume_cluster, Shapes::ShapeRef.new(shape: ResumeClusterMessage, location_name: "ResumeCluster"))
    ScheduledActionType.struct_class = Types::ScheduledActionType

    ScheduledActionTypeUnsupportedFault.struct_class = Types::ScheduledActionTypeUnsupportedFault

    ScheduledActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ScheduledActionsMessage.add_member(:scheduled_actions, Shapes::ShapeRef.new(shape: ScheduledActionList, location_name: "ScheduledActions"))
    ScheduledActionsMessage.struct_class = Types::ScheduledActionsMessage

    ScheduledSnapshotTimeList.member = Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotTime")

    Snapshot.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    Snapshot.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    Snapshot.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotCreateTime"))
    Snapshot.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Snapshot.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Snapshot.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    Snapshot.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    Snapshot.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    Snapshot.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    Snapshot.add_member(:engine_full_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineFullVersion"))
    Snapshot.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    Snapshot.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    Snapshot.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfNodes"))
    Snapshot.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    Snapshot.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    Snapshot.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    Snapshot.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    Snapshot.add_member(:encrypted_with_hsm, Shapes::ShapeRef.new(shape: Boolean, location_name: "EncryptedWithHSM"))
    Snapshot.add_member(:accounts_with_restore_access, Shapes::ShapeRef.new(shape: AccountsWithRestoreAccessList, location_name: "AccountsWithRestoreAccess"))
    Snapshot.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "OwnerAccount"))
    Snapshot.add_member(:total_backup_size_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "TotalBackupSizeInMegaBytes"))
    Snapshot.add_member(:actual_incremental_backup_size_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "ActualIncrementalBackupSizeInMegaBytes"))
    Snapshot.add_member(:backup_progress_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "BackupProgressInMegaBytes"))
    Snapshot.add_member(:current_backup_rate_in_mega_bytes_per_second, Shapes::ShapeRef.new(shape: Double, location_name: "CurrentBackupRateInMegaBytesPerSecond"))
    Snapshot.add_member(:estimated_seconds_to_completion, Shapes::ShapeRef.new(shape: Long, location_name: "EstimatedSecondsToCompletion"))
    Snapshot.add_member(:elapsed_time_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeInSeconds"))
    Snapshot.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    Snapshot.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Snapshot.add_member(:restorable_node_types, Shapes::ShapeRef.new(shape: RestorableNodeTypeList, location_name: "RestorableNodeTypes"))
    Snapshot.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnhancedVpcRouting"))
    Snapshot.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    Snapshot.add_member(:manual_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRetentionPeriod"))
    Snapshot.add_member(:manual_snapshot_remaining_days, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ManualSnapshotRemainingDays"))
    Snapshot.add_member(:snapshot_retention_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotRetentionStartTime"))
    Snapshot.struct_class = Types::Snapshot

    SnapshotCopyAlreadyDisabledFault.struct_class = Types::SnapshotCopyAlreadyDisabledFault

    SnapshotCopyAlreadyEnabledFault.struct_class = Types::SnapshotCopyAlreadyEnabledFault

    SnapshotCopyDisabledFault.struct_class = Types::SnapshotCopyDisabledFault

    SnapshotCopyGrant.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotCopyGrantName"))
    SnapshotCopyGrant.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    SnapshotCopyGrant.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    SnapshotCopyGrant.struct_class = Types::SnapshotCopyGrant

    SnapshotCopyGrantAlreadyExistsFault.struct_class = Types::SnapshotCopyGrantAlreadyExistsFault

    SnapshotCopyGrantList.member = Shapes::ShapeRef.new(shape: SnapshotCopyGrant, location_name: "SnapshotCopyGrant")

    SnapshotCopyGrantMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    SnapshotCopyGrantMessage.add_member(:snapshot_copy_grants, Shapes::ShapeRef.new(shape: SnapshotCopyGrantList, location_name: "SnapshotCopyGrants"))
    SnapshotCopyGrantMessage.struct_class = Types::SnapshotCopyGrantMessage

    SnapshotCopyGrantNotFoundFault.struct_class = Types::SnapshotCopyGrantNotFoundFault

    SnapshotCopyGrantQuotaExceededFault.struct_class = Types::SnapshotCopyGrantQuotaExceededFault

    SnapshotErrorMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    SnapshotErrorMessage.add_member(:snapshot_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotClusterIdentifier"))
    SnapshotErrorMessage.add_member(:failure_code, Shapes::ShapeRef.new(shape: String, location_name: "FailureCode"))
    SnapshotErrorMessage.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    SnapshotErrorMessage.struct_class = Types::SnapshotErrorMessage

    SnapshotIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "String")

    SnapshotList.member = Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot")

    SnapshotMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    SnapshotMessage.add_member(:snapshots, Shapes::ShapeRef.new(shape: SnapshotList, location_name: "Snapshots"))
    SnapshotMessage.struct_class = Types::SnapshotMessage

    SnapshotSchedule.add_member(:schedule_definitions, Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: "ScheduleDefinitions"))
    SnapshotSchedule.add_member(:schedule_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleIdentifier"))
    SnapshotSchedule.add_member(:schedule_description, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleDescription"))
    SnapshotSchedule.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    SnapshotSchedule.add_member(:next_invocations, Shapes::ShapeRef.new(shape: ScheduledSnapshotTimeList, location_name: "NextInvocations"))
    SnapshotSchedule.add_member(:associated_cluster_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AssociatedClusterCount"))
    SnapshotSchedule.add_member(:associated_clusters, Shapes::ShapeRef.new(shape: AssociatedClusterList, location_name: "AssociatedClusters"))
    SnapshotSchedule.struct_class = Types::SnapshotSchedule

    SnapshotScheduleAlreadyExistsFault.struct_class = Types::SnapshotScheduleAlreadyExistsFault

    SnapshotScheduleList.member = Shapes::ShapeRef.new(shape: SnapshotSchedule, location_name: "SnapshotSchedule")

    SnapshotScheduleNotFoundFault.struct_class = Types::SnapshotScheduleNotFoundFault

    SnapshotScheduleQuotaExceededFault.struct_class = Types::SnapshotScheduleQuotaExceededFault

    SnapshotScheduleUpdateInProgressFault.struct_class = Types::SnapshotScheduleUpdateInProgressFault

    SnapshotSortingEntity.add_member(:attribute, Shapes::ShapeRef.new(shape: SnapshotAttributeToSortBy, required: true, location_name: "Attribute"))
    SnapshotSortingEntity.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortByOrder, location_name: "SortOrder"))
    SnapshotSortingEntity.struct_class = Types::SnapshotSortingEntity

    SnapshotSortingEntityList.member = Shapes::ShapeRef.new(shape: SnapshotSortingEntity, location_name: "SnapshotSortingEntity")

    SourceIdsList.member = Shapes::ShapeRef.new(shape: String, location_name: "SourceId")

    SourceNotFoundFault.struct_class = Types::SourceNotFoundFault

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.struct_class = Types::Subnet

    SubnetAlreadyInUse.struct_class = Types::SubnetAlreadyInUse

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier")

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet, location_name: "Subnet")

    SubscriptionAlreadyExistFault.struct_class = Types::SubscriptionAlreadyExistFault

    SubscriptionCategoryNotFoundFault.struct_class = Types::SubscriptionCategoryNotFoundFault

    SubscriptionEventIdNotFoundFault.struct_class = Types::SubscriptionEventIdNotFoundFault

    SubscriptionNotFoundFault.struct_class = Types::SubscriptionNotFoundFault

    SubscriptionSeverityNotFoundFault.struct_class = Types::SubscriptionSeverityNotFoundFault

    SupportedOperation.add_member(:operation_name, Shapes::ShapeRef.new(shape: String, location_name: "OperationName"))
    SupportedOperation.struct_class = Types::SupportedOperation

    SupportedOperationList.member = Shapes::ShapeRef.new(shape: SupportedOperation, location_name: "SupportedOperation")

    SupportedPlatform.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SupportedPlatform.struct_class = Types::SupportedPlatform

    SupportedPlatformsList.member = Shapes::ShapeRef.new(shape: SupportedPlatform, location_name: "SupportedPlatform")

    TableLimitExceededFault.struct_class = Types::TableLimitExceededFault

    TableRestoreNotFoundFault.struct_class = Types::TableRestoreNotFoundFault

    TableRestoreStatus.add_member(:table_restore_request_id, Shapes::ShapeRef.new(shape: String, location_name: "TableRestoreRequestId"))
    TableRestoreStatus.add_member(:status, Shapes::ShapeRef.new(shape: TableRestoreStatusType, location_name: "Status"))
    TableRestoreStatus.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TableRestoreStatus.add_member(:request_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "RequestTime"))
    TableRestoreStatus.add_member(:progress_in_mega_bytes, Shapes::ShapeRef.new(shape: LongOptional, location_name: "ProgressInMegaBytes"))
    TableRestoreStatus.add_member(:total_data_in_mega_bytes, Shapes::ShapeRef.new(shape: LongOptional, location_name: "TotalDataInMegaBytes"))
    TableRestoreStatus.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    TableRestoreStatus.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    TableRestoreStatus.add_member(:source_database_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceDatabaseName"))
    TableRestoreStatus.add_member(:source_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceSchemaName"))
    TableRestoreStatus.add_member(:source_table_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceTableName"))
    TableRestoreStatus.add_member(:target_database_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetDatabaseName"))
    TableRestoreStatus.add_member(:target_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetSchemaName"))
    TableRestoreStatus.add_member(:new_table_name, Shapes::ShapeRef.new(shape: String, location_name: "NewTableName"))
    TableRestoreStatus.struct_class = Types::TableRestoreStatus

    TableRestoreStatusList.member = Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: "TableRestoreStatus")

    TableRestoreStatusMessage.add_member(:table_restore_status_details, Shapes::ShapeRef.new(shape: TableRestoreStatusList, location_name: "TableRestoreStatusDetails"))
    TableRestoreStatusMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    TableRestoreStatusMessage.struct_class = Types::TableRestoreStatusMessage

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: String, location_name: "TagKey")

    TagLimitExceededFault.struct_class = Types::TagLimitExceededFault

    TagList.member = Shapes::ShapeRef.new(shape: Tag, location_name: "Tag")

    TagValueList.member = Shapes::ShapeRef.new(shape: String, location_name: "TagValue")

    TaggedResource.add_member(:tag, Shapes::ShapeRef.new(shape: Tag, location_name: "Tag"))
    TaggedResource.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "ResourceName"))
    TaggedResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    TaggedResource.struct_class = Types::TaggedResource

    TaggedResourceList.member = Shapes::ShapeRef.new(shape: TaggedResource, location_name: "TaggedResource")

    TaggedResourceListMessage.add_member(:tagged_resources, Shapes::ShapeRef.new(shape: TaggedResourceList, location_name: "TaggedResources"))
    TaggedResourceListMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    TaggedResourceListMessage.struct_class = Types::TaggedResourceListMessage

    TrackList.member = Shapes::ShapeRef.new(shape: MaintenanceTrack, location_name: "MaintenanceTrack")

    TrackListMessage.add_member(:maintenance_tracks, Shapes::ShapeRef.new(shape: TrackList, location_name: "MaintenanceTracks"))
    TrackListMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    TrackListMessage.struct_class = Types::TrackListMessage

    UnauthorizedOperation.struct_class = Types::UnauthorizedOperation

    UnauthorizedPartnerIntegrationFault.struct_class = Types::UnauthorizedPartnerIntegrationFault

    UnknownSnapshotCopyRegionFault.struct_class = Types::UnknownSnapshotCopyRegionFault

    UnsupportedOperationFault.struct_class = Types::UnsupportedOperationFault

    UnsupportedOptionFault.struct_class = Types::UnsupportedOptionFault

    UpdatePartnerStatusInputMessage.add_member(:account_id, Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, required: true, location_name: "AccountId"))
    UpdatePartnerStatusInputMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, required: true, location_name: "ClusterIdentifier"))
    UpdatePartnerStatusInputMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, required: true, location_name: "DatabaseName"))
    UpdatePartnerStatusInputMessage.add_member(:partner_name, Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, required: true, location_name: "PartnerName"))
    UpdatePartnerStatusInputMessage.add_member(:status, Shapes::ShapeRef.new(shape: PartnerIntegrationStatus, required: true, location_name: "Status"))
    UpdatePartnerStatusInputMessage.add_member(:status_message, Shapes::ShapeRef.new(shape: PartnerIntegrationStatusMessage, location_name: "StatusMessage"))
    UpdatePartnerStatusInputMessage.struct_class = Types::UpdatePartnerStatusInputMessage

    UpdateTarget.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    UpdateTarget.add_member(:database_version, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseVersion"))
    UpdateTarget.add_member(:supported_operations, Shapes::ShapeRef.new(shape: SupportedOperationList, location_name: "SupportedOperations"))
    UpdateTarget.struct_class = Types::UpdateTarget

    UsageLimit.add_member(:usage_limit_id, Shapes::ShapeRef.new(shape: String, location_name: "UsageLimitId"))
    UsageLimit.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    UsageLimit.add_member(:feature_type, Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: "FeatureType"))
    UsageLimit.add_member(:limit_type, Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: "LimitType"))
    UsageLimit.add_member(:amount, Shapes::ShapeRef.new(shape: Long, location_name: "Amount"))
    UsageLimit.add_member(:period, Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: "Period"))
    UsageLimit.add_member(:breach_action, Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: "BreachAction"))
    UsageLimit.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    UsageLimit.struct_class = Types::UsageLimit

    UsageLimitAlreadyExistsFault.struct_class = Types::UsageLimitAlreadyExistsFault

    UsageLimitList.add_member(:usage_limits, Shapes::ShapeRef.new(shape: UsageLimits, location_name: "UsageLimits"))
    UsageLimitList.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    UsageLimitList.struct_class = Types::UsageLimitList

    UsageLimitNotFoundFault.struct_class = Types::UsageLimitNotFoundFault

    UsageLimits.member = Shapes::ShapeRef.new(shape: UsageLimit)

    ValueStringList.member = Shapes::ShapeRef.new(shape: String, location_name: "item")

    VpcEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointId"))
    VpcEndpoint.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    VpcEndpoint.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "NetworkInterfaces"))
    VpcEndpoint.struct_class = Types::VpcEndpoint

    VpcEndpointsList.member = Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: "VpcEndpoint")

    VpcIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "VpcIdentifier")

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId")

    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    VpcSecurityGroupMembership.struct_class = Types::VpcSecurityGroupMembership

    VpcSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, location_name: "VpcSecurityGroup")


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-12-01"

      api.metadata = {
        "apiVersion" => "2012-12-01",
        "endpointPrefix" => "redshift",
        "protocol" => "query",
        "serviceFullName" => "Amazon Redshift",
        "serviceId" => "Redshift",
        "signatureVersion" => "v4",
        "uid" => "redshift-2012-12-01",
        "xmlNamespace" => "http://redshift.amazonaws.com/doc/2012-12-01/",
      }

      api.add_operation(:accept_reserved_node_exchange, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptReservedNodeExchange"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptReservedNodeExchangeInputMessage)
        o.output = Shapes::ShapeRef.new(shape: AcceptReservedNodeExchangeOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
      end)

      api.add_operation(:add_partner, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddPartner"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PartnerIntegrationInputMessage)
        o.output = Shapes::ShapeRef.new(shape: PartnerIntegrationOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
      end)

      api.add_operation(:associate_data_share_consumer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDataShareConsumer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDataShareConsumerMessage)
        o.output = Shapes::ShapeRef.new(shape: DataShare)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
      end)

      api.add_operation(:authorize_cluster_security_group_ingress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AuthorizeClusterSecurityGroupIngress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AuthorizeClusterSecurityGroupIngressMessage)
        o.output = Shapes::ShapeRef.new(shape: AuthorizeClusterSecurityGroupIngressResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationQuotaExceededFault)
      end)

      api.add_operation(:authorize_data_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AuthorizeDataShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AuthorizeDataShareMessage)
        o.output = Shapes::ShapeRef.new(shape: DataShare)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDataShareFault)
      end)

      api.add_operation(:authorize_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AuthorizeEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AuthorizeEndpointAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: EndpointAuthorization)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointAuthorizationsPerClusterLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointAuthorizationAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthorizationStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:authorize_snapshot_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AuthorizeSnapshotAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AuthorizeSnapshotAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: AuthorizeSnapshotAccessResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:batch_delete_cluster_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteClusterSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteClusterSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteClusterSnapshotsResult)
        o.errors << Shapes::ShapeRef.new(shape: BatchDeleteRequestSizeExceededFault)
      end)

      api.add_operation(:batch_modify_cluster_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchModifyClusterSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsMessage)
        o.output = Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        o.errors << Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsLimitExceededFault)
      end)

      api.add_operation(:cancel_resize, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelResize"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelResizeMessage)
        o.output = Shapes::ShapeRef.new(shape: ResizeProgressMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResizeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:copy_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
      end)

      api.add_operation(:create_authentication_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAuthenticationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAuthenticationProfileMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateAuthenticationProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationProfileAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationProfileQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
      end)

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
      end)

      api.add_operation(:create_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:create_cluster_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateClusterSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterSecurityGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterSecurityGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:create_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
      end)

      api.add_operation(:create_cluster_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateClusterSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
      end)

      api.add_operation(:create_custom_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
      end)

      api.add_operation(:create_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: EndpointAccess)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessToClusterDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointsPerClusterLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointsPerAuthorizationLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
      end)

      api.add_operation(:create_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateEventSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionAlreadyExistFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionEventIdNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionSeverityNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:create_hsm_client_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHsmClientCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHsmClientCertificateMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateHsmClientCertificateResult)
        o.errors << Shapes::ShapeRef.new(shape: HsmClientCertificateAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: HsmClientCertificateQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:create_hsm_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHsmConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHsmConfigurationMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateHsmConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: HsmConfigurationAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: HsmConfigurationQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:create_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduledActionMessage)
        o.output = Shapes::ShapeRef.new(shape: ScheduledAction)
        o.errors << Shapes::ShapeRef.new(shape: ScheduledActionAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ScheduledActionQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ScheduledActionTypeUnsupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidScheduledActionFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
      end)

      api.add_operation(:create_snapshot_copy_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshotCopyGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotCopyGrantMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotCopyGrantResult)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyGrantAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyGrantQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
      end)

      api.add_operation(:create_snapshot_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshotSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotScheduleMessage)
        o.output = Shapes::ShapeRef.new(shape: SnapshotSchedule)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotScheduleAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotScheduleQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ScheduleDefinitionTypeUnsupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:create_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTagsMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:create_usage_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUsageLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUsageLimitMessage)
        o.output = Shapes::ShapeRef.new(shape: UsageLimit)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UsageLimitAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUsageLimitFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:deauthorize_data_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeauthorizeDataShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeauthorizeDataShareMessage)
        o.output = Shapes::ShapeRef.new(shape: DataShare)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDataShareFault)
      end)

      api.add_operation(:delete_authentication_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAuthenticationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAuthenticationProfileMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteAuthenticationProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
      end)

      api.add_operation(:delete_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
      end)

      api.add_operation(:delete_cluster_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClusterSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterSecurityGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
      end)

      api.add_operation(:delete_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
      end)

      api.add_operation(:delete_cluster_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClusterSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSubnetStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
      end)

      api.add_operation(:delete_custom_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomDomainAssociationMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
      end)

      api.add_operation(:delete_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: EndpointAccess)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:delete_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubscriptionStateFault)
      end)

      api.add_operation(:delete_hsm_client_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHsmClientCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHsmClientCertificateMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidHsmClientCertificateStateFault)
        o.errors << Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
      end)

      api.add_operation(:delete_hsm_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHsmConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHsmConfigurationMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidHsmConfigurationStateFault)
        o.errors << Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
      end)

      api.add_operation(:delete_partner, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePartner"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PartnerIntegrationInputMessage)
        o.output = Shapes::ShapeRef.new(shape: PartnerIntegrationOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
      end)

      api.add_operation(:delete_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledActionMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
      end)

      api.add_operation(:delete_snapshot_copy_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshotCopyGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotCopyGrantMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnapshotCopyGrantStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
      end)

      api.add_operation(:delete_snapshot_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshotSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotScheduleMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotScheduleStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:delete_usage_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUsageLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUsageLimitMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UsageLimitNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:describe_account_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: AccountAttributeList)
      end)

      api.add_operation(:describe_authentication_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAuthenticationProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAuthenticationProfilesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeAuthenticationProfilesResult)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
      end)

      api.add_operation(:describe_cluster_db_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterDbRevisions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterDbRevisionsMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterDbRevisionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cluster_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterParameterGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterParameterGroupsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterParameterGroupDetails)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cluster_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterSecurityGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterSecurityGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterSecurityGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cluster_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterSnapshotsMessage)
        o.output = Shapes::ShapeRef.new(shape: SnapshotMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cluster_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterSubnetGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterSubnetGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cluster_tracks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterTracks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterTracksMessage)
        o.output = Shapes::ShapeRef.new(shape: TrackListMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cluster_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterVersionsMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterVersionsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClustersMessage)
        o.output = Shapes::ShapeRef.new(shape: ClustersMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_custom_domain_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomDomainAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomDomainAssociationsMessage)
        o.output = Shapes::ShapeRef.new(shape: CustomDomainAssociationsMessage)
        o.errors << Shapes::ShapeRef.new(shape: CustomDomainAssociationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_data_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataShares"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSharesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSharesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_data_shares_for_consumer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSharesForConsumer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSharesForConsumerMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSharesForConsumerResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_data_shares_for_producer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSharesForProducer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSharesForProducerMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSharesForProducerResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_default_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDefaultClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDefaultClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDefaultClusterParametersResult)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "default_cluster_parameters.marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: EndpointAccessList)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_endpoint_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointAuthorizationMessage)
        o.output = Shapes::ShapeRef.new(shape: EndpointAuthorizationList)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_event_categories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventCategories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        o.output = Shapes::ShapeRef.new(shape: EventCategoriesMessage)
      end)

      api.add_operation(:describe_event_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: EventSubscriptionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        o.output = Shapes::ShapeRef.new(shape: EventsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_hsm_client_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHsmClientCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHsmClientCertificatesMessage)
        o.output = Shapes::ShapeRef.new(shape: HsmClientCertificateMessage)
        o.errors << Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_hsm_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHsmConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHsmConfigurationsMessage)
        o.output = Shapes::ShapeRef.new(shape: HsmConfigurationMessage)
        o.errors << Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_logging_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoggingStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoggingStatusMessage)
        o.output = Shapes::ShapeRef.new(shape: LoggingStatus)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
      end)

      api.add_operation(:describe_node_configuration_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNodeConfigurationOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNodeConfigurationOptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: NodeConfigurationOptionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_orderable_cluster_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrderableClusterOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrderableClusterOptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: OrderableClusterOptionsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_partners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePartners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePartnersInputMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribePartnersOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
      end)

      api.add_operation(:describe_reserved_node_exchange_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedNodeExchangeStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedNodeExchangeStatusInputMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservedNodeExchangeStatusOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeExchangeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_reserved_node_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedNodeOfferings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedNodeOfferingsMessage)
        o.output = Shapes::ShapeRef.new(shape: ReservedNodeOfferingsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_reserved_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedNodes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedNodesMessage)
        o.output = Shapes::ShapeRef.new(shape: ReservedNodesMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_resize, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResize"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResizeMessage)
        o.output = Shapes::ShapeRef.new(shape: ResizeProgressMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResizeNotFoundFault)
      end)

      api.add_operation(:describe_scheduled_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScheduledActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduledActionsMessage)
        o.output = Shapes::ShapeRef.new(shape: ScheduledActionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_snapshot_copy_grants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSnapshotCopyGrants"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSnapshotCopyGrantsMessage)
        o.output = Shapes::ShapeRef.new(shape: SnapshotCopyGrantMessage)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_snapshot_schedules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSnapshotSchedules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSnapshotSchedulesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeSnapshotSchedulesOutputMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStorage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: CustomerStorageMessage)
      end)

      api.add_operation(:describe_table_restore_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTableRestoreStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTableRestoreStatusMessage)
        o.output = Shapes::ShapeRef.new(shape: TableRestoreStatusMessage)
        o.errors << Shapes::ShapeRef.new(shape: TableRestoreNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsMessage)
        o.output = Shapes::ShapeRef.new(shape: TaggedResourceListMessage)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_usage_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUsageLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUsageLimitsMessage)
        o.output = Shapes::ShapeRef.new(shape: UsageLimitList)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:disable_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableLogging"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableLoggingMessage)
        o.output = Shapes::ShapeRef.new(shape: LoggingStatus)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:disable_snapshot_copy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableSnapshotCopy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableSnapshotCopyMessage)
        o.output = Shapes::ShapeRef.new(shape: DisableSnapshotCopyResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyAlreadyDisabledFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
      end)

      api.add_operation(:disassociate_data_share_consumer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDataShareConsumer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDataShareConsumerMessage)
        o.output = Shapes::ShapeRef.new(shape: DataShare)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
      end)

      api.add_operation(:enable_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableLogging"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableLoggingMessage)
        o.output = Shapes::ShapeRef.new(shape: LoggingStatus)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: BucketNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3KeyPrefixFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3BucketNameFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:enable_snapshot_copy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableSnapshotCopy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableSnapshotCopyMessage)
        o.output = Shapes::ShapeRef.new(shape: EnableSnapshotCopyResult)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleOrderableOptions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CopyToRegionDisabledFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyAlreadyEnabledFault)
        o.errors << Shapes::ShapeRef.new(shape: UnknownSnapshotCopyRegionFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
      end)

      api.add_operation(:get_cluster_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClusterCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetClusterCredentialsMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterCredentials)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:get_cluster_credentials_with_iam, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClusterCredentialsWithIAM"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetClusterCredentialsWithIAMMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterExtendedCredentials)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:get_reserved_node_exchange_configuration_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservedNodeExchangeConfigurationOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservedNodeExchangeConfigurationOptionsInputMessage)
        o.output = Shapes::ShapeRef.new(shape: GetReservedNodeExchangeConfigurationOptionsOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:get_reserved_node_exchange_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservedNodeExchangeOfferings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservedNodeExchangeOfferingsInputMessage)
        o.output = Shapes::ShapeRef.new(shape: GetReservedNodeExchangeOfferingsOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:modify_aqua_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyAquaConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyAquaInputMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyAquaOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:modify_authentication_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyAuthenticationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyAuthenticationProfileMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyAuthenticationProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationProfileQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
      end)

      api.add_operation(:modify_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOptionFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        o.errors << Shapes::ShapeRef.new(shape: TableLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
      end)

      api.add_operation(:modify_cluster_db_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClusterDbRevision"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterDbRevisionMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyClusterDbRevisionResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterOnLatestRevisionFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:modify_cluster_iam_roles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClusterIamRoles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterIamRolesMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyClusterIamRolesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
      end)

      api.add_operation(:modify_cluster_maintenance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClusterMaintenance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterMaintenanceMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyClusterMaintenanceResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:modify_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
      end)

      api.add_operation(:modify_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
      end)

      api.add_operation(:modify_cluster_snapshot_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClusterSnapshotSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterSnapshotScheduleMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotScheduleStateFault)
      end)

      api.add_operation(:modify_cluster_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClusterSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyClusterSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
      end)

      api.add_operation(:modify_custom_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCustomDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCustomDomainAssociationMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyCustomDomainAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
      end)

      api.add_operation(:modify_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEndpointAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: EndpointAccess)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
      end)

      api.add_operation(:modify_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionEventIdNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionSeverityNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubscriptionStateFault)
      end)

      api.add_operation(:modify_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyScheduledActionMessage)
        o.output = Shapes::ShapeRef.new(shape: ScheduledAction)
        o.errors << Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ScheduledActionTypeUnsupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidScheduledActionFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
      end)

      api.add_operation(:modify_snapshot_copy_retention_period, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifySnapshotCopyRetentionPeriod"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifySnapshotCopyRetentionPeriodMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifySnapshotCopyRetentionPeriodResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyDisabledFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
      end)

      api.add_operation(:modify_snapshot_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifySnapshotSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifySnapshotScheduleMessage)
        o.output = Shapes::ShapeRef.new(shape: SnapshotSchedule)
        o.errors << Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotScheduleUpdateInProgressFault)
      end)

      api.add_operation(:modify_usage_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyUsageLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyUsageLimitMessage)
        o.output = Shapes::ShapeRef.new(shape: UsageLimit)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUsageLimitFault)
        o.errors << Shapes::ShapeRef.new(shape: UsageLimitNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:pause_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PauseCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PauseClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: PauseClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:purchase_reserved_node_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseReservedNodeOffering"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PurchaseReservedNodeOfferingMessage)
        o.output = Shapes::ShapeRef.new(shape: PurchaseReservedNodeOfferingResult)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:reboot_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
      end)

      api.add_operation(:reject_data_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectDataShare"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectDataShareMessage)
        o.output = Shapes::ShapeRef.new(shape: DataShare)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDataShareFault)
      end)

      api.add_operation(:reset_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
      end)

      api.add_operation(:resize_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResizeCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResizeClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ResizeClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOptionFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
      end)

      api.add_operation(:restore_from_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreFromClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreFromClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreFromClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:restore_table_from_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreTableFromClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreTableFromClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreTableFromClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InProgressTableRestoreQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTableRestoreArgumentFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:resume_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResumeClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ResumeClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
      end)

      api.add_operation(:revoke_cluster_security_group_ingress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeClusterSecurityGroupIngress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeClusterSecurityGroupIngressMessage)
        o.output = Shapes::ShapeRef.new(shape: RevokeClusterSecurityGroupIngressResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
      end)

      api.add_operation(:revoke_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeEndpointAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: EndpointAuthorization)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: EndpointAuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthorizationStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
      end)

      api.add_operation(:revoke_snapshot_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeSnapshotAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeSnapshotAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: RevokeSnapshotAccessResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
      end)

      api.add_operation(:rotate_encryption_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RotateEncryptionKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RotateEncryptionKeyMessage)
        o.output = Shapes::ShapeRef.new(shape: RotateEncryptionKeyResult)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
      end)

      api.add_operation(:update_partner_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePartnerStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePartnerStatusInputMessage)
        o.output = Shapes::ShapeRef.new(shape: PartnerIntegrationOutputMessage)
        o.errors << Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
      end)
    end

  end
end
