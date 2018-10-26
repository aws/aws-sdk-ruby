# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Redshift
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptReservedNodeExchangeInputMessage = Shapes::StructureShape.new(name: 'AcceptReservedNodeExchangeInputMessage')
    AcceptReservedNodeExchangeOutputMessage = Shapes::StructureShape.new(name: 'AcceptReservedNodeExchangeOutputMessage')
    AccessToSnapshotDeniedFault = Shapes::StructureShape.new(name: 'AccessToSnapshotDeniedFault')
    AccountWithRestoreAccess = Shapes::StructureShape.new(name: 'AccountWithRestoreAccess')
    AccountsWithRestoreAccessList = Shapes::ListShape.new(name: 'AccountsWithRestoreAccessList')
    AuthorizationAlreadyExistsFault = Shapes::StructureShape.new(name: 'AuthorizationAlreadyExistsFault')
    AuthorizationNotFoundFault = Shapes::StructureShape.new(name: 'AuthorizationNotFoundFault')
    AuthorizationQuotaExceededFault = Shapes::StructureShape.new(name: 'AuthorizationQuotaExceededFault')
    AuthorizeClusterSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'AuthorizeClusterSecurityGroupIngressMessage')
    AuthorizeClusterSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'AuthorizeClusterSecurityGroupIngressResult')
    AuthorizeSnapshotAccessMessage = Shapes::StructureShape.new(name: 'AuthorizeSnapshotAccessMessage')
    AuthorizeSnapshotAccessResult = Shapes::StructureShape.new(name: 'AuthorizeSnapshotAccessResult')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    BucketNotFoundFault = Shapes::StructureShape.new(name: 'BucketNotFoundFault')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'ClusterAlreadyExistsFault')
    ClusterCredentials = Shapes::StructureShape.new(name: 'ClusterCredentials')
    ClusterDbRevision = Shapes::StructureShape.new(name: 'ClusterDbRevision')
    ClusterDbRevisionsList = Shapes::ListShape.new(name: 'ClusterDbRevisionsList')
    ClusterDbRevisionsMessage = Shapes::StructureShape.new(name: 'ClusterDbRevisionsMessage')
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
    CreateEventSubscriptionMessage = Shapes::StructureShape.new(name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = Shapes::StructureShape.new(name: 'CreateEventSubscriptionResult')
    CreateHsmClientCertificateMessage = Shapes::StructureShape.new(name: 'CreateHsmClientCertificateMessage')
    CreateHsmClientCertificateResult = Shapes::StructureShape.new(name: 'CreateHsmClientCertificateResult')
    CreateHsmConfigurationMessage = Shapes::StructureShape.new(name: 'CreateHsmConfigurationMessage')
    CreateHsmConfigurationResult = Shapes::StructureShape.new(name: 'CreateHsmConfigurationResult')
    CreateSnapshotCopyGrantMessage = Shapes::StructureShape.new(name: 'CreateSnapshotCopyGrantMessage')
    CreateSnapshotCopyGrantResult = Shapes::StructureShape.new(name: 'CreateSnapshotCopyGrantResult')
    CreateTagsMessage = Shapes::StructureShape.new(name: 'CreateTagsMessage')
    DbGroupList = Shapes::ListShape.new(name: 'DbGroupList')
    DefaultClusterParameters = Shapes::StructureShape.new(name: 'DefaultClusterParameters')
    DeleteClusterMessage = Shapes::StructureShape.new(name: 'DeleteClusterMessage')
    DeleteClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'DeleteClusterParameterGroupMessage')
    DeleteClusterResult = Shapes::StructureShape.new(name: 'DeleteClusterResult')
    DeleteClusterSecurityGroupMessage = Shapes::StructureShape.new(name: 'DeleteClusterSecurityGroupMessage')
    DeleteClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DeleteClusterSnapshotMessage')
    DeleteClusterSnapshotResult = Shapes::StructureShape.new(name: 'DeleteClusterSnapshotResult')
    DeleteClusterSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteClusterSubnetGroupMessage')
    DeleteEventSubscriptionMessage = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionMessage')
    DeleteHsmClientCertificateMessage = Shapes::StructureShape.new(name: 'DeleteHsmClientCertificateMessage')
    DeleteHsmConfigurationMessage = Shapes::StructureShape.new(name: 'DeleteHsmConfigurationMessage')
    DeleteSnapshotCopyGrantMessage = Shapes::StructureShape.new(name: 'DeleteSnapshotCopyGrantMessage')
    DeleteTagsMessage = Shapes::StructureShape.new(name: 'DeleteTagsMessage')
    DependentServiceRequestThrottlingFault = Shapes::StructureShape.new(name: 'DependentServiceRequestThrottlingFault')
    DependentServiceUnavailableFault = Shapes::StructureShape.new(name: 'DependentServiceUnavailableFault')
    DescribeClusterDbRevisionsMessage = Shapes::StructureShape.new(name: 'DescribeClusterDbRevisionsMessage')
    DescribeClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeClusterParameterGroupsMessage')
    DescribeClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeClusterParametersMessage')
    DescribeClusterSecurityGroupsMessage = Shapes::StructureShape.new(name: 'DescribeClusterSecurityGroupsMessage')
    DescribeClusterSnapshotsMessage = Shapes::StructureShape.new(name: 'DescribeClusterSnapshotsMessage')
    DescribeClusterSubnetGroupsMessage = Shapes::StructureShape.new(name: 'DescribeClusterSubnetGroupsMessage')
    DescribeClusterTracksMessage = Shapes::StructureShape.new(name: 'DescribeClusterTracksMessage')
    DescribeClusterVersionsMessage = Shapes::StructureShape.new(name: 'DescribeClusterVersionsMessage')
    DescribeClustersMessage = Shapes::StructureShape.new(name: 'DescribeClustersMessage')
    DescribeDefaultClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeDefaultClusterParametersMessage')
    DescribeDefaultClusterParametersResult = Shapes::StructureShape.new(name: 'DescribeDefaultClusterParametersResult')
    DescribeEventCategoriesMessage = Shapes::StructureShape.new(name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = Shapes::StructureShape.new(name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeHsmClientCertificatesMessage = Shapes::StructureShape.new(name: 'DescribeHsmClientCertificatesMessage')
    DescribeHsmConfigurationsMessage = Shapes::StructureShape.new(name: 'DescribeHsmConfigurationsMessage')
    DescribeLoggingStatusMessage = Shapes::StructureShape.new(name: 'DescribeLoggingStatusMessage')
    DescribeOrderableClusterOptionsMessage = Shapes::StructureShape.new(name: 'DescribeOrderableClusterOptionsMessage')
    DescribeReservedNodeOfferingsMessage = Shapes::StructureShape.new(name: 'DescribeReservedNodeOfferingsMessage')
    DescribeReservedNodesMessage = Shapes::StructureShape.new(name: 'DescribeReservedNodesMessage')
    DescribeResizeMessage = Shapes::StructureShape.new(name: 'DescribeResizeMessage')
    DescribeSnapshotCopyGrantsMessage = Shapes::StructureShape.new(name: 'DescribeSnapshotCopyGrantsMessage')
    DescribeTableRestoreStatusMessage = Shapes::StructureShape.new(name: 'DescribeTableRestoreStatusMessage')
    DescribeTagsMessage = Shapes::StructureShape.new(name: 'DescribeTagsMessage')
    DisableLoggingMessage = Shapes::StructureShape.new(name: 'DisableLoggingMessage')
    DisableSnapshotCopyMessage = Shapes::StructureShape.new(name: 'DisableSnapshotCopyMessage')
    DisableSnapshotCopyResult = Shapes::StructureShape.new(name: 'DisableSnapshotCopyResult')
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
    InvalidClusterParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidClusterParameterGroupStateFault')
    InvalidClusterSecurityGroupStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSecurityGroupStateFault')
    InvalidClusterSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSnapshotStateFault')
    InvalidClusterStateFault = Shapes::StructureShape.new(name: 'InvalidClusterStateFault')
    InvalidClusterSubnetGroupStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSubnetGroupStateFault')
    InvalidClusterSubnetStateFault = Shapes::StructureShape.new(name: 'InvalidClusterSubnetStateFault')
    InvalidClusterTrackFault = Shapes::StructureShape.new(name: 'InvalidClusterTrackFault')
    InvalidElasticIpFault = Shapes::StructureShape.new(name: 'InvalidElasticIpFault')
    InvalidHsmClientCertificateStateFault = Shapes::StructureShape.new(name: 'InvalidHsmClientCertificateStateFault')
    InvalidHsmConfigurationStateFault = Shapes::StructureShape.new(name: 'InvalidHsmConfigurationStateFault')
    InvalidReservedNodeStateFault = Shapes::StructureShape.new(name: 'InvalidReservedNodeStateFault')
    InvalidRestoreFault = Shapes::StructureShape.new(name: 'InvalidRestoreFault')
    InvalidS3BucketNameFault = Shapes::StructureShape.new(name: 'InvalidS3BucketNameFault')
    InvalidS3KeyPrefixFault = Shapes::StructureShape.new(name: 'InvalidS3KeyPrefixFault')
    InvalidSnapshotCopyGrantStateFault = Shapes::StructureShape.new(name: 'InvalidSnapshotCopyGrantStateFault')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    InvalidSubscriptionStateFault = Shapes::StructureShape.new(name: 'InvalidSubscriptionStateFault')
    InvalidTableRestoreArgumentFault = Shapes::StructureShape.new(name: 'InvalidTableRestoreArgumentFault')
    InvalidTagFault = Shapes::StructureShape.new(name: 'InvalidTagFault')
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault')
    LimitExceededFault = Shapes::StructureShape.new(name: 'LimitExceededFault')
    LoggingStatus = Shapes::StructureShape.new(name: 'LoggingStatus')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongOptional = Shapes::IntegerShape.new(name: 'LongOptional')
    MaintenanceTrack = Shapes::StructureShape.new(name: 'MaintenanceTrack')
    ModifyClusterDbRevisionMessage = Shapes::StructureShape.new(name: 'ModifyClusterDbRevisionMessage')
    ModifyClusterDbRevisionResult = Shapes::StructureShape.new(name: 'ModifyClusterDbRevisionResult')
    ModifyClusterIamRolesMessage = Shapes::StructureShape.new(name: 'ModifyClusterIamRolesMessage')
    ModifyClusterIamRolesResult = Shapes::StructureShape.new(name: 'ModifyClusterIamRolesResult')
    ModifyClusterMessage = Shapes::StructureShape.new(name: 'ModifyClusterMessage')
    ModifyClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyClusterParameterGroupMessage')
    ModifyClusterResult = Shapes::StructureShape.new(name: 'ModifyClusterResult')
    ModifyClusterSubnetGroupMessage = Shapes::StructureShape.new(name: 'ModifyClusterSubnetGroupMessage')
    ModifyClusterSubnetGroupResult = Shapes::StructureShape.new(name: 'ModifyClusterSubnetGroupResult')
    ModifyEventSubscriptionMessage = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionResult')
    ModifySnapshotCopyRetentionPeriodMessage = Shapes::StructureShape.new(name: 'ModifySnapshotCopyRetentionPeriodMessage')
    ModifySnapshotCopyRetentionPeriodResult = Shapes::StructureShape.new(name: 'ModifySnapshotCopyRetentionPeriodResult')
    NumberOfNodesPerClusterLimitExceededFault = Shapes::StructureShape.new(name: 'NumberOfNodesPerClusterLimitExceededFault')
    NumberOfNodesQuotaExceededFault = Shapes::StructureShape.new(name: 'NumberOfNodesQuotaExceededFault')
    OrderableClusterOption = Shapes::StructureShape.new(name: 'OrderableClusterOption')
    OrderableClusterOptionsList = Shapes::ListShape.new(name: 'OrderableClusterOptionsList')
    OrderableClusterOptionsMessage = Shapes::StructureShape.new(name: 'OrderableClusterOptionsMessage')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterApplyType = Shapes::StringShape.new(name: 'ParameterApplyType')
    ParameterGroupList = Shapes::ListShape.new(name: 'ParameterGroupList')
    ParametersList = Shapes::ListShape.new(name: 'ParametersList')
    PendingActionsList = Shapes::ListShape.new(name: 'PendingActionsList')
    PendingModifiedValues = Shapes::StructureShape.new(name: 'PendingModifiedValues')
    PurchaseReservedNodeOfferingMessage = Shapes::StructureShape.new(name: 'PurchaseReservedNodeOfferingMessage')
    PurchaseReservedNodeOfferingResult = Shapes::StructureShape.new(name: 'PurchaseReservedNodeOfferingResult')
    RebootClusterMessage = Shapes::StructureShape.new(name: 'RebootClusterMessage')
    RebootClusterResult = Shapes::StructureShape.new(name: 'RebootClusterResult')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    ReservedNode = Shapes::StructureShape.new(name: 'ReservedNode')
    ReservedNodeAlreadyExistsFault = Shapes::StructureShape.new(name: 'ReservedNodeAlreadyExistsFault')
    ReservedNodeAlreadyMigratedFault = Shapes::StructureShape.new(name: 'ReservedNodeAlreadyMigratedFault')
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
    ResizeNotFoundFault = Shapes::StructureShape.new(name: 'ResizeNotFoundFault')
    ResizeProgressMessage = Shapes::StructureShape.new(name: 'ResizeProgressMessage')
    ResourceNotFoundFault = Shapes::StructureShape.new(name: 'ResourceNotFoundFault')
    RestorableNodeTypeList = Shapes::ListShape.new(name: 'RestorableNodeTypeList')
    RestoreFromClusterSnapshotMessage = Shapes::StructureShape.new(name: 'RestoreFromClusterSnapshotMessage')
    RestoreFromClusterSnapshotResult = Shapes::StructureShape.new(name: 'RestoreFromClusterSnapshotResult')
    RestoreStatus = Shapes::StructureShape.new(name: 'RestoreStatus')
    RestoreTableFromClusterSnapshotMessage = Shapes::StructureShape.new(name: 'RestoreTableFromClusterSnapshotMessage')
    RestoreTableFromClusterSnapshotResult = Shapes::StructureShape.new(name: 'RestoreTableFromClusterSnapshotResult')
    RevisionTarget = Shapes::StructureShape.new(name: 'RevisionTarget')
    RevisionTargetsList = Shapes::ListShape.new(name: 'RevisionTargetsList')
    RevokeClusterSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'RevokeClusterSecurityGroupIngressMessage')
    RevokeClusterSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'RevokeClusterSecurityGroupIngressResult')
    RevokeSnapshotAccessMessage = Shapes::StructureShape.new(name: 'RevokeSnapshotAccessMessage')
    RevokeSnapshotAccessResult = Shapes::StructureShape.new(name: 'RevokeSnapshotAccessResult')
    RotateEncryptionKeyMessage = Shapes::StructureShape.new(name: 'RotateEncryptionKeyMessage')
    RotateEncryptionKeyResult = Shapes::StructureShape.new(name: 'RotateEncryptionKeyResult')
    SNSInvalidTopicFault = Shapes::StructureShape.new(name: 'SNSInvalidTopicFault')
    SNSNoAuthorizationFault = Shapes::StructureShape.new(name: 'SNSNoAuthorizationFault')
    SNSTopicArnNotFoundFault = Shapes::StructureShape.new(name: 'SNSTopicArnNotFoundFault')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotCopyAlreadyDisabledFault = Shapes::StructureShape.new(name: 'SnapshotCopyAlreadyDisabledFault')
    SnapshotCopyAlreadyEnabledFault = Shapes::StructureShape.new(name: 'SnapshotCopyAlreadyEnabledFault')
    SnapshotCopyDisabledFault = Shapes::StructureShape.new(name: 'SnapshotCopyDisabledFault')
    SnapshotCopyGrant = Shapes::StructureShape.new(name: 'SnapshotCopyGrant')
    SnapshotCopyGrantAlreadyExistsFault = Shapes::StructureShape.new(name: 'SnapshotCopyGrantAlreadyExistsFault')
    SnapshotCopyGrantList = Shapes::ListShape.new(name: 'SnapshotCopyGrantList')
    SnapshotCopyGrantMessage = Shapes::StructureShape.new(name: 'SnapshotCopyGrantMessage')
    SnapshotCopyGrantNotFoundFault = Shapes::StructureShape.new(name: 'SnapshotCopyGrantNotFoundFault')
    SnapshotCopyGrantQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotCopyGrantQuotaExceededFault')
    SnapshotList = Shapes::ListShape.new(name: 'SnapshotList')
    SnapshotMessage = Shapes::StructureShape.new(name: 'SnapshotMessage')
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
    UnknownSnapshotCopyRegionFault = Shapes::StructureShape.new(name: 'UnknownSnapshotCopyRegionFault')
    UnsupportedOperationFault = Shapes::StructureShape.new(name: 'UnsupportedOperationFault')
    UnsupportedOptionFault = Shapes::StructureShape.new(name: 'UnsupportedOptionFault')
    UpdateTarget = Shapes::StructureShape.new(name: 'UpdateTarget')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')

    AcceptReservedNodeExchangeInputMessage.add_member(:reserved_node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReservedNodeId"))
    AcceptReservedNodeExchangeInputMessage.add_member(:target_reserved_node_offering_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetReservedNodeOfferingId"))
    AcceptReservedNodeExchangeInputMessage.struct_class = Types::AcceptReservedNodeExchangeInputMessage

    AcceptReservedNodeExchangeOutputMessage.add_member(:exchanged_reserved_node, Shapes::ShapeRef.new(shape: ReservedNode, location_name: "ExchangedReservedNode"))
    AcceptReservedNodeExchangeOutputMessage.struct_class = Types::AcceptReservedNodeExchangeOutputMessage

    AccountWithRestoreAccess.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    AccountWithRestoreAccess.add_member(:account_alias, Shapes::ShapeRef.new(shape: String, location_name: "AccountAlias"))
    AccountWithRestoreAccess.struct_class = Types::AccountWithRestoreAccess

    AccountsWithRestoreAccessList.member = Shapes::ShapeRef.new(shape: AccountWithRestoreAccess, location_name: "AccountWithRestoreAccess")

    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSecurityGroupName"))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cidrip, Shapes::ShapeRef.new(shape: String, location_name: "CIDRIP"))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupName"))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupOwnerId"))
    AuthorizeClusterSecurityGroupIngressMessage.struct_class = Types::AuthorizeClusterSecurityGroupIngressMessage

    AuthorizeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: "ClusterSecurityGroup"))
    AuthorizeClusterSecurityGroupIngressResult.struct_class = Types::AuthorizeClusterSecurityGroupIngressResult

    AuthorizeSnapshotAccessMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotClusterIdentifier"))
    AuthorizeSnapshotAccessMessage.add_member(:account_with_restore_access, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountWithRestoreAccess"))
    AuthorizeSnapshotAccessMessage.struct_class = Types::AuthorizeSnapshotAccessMessage

    AuthorizeSnapshotAccessResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    AuthorizeSnapshotAccessResult.struct_class = Types::AuthorizeSnapshotAccessResult

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.add_member(:supported_platforms, Shapes::ShapeRef.new(shape: SupportedPlatformsList, location_name: "SupportedPlatforms"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone")

    Cluster.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    Cluster.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    Cluster.add_member(:cluster_status, Shapes::ShapeRef.new(shape: String, location_name: "ClusterStatus"))
    Cluster.add_member(:modify_status, Shapes::ShapeRef.new(shape: String, location_name: "ModifyStatus"))
    Cluster.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    Cluster.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    Cluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    Cluster.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    Cluster.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "AutomatedSnapshotRetentionPeriod"))
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
    Cluster.struct_class = Types::Cluster

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

    ClusterParameterGroup.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    ClusterParameterGroup.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupFamily"))
    ClusterParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterParameterGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ClusterParameterGroup.struct_class = Types::ClusterParameterGroup

    ClusterParameterGroupDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    ClusterParameterGroupDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterParameterGroupDetails.struct_class = Types::ClusterParameterGroupDetails

    ClusterParameterGroupNameMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    ClusterParameterGroupNameMessage.add_member(:parameter_group_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupStatus"))
    ClusterParameterGroupNameMessage.struct_class = Types::ClusterParameterGroupNameMessage

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

    ClusterSecurityGroup.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSecurityGroupName"))
    ClusterSecurityGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterSecurityGroup.add_member(:ec2_security_groups, Shapes::ShapeRef.new(shape: EC2SecurityGroupList, location_name: "EC2SecurityGroups"))
    ClusterSecurityGroup.add_member(:ip_ranges, Shapes::ShapeRef.new(shape: IPRangeList, location_name: "IPRanges"))
    ClusterSecurityGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ClusterSecurityGroup.struct_class = Types::ClusterSecurityGroup

    ClusterSecurityGroupMembership.add_member(:cluster_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSecurityGroupName"))
    ClusterSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ClusterSecurityGroupMembership.struct_class = Types::ClusterSecurityGroupMembership

    ClusterSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: ClusterSecurityGroupMembership, location_name: "ClusterSecurityGroup")

    ClusterSecurityGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterSecurityGroupMessage.add_member(:cluster_security_groups, Shapes::ShapeRef.new(shape: ClusterSecurityGroups, location_name: "ClusterSecurityGroups"))
    ClusterSecurityGroupMessage.struct_class = Types::ClusterSecurityGroupMessage

    ClusterSecurityGroupNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "ClusterSecurityGroupName")

    ClusterSecurityGroups.member = Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: "ClusterSecurityGroup")

    ClusterSnapshotCopyStatus.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, location_name: "DestinationRegion"))
    ClusterSnapshotCopyStatus.add_member(:retention_period, Shapes::ShapeRef.new(shape: Long, location_name: "RetentionPeriod"))
    ClusterSnapshotCopyStatus.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotCopyGrantName"))
    ClusterSnapshotCopyStatus.struct_class = Types::ClusterSnapshotCopyStatus

    ClusterSubnetGroup.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterSubnetGroupName"))
    ClusterSubnetGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    ClusterSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    ClusterSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    ClusterSubnetGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ClusterSubnetGroup.struct_class = Types::ClusterSubnetGroup

    ClusterSubnetGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ClusterSubnetGroupMessage.add_member(:cluster_subnet_groups, Shapes::ShapeRef.new(shape: ClusterSubnetGroups, location_name: "ClusterSubnetGroups"))
    ClusterSubnetGroupMessage.struct_class = Types::ClusterSubnetGroupMessage

    ClusterSubnetGroups.member = Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: "ClusterSubnetGroup")

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
    CopyClusterSnapshotMessage.struct_class = Types::CopyClusterSnapshotMessage

    CopyClusterSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    CopyClusterSnapshotResult.struct_class = Types::CopyClusterSnapshotResult

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

    CreateSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotCopyGrantName"))
    CreateSnapshotCopyGrantMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateSnapshotCopyGrantMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSnapshotCopyGrantMessage.struct_class = Types::CreateSnapshotCopyGrantMessage

    CreateSnapshotCopyGrantResult.add_member(:snapshot_copy_grant, Shapes::ShapeRef.new(shape: SnapshotCopyGrant, location_name: "SnapshotCopyGrant"))
    CreateSnapshotCopyGrantResult.struct_class = Types::CreateSnapshotCopyGrantResult

    CreateTagsMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    CreateTagsMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    CreateTagsMessage.struct_class = Types::CreateTagsMessage

    DbGroupList.member = Shapes::ShapeRef.new(shape: String, location_name: "DbGroup")

    DefaultClusterParameters.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupFamily"))
    DefaultClusterParameters.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DefaultClusterParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    DefaultClusterParameters.struct_class = Types::DefaultClusterParameters

    DeleteClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DeleteClusterMessage.add_member(:skip_final_cluster_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalClusterSnapshot"))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalClusterSnapshotIdentifier"))
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

    DeleteClusterSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    DeleteClusterSnapshotResult.struct_class = Types::DeleteClusterSnapshotResult

    DeleteClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSubnetGroupName"))
    DeleteClusterSubnetGroupMessage.struct_class = Types::DeleteClusterSubnetGroupMessage

    DeleteEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    DeleteEventSubscriptionMessage.struct_class = Types::DeleteEventSubscriptionMessage

    DeleteHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmClientCertificateIdentifier"))
    DeleteHsmClientCertificateMessage.struct_class = Types::DeleteHsmClientCertificateMessage

    DeleteHsmConfigurationMessage.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HsmConfigurationIdentifier"))
    DeleteHsmConfigurationMessage.struct_class = Types::DeleteHsmConfigurationMessage

    DeleteSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotCopyGrantName"))
    DeleteSnapshotCopyGrantMessage.struct_class = Types::DeleteSnapshotCopyGrantMessage

    DeleteTagsMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    DeleteTagsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    DeleteTagsMessage.struct_class = Types::DeleteTagsMessage

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
    DescribeClusterSnapshotsMessage.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DescribeClusterSnapshotsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeClusterSnapshotsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeClusterSnapshotsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeClusterSnapshotsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeClusterSnapshotsMessage.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "OwnerAccount"))
    DescribeClusterSnapshotsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeClusterSnapshotsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeClusterSnapshotsMessage.add_member(:cluster_exists, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ClusterExists"))
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

    DescribeDefaultClusterParametersMessage.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupFamily"))
    DescribeDefaultClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDefaultClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDefaultClusterParametersMessage.struct_class = Types::DescribeDefaultClusterParametersMessage

    DescribeDefaultClusterParametersResult.add_member(:default_cluster_parameters, Shapes::ShapeRef.new(shape: DefaultClusterParameters, location_name: "DefaultClusterParameters"))
    DescribeDefaultClusterParametersResult.struct_class = Types::DescribeDefaultClusterParametersResult

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

    DescribeOrderableClusterOptionsMessage.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
    DescribeOrderableClusterOptionsMessage.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    DescribeOrderableClusterOptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOrderableClusterOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableClusterOptionsMessage.struct_class = Types::DescribeOrderableClusterOptionsMessage

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

    DescribeSnapshotCopyGrantsMessage.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotCopyGrantName"))
    DescribeSnapshotCopyGrantsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeSnapshotCopyGrantsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    DescribeSnapshotCopyGrantsMessage.struct_class = Types::DescribeSnapshotCopyGrantsMessage

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

    DisableLoggingMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DisableLoggingMessage.struct_class = Types::DisableLoggingMessage

    DisableSnapshotCopyMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    DisableSnapshotCopyMessage.struct_class = Types::DisableSnapshotCopyMessage

    DisableSnapshotCopyResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DisableSnapshotCopyResult.struct_class = Types::DisableSnapshotCopyResult

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
    EnableLoggingMessage.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "BucketName"))
    EnableLoggingMessage.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    EnableLoggingMessage.struct_class = Types::EnableLoggingMessage

    EnableSnapshotCopyMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    EnableSnapshotCopyMessage.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DestinationRegion"))
    EnableSnapshotCopyMessage.add_member(:retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "RetentionPeriod"))
    EnableSnapshotCopyMessage.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotCopyGrantName"))
    EnableSnapshotCopyMessage.struct_class = Types::EnableSnapshotCopyMessage

    EnableSnapshotCopyResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    EnableSnapshotCopyResult.struct_class = Types::EnableSnapshotCopyResult

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Endpoint.struct_class = Types::Endpoint

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

    EventSubscriptionsList.member = Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription")

    EventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: "EventSubscriptionsList"))
    EventSubscriptionsMessage.struct_class = Types::EventSubscriptionsMessage

    EventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventsMessage.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    EventsMessage.struct_class = Types::EventsMessage

    GetClusterCredentialsMessage.add_member(:db_user, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DbUser"))
    GetClusterCredentialsMessage.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DbName"))
    GetClusterCredentialsMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    GetClusterCredentialsMessage.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DurationSeconds"))
    GetClusterCredentialsMessage.add_member(:auto_create, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoCreate"))
    GetClusterCredentialsMessage.add_member(:db_groups, Shapes::ShapeRef.new(shape: DbGroupList, location_name: "DbGroups"))
    GetClusterCredentialsMessage.struct_class = Types::GetClusterCredentialsMessage

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

    HsmClientCertificateList.member = Shapes::ShapeRef.new(shape: HsmClientCertificate, location_name: "HsmClientCertificate")

    HsmClientCertificateMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    HsmClientCertificateMessage.add_member(:hsm_client_certificates, Shapes::ShapeRef.new(shape: HsmClientCertificateList, location_name: "HsmClientCertificates"))
    HsmClientCertificateMessage.struct_class = Types::HsmClientCertificateMessage

    HsmConfiguration.add_member(:hsm_configuration_identifier, Shapes::ShapeRef.new(shape: String, location_name: "HsmConfigurationIdentifier"))
    HsmConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    HsmConfiguration.add_member(:hsm_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "HsmIpAddress"))
    HsmConfiguration.add_member(:hsm_partition_name, Shapes::ShapeRef.new(shape: String, location_name: "HsmPartitionName"))
    HsmConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    HsmConfiguration.struct_class = Types::HsmConfiguration

    HsmConfigurationList.member = Shapes::ShapeRef.new(shape: HsmConfiguration, location_name: "HsmConfiguration")

    HsmConfigurationMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    HsmConfigurationMessage.add_member(:hsm_configurations, Shapes::ShapeRef.new(shape: HsmConfigurationList, location_name: "HsmConfigurations"))
    HsmConfigurationMessage.struct_class = Types::HsmConfigurationMessage

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

    LoggingStatus.add_member(:logging_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "LoggingEnabled"))
    LoggingStatus.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    LoggingStatus.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    LoggingStatus.add_member(:last_successful_delivery_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastSuccessfulDeliveryTime"))
    LoggingStatus.add_member(:last_failure_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastFailureTime"))
    LoggingStatus.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    LoggingStatus.struct_class = Types::LoggingStatus

    MaintenanceTrack.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    MaintenanceTrack.add_member(:database_version, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseVersion"))
    MaintenanceTrack.add_member(:update_targets, Shapes::ShapeRef.new(shape: EligibleTracksToUpdateList, location_name: "UpdateTargets"))
    MaintenanceTrack.struct_class = Types::MaintenanceTrack

    ModifyClusterDbRevisionMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyClusterDbRevisionMessage.add_member(:revision_target, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RevisionTarget"))
    ModifyClusterDbRevisionMessage.struct_class = Types::ModifyClusterDbRevisionMessage

    ModifyClusterDbRevisionResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifyClusterDbRevisionResult.struct_class = Types::ModifyClusterDbRevisionResult

    ModifyClusterIamRolesMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyClusterIamRolesMessage.add_member(:add_iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "AddIamRoles"))
    ModifyClusterIamRolesMessage.add_member(:remove_iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "RemoveIamRoles"))
    ModifyClusterIamRolesMessage.struct_class = Types::ModifyClusterIamRolesMessage

    ModifyClusterIamRolesResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifyClusterIamRolesResult.struct_class = Types::ModifyClusterIamRolesResult

    ModifyClusterMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifyClusterMessage.add_member(:cluster_type, Shapes::ShapeRef.new(shape: String, location_name: "ClusterType"))
    ModifyClusterMessage.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    ModifyClusterMessage.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfNodes"))
    ModifyClusterMessage.add_member(:cluster_security_groups, Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: "ClusterSecurityGroups"))
    ModifyClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    ModifyClusterMessage.add_member(:cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterParameterGroupName"))
    ModifyClusterMessage.add_member(:automated_snapshot_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AutomatedSnapshotRetentionPeriod"))
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
    ModifyClusterMessage.struct_class = Types::ModifyClusterMessage

    ModifyClusterParameterGroupMessage.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    ModifyClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, required: true, location_name: "Parameters"))
    ModifyClusterParameterGroupMessage.struct_class = Types::ModifyClusterParameterGroupMessage

    ModifyClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifyClusterResult.struct_class = Types::ModifyClusterResult

    ModifyClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterSubnetGroupName"))
    ModifyClusterSubnetGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ModifyClusterSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    ModifyClusterSubnetGroupMessage.struct_class = Types::ModifyClusterSubnetGroupMessage

    ModifyClusterSubnetGroupResult.add_member(:cluster_subnet_group, Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: "ClusterSubnetGroup"))
    ModifyClusterSubnetGroupResult.struct_class = Types::ModifyClusterSubnetGroupResult

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

    ModifySnapshotCopyRetentionPeriodMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:retention_period, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "RetentionPeriod"))
    ModifySnapshotCopyRetentionPeriodMessage.struct_class = Types::ModifySnapshotCopyRetentionPeriodMessage

    ModifySnapshotCopyRetentionPeriodResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ModifySnapshotCopyRetentionPeriodResult.struct_class = Types::ModifySnapshotCopyRetentionPeriodResult

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

    ReservedNodeList.member = Shapes::ShapeRef.new(shape: ReservedNode, location_name: "ReservedNode")

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

    ReservedNodeOfferingsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ReservedNodeOfferingsMessage.add_member(:reserved_node_offerings, Shapes::ShapeRef.new(shape: ReservedNodeOfferingList, location_name: "ReservedNodeOfferings"))
    ReservedNodeOfferingsMessage.struct_class = Types::ReservedNodeOfferingsMessage

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
    ResizeClusterMessage.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "NumberOfNodes"))
    ResizeClusterMessage.add_member(:classic, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Classic"))
    ResizeClusterMessage.struct_class = Types::ResizeClusterMessage

    ResizeClusterResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    ResizeClusterResult.struct_class = Types::ResizeClusterResult

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
    ResizeProgressMessage.struct_class = Types::ResizeProgressMessage

    RestorableNodeTypeList.member = Shapes::ShapeRef.new(shape: String, location_name: "NodeType")

    RestoreFromClusterSnapshotMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
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
    RestoreFromClusterSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreFromClusterSnapshotMessage.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    RestoreFromClusterSnapshotMessage.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnhancedVpcRouting"))
    RestoreFromClusterSnapshotMessage.add_member(:additional_info, Shapes::ShapeRef.new(shape: String, location_name: "AdditionalInfo"))
    RestoreFromClusterSnapshotMessage.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "IamRoles"))
    RestoreFromClusterSnapshotMessage.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
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
    RestoreTableFromClusterSnapshotMessage.struct_class = Types::RestoreTableFromClusterSnapshotMessage

    RestoreTableFromClusterSnapshotResult.add_member(:table_restore_status, Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: "TableRestoreStatus"))
    RestoreTableFromClusterSnapshotResult.struct_class = Types::RestoreTableFromClusterSnapshotResult

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

    RevokeSnapshotAccessMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    RevokeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotClusterIdentifier"))
    RevokeSnapshotAccessMessage.add_member(:account_with_restore_access, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountWithRestoreAccess"))
    RevokeSnapshotAccessMessage.struct_class = Types::RevokeSnapshotAccessMessage

    RevokeSnapshotAccessResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    RevokeSnapshotAccessResult.struct_class = Types::RevokeSnapshotAccessResult

    RotateEncryptionKeyMessage.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterIdentifier"))
    RotateEncryptionKeyMessage.struct_class = Types::RotateEncryptionKeyMessage

    RotateEncryptionKeyResult.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    RotateEncryptionKeyResult.struct_class = Types::RotateEncryptionKeyResult

    Snapshot.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotIdentifier"))
    Snapshot.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ClusterIdentifier"))
    Snapshot.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotCreateTime"))
    Snapshot.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Snapshot.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Snapshot.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    Snapshot.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    Snapshot.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    Snapshot.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "ClusterVersion"))
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
    Snapshot.struct_class = Types::Snapshot

    SnapshotCopyGrant.add_member(:snapshot_copy_grant_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotCopyGrantName"))
    SnapshotCopyGrant.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    SnapshotCopyGrant.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    SnapshotCopyGrant.struct_class = Types::SnapshotCopyGrant

    SnapshotCopyGrantList.member = Shapes::ShapeRef.new(shape: SnapshotCopyGrant, location_name: "SnapshotCopyGrant")

    SnapshotCopyGrantMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    SnapshotCopyGrantMessage.add_member(:snapshot_copy_grants, Shapes::ShapeRef.new(shape: SnapshotCopyGrantList, location_name: "SnapshotCopyGrants"))
    SnapshotCopyGrantMessage.struct_class = Types::SnapshotCopyGrantMessage

    SnapshotList.member = Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot")

    SnapshotMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    SnapshotMessage.add_member(:snapshots, Shapes::ShapeRef.new(shape: SnapshotList, location_name: "Snapshots"))
    SnapshotMessage.struct_class = Types::SnapshotMessage

    SourceIdsList.member = Shapes::ShapeRef.new(shape: String, location_name: "SourceId")

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.struct_class = Types::Subnet

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier")

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet, location_name: "Subnet")

    SupportedPlatform.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SupportedPlatform.struct_class = Types::SupportedPlatform

    SupportedPlatformsList.member = Shapes::ShapeRef.new(shape: SupportedPlatform, location_name: "SupportedPlatform")

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

    UpdateTarget.add_member(:maintenance_track_name, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceTrackName"))
    UpdateTarget.add_member(:database_version, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseVersion"))
    UpdateTarget.struct_class = Types::UpdateTarget

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

      api.add_operation(:create_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTagsMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
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

      api.add_operation(:delete_snapshot_copy_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshotCopyGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotCopyGrantMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnapshotCopyGrantStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
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

      api.add_operation(:describe_cluster_db_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterDbRevisions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterDbRevisionsMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterDbRevisionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
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

      api.add_operation(:describe_snapshot_copy_grants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSnapshotCopyGrants"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSnapshotCopyGrantsMessage)
        o.output = Shapes::ShapeRef.new(shape: SnapshotCopyGrantMessage)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:describe_table_restore_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTableRestoreStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTableRestoreStatusMessage)
        o.output = Shapes::ShapeRef.new(shape: TableRestoreStatusMessage)
        o.errors << Shapes::ShapeRef.new(shape: TableRestoreNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsMessage)
        o.output = Shapes::ShapeRef.new(shape: TaggedResourceListMessage)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFault)
      end)

      api.add_operation(:disable_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableLogging"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableLoggingMessage)
        o.output = Shapes::ShapeRef.new(shape: LoggingStatus)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
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

      api.add_operation(:modify_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
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

      api.add_operation(:revoke_snapshot_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeSnapshotAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeSnapshotAccessMessage)
        o.output = Shapes::ShapeRef.new(shape: RevokeSnapshotAccessResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
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
    end

  end
end
