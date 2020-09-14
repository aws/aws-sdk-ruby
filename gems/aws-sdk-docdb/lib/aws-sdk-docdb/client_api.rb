# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DocDB
  # @api private
  module ClientApi

    include Seahorse::Model

    AddTagsToResourceMessage = Shapes::StructureShape.new(name: 'AddTagsToResourceMessage')
    ApplyMethod = Shapes::StringShape.new(name: 'ApplyMethod')
    ApplyPendingMaintenanceActionMessage = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionMessage')
    ApplyPendingMaintenanceActionResult = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionResult')
    AttributeValueList = Shapes::ListShape.new(name: 'AttributeValueList')
    AuthorizationNotFoundFault = Shapes::StructureShape.new(name: 'AuthorizationNotFoundFault')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateList = Shapes::ListShape.new(name: 'CertificateList')
    CertificateMessage = Shapes::StructureShape.new(name: 'CertificateMessage')
    CertificateNotFoundFault = Shapes::StructureShape.new(name: 'CertificateNotFoundFault')
    CloudwatchLogsExportConfiguration = Shapes::StructureShape.new(name: 'CloudwatchLogsExportConfiguration')
    CopyDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'CopyDBClusterParameterGroupMessage')
    CopyDBClusterParameterGroupResult = Shapes::StructureShape.new(name: 'CopyDBClusterParameterGroupResult')
    CopyDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'CopyDBClusterSnapshotMessage')
    CopyDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'CopyDBClusterSnapshotResult')
    CreateDBClusterMessage = Shapes::StructureShape.new(name: 'CreateDBClusterMessage')
    CreateDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'CreateDBClusterParameterGroupMessage')
    CreateDBClusterParameterGroupResult = Shapes::StructureShape.new(name: 'CreateDBClusterParameterGroupResult')
    CreateDBClusterResult = Shapes::StructureShape.new(name: 'CreateDBClusterResult')
    CreateDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'CreateDBClusterSnapshotMessage')
    CreateDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'CreateDBClusterSnapshotResult')
    CreateDBInstanceMessage = Shapes::StructureShape.new(name: 'CreateDBInstanceMessage')
    CreateDBInstanceResult = Shapes::StructureShape.new(name: 'CreateDBInstanceResult')
    CreateDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'CreateDBSubnetGroupMessage')
    CreateDBSubnetGroupResult = Shapes::StructureShape.new(name: 'CreateDBSubnetGroupResult')
    DBCluster = Shapes::StructureShape.new(name: 'DBCluster')
    DBClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterAlreadyExistsFault')
    DBClusterList = Shapes::ListShape.new(name: 'DBClusterList')
    DBClusterMember = Shapes::StructureShape.new(name: 'DBClusterMember')
    DBClusterMemberList = Shapes::ListShape.new(name: 'DBClusterMemberList')
    DBClusterMessage = Shapes::StructureShape.new(name: 'DBClusterMessage')
    DBClusterNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterNotFoundFault')
    DBClusterParameterGroup = Shapes::StructureShape.new(name: 'DBClusterParameterGroup')
    DBClusterParameterGroupDetails = Shapes::StructureShape.new(name: 'DBClusterParameterGroupDetails')
    DBClusterParameterGroupList = Shapes::ListShape.new(name: 'DBClusterParameterGroupList')
    DBClusterParameterGroupNameMessage = Shapes::StructureShape.new(name: 'DBClusterParameterGroupNameMessage')
    DBClusterParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterParameterGroupNotFoundFault')
    DBClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DBClusterParameterGroupsMessage')
    DBClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterQuotaExceededFault')
    DBClusterRole = Shapes::StructureShape.new(name: 'DBClusterRole')
    DBClusterRoles = Shapes::ListShape.new(name: 'DBClusterRoles')
    DBClusterSnapshot = Shapes::StructureShape.new(name: 'DBClusterSnapshot')
    DBClusterSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterSnapshotAlreadyExistsFault')
    DBClusterSnapshotAttribute = Shapes::StructureShape.new(name: 'DBClusterSnapshotAttribute')
    DBClusterSnapshotAttributeList = Shapes::ListShape.new(name: 'DBClusterSnapshotAttributeList')
    DBClusterSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DBClusterSnapshotAttributesResult')
    DBClusterSnapshotList = Shapes::ListShape.new(name: 'DBClusterSnapshotList')
    DBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DBClusterSnapshotMessage')
    DBClusterSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterSnapshotNotFoundFault')
    DBEngineVersion = Shapes::StructureShape.new(name: 'DBEngineVersion')
    DBEngineVersionList = Shapes::ListShape.new(name: 'DBEngineVersionList')
    DBEngineVersionMessage = Shapes::StructureShape.new(name: 'DBEngineVersionMessage')
    DBInstance = Shapes::StructureShape.new(name: 'DBInstance')
    DBInstanceAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBInstanceAlreadyExistsFault')
    DBInstanceList = Shapes::ListShape.new(name: 'DBInstanceList')
    DBInstanceMessage = Shapes::StructureShape.new(name: 'DBInstanceMessage')
    DBInstanceNotFoundFault = Shapes::StructureShape.new(name: 'DBInstanceNotFoundFault')
    DBInstanceStatusInfo = Shapes::StructureShape.new(name: 'DBInstanceStatusInfo')
    DBInstanceStatusInfoList = Shapes::ListShape.new(name: 'DBInstanceStatusInfoList')
    DBParameterGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBParameterGroupAlreadyExistsFault')
    DBParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBParameterGroupNotFoundFault')
    DBParameterGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBParameterGroupQuotaExceededFault')
    DBSecurityGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBSecurityGroupNotFoundFault')
    DBSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSnapshotAlreadyExistsFault')
    DBSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'DBSnapshotNotFoundFault')
    DBSubnetGroup = Shapes::StructureShape.new(name: 'DBSubnetGroup')
    DBSubnetGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSubnetGroupAlreadyExistsFault')
    DBSubnetGroupDoesNotCoverEnoughAZs = Shapes::StructureShape.new(name: 'DBSubnetGroupDoesNotCoverEnoughAZs')
    DBSubnetGroupMessage = Shapes::StructureShape.new(name: 'DBSubnetGroupMessage')
    DBSubnetGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBSubnetGroupNotFoundFault')
    DBSubnetGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSubnetGroupQuotaExceededFault')
    DBSubnetGroups = Shapes::ListShape.new(name: 'DBSubnetGroups')
    DBSubnetQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSubnetQuotaExceededFault')
    DBUpgradeDependencyFailureFault = Shapes::StructureShape.new(name: 'DBUpgradeDependencyFailureFault')
    DeleteDBClusterMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterMessage')
    DeleteDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterParameterGroupMessage')
    DeleteDBClusterResult = Shapes::StructureShape.new(name: 'DeleteDBClusterResult')
    DeleteDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterSnapshotMessage')
    DeleteDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'DeleteDBClusterSnapshotResult')
    DeleteDBInstanceMessage = Shapes::StructureShape.new(name: 'DeleteDBInstanceMessage')
    DeleteDBInstanceResult = Shapes::StructureShape.new(name: 'DeleteDBInstanceResult')
    DeleteDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBSubnetGroupMessage')
    DescribeCertificatesMessage = Shapes::StructureShape.new(name: 'DescribeCertificatesMessage')
    DescribeDBClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterParameterGroupsMessage')
    DescribeDBClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterParametersMessage')
    DescribeDBClusterSnapshotAttributesMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotAttributesMessage')
    DescribeDBClusterSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotAttributesResult')
    DescribeDBClusterSnapshotsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotsMessage')
    DescribeDBClustersMessage = Shapes::StructureShape.new(name: 'DescribeDBClustersMessage')
    DescribeDBEngineVersionsMessage = Shapes::StructureShape.new(name: 'DescribeDBEngineVersionsMessage')
    DescribeDBInstancesMessage = Shapes::StructureShape.new(name: 'DescribeDBInstancesMessage')
    DescribeDBSubnetGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBSubnetGroupsMessage')
    DescribeEngineDefaultClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeEngineDefaultClusterParametersMessage')
    DescribeEngineDefaultClusterParametersResult = Shapes::StructureShape.new(name: 'DescribeEngineDefaultClusterParametersResult')
    DescribeEventCategoriesMessage = Shapes::StructureShape.new(name: 'DescribeEventCategoriesMessage')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeOrderableDBInstanceOptionsMessage = Shapes::StructureShape.new(name: 'DescribeOrderableDBInstanceOptionsMessage')
    DescribePendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'DescribePendingMaintenanceActionsMessage')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EngineDefaults = Shapes::StructureShape.new(name: 'EngineDefaults')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategoriesList = Shapes::ListShape.new(name: 'EventCategoriesList')
    EventCategoriesMap = Shapes::StructureShape.new(name: 'EventCategoriesMap')
    EventCategoriesMapList = Shapes::ListShape.new(name: 'EventCategoriesMapList')
    EventCategoriesMessage = Shapes::StructureShape.new(name: 'EventCategoriesMessage')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventsMessage = Shapes::StructureShape.new(name: 'EventsMessage')
    FailoverDBClusterMessage = Shapes::StructureShape.new(name: 'FailoverDBClusterMessage')
    FailoverDBClusterResult = Shapes::StructureShape.new(name: 'FailoverDBClusterResult')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    InstanceQuotaExceededFault = Shapes::StructureShape.new(name: 'InstanceQuotaExceededFault')
    InsufficientDBClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientDBClusterCapacityFault')
    InsufficientDBInstanceCapacityFault = Shapes::StructureShape.new(name: 'InsufficientDBInstanceCapacityFault')
    InsufficientStorageClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientStorageClusterCapacityFault')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidDBClusterSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterSnapshotStateFault')
    InvalidDBClusterStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterStateFault')
    InvalidDBInstanceStateFault = Shapes::StructureShape.new(name: 'InvalidDBInstanceStateFault')
    InvalidDBParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBParameterGroupStateFault')
    InvalidDBSecurityGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBSecurityGroupStateFault')
    InvalidDBSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidDBSnapshotStateFault')
    InvalidDBSubnetGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetGroupStateFault')
    InvalidDBSubnetStateFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetStateFault')
    InvalidRestoreFault = Shapes::StructureShape.new(name: 'InvalidRestoreFault')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault')
    KMSKeyNotAccessibleFault = Shapes::StructureShape.new(name: 'KMSKeyNotAccessibleFault')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    ListTagsForResourceMessage = Shapes::StructureShape.new(name: 'ListTagsForResourceMessage')
    LogTypeList = Shapes::ListShape.new(name: 'LogTypeList')
    ModifyDBClusterMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterMessage')
    ModifyDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterParameterGroupMessage')
    ModifyDBClusterResult = Shapes::StructureShape.new(name: 'ModifyDBClusterResult')
    ModifyDBClusterSnapshotAttributeMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterSnapshotAttributeMessage')
    ModifyDBClusterSnapshotAttributeResult = Shapes::StructureShape.new(name: 'ModifyDBClusterSnapshotAttributeResult')
    ModifyDBInstanceMessage = Shapes::StructureShape.new(name: 'ModifyDBInstanceMessage')
    ModifyDBInstanceResult = Shapes::StructureShape.new(name: 'ModifyDBInstanceResult')
    ModifyDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBSubnetGroupMessage')
    ModifyDBSubnetGroupResult = Shapes::StructureShape.new(name: 'ModifyDBSubnetGroupResult')
    OrderableDBInstanceOption = Shapes::StructureShape.new(name: 'OrderableDBInstanceOption')
    OrderableDBInstanceOptionsList = Shapes::ListShape.new(name: 'OrderableDBInstanceOptionsList')
    OrderableDBInstanceOptionsMessage = Shapes::StructureShape.new(name: 'OrderableDBInstanceOptionsMessage')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParametersList = Shapes::ListShape.new(name: 'ParametersList')
    PendingCloudwatchLogsExports = Shapes::StructureShape.new(name: 'PendingCloudwatchLogsExports')
    PendingMaintenanceAction = Shapes::StructureShape.new(name: 'PendingMaintenanceAction')
    PendingMaintenanceActionDetails = Shapes::ListShape.new(name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActions = Shapes::ListShape.new(name: 'PendingMaintenanceActions')
    PendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'PendingMaintenanceActionsMessage')
    PendingModifiedValues = Shapes::StructureShape.new(name: 'PendingModifiedValues')
    RebootDBInstanceMessage = Shapes::StructureShape.new(name: 'RebootDBInstanceMessage')
    RebootDBInstanceResult = Shapes::StructureShape.new(name: 'RebootDBInstanceResult')
    RemoveTagsFromResourceMessage = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceMessage')
    ResetDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetDBClusterParameterGroupMessage')
    ResourceNotFoundFault = Shapes::StructureShape.new(name: 'ResourceNotFoundFault')
    ResourcePendingMaintenanceActions = Shapes::StructureShape.new(name: 'ResourcePendingMaintenanceActions')
    RestoreDBClusterFromSnapshotMessage = Shapes::StructureShape.new(name: 'RestoreDBClusterFromSnapshotMessage')
    RestoreDBClusterFromSnapshotResult = Shapes::StructureShape.new(name: 'RestoreDBClusterFromSnapshotResult')
    RestoreDBClusterToPointInTimeMessage = Shapes::StructureShape.new(name: 'RestoreDBClusterToPointInTimeMessage')
    RestoreDBClusterToPointInTimeResult = Shapes::StructureShape.new(name: 'RestoreDBClusterToPointInTimeResult')
    SharedSnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SharedSnapshotQuotaExceededFault')
    SnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotQuotaExceededFault')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartDBClusterMessage = Shapes::StructureShape.new(name: 'StartDBClusterMessage')
    StartDBClusterResult = Shapes::StructureShape.new(name: 'StartDBClusterResult')
    StopDBClusterMessage = Shapes::StructureShape.new(name: 'StopDBClusterMessage')
    StopDBClusterResult = Shapes::StructureShape.new(name: 'StopDBClusterResult')
    StorageQuotaExceededFault = Shapes::StructureShape.new(name: 'StorageQuotaExceededFault')
    StorageTypeNotSupportedFault = Shapes::StructureShape.new(name: 'StorageTypeNotSupportedFault')
    String = Shapes::StringShape.new(name: 'String')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetAlreadyInUse = Shapes::StructureShape.new(name: 'SubnetAlreadyInUse')
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagListMessage = Shapes::StructureShape.new(name: 'TagListMessage')
    UpgradeTarget = Shapes::StructureShape.new(name: 'UpgradeTarget')
    ValidUpgradeTargetList = Shapes::ListShape.new(name: 'ValidUpgradeTargetList')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')

    AddTagsToResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    AddTagsToResourceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToResourceMessage.struct_class = Types::AddTagsToResourceMessage

    ApplyPendingMaintenanceActionMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceIdentifier"))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ApplyAction"))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptInType"))
    ApplyPendingMaintenanceActionMessage.struct_class = Types::ApplyPendingMaintenanceActionMessage

    ApplyPendingMaintenanceActionResult.add_member(:resource_pending_maintenance_actions, Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: "ResourcePendingMaintenanceActions"))
    ApplyPendingMaintenanceActionResult.struct_class = Types::ApplyPendingMaintenanceActionResult

    AttributeValueList.member = Shapes::ShapeRef.new(shape: String, location_name: "AttributeValue")

    AuthorizationNotFoundFault.struct_class = Types::AuthorizationNotFoundFault

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone")

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone")

    Certificate.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    Certificate.add_member(:certificate_type, Shapes::ShapeRef.new(shape: String, location_name: "CertificateType"))
    Certificate.add_member(:thumbprint, Shapes::ShapeRef.new(shape: String, location_name: "Thumbprint"))
    Certificate.add_member(:valid_from, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidFrom"))
    Certificate.add_member(:valid_till, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidTill"))
    Certificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    Certificate.struct_class = Types::Certificate

    CertificateList.member = Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate")

    CertificateMessage.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    CertificateMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CertificateMessage.struct_class = Types::CertificateMessage

    CertificateNotFoundFault.struct_class = Types::CertificateNotFoundFault

    CloudwatchLogsExportConfiguration.add_member(:enable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableLogTypes"))
    CloudwatchLogsExportConfiguration.add_member(:disable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "DisableLogTypes"))
    CloudwatchLogsExportConfiguration.struct_class = Types::CloudwatchLogsExportConfiguration

    CopyDBClusterParameterGroupMessage.add_member(:source_db_cluster_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterParameterGroupIdentifier"))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterParameterGroupIdentifier"))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterParameterGroupDescription"))
    CopyDBClusterParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBClusterParameterGroupMessage.struct_class = Types::CopyDBClusterParameterGroupMessage

    CopyDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup"))
    CopyDBClusterParameterGroupResult.struct_class = Types::CopyDBClusterParameterGroupResult

    CopyDBClusterSnapshotMessage.add_member(:source_db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterSnapshotIdentifier"))
    CopyDBClusterSnapshotMessage.add_member(:target_db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterSnapshotIdentifier"))
    CopyDBClusterSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: String, location_name: "PreSignedUrl"))
    CopyDBClusterSnapshotMessage.add_member(:copy_tags, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTags"))
    CopyDBClusterSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBClusterSnapshotMessage.struct_class = Types::CopyDBClusterSnapshotMessage

    CopyDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    CopyDBClusterSnapshotResult.struct_class = Types::CopyDBClusterSnapshotResult

    CreateDBClusterMessage.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    CreateDBClusterMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    CreateDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBClusterMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    CreateDBClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateDBClusterMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    CreateDBClusterMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    CreateDBClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateDBClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateDBClusterMessage.add_member(:master_username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MasterUsername"))
    CreateDBClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MasterUserPassword"))
    CreateDBClusterMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateDBClusterMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateDBClusterMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateDBClusterMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: String, location_name: "PreSignedUrl"))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBClusterMessage.struct_class = Types::CreateDBClusterMessage

    CreateDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    CreateDBClusterParameterGroupMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    CreateDBClusterParameterGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateDBClusterParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterParameterGroupMessage.struct_class = Types::CreateDBClusterParameterGroupMessage

    CreateDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup"))
    CreateDBClusterParameterGroupResult.struct_class = Types::CreateDBClusterParameterGroupResult

    CreateDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    CreateDBClusterResult.struct_class = Types::CreateDBClusterResult

    CreateDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBClusterSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterSnapshotMessage.struct_class = Types::CreateDBClusterSnapshotMessage

    CreateDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    CreateDBClusterSnapshotResult.struct_class = Types::CreateDBClusterSnapshotResult

    CreateDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    CreateDBInstanceMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceClass"))
    CreateDBInstanceMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    CreateDBInstanceMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateDBInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateDBInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateDBInstanceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBInstanceMessage.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    CreateDBInstanceMessage.struct_class = Types::CreateDBInstanceMessage

    CreateDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    CreateDBInstanceResult.struct_class = Types::CreateDBInstanceResult

    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupDescription"))
    CreateDBSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateDBSubnetGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBSubnetGroupMessage.struct_class = Types::CreateDBSubnetGroupMessage

    CreateDBSubnetGroupResult.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    CreateDBSubnetGroupResult.struct_class = Types::CreateDBSubnetGroupResult

    DBCluster.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DBCluster.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    DBCluster.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBCluster.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroup"))
    DBCluster.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroup"))
    DBCluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBCluster.add_member(:percent_progress, Shapes::ShapeRef.new(shape: String, location_name: "PercentProgress"))
    DBCluster.add_member(:earliest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EarliestRestorableTime"))
    DBCluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBCluster.add_member(:reader_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "ReaderEndpoint"))
    DBCluster.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    DBCluster.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBCluster.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBCluster.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LatestRestorableTime"))
    DBCluster.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    DBCluster.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBCluster.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    DBCluster.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    DBCluster.add_member(:db_cluster_members, Shapes::ShapeRef.new(shape: DBClusterMemberList, location_name: "DBClusterMembers"))
    DBCluster.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    DBCluster.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "HostedZoneId"))
    DBCluster.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBCluster.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBCluster.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbClusterResourceId"))
    DBCluster.add_member(:db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterArn"))
    DBCluster.add_member(:associated_roles, Shapes::ShapeRef.new(shape: DBClusterRoles, location_name: "AssociatedRoles"))
    DBCluster.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    DBCluster.add_member(:enabled_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnabledCloudwatchLogsExports"))
    DBCluster.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtection"))
    DBCluster.struct_class = Types::DBCluster

    DBClusterAlreadyExistsFault.struct_class = Types::DBClusterAlreadyExistsFault

    DBClusterList.member = Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster")

    DBClusterMember.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBClusterMember.add_member(:is_cluster_writer, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsClusterWriter"))
    DBClusterMember.add_member(:db_cluster_parameter_group_status, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupStatus"))
    DBClusterMember.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    DBClusterMember.struct_class = Types::DBClusterMember

    DBClusterMemberList.member = Shapes::ShapeRef.new(shape: DBClusterMember, location_name: "DBClusterMember")

    DBClusterMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterMessage.add_member(:db_clusters, Shapes::ShapeRef.new(shape: DBClusterList, location_name: "DBClusters"))
    DBClusterMessage.struct_class = Types::DBClusterMessage

    DBClusterNotFoundFault.struct_class = Types::DBClusterNotFoundFault

    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DBClusterParameterGroup.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBClusterParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupArn"))
    DBClusterParameterGroup.struct_class = Types::DBClusterParameterGroup

    DBClusterParameterGroupDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    DBClusterParameterGroupDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterParameterGroupDetails.struct_class = Types::DBClusterParameterGroupDetails

    DBClusterParameterGroupList.member = Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup")

    DBClusterParameterGroupNameMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DBClusterParameterGroupNameMessage.struct_class = Types::DBClusterParameterGroupNameMessage

    DBClusterParameterGroupNotFoundFault.struct_class = Types::DBClusterParameterGroupNotFoundFault

    DBClusterParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_groups, Shapes::ShapeRef.new(shape: DBClusterParameterGroupList, location_name: "DBClusterParameterGroups"))
    DBClusterParameterGroupsMessage.struct_class = Types::DBClusterParameterGroupsMessage

    DBClusterQuotaExceededFault.struct_class = Types::DBClusterQuotaExceededFault

    DBClusterRole.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    DBClusterRole.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterRole.struct_class = Types::DBClusterRole

    DBClusterRoles.member = Shapes::ShapeRef.new(shape: DBClusterRole, location_name: "DBClusterRole")

    DBClusterSnapshot.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshot.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBClusterSnapshot.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotCreateTime"))
    DBClusterSnapshot.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBClusterSnapshot.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterSnapshot.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    DBClusterSnapshot.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBClusterSnapshot.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    DBClusterSnapshot.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBClusterSnapshot.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBClusterSnapshot.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DBClusterSnapshot.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "PercentProgress"))
    DBClusterSnapshot.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBClusterSnapshot.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:source_db_cluster_snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBClusterSnapshotArn"))
    DBClusterSnapshot.struct_class = Types::DBClusterSnapshot

    DBClusterSnapshotAlreadyExistsFault.struct_class = Types::DBClusterSnapshotAlreadyExistsFault

    DBClusterSnapshotAttribute.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "AttributeName"))
    DBClusterSnapshotAttribute.add_member(:attribute_values, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValues"))
    DBClusterSnapshotAttribute.struct_class = Types::DBClusterSnapshotAttribute

    DBClusterSnapshotAttributeList.member = Shapes::ShapeRef.new(shape: DBClusterSnapshotAttribute, location_name: "DBClusterSnapshotAttribute")

    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributeList, location_name: "DBClusterSnapshotAttributes"))
    DBClusterSnapshotAttributesResult.struct_class = Types::DBClusterSnapshotAttributesResult

    DBClusterSnapshotList.member = Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot")

    DBClusterSnapshotMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterSnapshotMessage.add_member(:db_cluster_snapshots, Shapes::ShapeRef.new(shape: DBClusterSnapshotList, location_name: "DBClusterSnapshots"))
    DBClusterSnapshotMessage.struct_class = Types::DBClusterSnapshotMessage

    DBClusterSnapshotNotFoundFault.struct_class = Types::DBClusterSnapshotNotFoundFault

    DBEngineVersion.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBEngineVersion.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBEngineVersion.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBEngineVersion.add_member(:db_engine_description, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineDescription"))
    DBEngineVersion.add_member(:db_engine_version_description, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineVersionDescription"))
    DBEngineVersion.add_member(:valid_upgrade_target, Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: "ValidUpgradeTarget"))
    DBEngineVersion.add_member(:exportable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "ExportableLogTypes"))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsLogExportsToCloudwatchLogs"))
    DBEngineVersion.struct_class = Types::DBEngineVersion

    DBEngineVersionList.member = Shapes::ShapeRef.new(shape: DBEngineVersion, location_name: "DBEngineVersion")

    DBEngineVersionMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBEngineVersionMessage.add_member(:db_engine_versions, Shapes::ShapeRef.new(shape: DBEngineVersionList, location_name: "DBEngineVersions"))
    DBEngineVersionMessage.struct_class = Types::DBEngineVersionMessage

    DBInstance.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBInstance.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    DBInstance.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBInstance.add_member(:db_instance_status, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceStatus"))
    DBInstance.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    DBInstance.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "InstanceCreateTime"))
    DBInstance.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    DBInstance.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "BackupRetentionPeriod"))
    DBInstance.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    DBInstance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    DBInstance.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    DBInstance.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    DBInstance.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: "PendingModifiedValues"))
    DBInstance.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LatestRestorableTime"))
    DBInstance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBInstance.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    DBInstance.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    DBInstance.add_member(:status_infos, Shapes::ShapeRef.new(shape: DBInstanceStatusInfoList, location_name: "StatusInfos"))
    DBInstance.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBInstance.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBInstance.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBInstance.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DBInstance.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    DBInstance.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    DBInstance.add_member(:db_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceArn"))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnabledCloudwatchLogsExports"))
    DBInstance.struct_class = Types::DBInstance

    DBInstanceAlreadyExistsFault.struct_class = Types::DBInstanceAlreadyExistsFault

    DBInstanceList.member = Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance")

    DBInstanceMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBInstanceMessage.add_member(:db_instances, Shapes::ShapeRef.new(shape: DBInstanceList, location_name: "DBInstances"))
    DBInstanceMessage.struct_class = Types::DBInstanceMessage

    DBInstanceNotFoundFault.struct_class = Types::DBInstanceNotFoundFault

    DBInstanceStatusInfo.add_member(:status_type, Shapes::ShapeRef.new(shape: String, location_name: "StatusType"))
    DBInstanceStatusInfo.add_member(:normal, Shapes::ShapeRef.new(shape: Boolean, location_name: "Normal"))
    DBInstanceStatusInfo.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBInstanceStatusInfo.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DBInstanceStatusInfo.struct_class = Types::DBInstanceStatusInfo

    DBInstanceStatusInfoList.member = Shapes::ShapeRef.new(shape: DBInstanceStatusInfo, location_name: "DBInstanceStatusInfo")

    DBParameterGroupAlreadyExistsFault.struct_class = Types::DBParameterGroupAlreadyExistsFault

    DBParameterGroupNotFoundFault.struct_class = Types::DBParameterGroupNotFoundFault

    DBParameterGroupQuotaExceededFault.struct_class = Types::DBParameterGroupQuotaExceededFault

    DBSecurityGroupNotFoundFault.struct_class = Types::DBSecurityGroupNotFoundFault

    DBSnapshotAlreadyExistsFault.struct_class = Types::DBSnapshotAlreadyExistsFault

    DBSnapshotNotFoundFault.struct_class = Types::DBSnapshotNotFoundFault

    DBSubnetGroup.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    DBSubnetGroup.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupDescription"))
    DBSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    DBSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    DBSubnetGroup.add_member(:db_subnet_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupArn"))
    DBSubnetGroup.struct_class = Types::DBSubnetGroup

    DBSubnetGroupAlreadyExistsFault.struct_class = Types::DBSubnetGroupAlreadyExistsFault

    DBSubnetGroupDoesNotCoverEnoughAZs.struct_class = Types::DBSubnetGroupDoesNotCoverEnoughAZs

    DBSubnetGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBSubnetGroupMessage.add_member(:db_subnet_groups, Shapes::ShapeRef.new(shape: DBSubnetGroups, location_name: "DBSubnetGroups"))
    DBSubnetGroupMessage.struct_class = Types::DBSubnetGroupMessage

    DBSubnetGroupNotFoundFault.struct_class = Types::DBSubnetGroupNotFoundFault

    DBSubnetGroupQuotaExceededFault.struct_class = Types::DBSubnetGroupQuotaExceededFault

    DBSubnetGroups.member = Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup")

    DBSubnetQuotaExceededFault.struct_class = Types::DBSubnetQuotaExceededFault

    DBUpgradeDependencyFailureFault.struct_class = Types::DBUpgradeDependencyFailureFault

    DeleteDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    DeleteDBClusterMessage.add_member(:skip_final_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalSnapshot"))
    DeleteDBClusterMessage.add_member(:final_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalDBSnapshotIdentifier"))
    DeleteDBClusterMessage.struct_class = Types::DeleteDBClusterMessage

    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    DeleteDBClusterParameterGroupMessage.struct_class = Types::DeleteDBClusterParameterGroupMessage

    DeleteDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    DeleteDBClusterResult.struct_class = Types::DeleteDBClusterResult

    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    DeleteDBClusterSnapshotMessage.struct_class = Types::DeleteDBClusterSnapshotMessage

    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    DeleteDBClusterSnapshotResult.struct_class = Types::DeleteDBClusterSnapshotResult

    DeleteDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DeleteDBInstanceMessage.struct_class = Types::DeleteDBInstanceMessage

    DeleteDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    DeleteDBInstanceResult.struct_class = Types::DeleteDBInstanceResult

    DeleteDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    DeleteDBSubnetGroupMessage.struct_class = Types::DeleteDBSubnetGroupMessage

    DescribeCertificatesMessage.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    DescribeCertificatesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesMessage.struct_class = Types::DescribeCertificatesMessage

    DescribeDBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DescribeDBClusterParameterGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterParameterGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterParameterGroupsMessage.struct_class = Types::DescribeDBClusterParameterGroupsMessage

    DescribeDBClusterParametersMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    DescribeDBClusterParametersMessage.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeDBClusterParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterParametersMessage.struct_class = Types::DescribeDBClusterParametersMessage

    DescribeDBClusterSnapshotAttributesMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    DescribeDBClusterSnapshotAttributesMessage.struct_class = Types::DescribeDBClusterSnapshotAttributesMessage

    DescribeDBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: "DBClusterSnapshotAttributesResult"))
    DescribeDBClusterSnapshotAttributesResult.struct_class = Types::DescribeDBClusterSnapshotAttributesResult

    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DescribeDBClusterSnapshotsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterSnapshotsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterSnapshotsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_shared, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeShared"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludePublic"))
    DescribeDBClusterSnapshotsMessage.struct_class = Types::DescribeDBClusterSnapshotsMessage

    DescribeDBClustersMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClustersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClustersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClustersMessage.struct_class = Types::DescribeDBClustersMessage

    DescribeDBEngineVersionsMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DescribeDBEngineVersionsMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DescribeDBEngineVersionsMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DescribeDBEngineVersionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBEngineVersionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBEngineVersionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBEngineVersionsMessage.add_member(:default_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultOnly"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_character_sets, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ListSupportedCharacterSets"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_timezones, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ListSupportedTimezones"))
    DescribeDBEngineVersionsMessage.struct_class = Types::DescribeDBEngineVersionsMessage

    DescribeDBInstancesMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DescribeDBInstancesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBInstancesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBInstancesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBInstancesMessage.struct_class = Types::DescribeDBInstancesMessage

    DescribeDBSubnetGroupsMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    DescribeDBSubnetGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBSubnetGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBSubnetGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBSubnetGroupsMessage.struct_class = Types::DescribeDBSubnetGroupsMessage

    DescribeEngineDefaultClusterParametersMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineDefaultClusterParametersMessage.struct_class = Types::DescribeEngineDefaultClusterParametersMessage

    DescribeEngineDefaultClusterParametersResult.add_member(:engine_defaults, Shapes::ShapeRef.new(shape: EngineDefaults, location_name: "EngineDefaults"))
    DescribeEngineDefaultClusterParametersResult.struct_class = Types::DescribeEngineDefaultClusterParametersResult

    DescribeEventCategoriesMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventCategoriesMessage.struct_class = Types::DescribeEventCategoriesMessage

    DescribeEventsMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Duration"))
    DescribeEventsMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    DescribeEventsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsMessage.struct_class = Types::DescribeEventsMessage

    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:vpc, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Vpc"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableDBInstanceOptionsMessage.struct_class = Types::DescribeOrderableDBInstanceOptionsMessage

    DescribePendingMaintenanceActionsMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribePendingMaintenanceActionsMessage.struct_class = Types::DescribePendingMaintenanceActionsMessage

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Endpoint.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "HostedZoneId"))
    Endpoint.struct_class = Types::Endpoint

    EngineDefaults.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    EngineDefaults.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EngineDefaults.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    EngineDefaults.struct_class = Types::EngineDefaults

    Event.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceArn"))
    Event.struct_class = Types::Event

    EventCategoriesList.member = Shapes::ShapeRef.new(shape: String, location_name: "EventCategory")

    EventCategoriesMap.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventCategoriesMap.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    EventCategoriesMap.struct_class = Types::EventCategoriesMap

    EventCategoriesMapList.member = Shapes::ShapeRef.new(shape: EventCategoriesMap, location_name: "EventCategoriesMap")

    EventCategoriesMessage.add_member(:event_categories_map_list, Shapes::ShapeRef.new(shape: EventCategoriesMapList, location_name: "EventCategoriesMapList"))
    EventCategoriesMessage.struct_class = Types::EventCategoriesMessage

    EventList.member = Shapes::ShapeRef.new(shape: Event, location_name: "Event")

    EventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventsMessage.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    EventsMessage.struct_class = Types::EventsMessage

    FailoverDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    FailoverDBClusterMessage.add_member(:target_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "TargetDBInstanceIdentifier"))
    FailoverDBClusterMessage.struct_class = Types::FailoverDBClusterMessage

    FailoverDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    FailoverDBClusterResult.struct_class = Types::FailoverDBClusterResult

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter, location_name: "Filter")

    FilterValueList.member = Shapes::ShapeRef.new(shape: String, location_name: "Value")

    InstanceQuotaExceededFault.struct_class = Types::InstanceQuotaExceededFault

    InsufficientDBClusterCapacityFault.struct_class = Types::InsufficientDBClusterCapacityFault

    InsufficientDBInstanceCapacityFault.struct_class = Types::InsufficientDBInstanceCapacityFault

    InsufficientStorageClusterCapacityFault.struct_class = Types::InsufficientStorageClusterCapacityFault

    InvalidDBClusterSnapshotStateFault.struct_class = Types::InvalidDBClusterSnapshotStateFault

    InvalidDBClusterStateFault.struct_class = Types::InvalidDBClusterStateFault

    InvalidDBInstanceStateFault.struct_class = Types::InvalidDBInstanceStateFault

    InvalidDBParameterGroupStateFault.struct_class = Types::InvalidDBParameterGroupStateFault

    InvalidDBSecurityGroupStateFault.struct_class = Types::InvalidDBSecurityGroupStateFault

    InvalidDBSnapshotStateFault.struct_class = Types::InvalidDBSnapshotStateFault

    InvalidDBSubnetGroupStateFault.struct_class = Types::InvalidDBSubnetGroupStateFault

    InvalidDBSubnetStateFault.struct_class = Types::InvalidDBSubnetStateFault

    InvalidRestoreFault.struct_class = Types::InvalidRestoreFault

    InvalidSubnet.struct_class = Types::InvalidSubnet

    InvalidVPCNetworkStateFault.struct_class = Types::InvalidVPCNetworkStateFault

    KMSKeyNotAccessibleFault.struct_class = Types::KMSKeyNotAccessibleFault

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    ListTagsForResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    ListTagsForResourceMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListTagsForResourceMessage.struct_class = Types::ListTagsForResourceMessage

    LogTypeList.member = Shapes::ShapeRef.new(shape: String)

    ModifyDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    ModifyDBClusterMessage.add_member(:new_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewDBClusterIdentifier"))
    ModifyDBClusterMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyDBClusterMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    ModifyDBClusterMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    ModifyDBClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyDBClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    ModifyDBClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    ModifyDBClusterMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    ModifyDBClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyDBClusterMessage.add_member(:cloudwatch_logs_export_configuration, Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: "CloudwatchLogsExportConfiguration"))
    ModifyDBClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyDBClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyDBClusterMessage.struct_class = Types::ModifyDBClusterMessage

    ModifyDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    ModifyDBClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, required: true, location_name: "Parameters"))
    ModifyDBClusterParameterGroupMessage.struct_class = Types::ModifyDBClusterParameterGroupMessage

    ModifyDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    ModifyDBClusterResult.struct_class = Types::ModifyDBClusterResult

    ModifyDBClusterSnapshotAttributeMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AttributeName"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_add, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "ValuesToAdd"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_remove, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "ValuesToRemove"))
    ModifyDBClusterSnapshotAttributeMessage.struct_class = Types::ModifyDBClusterSnapshotAttributeMessage

    ModifyDBClusterSnapshotAttributeResult.add_member(:db_cluster_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: "DBClusterSnapshotAttributesResult"))
    ModifyDBClusterSnapshotAttributeResult.struct_class = Types::ModifyDBClusterSnapshotAttributeResult

    ModifyDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    ModifyDBInstanceMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyDBInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyDBInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewDBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    ModifyDBInstanceMessage.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    ModifyDBInstanceMessage.struct_class = Types::ModifyDBInstanceMessage

    ModifyDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    ModifyDBInstanceResult.struct_class = Types::ModifyDBInstanceResult

    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupDescription"))
    ModifyDBSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    ModifyDBSubnetGroupMessage.struct_class = Types::ModifyDBSubnetGroupMessage

    ModifyDBSubnetGroupResult.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    ModifyDBSubnetGroupResult.struct_class = Types::ModifyDBSubnetGroupResult

    OrderableDBInstanceOption.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    OrderableDBInstanceOption.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    OrderableDBInstanceOption.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    OrderableDBInstanceOption.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    OrderableDBInstanceOption.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "AvailabilityZones"))
    OrderableDBInstanceOption.add_member(:vpc, Shapes::ShapeRef.new(shape: Boolean, location_name: "Vpc"))
    OrderableDBInstanceOption.struct_class = Types::OrderableDBInstanceOption

    OrderableDBInstanceOptionsList.member = Shapes::ShapeRef.new(shape: OrderableDBInstanceOption, location_name: "OrderableDBInstanceOption")

    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsList, location_name: "OrderableDBInstanceOptions"))
    OrderableDBInstanceOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    OrderableDBInstanceOptionsMessage.struct_class = Types::OrderableDBInstanceOptionsMessage

    Parameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Parameter.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    Parameter.add_member(:apply_type, Shapes::ShapeRef.new(shape: String, location_name: "ApplyType"))
    Parameter.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    Parameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    Parameter.add_member(:apply_method, Shapes::ShapeRef.new(shape: ApplyMethod, location_name: "ApplyMethod"))
    Parameter.struct_class = Types::Parameter

    ParametersList.member = Shapes::ShapeRef.new(shape: Parameter, location_name: "Parameter")

    PendingCloudwatchLogsExports.add_member(:log_types_to_enable, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "LogTypesToEnable"))
    PendingCloudwatchLogsExports.add_member(:log_types_to_disable, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "LogTypesToDisable"))
    PendingCloudwatchLogsExports.struct_class = Types::PendingCloudwatchLogsExports

    PendingMaintenanceAction.add_member(:action, Shapes::ShapeRef.new(shape: String, location_name: "Action"))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutoAppliedAfterDate"))
    PendingMaintenanceAction.add_member(:forced_apply_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ForcedApplyDate"))
    PendingMaintenanceAction.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: String, location_name: "OptInStatus"))
    PendingMaintenanceAction.add_member(:current_apply_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CurrentApplyDate"))
    PendingMaintenanceAction.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    PendingMaintenanceAction.struct_class = Types::PendingMaintenanceAction

    PendingMaintenanceActionDetails.member = Shapes::ShapeRef.new(shape: PendingMaintenanceAction, location_name: "PendingMaintenanceAction")

    PendingMaintenanceActions.member = Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: "ResourcePendingMaintenanceActions")

    PendingMaintenanceActionsMessage.add_member(:pending_maintenance_actions, Shapes::ShapeRef.new(shape: PendingMaintenanceActions, location_name: "PendingMaintenanceActions"))
    PendingMaintenanceActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    PendingMaintenanceActionsMessage.struct_class = Types::PendingMaintenanceActionsMessage

    PendingModifiedValues.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    PendingModifiedValues.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    PendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    PendingModifiedValues.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    PendingModifiedValues.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    PendingModifiedValues.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    PendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    PendingModifiedValues.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    PendingModifiedValues.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    PendingModifiedValues.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    PendingModifiedValues.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    PendingModifiedValues.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    PendingModifiedValues.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: "PendingCloudwatchLogsExports"))
    PendingModifiedValues.struct_class = Types::PendingModifiedValues

    RebootDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RebootDBInstanceMessage.add_member(:force_failover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceFailover"))
    RebootDBInstanceMessage.struct_class = Types::RebootDBInstanceMessage

    RebootDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    RebootDBInstanceResult.struct_class = Types::RebootDBInstanceResult

    RemoveTagsFromResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceMessage.struct_class = Types::RemoveTagsFromResourceMessage

    ResetDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    ResetDBClusterParameterGroupMessage.add_member(:reset_all_parameters, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetAllParameters"))
    ResetDBClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    ResetDBClusterParameterGroupMessage.struct_class = Types::ResetDBClusterParameterGroupMessage

    ResourceNotFoundFault.struct_class = Types::ResourceNotFoundFault

    ResourcePendingMaintenanceActions.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails, location_name: "PendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceActions.struct_class = Types::ResourcePendingMaintenanceActions

    RestoreDBClusterFromSnapshotMessage.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RestoreDBClusterFromSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RestoreDBClusterFromSnapshotMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBClusterFromSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBClusterFromSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterFromSnapshotMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBClusterFromSnapshotMessage.struct_class = Types::RestoreDBClusterFromSnapshotMessage

    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterFromSnapshotResult.struct_class = Types::RestoreDBClusterFromSnapshotResult

    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterIdentifier"))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_to_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "RestoreToTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:use_latest_restorable_time, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseLatestRestorableTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBClusterToPointInTimeMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBClusterToPointInTimeMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterToPointInTimeMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBClusterToPointInTimeMessage.struct_class = Types::RestoreDBClusterToPointInTimeMessage

    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterToPointInTimeResult.struct_class = Types::RestoreDBClusterToPointInTimeResult

    SharedSnapshotQuotaExceededFault.struct_class = Types::SharedSnapshotQuotaExceededFault

    SnapshotQuotaExceededFault.struct_class = Types::SnapshotQuotaExceededFault

    StartDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    StartDBClusterMessage.struct_class = Types::StartDBClusterMessage

    StartDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    StartDBClusterResult.struct_class = Types::StartDBClusterResult

    StopDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    StopDBClusterMessage.struct_class = Types::StopDBClusterMessage

    StopDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    StopDBClusterResult.struct_class = Types::StopDBClusterResult

    StorageQuotaExceededFault.struct_class = Types::StorageQuotaExceededFault

    StorageTypeNotSupportedFault.struct_class = Types::StorageTypeNotSupportedFault

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.struct_class = Types::Subnet

    SubnetAlreadyInUse.struct_class = Types::SubnetAlreadyInUse

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier")

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet, location_name: "Subnet")

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag, location_name: "Tag")

    TagListMessage.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    TagListMessage.struct_class = Types::TagListMessage

    UpgradeTarget.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    UpgradeTarget.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    UpgradeTarget.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpgradeTarget.add_member(:auto_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoUpgrade"))
    UpgradeTarget.add_member(:is_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMajorVersionUpgrade"))
    UpgradeTarget.struct_class = Types::UpgradeTarget

    ValidUpgradeTargetList.member = Shapes::ShapeRef.new(shape: UpgradeTarget, location_name: "UpgradeTarget")

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId")

    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    VpcSecurityGroupMembership.struct_class = Types::VpcSecurityGroupMembership

    VpcSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, location_name: "VpcSecurityGroupMembership")


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-10-31"

      api.metadata = {
        "apiVersion" => "2014-10-31",
        "endpointPrefix" => "rds",
        "protocol" => "query",
        "serviceAbbreviation" => "Amazon DocDB",
        "serviceFullName" => "Amazon DocumentDB with MongoDB compatibility",
        "serviceId" => "DocDB",
        "signatureVersion" => "v4",
        "signingName" => "rds",
        "uid" => "docdb-2014-10-31",
        "xmlNamespace" => "http://rds.amazonaws.com/doc/2014-10-31/",
      }

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:apply_pending_maintenance_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplyPendingMaintenanceAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:copy_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
      end)

      api.add_operation(:copy_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:create_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
      end)

      api.add_operation(:create_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
      end)

      api.add_operation(:create_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
      end)

      api.add_operation(:create_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:create_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:delete_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
      end)

      api.add_operation(:delete_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:delete_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
      end)

      api.add_operation(:delete_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:delete_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
      end)

      api.add_operation(:describe_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificatesMessage)
        o.output = Shapes::ShapeRef.new(shape: CertificateMessage)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterParameterGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupsMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupDetails)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_snapshot_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterSnapshotAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
      end)

      api.add_operation(:describe_db_cluster_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterSnapshotMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClustersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBEngineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBEngineVersionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBEngineVersionMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBInstancesMessage)
        o.output = Shapes::ShapeRef.new(shape: DBInstanceMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBSubnetGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBSubnetGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_engine_default_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngineDefaultClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersResult)
      end)

      api.add_operation(:describe_event_categories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventCategories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        o.output = Shapes::ShapeRef.new(shape: EventCategoriesMessage)
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

      api.add_operation(:describe_orderable_db_instance_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrderableDBInstanceOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrderableDBInstanceOptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_pending_maintenance_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePendingMaintenanceActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsMessage)
        o.output = Shapes::ShapeRef.new(shape: PendingMaintenanceActionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:failover_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FailoverDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FailoverDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: FailoverDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: TagListMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:modify_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
      end)

      api.add_operation(:modify_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
      end)

      api.add_operation(:modify_db_cluster_snapshot_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBClusterSnapshotAttribute"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SharedSnapshotQuotaExceededFault)
      end)

      api.add_operation(:modify_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBUpgradeDependencyFailureFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
      end)

      api.add_operation(:modify_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:reboot_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:reset_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:restore_db_cluster_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBClusterFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:restore_db_cluster_to_point_in_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBClusterToPointInTime"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
      end)

      api.add_operation(:start_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: StartDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:stop_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: StopDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)
    end

  end
end
