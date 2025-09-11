# frozen_string_literal: true

# This is generated code!

module Aws::DocDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddSourceIdentifierToSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#AddSourceIdentifierToSubscriptionMessage', name: 'AddSourceIdentifierToSubscriptionMessage')
    AddSourceIdentifierToSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#AddSourceIdentifierToSubscriptionResult', name: 'AddSourceIdentifierToSubscriptionResult')
    AddTagsToResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#AddTagsToResourceMessage', name: 'AddTagsToResourceMessage')
    ApplyMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.docdb#ApplyMethod', name: 'ApplyMethod')
    ApplyPendingMaintenanceActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ApplyPendingMaintenanceActionMessage', name: 'ApplyPendingMaintenanceActionMessage')
    ApplyPendingMaintenanceActionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ApplyPendingMaintenanceActionResult', name: 'ApplyPendingMaintenanceActionResult')
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#AttributeValueList', name: 'AttributeValueList')
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#AuthorizationNotFoundFault', name: 'AuthorizationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#AvailabilityZone', name: 'AvailabilityZone')
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#AvailabilityZoneList', name: 'AvailabilityZoneList')
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#AvailabilityZones', name: 'AvailabilityZones')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.docdb#Boolean', name: 'Boolean')
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.docdb#BooleanOptional', name: 'BooleanOptional')
    CACertificateIdentifiersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#CACertificateIdentifiersList', name: 'CACertificateIdentifiersList')
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#Certificate', name: 'Certificate')
    CertificateDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CertificateDetails', name: 'CertificateDetails')
    CertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#CertificateList', name: 'CertificateList')
    CertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CertificateMessage', name: 'CertificateMessage')
    CertificateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CertificateNotFoundFault', name: 'CertificateNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CertificateNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CloudwatchLogsExportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CloudwatchLogsExportConfiguration', name: 'CloudwatchLogsExportConfiguration')
    ClusterMasterUserSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ClusterMasterUserSecret', name: 'ClusterMasterUserSecret')
    CopyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CopyDBClusterParameterGroupMessage', name: 'CopyDBClusterParameterGroupMessage')
    CopyDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CopyDBClusterParameterGroupResult', name: 'CopyDBClusterParameterGroupResult')
    CopyDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CopyDBClusterSnapshotMessage', name: 'CopyDBClusterSnapshotMessage')
    CopyDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CopyDBClusterSnapshotResult', name: 'CopyDBClusterSnapshotResult')
    CreateDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBClusterMessage', name: 'CreateDBClusterMessage')
    CreateDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBClusterParameterGroupMessage', name: 'CreateDBClusterParameterGroupMessage')
    CreateDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBClusterParameterGroupResult', name: 'CreateDBClusterParameterGroupResult')
    CreateDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBClusterResult', name: 'CreateDBClusterResult')
    CreateDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBClusterSnapshotMessage', name: 'CreateDBClusterSnapshotMessage')
    CreateDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBClusterSnapshotResult', name: 'CreateDBClusterSnapshotResult')
    CreateDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBInstanceMessage', name: 'CreateDBInstanceMessage')
    CreateDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBInstanceResult', name: 'CreateDBInstanceResult')
    CreateDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBSubnetGroupMessage', name: 'CreateDBSubnetGroupMessage')
    CreateDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateDBSubnetGroupResult', name: 'CreateDBSubnetGroupResult')
    CreateEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateEventSubscriptionMessage', name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateEventSubscriptionResult', name: 'CreateEventSubscriptionResult')
    CreateGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateGlobalClusterMessage', name: 'CreateGlobalClusterMessage')
    CreateGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#CreateGlobalClusterResult', name: 'CreateGlobalClusterResult')
    DBCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBCluster', name: 'DBCluster')
    DBClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterAlreadyExistsFault', name: 'DBClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdb#DBClusterIdentifier', name: 'DBClusterIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    DBClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBClusterList', name: 'DBClusterList')
    DBClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterMember', name: 'DBClusterMember')
    DBClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBClusterMemberList', name: 'DBClusterMemberList')
    DBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterMessage', name: 'DBClusterMessage')
    DBClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterNotFoundFault', name: 'DBClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterParameterGroup', name: 'DBClusterParameterGroup')
    DBClusterParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBClusterParameterGroupList', name: 'DBClusterParameterGroupList')
    DBClusterParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterParameterGroupNotFoundFault', name: 'DBClusterParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterParameterGroupsMessage', name: 'DBClusterParameterGroupsMessage')
    DBClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterQuotaExceededFault', name: 'DBClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterQuotaExceededFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DBClusterRole = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterRole', name: 'DBClusterRole')
    DBClusterRoles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBClusterRoles', name: 'DBClusterRoles')
    DBClusterSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterSnapshot', name: 'DBClusterSnapshot')
    DBClusterSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterSnapshotAlreadyExistsFault', name: 'DBClusterSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterSnapshotAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterSnapshotAttribute', name: 'DBClusterSnapshotAttribute')
    DBClusterSnapshotAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBClusterSnapshotAttributeList', name: 'DBClusterSnapshotAttributeList')
    DBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterSnapshotAttributesResult', name: 'DBClusterSnapshotAttributesResult')
    DBClusterSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBClusterSnapshotList', name: 'DBClusterSnapshotList')
    DBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterSnapshotMessage', name: 'DBClusterSnapshotMessage')
    DBClusterSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBClusterSnapshotNotFoundFault', name: 'DBClusterSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBEngineVersion', name: 'DBEngineVersion')
    DBEngineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBEngineVersionList', name: 'DBEngineVersionList')
    DBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBEngineVersionMessage', name: 'DBEngineVersionMessage')
    DBInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBInstance', name: 'DBInstance')
    DBInstanceAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBInstanceAlreadyExistsFault', name: 'DBInstanceAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBInstanceList', name: 'DBInstanceList')
    DBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBInstanceMessage', name: 'DBInstanceMessage')
    DBInstanceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBInstanceNotFoundFault', name: 'DBInstanceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceStatusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBInstanceStatusInfo', name: 'DBInstanceStatusInfo')
    DBInstanceStatusInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBInstanceStatusInfoList', name: 'DBInstanceStatusInfoList')
    DBParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBParameterGroupAlreadyExistsFault', name: 'DBParameterGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBParameterGroupNotFoundFault', name: 'DBParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBParameterGroupQuotaExceededFault', name: 'DBParameterGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSecurityGroupNotFoundFault', name: 'DBSecurityGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSnapshotAlreadyExistsFault', name: 'DBSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSnapshotNotFoundFault', name: 'DBSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSubnetGroup', name: 'DBSubnetGroup')
    DBSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSubnetGroupAlreadyExistsFault', name: 'DBSubnetGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupDoesNotCoverEnoughAZs = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSubnetGroupDoesNotCoverEnoughAZs', name: 'DBSubnetGroupDoesNotCoverEnoughAZs', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupDoesNotCoverEnoughAZs", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSubnetGroupMessage', name: 'DBSubnetGroupMessage')
    DBSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSubnetGroupNotFoundFault', name: 'DBSubnetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSubnetGroupQuotaExceededFault', name: 'DBSubnetGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#DBSubnetGroups', name: 'DBSubnetGroups')
    DBSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBSubnetQuotaExceededFault', name: 'DBSubnetQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBUpgradeDependencyFailureFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DBUpgradeDependencyFailureFault', name: 'DBUpgradeDependencyFailureFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBUpgradeDependencyFailure", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteDBClusterMessage', name: 'DeleteDBClusterMessage')
    DeleteDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteDBClusterParameterGroupMessage', name: 'DeleteDBClusterParameterGroupMessage')
    DeleteDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteDBClusterResult', name: 'DeleteDBClusterResult')
    DeleteDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteDBClusterSnapshotMessage', name: 'DeleteDBClusterSnapshotMessage')
    DeleteDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteDBClusterSnapshotResult', name: 'DeleteDBClusterSnapshotResult')
    DeleteDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteDBInstanceMessage', name: 'DeleteDBInstanceMessage')
    DeleteDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteDBInstanceResult', name: 'DeleteDBInstanceResult')
    DeleteDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteDBSubnetGroupMessage', name: 'DeleteDBSubnetGroupMessage')
    DeleteEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteEventSubscriptionMessage', name: 'DeleteEventSubscriptionMessage')
    DeleteEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteEventSubscriptionResult', name: 'DeleteEventSubscriptionResult')
    DeleteGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteGlobalClusterMessage', name: 'DeleteGlobalClusterMessage')
    DeleteGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DeleteGlobalClusterResult', name: 'DeleteGlobalClusterResult')
    DescribeCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeCertificatesMessage', name: 'DescribeCertificatesMessage')
    DescribeDBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBClusterParameterGroupsMessage', name: 'DescribeDBClusterParameterGroupsMessage')
    DescribeDBClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBClusterParametersMessage', name: 'DescribeDBClusterParametersMessage')
    DescribeDBClusterParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBClusterParametersOutput', name: 'DescribeDBClusterParametersOutput')
    DescribeDBClusterSnapshotAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBClusterSnapshotAttributesMessage', name: 'DescribeDBClusterSnapshotAttributesMessage')
    DescribeDBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBClusterSnapshotAttributesResult', name: 'DescribeDBClusterSnapshotAttributesResult')
    DescribeDBClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBClusterSnapshotsMessage', name: 'DescribeDBClusterSnapshotsMessage')
    DescribeDBClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBClustersMessage', name: 'DescribeDBClustersMessage')
    DescribeDBEngineVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBEngineVersionsMessage', name: 'DescribeDBEngineVersionsMessage')
    DescribeDBInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBInstancesMessage', name: 'DescribeDBInstancesMessage')
    DescribeDBSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeDBSubnetGroupsMessage', name: 'DescribeDBSubnetGroupsMessage')
    DescribeEngineDefaultClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeEngineDefaultClusterParametersMessage', name: 'DescribeEngineDefaultClusterParametersMessage')
    DescribeEngineDefaultClusterParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeEngineDefaultClusterParametersResult', name: 'DescribeEngineDefaultClusterParametersResult')
    DescribeEventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeEventCategoriesMessage', name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeEventSubscriptionsMessage', name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeEventsMessage', name: 'DescribeEventsMessage')
    DescribeGlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeGlobalClustersMessage', name: 'DescribeGlobalClustersMessage')
    DescribeOrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribeOrderableDBInstanceOptionsMessage', name: 'DescribeOrderableDBInstanceOptionsMessage')
    DescribePendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#DescribePendingMaintenanceActionsMessage', name: 'DescribePendingMaintenanceActionsMessage')
    DoubleOptional = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.docdb#DoubleOptional', name: 'DoubleOptional')
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#Endpoint', name: 'Endpoint')
    EngineDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#EngineDefaults', name: 'EngineDefaults')
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#Event', name: 'Event')
    EventCategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#EventCategoriesList', name: 'EventCategoriesList')
    EventCategoriesMap = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#EventCategoriesMap', name: 'EventCategoriesMap')
    EventCategoriesMapList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#EventCategoriesMapList', name: 'EventCategoriesMapList')
    EventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#EventCategoriesMessage', name: 'EventCategoriesMessage')
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#EventList', name: 'EventList')
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#EventSubscription', name: 'EventSubscription')
    EventSubscriptionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#EventSubscriptionQuotaExceededFault', name: 'EventSubscriptionQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EventSubscriptionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventSubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#EventSubscriptionsList', name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#EventSubscriptionsMessage', name: 'EventSubscriptionsMessage')
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#EventsMessage', name: 'EventsMessage')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdb#ExceptionMessage', name: 'ExceptionMessage')
    FailoverDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#FailoverDBClusterMessage', name: 'FailoverDBClusterMessage')
    FailoverDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#FailoverDBClusterResult', name: 'FailoverDBClusterResult')
    FailoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#FailoverGlobalClusterMessage', name: 'FailoverGlobalClusterMessage')
    FailoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#FailoverGlobalClusterResult', name: 'FailoverGlobalClusterResult')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#Filter', name: 'Filter')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#FilterList', name: 'FilterList')
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#FilterValueList', name: 'FilterValueList')
    GlobalCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#GlobalCluster', name: 'GlobalCluster')
    GlobalClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#GlobalClusterAlreadyExistsFault', name: 'GlobalClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdb#GlobalClusterIdentifier', name: 'GlobalClusterIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    GlobalClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#GlobalClusterList', name: 'GlobalClusterList')
    GlobalClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#GlobalClusterMember', name: 'GlobalClusterMember')
    GlobalClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#GlobalClusterMemberList', name: 'GlobalClusterMemberList')
    GlobalClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#GlobalClusterNotFoundFault', name: 'GlobalClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    GlobalClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#GlobalClusterQuotaExceededFault', name: 'GlobalClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#GlobalClustersMessage', name: 'GlobalClustersMessage')
    InstanceQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InstanceQuotaExceededFault', name: 'InstanceQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InstanceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientDBClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InsufficientDBClusterCapacityFault', name: 'InsufficientDBClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBClusterCapacityFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InsufficientDBInstanceCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InsufficientDBInstanceCapacityFault', name: 'InsufficientDBInstanceCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBInstanceCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientStorageClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InsufficientStorageClusterCapacityFault', name: 'InsufficientStorageClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientStorageClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.docdb#Integer', name: 'Integer')
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.docdb#IntegerOptional', name: 'IntegerOptional')
    InvalidDBClusterSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidDBClusterSnapshotStateFault', name: 'InvalidDBClusterSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterSnapshotStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidDBClusterStateFault', name: 'InvalidDBClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBInstanceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidDBInstanceStateFault', name: 'InvalidDBInstanceStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBInstanceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidDBParameterGroupStateFault', name: 'InvalidDBParameterGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidDBSecurityGroupStateFault', name: 'InvalidDBSecurityGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidDBSnapshotStateFault', name: 'InvalidDBSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidDBSubnetGroupStateFault', name: 'InvalidDBSubnetGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidDBSubnetStateFault', name: 'InvalidDBSubnetStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventSubscriptionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidEventSubscriptionStateFault', name: 'InvalidEventSubscriptionStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventSubscriptionState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGlobalClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidGlobalClusterStateFault', name: 'InvalidGlobalClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGlobalClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRestoreFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidRestoreFault', name: 'InvalidRestoreFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRestoreFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidSubnet', name: 'InvalidSubnet', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#InvalidVPCNetworkStateFault', name: 'InvalidVPCNetworkStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSKeyNotAccessibleFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#KMSKeyNotAccessibleFault', name: 'KMSKeyNotAccessibleFault', traits: {"aws.protocols#awsQueryError" => {"code" => "KMSKeyNotAccessibleFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#KeyList', name: 'KeyList')
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ListTagsForResourceMessage', name: 'ListTagsForResourceMessage')
    LogTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#LogTypeList', name: 'LogTypeList')
    ModifyDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBClusterMessage', name: 'ModifyDBClusterMessage')
    ModifyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBClusterParameterGroupMessage', name: 'ModifyDBClusterParameterGroupMessage')
    ModifyDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBClusterParameterGroupOutput', name: 'ModifyDBClusterParameterGroupOutput')
    ModifyDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBClusterResult', name: 'ModifyDBClusterResult')
    ModifyDBClusterSnapshotAttributeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBClusterSnapshotAttributeMessage', name: 'ModifyDBClusterSnapshotAttributeMessage')
    ModifyDBClusterSnapshotAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBClusterSnapshotAttributeResult', name: 'ModifyDBClusterSnapshotAttributeResult')
    ModifyDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBInstanceMessage', name: 'ModifyDBInstanceMessage')
    ModifyDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBInstanceResult', name: 'ModifyDBInstanceResult')
    ModifyDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBSubnetGroupMessage', name: 'ModifyDBSubnetGroupMessage')
    ModifyDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyDBSubnetGroupResult', name: 'ModifyDBSubnetGroupResult')
    ModifyEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyEventSubscriptionMessage', name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyEventSubscriptionResult', name: 'ModifyEventSubscriptionResult')
    ModifyGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyGlobalClusterMessage', name: 'ModifyGlobalClusterMessage')
    ModifyGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ModifyGlobalClusterResult', name: 'ModifyGlobalClusterResult')
    OrderableDBInstanceOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#OrderableDBInstanceOption', name: 'OrderableDBInstanceOption')
    OrderableDBInstanceOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#OrderableDBInstanceOptionsList', name: 'OrderableDBInstanceOptionsList')
    OrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#OrderableDBInstanceOptionsMessage', name: 'OrderableDBInstanceOptionsMessage')
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#Parameter', name: 'Parameter')
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#ParametersList', name: 'ParametersList')
    PendingCloudwatchLogsExports = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#PendingCloudwatchLogsExports', name: 'PendingCloudwatchLogsExports')
    PendingMaintenanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#PendingMaintenanceAction', name: 'PendingMaintenanceAction')
    PendingMaintenanceActionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#PendingMaintenanceActionDetails', name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#PendingMaintenanceActions', name: 'PendingMaintenanceActions')
    PendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#PendingMaintenanceActionsMessage', name: 'PendingMaintenanceActionsMessage')
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#PendingModifiedValues', name: 'PendingModifiedValues')
    ReadReplicaIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#ReadReplicaIdentifierList', name: 'ReadReplicaIdentifierList')
    ReadersArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#ReadersArnList', name: 'ReadersArnList')
    RebootDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RebootDBInstanceMessage', name: 'RebootDBInstanceMessage')
    RebootDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RebootDBInstanceResult', name: 'RebootDBInstanceResult')
    RemoveFromGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RemoveFromGlobalClusterMessage', name: 'RemoveFromGlobalClusterMessage')
    RemoveFromGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RemoveFromGlobalClusterResult', name: 'RemoveFromGlobalClusterResult')
    RemoveSourceIdentifierFromSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RemoveSourceIdentifierFromSubscriptionMessage', name: 'RemoveSourceIdentifierFromSubscriptionMessage')
    RemoveSourceIdentifierFromSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RemoveSourceIdentifierFromSubscriptionResult', name: 'RemoveSourceIdentifierFromSubscriptionResult')
    RemoveTagsFromResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RemoveTagsFromResourceMessage', name: 'RemoveTagsFromResourceMessage')
    ResetDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ResetDBClusterParameterGroupMessage', name: 'ResetDBClusterParameterGroupMessage')
    ResetDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ResetDBClusterParameterGroupOutput', name: 'ResetDBClusterParameterGroupOutput')
    ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ResourceNotFoundFault', name: 'ResourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePendingMaintenanceActions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ResourcePendingMaintenanceActions', name: 'ResourcePendingMaintenanceActions')
    RestoreDBClusterFromSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RestoreDBClusterFromSnapshotMessage', name: 'RestoreDBClusterFromSnapshotMessage')
    RestoreDBClusterFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RestoreDBClusterFromSnapshotResult', name: 'RestoreDBClusterFromSnapshotResult')
    RestoreDBClusterToPointInTimeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RestoreDBClusterToPointInTimeMessage', name: 'RestoreDBClusterToPointInTimeMessage')
    RestoreDBClusterToPointInTimeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#RestoreDBClusterToPointInTimeResult', name: 'RestoreDBClusterToPointInTimeResult')
    SNSInvalidTopicFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SNSInvalidTopicFault', name: 'SNSInvalidTopicFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSInvalidTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSNoAuthorizationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SNSNoAuthorizationFault', name: 'SNSNoAuthorizationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSNoAuthorization", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSTopicArnNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SNSTopicArnNotFoundFault', name: 'SNSTopicArnNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSTopicArnNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServerlessV2FeaturesSupport = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ServerlessV2FeaturesSupport', name: 'ServerlessV2FeaturesSupport')
    ServerlessV2ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ServerlessV2ScalingConfiguration', name: 'ServerlessV2ScalingConfiguration')
    ServerlessV2ScalingConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#ServerlessV2ScalingConfigurationInfo', name: 'ServerlessV2ScalingConfigurationInfo')
    SharedSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SharedSnapshotQuotaExceededFault', name: 'SharedSnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SharedSnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SnapshotQuotaExceededFault', name: 'SnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#SourceIdsList', name: 'SourceIdsList')
    SourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SourceNotFoundFault', name: 'SourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.docdb#SourceType', name: 'SourceType')
    StartDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#StartDBClusterMessage', name: 'StartDBClusterMessage')
    StartDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#StartDBClusterResult', name: 'StartDBClusterResult')
    StopDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#StopDBClusterMessage', name: 'StopDBClusterMessage')
    StopDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#StopDBClusterResult', name: 'StopDBClusterResult')
    StorageQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#StorageQuotaExceededFault', name: 'StorageQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "StorageQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StorageTypeNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#StorageTypeNotSupportedFault', name: 'StorageTypeNotSupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "StorageTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdb#String', name: 'String')
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#Subnet', name: 'Subnet')
    SubnetAlreadyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SubnetAlreadyInUse', name: 'SubnetAlreadyInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#SubnetIdentifierList', name: 'SubnetIdentifierList')
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#SubnetList', name: 'SubnetList')
    SubscriptionAlreadyExistFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SubscriptionAlreadyExistFault', name: 'SubscriptionAlreadyExistFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionAlreadyExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubscriptionCategoryNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SubscriptionCategoryNotFoundFault', name: 'SubscriptionCategoryNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionCategoryNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SubscriptionNotFoundFault', name: 'SubscriptionNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SwitchoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SwitchoverGlobalClusterMessage', name: 'SwitchoverGlobalClusterMessage')
    SwitchoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#SwitchoverGlobalClusterResult', name: 'SwitchoverGlobalClusterResult')
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.docdb#TStamp', name: 'TStamp')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#Tag', name: 'Tag')
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#TagList', name: 'TagList')
    TagListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#TagListMessage', name: 'TagListMessage')
    UpgradeTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#UpgradeTarget', name: 'UpgradeTarget')
    ValidUpgradeTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#ValidUpgradeTargetList', name: 'ValidUpgradeTargetList')
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#VpcSecurityGroupIdList', name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdb#VpcSecurityGroupMembership', name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdb#VpcSecurityGroupMembershipList', name: 'VpcSecurityGroupMembershipList')

    AddSourceIdentifierToSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddSourceIdentifierToSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddSourceIdentifierToSubscriptionMessage.type = Types::AddSourceIdentifierToSubscriptionMessage
    AddSourceIdentifierToSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    AddSourceIdentifierToSubscriptionResult.type = Types::AddSourceIdentifierToSubscriptionResult
    AddTagsToResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.type = Types::AddTagsToResourceMessage
    ApplyMethod.add_member(:immediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'immediate', traits: {"smithy.api#enumValue" => "immediate"}))
    ApplyMethod.add_member(:pending_reboot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending_reboot', traits: {"smithy.api#enumValue" => "pending-reboot"}))
    ApplyPendingMaintenanceActionMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptInType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.type = Types::ApplyPendingMaintenanceActionMessage
    ApplyPendingMaintenanceActionResult.add_member(:resource_pending_maintenance_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: 'ResourcePendingMaintenanceActions'))
    ApplyPendingMaintenanceActionResult.type = Types::ApplyPendingMaintenanceActionResult
    AttributeValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AttributeValue"})
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    AvailabilityZones.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    CACertificateIdentifiersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Certificate.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateIdentifier'))
    Certificate.add_member(:certificate_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateType'))
    Certificate.add_member(:thumbprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Thumbprint'))
    Certificate.add_member(:valid_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ValidFrom'))
    Certificate.add_member(:valid_till, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ValidTill'))
    Certificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateArn'))
    Certificate.type = Types::Certificate
    CertificateDetails.add_member(:ca_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CAIdentifier'))
    CertificateDetails.add_member(:valid_till, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ValidTill'))
    CertificateDetails.type = Types::CertificateDetails
    CertificateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, traits: {"smithy.api#xmlName" => "Certificate"})
    CertificateMessage.add_member(:certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates'))
    CertificateMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    CertificateMessage.type = Types::CertificateMessage
    CertificateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CertificateNotFoundFault.type = Types::CertificateNotFoundFault
    CloudwatchLogsExportConfiguration.add_member(:enable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableLogTypes'))
    CloudwatchLogsExportConfiguration.add_member(:disable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'DisableLogTypes'))
    CloudwatchLogsExportConfiguration.type = Types::CloudwatchLogsExportConfiguration
    ClusterMasterUserSecret.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretArn'))
    ClusterMasterUserSecret.add_member(:secret_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretStatus'))
    ClusterMasterUserSecret.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    ClusterMasterUserSecret.type = Types::ClusterMasterUserSecret
    CopyDBClusterParameterGroupMessage.add_member(:source_db_cluster_parameter_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterParameterGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBClusterParameterGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBClusterParameterGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopyDBClusterParameterGroupMessage.type = Types::CopyDBClusterParameterGroupMessage
    CopyDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: 'DBClusterParameterGroup'))
    CopyDBClusterParameterGroupResult.type = Types::CopyDBClusterParameterGroupResult
    CopyDBClusterSnapshotMessage.add_member(:source_db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterSnapshotMessage.add_member(:target_db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreSignedUrl'))
    CopyDBClusterSnapshotMessage.add_member(:copy_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTags'))
    CopyDBClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopyDBClusterSnapshotMessage.type = Types::CopyDBClusterSnapshotMessage
    CopyDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: 'DBClusterSnapshot'))
    CopyDBClusterSnapshotResult.type = Types::CopyDBClusterSnapshotResult
    CreateDBClusterMessage.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    CreateDBClusterMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    CreateDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    CreateDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    CreateDBClusterMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    CreateDBClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CreateDBClusterMessage.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    CreateDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserPassword'))
    CreateDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CreateDBClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    CreateDBClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateDBClusterMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreSignedUrl'))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    CreateDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateDBClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    CreateDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    CreateDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    CreateDBClusterMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    CreateDBClusterMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    CreateDBClusterMessage.type = Types::CreateDBClusterMessage
    CreateDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBClusterParameterGroupMessage.type = Types::CreateDBClusterParameterGroupMessage
    CreateDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: 'DBClusterParameterGroup'))
    CreateDBClusterParameterGroupResult.type = Types::CreateDBClusterParameterGroupResult
    CreateDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    CreateDBClusterResult.type = Types::CreateDBClusterResult
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBClusterSnapshotMessage.type = Types::CreateDBClusterSnapshotMessage
    CreateDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: 'DBClusterSnapshot'))
    CreateDBClusterSnapshotResult.type = Types::CreateDBClusterSnapshotResult
    CreateDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    CreateDBInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CreateDBInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    CreateDBInstanceMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    CreateDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    CreateDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    CreateDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    CreateDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    CreateDBInstanceMessage.type = Types::CreateDBInstanceMessage
    CreateDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    CreateDBInstanceResult.type = Types::CreateDBInstanceResult
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBSubnetGroupMessage.type = Types::CreateDBSubnetGroupMessage
    CreateDBSubnetGroupResult.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: 'DBSubnetGroup'))
    CreateDBSubnetGroupResult.type = Types::CreateDBSubnetGroupResult
    CreateEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    CreateEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    CreateEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIds'))
    CreateEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled'))
    CreateEventSubscriptionMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    CreateEventSubscriptionResult.type = Types::CreateEventSubscriptionResult
    CreateGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGlobalClusterMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterIdentifier'))
    CreateGlobalClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    CreateGlobalClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateGlobalClusterMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    CreateGlobalClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    CreateGlobalClusterMessage.type = Types::CreateGlobalClusterMessage
    CreateGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    CreateGlobalClusterResult.type = Types::CreateGlobalClusterResult
    DBCluster.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    DBCluster.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    DBCluster.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBCluster.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroup'))
    DBCluster.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroup'))
    DBCluster.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PercentProgress'))
    DBCluster.add_member(:earliest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EarliestRestorableTime'))
    DBCluster.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DBCluster.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReaderEndpoint'))
    DBCluster.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZ'))
    DBCluster.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBCluster.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LatestRestorableTime'))
    DBCluster.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    DBCluster.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBCluster.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    DBCluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    DBCluster.add_member(:replication_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationSourceIdentifier'))
    DBCluster.add_member(:read_replica_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadReplicaIdentifierList, location_name: 'ReadReplicaIdentifiers'))
    DBCluster.add_member(:db_cluster_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterMemberList, location_name: 'DBClusterMembers'))
    DBCluster.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    DBCluster.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostedZoneId'))
    DBCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StorageEncrypted'))
    DBCluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBCluster.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterResourceId'))
    DBCluster.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterArn'))
    DBCluster.add_member(:associated_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoles, location_name: 'AssociatedRoles'))
    DBCluster.add_member(:clone_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloneGroupId'))
    DBCluster.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime'))
    DBCluster.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnabledCloudwatchLogsExports'))
    DBCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeletionProtection'))
    DBCluster.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBCluster.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfigurationInfo, location_name: 'ServerlessV2ScalingConfiguration'))
    DBCluster.add_member(:master_user_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMasterUserSecret, location_name: 'MasterUserSecret'))
    DBCluster.type = Types::DBCluster
    DBClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterAlreadyExistsFault.type = Types::DBClusterAlreadyExistsFault
    DBClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, traits: {"smithy.api#xmlName" => "DBCluster"})
    DBClusterMember.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DBClusterMember.add_member(:is_cluster_writer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsClusterWriter'))
    DBClusterMember.add_member(:db_cluster_parameter_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupStatus'))
    DBClusterMember.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    DBClusterMember.type = Types::DBClusterMember
    DBClusterMemberList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterMember, traits: {"smithy.api#xmlName" => "DBClusterMember"})
    DBClusterMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterMessage.add_member(:db_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterList, location_name: 'DBClusters'))
    DBClusterMessage.type = Types::DBClusterMessage
    DBClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterNotFoundFault.type = Types::DBClusterNotFoundFault
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    DBClusterParameterGroup.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DBClusterParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupArn'))
    DBClusterParameterGroup.type = Types::DBClusterParameterGroup
    DBClusterParameterGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroup, traits: {"smithy.api#xmlName" => "DBClusterParameterGroup"})
    DBClusterParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterParameterGroupNotFoundFault.type = Types::DBClusterParameterGroupNotFoundFault
    DBClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupList, location_name: 'DBClusterParameterGroups'))
    DBClusterParameterGroupsMessage.type = Types::DBClusterParameterGroupsMessage
    DBClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterQuotaExceededFault.type = Types::DBClusterQuotaExceededFault
    DBClusterRole.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn'))
    DBClusterRole.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterRole.type = Types::DBClusterRole
    DBClusterRoles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRole, traits: {"smithy.api#xmlName" => "DBClusterRole"})
    DBClusterSnapshot.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier'))
    DBClusterSnapshot.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBClusterSnapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotCreateTime'))
    DBClusterSnapshot.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBClusterSnapshot.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterSnapshot.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    DBClusterSnapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBClusterSnapshot.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime'))
    DBClusterSnapshot.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBClusterSnapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBClusterSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DBClusterSnapshot.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentProgress'))
    DBClusterSnapshot.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StorageEncrypted'))
    DBClusterSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotArn'))
    DBClusterSnapshot.add_member(:source_db_cluster_snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterSnapshotArn'))
    DBClusterSnapshot.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBClusterSnapshot.type = Types::DBClusterSnapshot
    DBClusterSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterSnapshotAlreadyExistsFault.type = Types::DBClusterSnapshotAlreadyExistsFault
    DBClusterSnapshotAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName'))
    DBClusterSnapshotAttribute.add_member(:attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'AttributeValues'))
    DBClusterSnapshotAttribute.type = Types::DBClusterSnapshotAttribute
    DBClusterSnapshotAttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAttribute, traits: {"smithy.api#xmlName" => "DBClusterSnapshotAttribute"})
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier'))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributeList, location_name: 'DBClusterSnapshotAttributes'))
    DBClusterSnapshotAttributesResult.type = Types::DBClusterSnapshotAttributesResult
    DBClusterSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, traits: {"smithy.api#xmlName" => "DBClusterSnapshot"})
    DBClusterSnapshotMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterSnapshotMessage.add_member(:db_cluster_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotList, location_name: 'DBClusterSnapshots'))
    DBClusterSnapshotMessage.type = Types::DBClusterSnapshotMessage
    DBClusterSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterSnapshotNotFoundFault.type = Types::DBClusterSnapshotNotFoundFault
    DBEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBEngineVersion.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBEngineVersion.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DBEngineVersion.add_member(:db_engine_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineDescription'))
    DBEngineVersion.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionDescription'))
    DBEngineVersion.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: 'ValidUpgradeTarget'))
    DBEngineVersion.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'ExportableLogTypes'))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLogExportsToCloudwatchLogs'))
    DBEngineVersion.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CACertificateIdentifiersList, location_name: 'SupportedCACertificateIdentifiers'))
    DBEngineVersion.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsCertificateRotationWithoutRestart'))
    DBEngineVersion.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2FeaturesSupport, location_name: 'ServerlessV2FeaturesSupport'))
    DBEngineVersion.type = Types::DBEngineVersion
    DBEngineVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBEngineVersion, traits: {"smithy.api#xmlName" => "DBEngineVersion"})
    DBEngineVersionMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBEngineVersionMessage.add_member(:db_engine_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBEngineVersionList, location_name: 'DBEngineVersions'))
    DBEngineVersionMessage.type = Types::DBEngineVersionMessage
    DBInstance.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DBInstance.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    DBInstance.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBInstance.add_member(:db_instance_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceStatus'))
    DBInstance.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint'))
    DBInstance.add_member(:instance_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'InstanceCreateTime'))
    DBInstance.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    DBInstance.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BackupRetentionPeriod'))
    DBInstance.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    DBInstance.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    DBInstance.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: 'DBSubnetGroup'))
    DBInstance.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    DBInstance.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: 'PendingModifiedValues'))
    DBInstance.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LatestRestorableTime'))
    DBInstance.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBInstance.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade'))
    DBInstance.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PubliclyAccessible'))
    DBInstance.add_member(:status_infos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceStatusInfoList, location_name: 'StatusInfos'))
    DBInstance.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBInstance.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StorageEncrypted'))
    DBInstance.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBInstance.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DBInstance.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    DBInstance.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    DBInstance.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    DBInstance.add_member(:db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceArn'))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnabledCloudwatchLogsExports'))
    DBInstance.add_member(:certificate_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateDetails, location_name: 'CertificateDetails'))
    DBInstance.add_member(:performance_insights_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PerformanceInsightsEnabled'))
    DBInstance.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    DBInstance.type = Types::DBInstance
    DBInstanceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceAlreadyExistsFault.type = Types::DBInstanceAlreadyExistsFault
    DBInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, traits: {"smithy.api#xmlName" => "DBInstance"})
    DBInstanceMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBInstanceMessage.add_member(:db_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceList, location_name: 'DBInstances'))
    DBInstanceMessage.type = Types::DBInstanceMessage
    DBInstanceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceNotFoundFault.type = Types::DBInstanceNotFoundFault
    DBInstanceStatusInfo.add_member(:status_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusType'))
    DBInstanceStatusInfo.add_member(:normal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Normal'))
    DBInstanceStatusInfo.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBInstanceStatusInfo.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DBInstanceStatusInfo.type = Types::DBInstanceStatusInfo
    DBInstanceStatusInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceStatusInfo, traits: {"smithy.api#xmlName" => "DBInstanceStatusInfo"})
    DBParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBParameterGroupAlreadyExistsFault.type = Types::DBParameterGroupAlreadyExistsFault
    DBParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBParameterGroupNotFoundFault.type = Types::DBParameterGroupNotFoundFault
    DBParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBParameterGroupQuotaExceededFault.type = Types::DBParameterGroupQuotaExceededFault
    DBSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSecurityGroupNotFoundFault.type = Types::DBSecurityGroupNotFoundFault
    DBSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSnapshotAlreadyExistsFault.type = Types::DBSnapshotAlreadyExistsFault
    DBSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSnapshotNotFoundFault.type = Types::DBSnapshotNotFoundFault
    DBSubnetGroup.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    DBSubnetGroup.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupDescription'))
    DBSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupStatus'))
    DBSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'Subnets'))
    DBSubnetGroup.add_member(:db_subnet_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupArn'))
    DBSubnetGroup.type = Types::DBSubnetGroup
    DBSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupAlreadyExistsFault.type = Types::DBSubnetGroupAlreadyExistsFault
    DBSubnetGroupDoesNotCoverEnoughAZs.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupDoesNotCoverEnoughAZs.type = Types::DBSubnetGroupDoesNotCoverEnoughAZs
    DBSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBSubnetGroupMessage.add_member(:db_subnet_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroups, location_name: 'DBSubnetGroups'))
    DBSubnetGroupMessage.type = Types::DBSubnetGroupMessage
    DBSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupNotFoundFault.type = Types::DBSubnetGroupNotFoundFault
    DBSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupQuotaExceededFault.type = Types::DBSubnetGroupQuotaExceededFault
    DBSubnetGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, traits: {"smithy.api#xmlName" => "DBSubnetGroup"})
    DBSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetQuotaExceededFault.type = Types::DBSubnetQuotaExceededFault
    DBUpgradeDependencyFailureFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBUpgradeDependencyFailureFault.type = Types::DBUpgradeDependencyFailureFault
    DeleteDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SkipFinalSnapshot'))
    DeleteDBClusterMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalDBSnapshotIdentifier'))
    DeleteDBClusterMessage.type = Types::DeleteDBClusterMessage
    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterParameterGroupMessage.type = Types::DeleteDBClusterParameterGroupMessage
    DeleteDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    DeleteDBClusterResult.type = Types::DeleteDBClusterResult
    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterSnapshotMessage.type = Types::DeleteDBClusterSnapshotMessage
    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: 'DBClusterSnapshot'))
    DeleteDBClusterSnapshotResult.type = Types::DeleteDBClusterSnapshotResult
    DeleteDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBInstanceMessage.type = Types::DeleteDBInstanceMessage
    DeleteDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    DeleteDBInstanceResult.type = Types::DeleteDBInstanceResult
    DeleteDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBSubnetGroupMessage.type = Types::DeleteDBSubnetGroupMessage
    DeleteEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    DeleteEventSubscriptionResult.type = Types::DeleteEventSubscriptionResult
    DeleteGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGlobalClusterMessage.type = Types::DeleteGlobalClusterMessage
    DeleteGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    DeleteGlobalClusterResult.type = Types::DeleteGlobalClusterResult
    DescribeCertificatesMessage.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateIdentifier'))
    DescribeCertificatesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeCertificatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCertificatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCertificatesMessage.type = Types::DescribeCertificatesMessage
    DescribeDBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    DescribeDBClusterParameterGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterParameterGroupsMessage.type = Types::DescribeDBClusterParameterGroupsMessage
    DescribeDBClusterParametersMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    DescribeDBClusterParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterParametersMessage.type = Types::DescribeDBClusterParametersMessage
    DescribeDBClusterParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    DescribeDBClusterParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterParametersOutput.type = Types::DescribeDBClusterParametersOutput
    DescribeDBClusterSnapshotAttributesMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterSnapshotAttributesMessage.type = Types::DescribeDBClusterSnapshotAttributesMessage
    DescribeDBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: 'DBClusterSnapshotAttributesResult'))
    DescribeDBClusterSnapshotAttributesResult.type = Types::DescribeDBClusterSnapshotAttributesResult
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier'))
    DescribeDBClusterSnapshotsMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DescribeDBClusterSnapshotsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterSnapshotsMessage.add_member(:include_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeShared'))
    DescribeDBClusterSnapshotsMessage.add_member(:include_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludePublic'))
    DescribeDBClusterSnapshotsMessage.type = Types::DescribeDBClusterSnapshotsMessage
    DescribeDBClustersMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DescribeDBClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClustersMessage.type = Types::DescribeDBClustersMessage
    DescribeDBEngineVersionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DescribeDBEngineVersionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DescribeDBEngineVersionsMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DescribeDBEngineVersionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBEngineVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBEngineVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBEngineVersionsMessage.add_member(:default_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultOnly'))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ListSupportedCharacterSets'))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_timezones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ListSupportedTimezones'))
    DescribeDBEngineVersionsMessage.type = Types::DescribeDBEngineVersionsMessage
    DescribeDBInstancesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DescribeDBInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBInstancesMessage.type = Types::DescribeDBInstancesMessage
    DescribeDBSubnetGroupsMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    DescribeDBSubnetGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBSubnetGroupsMessage.type = Types::DescribeDBSubnetGroupsMessage
    DescribeEngineDefaultClusterParametersMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEngineDefaultClusterParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEngineDefaultClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEngineDefaultClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEngineDefaultClusterParametersMessage.type = Types::DescribeEngineDefaultClusterParametersMessage
    DescribeEngineDefaultClusterParametersResult.add_member(:engine_defaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineDefaults, location_name: 'EngineDefaults'))
    DescribeEngineDefaultClusterParametersResult.type = Types::DescribeEngineDefaultClusterParametersResult
    DescribeEventCategoriesMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    DescribeEventCategoriesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName'))
    DescribeEventSubscriptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEventSubscriptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier'))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Duration'))
    DescribeEventsMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    DescribeEventsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeGlobalClustersMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    DescribeGlobalClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeGlobalClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeGlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeGlobalClustersMessage.type = Types::DescribeGlobalClustersMessage
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Vpc'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeOrderableDBInstanceOptionsMessage.type = Types::DescribeOrderableDBInstanceOptionsMessage
    DescribePendingMaintenanceActionsMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceIdentifier'))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribePendingMaintenanceActionsMessage.type = Types::DescribePendingMaintenanceActionsMessage
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    Endpoint.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostedZoneId'))
    Endpoint.type = Types::Endpoint
    EngineDefaults.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    EngineDefaults.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EngineDefaults.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    EngineDefaults.type = Types::EngineDefaults
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier'))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    Event.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    Event.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    Event.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Date'))
    Event.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn'))
    Event.type = Types::Event
    EventCategoriesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "EventCategory"})
    EventCategoriesMap.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    EventCategoriesMap.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    EventCategoriesMap.type = Types::EventCategoriesMap
    EventCategoriesMapList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMap, traits: {"smithy.api#xmlName" => "EventCategoriesMap"})
    EventCategoriesMessage.add_member(:event_categories_map_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMapList, location_name: 'EventCategoriesMapList'))
    EventCategoriesMessage.type = Types::EventCategoriesMessage
    EventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, traits: {"smithy.api#xmlName" => "Event"})
    EventSubscription.add_member(:customer_aws_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomerAwsId'))
    EventSubscription.add_member(:cust_subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustSubscriptionId'))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn'))
    EventSubscription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    EventSubscription.add_member(:subscription_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionCreationTime'))
    EventSubscription.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    EventSubscription.add_member(:source_ids_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIdsList'))
    EventSubscription.add_member(:event_categories_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategoriesList'))
    EventSubscription.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    EventSubscription.add_member(:event_subscription_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventSubscriptionArn'))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EventSubscriptionQuotaExceededFault.type = Types::EventSubscriptionQuotaExceededFault
    EventSubscriptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, traits: {"smithy.api#xmlName" => "EventSubscription"})
    EventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: 'EventSubscriptionsList'))
    EventSubscriptionsMessage.type = Types::EventSubscriptionsMessage
    EventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EventsMessage.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'Events'))
    EventsMessage.type = Types::EventsMessage
    FailoverDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    FailoverDBClusterMessage.add_member(:target_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBInstanceIdentifier'))
    FailoverDBClusterMessage.type = Types::FailoverDBClusterMessage
    FailoverDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    FailoverDBClusterResult.type = Types::FailoverDBClusterResult
    FailoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterIdentifier, location_name: 'TargetDbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:allow_data_loss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowDataLoss'))
    FailoverGlobalClusterMessage.add_member(:switchover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Switchover'))
    FailoverGlobalClusterMessage.type = Types::FailoverGlobalClusterMessage
    FailoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    FailoverGlobalClusterResult.type = Types::FailoverGlobalClusterResult
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, traits: {"smithy.api#xmlName" => "Filter"})
    FilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Value"})
    GlobalCluster.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    GlobalCluster.add_member(:global_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalClusterResourceId'))
    GlobalCluster.add_member(:global_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalClusterArn'))
    GlobalCluster.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    GlobalCluster.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    GlobalCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    GlobalCluster.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    GlobalCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    GlobalCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    GlobalCluster.add_member(:global_cluster_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterMemberList, location_name: 'GlobalClusterMembers'))
    GlobalCluster.type = Types::GlobalCluster
    GlobalClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterAlreadyExistsFault.type = Types::GlobalClusterAlreadyExistsFault
    GlobalClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, traits: {"smithy.api#xmlName" => "GlobalClusterMember"})
    GlobalClusterMember.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterArn'))
    GlobalClusterMember.add_member(:readers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadersArnList, location_name: 'Readers'))
    GlobalClusterMember.add_member(:is_writer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsWriter'))
    GlobalClusterMember.type = Types::GlobalClusterMember
    GlobalClusterMemberList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterMember, traits: {"smithy.api#xmlName" => "GlobalClusterMember"})
    GlobalClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterNotFoundFault.type = Types::GlobalClusterNotFoundFault
    GlobalClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterQuotaExceededFault.type = Types::GlobalClusterQuotaExceededFault
    GlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    GlobalClustersMessage.add_member(:global_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterList, location_name: 'GlobalClusters'))
    GlobalClustersMessage.type = Types::GlobalClustersMessage
    InstanceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InstanceQuotaExceededFault.type = Types::InstanceQuotaExceededFault
    InsufficientDBClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientDBClusterCapacityFault.type = Types::InsufficientDBClusterCapacityFault
    InsufficientDBInstanceCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientDBInstanceCapacityFault.type = Types::InsufficientDBInstanceCapacityFault
    InsufficientStorageClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientStorageClusterCapacityFault.type = Types::InsufficientStorageClusterCapacityFault
    InvalidDBClusterSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterSnapshotStateFault.type = Types::InvalidDBClusterSnapshotStateFault
    InvalidDBClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterStateFault.type = Types::InvalidDBClusterStateFault
    InvalidDBInstanceStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBInstanceStateFault.type = Types::InvalidDBInstanceStateFault
    InvalidDBParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBParameterGroupStateFault.type = Types::InvalidDBParameterGroupStateFault
    InvalidDBSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSecurityGroupStateFault.type = Types::InvalidDBSecurityGroupStateFault
    InvalidDBSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSnapshotStateFault.type = Types::InvalidDBSnapshotStateFault
    InvalidDBSubnetGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSubnetGroupStateFault.type = Types::InvalidDBSubnetGroupStateFault
    InvalidDBSubnetStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSubnetStateFault.type = Types::InvalidDBSubnetStateFault
    InvalidEventSubscriptionStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidEventSubscriptionStateFault.type = Types::InvalidEventSubscriptionStateFault
    InvalidGlobalClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidGlobalClusterStateFault.type = Types::InvalidGlobalClusterStateFault
    InvalidRestoreFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidRestoreFault.type = Types::InvalidRestoreFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    KMSKeyNotAccessibleFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KMSKeyNotAccessibleFault.type = Types::KMSKeyNotAccessibleFault
    KeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListTagsForResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    LogTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ModifyDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterMessage.add_member(:new_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewDBClusterIdentifier'))
    ModifyDBClusterMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately'))
    ModifyDBClusterMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    ModifyDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    ModifyDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    ModifyDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    ModifyDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserPassword'))
    ModifyDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    ModifyDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    ModifyDBClusterMessage.add_member(:cloudwatch_logs_export_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: 'CloudwatchLogsExportConfiguration'))
    ModifyDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyDBClusterMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowMajorVersionUpgrade'))
    ModifyDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    ModifyDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ModifyDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    ModifyDBClusterMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    ModifyDBClusterMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    ModifyDBClusterMessage.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RotateMasterUserPassword'))
    ModifyDBClusterMessage.type = Types::ModifyDBClusterMessage
    ModifyDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterParameterGroupMessage.type = Types::ModifyDBClusterParameterGroupMessage
    ModifyDBClusterParameterGroupOutput.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    ModifyDBClusterParameterGroupOutput.type = Types::ModifyDBClusterParameterGroupOutput
    ModifyDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    ModifyDBClusterResult.type = Types::ModifyDBClusterResult
    ModifyDBClusterSnapshotAttributeMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'ValuesToAdd'))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'ValuesToRemove'))
    ModifyDBClusterSnapshotAttributeMessage.type = Types::ModifyDBClusterSnapshotAttributeMessage
    ModifyDBClusterSnapshotAttributeResult.add_member(:db_cluster_snapshot_attributes_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: 'DBClusterSnapshotAttributesResult'))
    ModifyDBClusterSnapshotAttributeResult.type = Types::ModifyDBClusterSnapshotAttributeResult
    ModifyDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBInstanceMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    ModifyDBInstanceMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately'))
    ModifyDBInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    ModifyDBInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewDBInstanceIdentifier'))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    ModifyDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    ModifyDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    ModifyDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    ModifyDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    ModifyDBInstanceMessage.add_member(:certificate_rotation_restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CertificateRotationRestart'))
    ModifyDBInstanceMessage.type = Types::ModifyDBInstanceMessage
    ModifyDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    ModifyDBInstanceResult.type = Types::ModifyDBInstanceResult
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupDescription'))
    ModifyDBSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSubnetGroupMessage.type = Types::ModifyDBSubnetGroupMessage
    ModifyDBSubnetGroupResult.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: 'DBSubnetGroup'))
    ModifyDBSubnetGroupResult.type = Types::ModifyDBSubnetGroupResult
    ModifyEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn'))
    ModifyEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    ModifyEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    ModifyEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled'))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    ModifyEventSubscriptionResult.type = Types::ModifyEventSubscriptionResult
    ModifyGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyGlobalClusterMessage.add_member(:new_global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'NewGlobalClusterIdentifier'))
    ModifyGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    ModifyGlobalClusterMessage.type = Types::ModifyGlobalClusterMessage
    ModifyGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    ModifyGlobalClusterResult.type = Types::ModifyGlobalClusterResult
    OrderableDBInstanceOption.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    OrderableDBInstanceOption.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    OrderableDBInstanceOption.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    OrderableDBInstanceOption.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    OrderableDBInstanceOption.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones'))
    OrderableDBInstanceOption.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Vpc'))
    OrderableDBInstanceOption.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    OrderableDBInstanceOption.type = Types::OrderableDBInstanceOption
    OrderableDBInstanceOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOption, traits: {"smithy.api#xmlName" => "OrderableDBInstanceOption"})
    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsList, location_name: 'OrderableDBInstanceOptions'))
    OrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    OrderableDBInstanceOptionsMessage.type = Types::OrderableDBInstanceOptionsMessage
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName'))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue'))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    Parameter.add_member(:apply_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyType'))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType'))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable'))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    Parameter.add_member(:apply_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyMethod, location_name: 'ApplyMethod'))
    Parameter.type = Types::Parameter
    ParametersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter, traits: {"smithy.api#xmlName" => "Parameter"})
    PendingCloudwatchLogsExports.add_member(:log_types_to_enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogTypesToEnable'))
    PendingCloudwatchLogsExports.add_member(:log_types_to_disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogTypesToDisable'))
    PendingCloudwatchLogsExports.type = Types::PendingCloudwatchLogsExports
    PendingMaintenanceAction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Action'))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AutoAppliedAfterDate'))
    PendingMaintenanceAction.add_member(:forced_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ForcedApplyDate'))
    PendingMaintenanceAction.add_member(:opt_in_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptInStatus'))
    PendingMaintenanceAction.add_member(:current_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CurrentApplyDate'))
    PendingMaintenanceAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    PendingMaintenanceAction.type = Types::PendingMaintenanceAction
    PendingMaintenanceActionDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceAction, traits: {"smithy.api#xmlName" => "PendingMaintenanceAction"})
    PendingMaintenanceActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, traits: {"smithy.api#xmlName" => "ResourcePendingMaintenanceActions"})
    PendingMaintenanceActionsMessage.add_member(:pending_maintenance_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActions, location_name: 'PendingMaintenanceActions'))
    PendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    PendingMaintenanceActionsMessage.type = Types::PendingMaintenanceActionsMessage
    PendingModifiedValues.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    PendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    PendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserPassword'))
    PendingModifiedValues.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    PendingModifiedValues.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    PendingModifiedValues.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    PendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    PendingModifiedValues.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    PendingModifiedValues.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    PendingModifiedValues.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    PendingModifiedValues.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    PendingModifiedValues.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    PendingModifiedValues.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: 'PendingCloudwatchLogsExports'))
    PendingModifiedValues.type = Types::PendingModifiedValues
    ReadReplicaIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ReadReplicaIdentifier"})
    ReadersArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    RebootDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBInstanceMessage.add_member(:force_failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ForceFailover'))
    RebootDBInstanceMessage.type = Types::RebootDBInstanceMessage
    RebootDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    RebootDBInstanceResult.type = Types::RebootDBInstanceResult
    RemoveFromGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.type = Types::RemoveFromGlobalClusterMessage
    RemoveFromGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    RemoveFromGlobalClusterResult.type = Types::RemoveFromGlobalClusterResult
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.type = Types::RemoveSourceIdentifierFromSubscriptionMessage
    RemoveSourceIdentifierFromSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    RemoveSourceIdentifierFromSubscriptionResult.type = Types::RemoveSourceIdentifierFromSubscriptionResult
    RemoveTagsFromResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    ResetDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetDBClusterParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ResetAllParameters'))
    ResetDBClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    ResetDBClusterParameterGroupMessage.type = Types::ResetDBClusterParameterGroupMessage
    ResetDBClusterParameterGroupOutput.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    ResetDBClusterParameterGroupOutput.type = Types::ResetDBClusterParameterGroupOutput
    ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePendingMaintenanceActions.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceIdentifier'))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails, location_name: 'PendingMaintenanceActionDetails'))
    ResourcePendingMaintenanceActions.type = Types::ResourcePendingMaintenanceActions
    RestoreDBClusterFromSnapshotMessage.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    RestoreDBClusterFromSnapshotMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBClusterFromSnapshotMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBClusterFromSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBClusterFromSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBClusterFromSnapshotMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    RestoreDBClusterFromSnapshotMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    RestoreDBClusterFromSnapshotMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBClusterFromSnapshotMessage.type = Types::RestoreDBClusterFromSnapshotMessage
    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    RestoreDBClusterFromSnapshotResult.type = Types::RestoreDBClusterFromSnapshotResult
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RestoreType'))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_to_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RestoreToTime'))
    RestoreDBClusterToPointInTimeMessage.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseLatestRestorableTime'))
    RestoreDBClusterToPointInTimeMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBClusterToPointInTimeMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBClusterToPointInTimeMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBClusterToPointInTimeMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBClusterToPointInTimeMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBClusterToPointInTimeMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    RestoreDBClusterToPointInTimeMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBClusterToPointInTimeMessage.type = Types::RestoreDBClusterToPointInTimeMessage
    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    RestoreDBClusterToPointInTimeResult.type = Types::RestoreDBClusterToPointInTimeResult
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SNSTopicArnNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSTopicArnNotFoundFault.type = Types::SNSTopicArnNotFoundFault
    ServerlessV2FeaturesSupport.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinCapacity'))
    ServerlessV2FeaturesSupport.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxCapacity'))
    ServerlessV2FeaturesSupport.type = Types::ServerlessV2FeaturesSupport
    ServerlessV2ScalingConfiguration.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinCapacity'))
    ServerlessV2ScalingConfiguration.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxCapacity'))
    ServerlessV2ScalingConfiguration.type = Types::ServerlessV2ScalingConfiguration
    ServerlessV2ScalingConfigurationInfo.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinCapacity'))
    ServerlessV2ScalingConfigurationInfo.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxCapacity'))
    ServerlessV2ScalingConfigurationInfo.type = Types::ServerlessV2ScalingConfigurationInfo
    SharedSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SharedSnapshotQuotaExceededFault.type = Types::SharedSnapshotQuotaExceededFault
    SnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SourceId"})
    SourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SourceNotFoundFault.type = Types::SourceNotFoundFault
    SourceType.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_instance', traits: {"smithy.api#enumValue" => "db-instance"}))
    SourceType.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_parameter_group', traits: {"smithy.api#enumValue" => "db-parameter-group"}))
    SourceType.add_member(:db_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_security_group', traits: {"smithy.api#enumValue" => "db-security-group"}))
    SourceType.add_member(:db_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_snapshot', traits: {"smithy.api#enumValue" => "db-snapshot"}))
    SourceType.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_cluster', traits: {"smithy.api#enumValue" => "db-cluster"}))
    SourceType.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_cluster_snapshot', traits: {"smithy.api#enumValue" => "db-cluster-snapshot"}))
    StartDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBClusterMessage.type = Types::StartDBClusterMessage
    StartDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    StartDBClusterResult.type = Types::StartDBClusterResult
    StopDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBClusterMessage.type = Types::StopDBClusterMessage
    StopDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    StopDBClusterResult.type = Types::StopDBClusterResult
    StorageQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    StorageQuotaExceededFault.type = Types::StorageQuotaExceededFault
    StorageTypeNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    StorageTypeNotSupportedFault.type = Types::StorageTypeNotSupportedFault
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetIdentifier'))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'SubnetAvailabilityZone'))
    Subnet.add_member(:subnet_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetStatus'))
    Subnet.type = Types::Subnet
    SubnetAlreadyInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetAlreadyInUse.type = Types::SubnetAlreadyInUse
    SubnetIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SubnetIdentifier"})
    SubnetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet, traits: {"smithy.api#xmlName" => "Subnet"})
    SubscriptionAlreadyExistFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionAlreadyExistFault.type = Types::SubscriptionAlreadyExistFault
    SubscriptionCategoryNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionCategoryNotFoundFault.type = Types::SubscriptionCategoryNotFoundFault
    SubscriptionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionNotFoundFault.type = Types::SubscriptionNotFoundFault
    SwitchoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterIdentifier, location_name: 'TargetDbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.type = Types::SwitchoverGlobalClusterMessage
    SwitchoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    SwitchoverGlobalClusterResult.type = Types::SwitchoverGlobalClusterResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagListMessage.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    TagListMessage.type = Types::TagListMessage
    UpgradeTarget.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    UpgradeTarget.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    UpgradeTarget.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    UpgradeTarget.add_member(:auto_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoUpgrade'))
    UpgradeTarget.add_member(:is_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMajorVersionUpgrade'))
    UpgradeTarget.type = Types::UpgradeTarget
    ValidUpgradeTargetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeTarget, traits: {"smithy.api#xmlName" => "UpgradeTarget"})
    VpcSecurityGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"})
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcSecurityGroupId'))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, traits: {"smithy.api#xmlName" => "VpcSecurityGroupMembership"})

    AmazonRDSv19 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.docdb#AmazonRDSv19"
      service.name = "AmazonRDSv19"
      service.version = "2014-10-31"
      service.traits = {"aws.api#service" => {"sdkId" => "DocDB", "arnNamespace" => "rds", "cloudFormationName" => "DocDB", "cloudTrailEventSource" => "docdb.amazonaws.com", "endpointPrefix" => "rds"}, "aws.auth#sigv4" => {"name" => "rds"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon DocumentDB with MongoDB compatibility", "smithy.api#xmlNamespace" => {"uri" => "http://rds.amazonaws.com/doc/2014-10-31/"}}
      service.add_operation(:add_source_identifier_to_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#AddSourceIdentifierToSubscription"
        operation.name = "AddSourceIdentifierToSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:apply_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CopyDBClusterParameterGroup"
        operation.name = "CopyDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CopyDBClusterSnapshot"
        operation.name = "CopyDBClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBCluster"
        operation.name = "CreateDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBClusterParameterGroup"
        operation.name = "CreateDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBClusterSnapshot"
        operation.name = "CreateDBClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBInstance"
        operation.name = "CreateDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBSubnetGroup"
        operation.name = "CreateDBSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionAlreadyExistFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateGlobalCluster"
        operation.name = "CreateGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBCluster"
        operation.name = "DeleteDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBClusterParameterGroup"
        operation.name = "DeleteDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBClusterSnapshot"
        operation.name = "DeleteDBClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBInstance"
        operation.name = "DeleteDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBSubnetGroup"
        operation.name = "DeleteDBSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventSubscriptionStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteGlobalCluster"
        operation.name = "DeleteGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeCertificates"
        operation.name = "DescribeCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificatesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCertificates.new
      end)
      service.add_operation(:describe_db_cluster_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusterParameterGroups"
        operation.name = "DescribeDBClusterParameterGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParameterGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameterGroups.new
      end)
      service.add_operation(:describe_db_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusterParameters"
        operation.name = "DescribeDBClusterParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParametersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameters.new
      end)
      service.add_operation(:describe_db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusterSnapshotAttributes"
        operation.name = "DescribeDBClusterSnapshotAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_db_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusterSnapshots"
        operation.name = "DescribeDBClusterSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterSnapshots.new
      end)
      service.add_operation(:describe_db_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusters"
        operation.name = "DescribeDBClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClustersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusters.new
      end)
      service.add_operation(:describe_db_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBEngineVersions"
        operation.name = "DescribeDBEngineVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBEngineVersionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBEngineVersionMessage)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeDBEngineVersionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBEngineVersions.new
      end)
      service.add_operation(:describe_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBInstances"
        operation.name = "DescribeDBInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBInstancesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"], "smithy.test#smokeTests" => [{"id" => "DescribeDBInstancesFailure", "params" => {"DBInstanceIdentifier" => "fake-id"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBInstances.new
      end)
      service.add_operation(:describe_db_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBSubnetGroups"
        operation.name = "DescribeDBSubnetGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBSubnetGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSubnetGroups.new
      end)
      service.add_operation(:describe_engine_default_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeEngineDefaultClusterParameters"
        operation.name = "DescribeEngineDefaultClusterParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersResult)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_global_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeGlobalClusters"
        operation.name = "DescribeGlobalClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalClustersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClustersMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGlobalClusters.new
      end)
      service.add_operation(:describe_orderable_db_instance_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeOrderableDBInstanceOptions"
        operation.name = "DescribeOrderableDBInstanceOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrderableDBInstanceOptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableDBInstanceOptions.new
      end)
      service.add_operation(:describe_pending_maintenance_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribePendingMaintenanceActions"
        operation.name = "DescribePendingMaintenanceActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePendingMaintenanceActions.new
      end)
      service.add_operation(:failover_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#FailoverDBCluster"
        operation.name = "FailoverDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:failover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#FailoverGlobalCluster"
        operation.name = "FailoverGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagListMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBCluster"
        operation.name = "ModifyDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBClusterParameterGroup"
        operation.name = "ModifyDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_snapshot_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBClusterSnapshotAttribute"
        operation.name = "ModifyDBClusterSnapshotAttribute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedSnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBInstance"
        operation.name = "ModifyDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBUpgradeDependencyFailureFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBSubnetGroup"
        operation.name = "ModifyDBSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyGlobalCluster"
        operation.name = "ModifyGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RebootDBInstance"
        operation.name = "RebootDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_from_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RemoveFromGlobalCluster"
        operation.name = "RemoveFromGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_source_identifier_from_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RemoveSourceIdentifierFromSubscription"
        operation.name = "RemoveSourceIdentifierFromSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:reset_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ResetDBClusterParameterGroup"
        operation.name = "ResetDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RestoreDBClusterFromSnapshot"
        operation.name = "RestoreDBClusterFromSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RestoreDBClusterToPointInTime"
        operation.name = "RestoreDBClusterToPointInTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:start_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#StartDBCluster"
        operation.name = "StartDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#StopDBCluster"
        operation.name = "StopDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:switchover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#SwitchoverGlobalCluster"
        operation.name = "SwitchoverGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
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
