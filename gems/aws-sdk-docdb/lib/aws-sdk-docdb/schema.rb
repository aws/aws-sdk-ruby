# frozen_string_literal: true

# This is generated code!

module Aws::DocDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddSourceIdentifierToSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#AddSourceIdentifierToSubscriptionMessage", name: "AddSourceIdentifierToSubscriptionMessage")
    AddSourceIdentifierToSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#AddSourceIdentifierToSubscriptionResult", name: "AddSourceIdentifierToSubscriptionResult")
    AddTagsToResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#AddTagsToResourceMessage", name: "AddTagsToResourceMessage")
    ApplyMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.docdb#ApplyMethod", name: "ApplyMethod")
    ApplyPendingMaintenanceActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ApplyPendingMaintenanceActionMessage", name: "ApplyPendingMaintenanceActionMessage")
    ApplyPendingMaintenanceActionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ApplyPendingMaintenanceActionResult", name: "ApplyPendingMaintenanceActionResult")
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#AttributeValueList", name: "AttributeValueList")
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#AuthorizationNotFoundFault", name: "AuthorizationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#AvailabilityZoneList", name: "AvailabilityZoneList")
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#AvailabilityZones", name: "AvailabilityZones")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.docdb#Boolean", name: "Boolean")
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.docdb#BooleanOptional", name: "BooleanOptional")
    CACertificateIdentifiersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#CACertificateIdentifiersList", name: "CACertificateIdentifiersList")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#Certificate", name: "Certificate")
    CertificateDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CertificateDetails", name: "CertificateDetails")
    CertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#CertificateList", name: "CertificateList")
    CertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CertificateMessage", name: "CertificateMessage")
    CertificateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CertificateNotFoundFault", name: "CertificateNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CertificateNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CloudwatchLogsExportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CloudwatchLogsExportConfiguration", name: "CloudwatchLogsExportConfiguration")
    ClusterMasterUserSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ClusterMasterUserSecret", name: "ClusterMasterUserSecret")
    CopyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CopyDBClusterParameterGroupMessage", name: "CopyDBClusterParameterGroupMessage")
    CopyDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CopyDBClusterParameterGroupResult", name: "CopyDBClusterParameterGroupResult")
    CopyDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CopyDBClusterSnapshotMessage", name: "CopyDBClusterSnapshotMessage")
    CopyDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CopyDBClusterSnapshotResult", name: "CopyDBClusterSnapshotResult")
    CreateDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBClusterMessage", name: "CreateDBClusterMessage")
    CreateDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBClusterParameterGroupMessage", name: "CreateDBClusterParameterGroupMessage")
    CreateDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBClusterParameterGroupResult", name: "CreateDBClusterParameterGroupResult")
    CreateDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBClusterResult", name: "CreateDBClusterResult")
    CreateDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBClusterSnapshotMessage", name: "CreateDBClusterSnapshotMessage")
    CreateDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBClusterSnapshotResult", name: "CreateDBClusterSnapshotResult")
    CreateDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBInstanceMessage", name: "CreateDBInstanceMessage")
    CreateDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBInstanceResult", name: "CreateDBInstanceResult")
    CreateDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBSubnetGroupMessage", name: "CreateDBSubnetGroupMessage")
    CreateDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateDBSubnetGroupResult", name: "CreateDBSubnetGroupResult")
    CreateEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateEventSubscriptionMessage", name: "CreateEventSubscriptionMessage")
    CreateEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateEventSubscriptionResult", name: "CreateEventSubscriptionResult")
    CreateGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateGlobalClusterMessage", name: "CreateGlobalClusterMessage")
    CreateGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#CreateGlobalClusterResult", name: "CreateGlobalClusterResult")
    DBCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBCluster", name: "DBCluster")
    DBClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterAlreadyExistsFault", name: "DBClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdb#DBClusterIdentifier", name: "DBClusterIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    DBClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBClusterList", name: "DBClusterList")
    DBClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterMember", name: "DBClusterMember")
    DBClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBClusterMemberList", name: "DBClusterMemberList")
    DBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterMessage", name: "DBClusterMessage")
    DBClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterNotFoundFault", name: "DBClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterParameterGroup", name: "DBClusterParameterGroup")
    DBClusterParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBClusterParameterGroupList", name: "DBClusterParameterGroupList")
    DBClusterParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterParameterGroupNotFoundFault", name: "DBClusterParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterParameterGroupsMessage", name: "DBClusterParameterGroupsMessage")
    DBClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterQuotaExceededFault", name: "DBClusterQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterQuotaExceededFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DBClusterRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterRole", name: "DBClusterRole")
    DBClusterRoles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBClusterRoles", name: "DBClusterRoles")
    DBClusterSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterSnapshot", name: "DBClusterSnapshot")
    DBClusterSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterSnapshotAlreadyExistsFault", name: "DBClusterSnapshotAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterSnapshotAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterSnapshotAttribute", name: "DBClusterSnapshotAttribute")
    DBClusterSnapshotAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBClusterSnapshotAttributeList", name: "DBClusterSnapshotAttributeList")
    DBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterSnapshotAttributesResult", name: "DBClusterSnapshotAttributesResult")
    DBClusterSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBClusterSnapshotList", name: "DBClusterSnapshotList")
    DBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterSnapshotMessage", name: "DBClusterSnapshotMessage")
    DBClusterSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBClusterSnapshotNotFoundFault", name: "DBClusterSnapshotNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBEngineVersion", name: "DBEngineVersion")
    DBEngineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBEngineVersionList", name: "DBEngineVersionList")
    DBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBEngineVersionMessage", name: "DBEngineVersionMessage")
    DBInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBInstance", name: "DBInstance")
    DBInstanceAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBInstanceAlreadyExistsFault", name: "DBInstanceAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBInstanceList", name: "DBInstanceList")
    DBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBInstanceMessage", name: "DBInstanceMessage")
    DBInstanceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBInstanceNotFoundFault", name: "DBInstanceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceStatusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBInstanceStatusInfo", name: "DBInstanceStatusInfo")
    DBInstanceStatusInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBInstanceStatusInfoList", name: "DBInstanceStatusInfoList")
    DBParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBParameterGroupAlreadyExistsFault", name: "DBParameterGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBParameterGroupNotFoundFault", name: "DBParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBParameterGroupQuotaExceededFault", name: "DBParameterGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSecurityGroupNotFoundFault", name: "DBSecurityGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSnapshotAlreadyExistsFault", name: "DBSnapshotAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSnapshotNotFoundFault", name: "DBSnapshotNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSubnetGroup", name: "DBSubnetGroup")
    DBSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSubnetGroupAlreadyExistsFault", name: "DBSubnetGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupDoesNotCoverEnoughAZs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSubnetGroupDoesNotCoverEnoughAZs", name: "DBSubnetGroupDoesNotCoverEnoughAZs", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupDoesNotCoverEnoughAZs", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSubnetGroupMessage", name: "DBSubnetGroupMessage")
    DBSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSubnetGroupNotFoundFault", name: "DBSubnetGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSubnetGroupQuotaExceededFault", name: "DBSubnetGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#DBSubnetGroups", name: "DBSubnetGroups")
    DBSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBSubnetQuotaExceededFault", name: "DBSubnetQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBUpgradeDependencyFailureFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DBUpgradeDependencyFailureFault", name: "DBUpgradeDependencyFailureFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBUpgradeDependencyFailure", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteDBClusterMessage", name: "DeleteDBClusterMessage")
    DeleteDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteDBClusterParameterGroupMessage", name: "DeleteDBClusterParameterGroupMessage")
    DeleteDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteDBClusterResult", name: "DeleteDBClusterResult")
    DeleteDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteDBClusterSnapshotMessage", name: "DeleteDBClusterSnapshotMessage")
    DeleteDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteDBClusterSnapshotResult", name: "DeleteDBClusterSnapshotResult")
    DeleteDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteDBInstanceMessage", name: "DeleteDBInstanceMessage")
    DeleteDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteDBInstanceResult", name: "DeleteDBInstanceResult")
    DeleteDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteDBSubnetGroupMessage", name: "DeleteDBSubnetGroupMessage")
    DeleteEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteEventSubscriptionMessage", name: "DeleteEventSubscriptionMessage")
    DeleteEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteEventSubscriptionResult", name: "DeleteEventSubscriptionResult")
    DeleteGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteGlobalClusterMessage", name: "DeleteGlobalClusterMessage")
    DeleteGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DeleteGlobalClusterResult", name: "DeleteGlobalClusterResult")
    DescribeCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeCertificatesMessage", name: "DescribeCertificatesMessage")
    DescribeDBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBClusterParameterGroupsMessage", name: "DescribeDBClusterParameterGroupsMessage")
    DescribeDBClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBClusterParametersMessage", name: "DescribeDBClusterParametersMessage")
    DescribeDBClusterParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBClusterParametersOutput", name: "DescribeDBClusterParametersOutput")
    DescribeDBClusterSnapshotAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBClusterSnapshotAttributesMessage", name: "DescribeDBClusterSnapshotAttributesMessage")
    DescribeDBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBClusterSnapshotAttributesResult", name: "DescribeDBClusterSnapshotAttributesResult")
    DescribeDBClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBClusterSnapshotsMessage", name: "DescribeDBClusterSnapshotsMessage")
    DescribeDBClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBClustersMessage", name: "DescribeDBClustersMessage")
    DescribeDBEngineVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBEngineVersionsMessage", name: "DescribeDBEngineVersionsMessage")
    DescribeDBInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBInstancesMessage", name: "DescribeDBInstancesMessage")
    DescribeDBSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeDBSubnetGroupsMessage", name: "DescribeDBSubnetGroupsMessage")
    DescribeEngineDefaultClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeEngineDefaultClusterParametersMessage", name: "DescribeEngineDefaultClusterParametersMessage")
    DescribeEngineDefaultClusterParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeEngineDefaultClusterParametersResult", name: "DescribeEngineDefaultClusterParametersResult")
    DescribeEventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeEventCategoriesMessage", name: "DescribeEventCategoriesMessage")
    DescribeEventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeEventSubscriptionsMessage", name: "DescribeEventSubscriptionsMessage")
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeEventsMessage", name: "DescribeEventsMessage")
    DescribeGlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeGlobalClustersMessage", name: "DescribeGlobalClustersMessage")
    DescribeOrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribeOrderableDBInstanceOptionsMessage", name: "DescribeOrderableDBInstanceOptionsMessage")
    DescribePendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#DescribePendingMaintenanceActionsMessage", name: "DescribePendingMaintenanceActionsMessage")
    DoubleOptional = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.docdb#DoubleOptional", name: "DoubleOptional")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#Endpoint", name: "Endpoint")
    EngineDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#EngineDefaults", name: "EngineDefaults")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#Event", name: "Event")
    EventCategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#EventCategoriesList", name: "EventCategoriesList")
    EventCategoriesMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#EventCategoriesMap", name: "EventCategoriesMap")
    EventCategoriesMapList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#EventCategoriesMapList", name: "EventCategoriesMapList")
    EventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#EventCategoriesMessage", name: "EventCategoriesMessage")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#EventList", name: "EventList")
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#EventSubscription", name: "EventSubscription")
    EventSubscriptionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#EventSubscriptionQuotaExceededFault", name: "EventSubscriptionQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EventSubscriptionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventSubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#EventSubscriptionsList", name: "EventSubscriptionsList")
    EventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#EventSubscriptionsMessage", name: "EventSubscriptionsMessage")
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#EventsMessage", name: "EventsMessage")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdb#ExceptionMessage", name: "ExceptionMessage")
    FailoverDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#FailoverDBClusterMessage", name: "FailoverDBClusterMessage")
    FailoverDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#FailoverDBClusterResult", name: "FailoverDBClusterResult")
    FailoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#FailoverGlobalClusterMessage", name: "FailoverGlobalClusterMessage")
    FailoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#FailoverGlobalClusterResult", name: "FailoverGlobalClusterResult")
    FailoverState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#FailoverState", name: "FailoverState")
    FailoverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.docdb#FailoverStatus", name: "FailoverStatus")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#FilterList", name: "FilterList")
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#FilterValueList", name: "FilterValueList")
    GlobalCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#GlobalCluster", name: "GlobalCluster")
    GlobalClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#GlobalClusterAlreadyExistsFault", name: "GlobalClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdb#GlobalClusterIdentifier", name: "GlobalClusterIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    GlobalClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#GlobalClusterList", name: "GlobalClusterList")
    GlobalClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#GlobalClusterMember", name: "GlobalClusterMember")
    GlobalClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#GlobalClusterMemberList", name: "GlobalClusterMemberList")
    GlobalClusterMemberSynchronizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.docdb#GlobalClusterMemberSynchronizationStatus", name: "GlobalClusterMemberSynchronizationStatus")
    GlobalClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#GlobalClusterNotFoundFault", name: "GlobalClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    GlobalClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#GlobalClusterQuotaExceededFault", name: "GlobalClusterQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#GlobalClustersMessage", name: "GlobalClustersMessage")
    InstanceQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InstanceQuotaExceededFault", name: "InstanceQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InstanceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientDBClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InsufficientDBClusterCapacityFault", name: "InsufficientDBClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBClusterCapacityFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InsufficientDBInstanceCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InsufficientDBInstanceCapacityFault", name: "InsufficientDBInstanceCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBInstanceCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientStorageClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InsufficientStorageClusterCapacityFault", name: "InsufficientStorageClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientStorageClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.docdb#Integer", name: "Integer")
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.docdb#IntegerOptional", name: "IntegerOptional")
    InvalidDBClusterSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidDBClusterSnapshotStateFault", name: "InvalidDBClusterSnapshotStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterSnapshotStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidDBClusterStateFault", name: "InvalidDBClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBInstanceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidDBInstanceStateFault", name: "InvalidDBInstanceStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBInstanceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidDBParameterGroupStateFault", name: "InvalidDBParameterGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidDBSecurityGroupStateFault", name: "InvalidDBSecurityGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidDBSnapshotStateFault", name: "InvalidDBSnapshotStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidDBSubnetGroupStateFault", name: "InvalidDBSubnetGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidDBSubnetStateFault", name: "InvalidDBSubnetStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventSubscriptionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidEventSubscriptionStateFault", name: "InvalidEventSubscriptionStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventSubscriptionState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGlobalClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidGlobalClusterStateFault", name: "InvalidGlobalClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGlobalClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRestoreFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidRestoreFault", name: "InvalidRestoreFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRestoreFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidSubnet", name: "InvalidSubnet", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#InvalidVPCNetworkStateFault", name: "InvalidVPCNetworkStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSKeyNotAccessibleFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#KMSKeyNotAccessibleFault", name: "KMSKeyNotAccessibleFault", traits: {"aws.protocols#awsQueryError" => {"code" => "KMSKeyNotAccessibleFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#KeyList", name: "KeyList")
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ListTagsForResourceMessage", name: "ListTagsForResourceMessage")
    LogTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#LogTypeList", name: "LogTypeList")
    ModifyDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBClusterMessage", name: "ModifyDBClusterMessage")
    ModifyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBClusterParameterGroupMessage", name: "ModifyDBClusterParameterGroupMessage")
    ModifyDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBClusterParameterGroupOutput", name: "ModifyDBClusterParameterGroupOutput")
    ModifyDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBClusterResult", name: "ModifyDBClusterResult")
    ModifyDBClusterSnapshotAttributeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBClusterSnapshotAttributeMessage", name: "ModifyDBClusterSnapshotAttributeMessage")
    ModifyDBClusterSnapshotAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBClusterSnapshotAttributeResult", name: "ModifyDBClusterSnapshotAttributeResult")
    ModifyDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBInstanceMessage", name: "ModifyDBInstanceMessage")
    ModifyDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBInstanceResult", name: "ModifyDBInstanceResult")
    ModifyDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBSubnetGroupMessage", name: "ModifyDBSubnetGroupMessage")
    ModifyDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyDBSubnetGroupResult", name: "ModifyDBSubnetGroupResult")
    ModifyEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyEventSubscriptionMessage", name: "ModifyEventSubscriptionMessage")
    ModifyEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyEventSubscriptionResult", name: "ModifyEventSubscriptionResult")
    ModifyGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyGlobalClusterMessage", name: "ModifyGlobalClusterMessage")
    ModifyGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ModifyGlobalClusterResult", name: "ModifyGlobalClusterResult")
    NetworkTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#NetworkTypeList", name: "NetworkTypeList")
    NetworkTypeNotSupported = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#NetworkTypeNotSupported", name: "NetworkTypeNotSupported", traits: {"aws.protocols#awsQueryError" => {"code" => "NetworkTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OrderableDBInstanceOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#OrderableDBInstanceOption", name: "OrderableDBInstanceOption")
    OrderableDBInstanceOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#OrderableDBInstanceOptionsList", name: "OrderableDBInstanceOptionsList")
    OrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#OrderableDBInstanceOptionsMessage", name: "OrderableDBInstanceOptionsMessage")
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#Parameter", name: "Parameter")
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#ParametersList", name: "ParametersList")
    PendingCloudwatchLogsExports = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#PendingCloudwatchLogsExports", name: "PendingCloudwatchLogsExports")
    PendingMaintenanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#PendingMaintenanceAction", name: "PendingMaintenanceAction")
    PendingMaintenanceActionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#PendingMaintenanceActionDetails", name: "PendingMaintenanceActionDetails")
    PendingMaintenanceActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#PendingMaintenanceActions", name: "PendingMaintenanceActions")
    PendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#PendingMaintenanceActionsMessage", name: "PendingMaintenanceActionsMessage")
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#PendingModifiedValues", name: "PendingModifiedValues")
    ReadReplicaIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#ReadReplicaIdentifierList", name: "ReadReplicaIdentifierList")
    ReadersArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#ReadersArnList", name: "ReadersArnList")
    RebootDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RebootDBInstanceMessage", name: "RebootDBInstanceMessage")
    RebootDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RebootDBInstanceResult", name: "RebootDBInstanceResult")
    RemoveFromGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RemoveFromGlobalClusterMessage", name: "RemoveFromGlobalClusterMessage")
    RemoveFromGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RemoveFromGlobalClusterResult", name: "RemoveFromGlobalClusterResult")
    RemoveSourceIdentifierFromSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RemoveSourceIdentifierFromSubscriptionMessage", name: "RemoveSourceIdentifierFromSubscriptionMessage")
    RemoveSourceIdentifierFromSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RemoveSourceIdentifierFromSubscriptionResult", name: "RemoveSourceIdentifierFromSubscriptionResult")
    RemoveTagsFromResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RemoveTagsFromResourceMessage", name: "RemoveTagsFromResourceMessage")
    ResetDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ResetDBClusterParameterGroupMessage", name: "ResetDBClusterParameterGroupMessage")
    ResetDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ResetDBClusterParameterGroupOutput", name: "ResetDBClusterParameterGroupOutput")
    ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ResourceNotFoundFault", name: "ResourceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePendingMaintenanceActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ResourcePendingMaintenanceActions", name: "ResourcePendingMaintenanceActions")
    RestoreDBClusterFromSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RestoreDBClusterFromSnapshotMessage", name: "RestoreDBClusterFromSnapshotMessage")
    RestoreDBClusterFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RestoreDBClusterFromSnapshotResult", name: "RestoreDBClusterFromSnapshotResult")
    RestoreDBClusterToPointInTimeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RestoreDBClusterToPointInTimeMessage", name: "RestoreDBClusterToPointInTimeMessage")
    RestoreDBClusterToPointInTimeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#RestoreDBClusterToPointInTimeResult", name: "RestoreDBClusterToPointInTimeResult")
    SNSInvalidTopicFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SNSInvalidTopicFault", name: "SNSInvalidTopicFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSInvalidTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSNoAuthorizationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SNSNoAuthorizationFault", name: "SNSNoAuthorizationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSNoAuthorization", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSTopicArnNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SNSTopicArnNotFoundFault", name: "SNSTopicArnNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSTopicArnNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServerlessV2FeaturesSupport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ServerlessV2FeaturesSupport", name: "ServerlessV2FeaturesSupport")
    ServerlessV2ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ServerlessV2ScalingConfiguration", name: "ServerlessV2ScalingConfiguration")
    ServerlessV2ScalingConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#ServerlessV2ScalingConfigurationInfo", name: "ServerlessV2ScalingConfigurationInfo")
    SharedSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SharedSnapshotQuotaExceededFault", name: "SharedSnapshotQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SharedSnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SnapshotQuotaExceededFault", name: "SnapshotQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#SourceIdsList", name: "SourceIdsList")
    SourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SourceNotFoundFault", name: "SourceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.docdb#SourceType", name: "SourceType")
    StartDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#StartDBClusterMessage", name: "StartDBClusterMessage")
    StartDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#StartDBClusterResult", name: "StartDBClusterResult")
    StopDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#StopDBClusterMessage", name: "StopDBClusterMessage")
    StopDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#StopDBClusterResult", name: "StopDBClusterResult")
    StorageQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#StorageQuotaExceededFault", name: "StorageQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "StorageQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StorageTypeNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#StorageTypeNotSupportedFault", name: "StorageTypeNotSupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "StorageTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdb#String", name: "String")
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#Subnet", name: "Subnet")
    SubnetAlreadyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SubnetAlreadyInUse", name: "SubnetAlreadyInUse", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#SubnetIdentifierList", name: "SubnetIdentifierList")
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#SubnetList", name: "SubnetList")
    SubscriptionAlreadyExistFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SubscriptionAlreadyExistFault", name: "SubscriptionAlreadyExistFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionAlreadyExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubscriptionCategoryNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SubscriptionCategoryNotFoundFault", name: "SubscriptionCategoryNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionCategoryNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SubscriptionNotFoundFault", name: "SubscriptionNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SwitchoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SwitchoverGlobalClusterMessage", name: "SwitchoverGlobalClusterMessage")
    SwitchoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#SwitchoverGlobalClusterResult", name: "SwitchoverGlobalClusterResult")
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.docdb#TStamp", name: "TStamp")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#TagList", name: "TagList")
    TagListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#TagListMessage", name: "TagListMessage")
    UpgradeTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#UpgradeTarget", name: "UpgradeTarget")
    ValidUpgradeTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#ValidUpgradeTargetList", name: "ValidUpgradeTargetList")
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#VpcSecurityGroupIdList", name: "VpcSecurityGroupIdList")
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdb#VpcSecurityGroupMembership", name: "VpcSecurityGroupMembership")
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdb#VpcSecurityGroupMembershipList", name: "VpcSecurityGroupMembershipList")

    AddSourceIdentifierToSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddSourceIdentifierToSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddSourceIdentifierToSubscriptionMessage.type = Types::AddSourceIdentifierToSubscriptionMessage
    AddSourceIdentifierToSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    AddSourceIdentifierToSubscriptionResult.type = Types::AddSourceIdentifierToSubscriptionResult
    AddTagsToResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.type = Types::AddTagsToResourceMessage
    ApplyMethod.add_member(:immediate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "immediate", traits: {"smithy.api#enumValue" => "immediate"}))
    ApplyMethod.add_member(:pending_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending_reboot", traits: {"smithy.api#enumValue" => "pending-reboot"}))
    ApplyPendingMaintenanceActionMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplyAction", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptInType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.type = Types::ApplyPendingMaintenanceActionMessage
    ApplyPendingMaintenanceActionResult.add_member(:resource_pending_maintenance_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePendingMaintenanceActions, name: "ResourcePendingMaintenanceActions"))
    ApplyPendingMaintenanceActionResult.type = Types::ApplyPendingMaintenanceActionResult
    AttributeValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "AttributeValue"}))
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member", traits: {"smithy.api#xmlName" => "AvailabilityZone"}))
    AvailabilityZones.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "AvailabilityZone"}))
    CACertificateIdentifiersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Certificate.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateIdentifier"))
    Certificate.add_member(:certificate_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateType"))
    Certificate.add_member(:thumbprint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Thumbprint"))
    Certificate.add_member(:valid_from, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ValidFrom"))
    Certificate.add_member(:valid_till, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ValidTill"))
    Certificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    Certificate.type = Types::Certificate
    CertificateDetails.add_member(:ca_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CAIdentifier"))
    CertificateDetails.add_member(:valid_till, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ValidTill"))
    CertificateDetails.type = Types::CertificateDetails
    CertificateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "member", traits: {"smithy.api#xmlName" => "Certificate"}))
    CertificateMessage.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, name: "Certificates"))
    CertificateMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    CertificateMessage.type = Types::CertificateMessage
    CertificateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CertificateNotFoundFault.type = Types::CertificateNotFoundFault
    CloudwatchLogsExportConfiguration.add_member(:enable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableLogTypes"))
    CloudwatchLogsExportConfiguration.add_member(:disable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "DisableLogTypes"))
    CloudwatchLogsExportConfiguration.type = Types::CloudwatchLogsExportConfiguration
    ClusterMasterUserSecret.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretArn"))
    ClusterMasterUserSecret.add_member(:secret_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretStatus"))
    ClusterMasterUserSecret.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ClusterMasterUserSecret.type = Types::ClusterMasterUserSecret
    CopyDBClusterParameterGroupMessage.add_member(:source_db_cluster_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterParameterGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBClusterParameterGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBClusterParameterGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopyDBClusterParameterGroupMessage.type = Types::CopyDBClusterParameterGroupMessage
    CopyDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterParameterGroup, name: "DBClusterParameterGroup"))
    CopyDBClusterParameterGroupResult.type = Types::CopyDBClusterParameterGroupResult
    CopyDBClusterSnapshotMessage.add_member(:source_db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterSnapshotMessage.add_member(:target_db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreSignedUrl"))
    CopyDBClusterSnapshotMessage.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTags"))
    CopyDBClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopyDBClusterSnapshotMessage.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    CopyDBClusterSnapshotMessage.type = Types::CopyDBClusterSnapshotMessage
    CopyDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshot, name: "DBClusterSnapshot"))
    CopyDBClusterSnapshotResult.type = Types::CopyDBClusterSnapshotResult
    CreateDBClusterMessage.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    CreateDBClusterMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    CreateDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    CreateDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    CreateDBClusterMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    CreateDBClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CreateDBClusterMessage.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    CreateDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserPassword"))
    CreateDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateDBClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    CreateDBClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateDBClusterMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreSignedUrl"))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    CreateDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    CreateDBClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier"))
    CreateDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    CreateDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    CreateDBClusterMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    CreateDBClusterMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    CreateDBClusterMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    CreateDBClusterMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    CreateDBClusterMessage.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    CreateDBClusterMessage.type = Types::CreateDBClusterMessage
    CreateDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBClusterParameterGroupMessage.type = Types::CreateDBClusterParameterGroupMessage
    CreateDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterParameterGroup, name: "DBClusterParameterGroup"))
    CreateDBClusterParameterGroupResult.type = Types::CreateDBClusterParameterGroupResult
    CreateDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    CreateDBClusterResult.type = Types::CreateDBClusterResult
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBClusterSnapshotMessage.type = Types::CreateDBClusterSnapshotMessage
    CreateDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshot, name: "DBClusterSnapshot"))
    CreateDBClusterSnapshotResult.type = Types::CreateDBClusterSnapshotResult
    CreateDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    CreateDBInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateDBInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    CreateDBInstanceMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    CreateDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PromotionTier"))
    CreateDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    CreateDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    CreateDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    CreateDBInstanceMessage.type = Types::CreateDBInstanceMessage
    CreateDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    CreateDBInstanceResult.type = Types::CreateDBInstanceResult
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBSubnetGroupMessage.type = Types::CreateDBSubnetGroupMessage
    CreateDBSubnetGroupResult.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroup, name: "DBSubnetGroup"))
    CreateDBSubnetGroupResult.type = Types::CreateDBSubnetGroupResult
    CreateEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    CreateEventSubscriptionResult.type = Types::CreateEventSubscriptionResult
    CreateGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGlobalClusterMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterIdentifier"))
    CreateGlobalClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    CreateGlobalClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    CreateGlobalClusterMessage.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    CreateGlobalClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    CreateGlobalClusterMessage.type = Types::CreateGlobalClusterMessage
    CreateGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    CreateGlobalClusterResult.type = Types::CreateGlobalClusterResult
    DBCluster.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    DBCluster.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    DBCluster.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBCluster.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroup"))
    DBCluster.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroup"))
    DBCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PercentProgress"))
    DBCluster.add_member(:earliest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EarliestRestorableTime"))
    DBCluster.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DBCluster.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReaderEndpoint"))
    DBCluster.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MultiAZ"))
    DBCluster.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBCluster.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LatestRestorableTime"))
    DBCluster.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    DBCluster.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBCluster.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    DBCluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    DBCluster.add_member(:replication_source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSourceIdentifier"))
    DBCluster.add_member(:read_replica_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadReplicaIdentifierList, name: "ReadReplicaIdentifiers"))
    DBCluster.add_member(:db_cluster_members, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterMemberList, name: "DBClusterMembers"))
    DBCluster.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    DBCluster.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HostedZoneId"))
    DBCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "StorageEncrypted"))
    DBCluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBCluster.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterResourceId"))
    DBCluster.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterArn"))
    DBCluster.add_member(:associated_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterRoles, name: "AssociatedRoles"))
    DBCluster.add_member(:clone_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CloneGroupId"))
    DBCluster.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ClusterCreateTime"))
    DBCluster.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnabledCloudwatchLogsExports"))
    DBCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeletionProtection"))
    DBCluster.add_member(:io_optimized_next_allowed_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "IOOptimizedNextAllowedModificationTime"))
    DBCluster.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    DBCluster.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfigurationInfo, name: "ServerlessV2ScalingConfiguration"))
    DBCluster.add_member(:master_user_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterMasterUserSecret, name: "MasterUserSecret"))
    DBCluster.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    DBCluster.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    DBCluster.type = Types::DBCluster
    DBClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterAlreadyExistsFault.type = Types::DBClusterAlreadyExistsFault
    DBClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "member", traits: {"smithy.api#xmlName" => "DBCluster"}))
    DBClusterMember.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DBClusterMember.add_member(:is_cluster_writer, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsClusterWriter"))
    DBClusterMember.add_member(:db_cluster_parameter_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupStatus"))
    DBClusterMember.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PromotionTier"))
    DBClusterMember.type = Types::DBClusterMember
    DBClusterMemberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterMember, name: "member", traits: {"smithy.api#xmlName" => "DBClusterMember"}))
    DBClusterMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterMessage.add_member(:db_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterList, name: "DBClusters"))
    DBClusterMessage.type = Types::DBClusterMessage
    DBClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterNotFoundFault.type = Types::DBClusterNotFoundFault
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    DBClusterParameterGroup.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    DBClusterParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupArn"))
    DBClusterParameterGroup.type = Types::DBClusterParameterGroup
    DBClusterParameterGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterParameterGroup, name: "member", traits: {"smithy.api#xmlName" => "DBClusterParameterGroup"}))
    DBClusterParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterParameterGroupNotFoundFault.type = Types::DBClusterParameterGroupNotFoundFault
    DBClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterParameterGroupList, name: "DBClusterParameterGroups"))
    DBClusterParameterGroupsMessage.type = Types::DBClusterParameterGroupsMessage
    DBClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterQuotaExceededFault.type = Types::DBClusterQuotaExceededFault
    DBClusterRole.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn"))
    DBClusterRole.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterRole.type = Types::DBClusterRole
    DBClusterRoles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterRole, name: "member", traits: {"smithy.api#xmlName" => "DBClusterRole"}))
    DBClusterSnapshot.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshot.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBClusterSnapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotCreateTime"))
    DBClusterSnapshot.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBClusterSnapshot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterSnapshot.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    DBClusterSnapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBClusterSnapshot.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ClusterCreateTime"))
    DBClusterSnapshot.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBClusterSnapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBClusterSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DBClusterSnapshot.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentProgress"))
    DBClusterSnapshot.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "StorageEncrypted"))
    DBClusterSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:source_db_cluster_snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    DBClusterSnapshot.type = Types::DBClusterSnapshot
    DBClusterSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterSnapshotAlreadyExistsFault.type = Types::DBClusterSnapshotAlreadyExistsFault
    DBClusterSnapshotAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName"))
    DBClusterSnapshotAttribute.add_member(:attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "AttributeValues"))
    DBClusterSnapshotAttribute.type = Types::DBClusterSnapshotAttribute
    DBClusterSnapshotAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotAttribute, name: "member", traits: {"smithy.api#xmlName" => "DBClusterSnapshotAttribute"}))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotAttributeList, name: "DBClusterSnapshotAttributes"))
    DBClusterSnapshotAttributesResult.type = Types::DBClusterSnapshotAttributesResult
    DBClusterSnapshotList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshot, name: "member", traits: {"smithy.api#xmlName" => "DBClusterSnapshot"}))
    DBClusterSnapshotMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterSnapshotMessage.add_member(:db_cluster_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotList, name: "DBClusterSnapshots"))
    DBClusterSnapshotMessage.type = Types::DBClusterSnapshotMessage
    DBClusterSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterSnapshotNotFoundFault.type = Types::DBClusterSnapshotNotFoundFault
    DBEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBEngineVersion.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBEngineVersion.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    DBEngineVersion.add_member(:db_engine_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineDescription"))
    DBEngineVersion.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionDescription"))
    DBEngineVersion.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidUpgradeTargetList, name: "ValidUpgradeTarget"))
    DBEngineVersion.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "ExportableLogTypes"))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLogExportsToCloudwatchLogs"))
    DBEngineVersion.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: CACertificateIdentifiersList, name: "SupportedCACertificateIdentifiers"))
    DBEngineVersion.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsCertificateRotationWithoutRestart"))
    DBEngineVersion.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2FeaturesSupport, name: "ServerlessV2FeaturesSupport"))
    DBEngineVersion.type = Types::DBEngineVersion
    DBEngineVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBEngineVersion, name: "member", traits: {"smithy.api#xmlName" => "DBEngineVersion"}))
    DBEngineVersionMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBEngineVersionMessage.add_member(:db_engine_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: DBEngineVersionList, name: "DBEngineVersions"))
    DBEngineVersionMessage.type = Types::DBEngineVersionMessage
    DBInstance.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DBInstance.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    DBInstance.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBInstance.add_member(:db_instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceStatus"))
    DBInstance.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    DBInstance.add_member(:instance_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "InstanceCreateTime"))
    DBInstance.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    DBInstance.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BackupRetentionPeriod"))
    DBInstance.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    DBInstance.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    DBInstance.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroup, name: "DBSubnetGroup"))
    DBInstance.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    DBInstance.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingModifiedValues, name: "PendingModifiedValues"))
    DBInstance.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LatestRestorableTime"))
    DBInstance.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBInstance.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoMinorVersionUpgrade"))
    DBInstance.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PubliclyAccessible"))
    DBInstance.add_member(:status_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceStatusInfoList, name: "StatusInfos"))
    DBInstance.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBInstance.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "StorageEncrypted"))
    DBInstance.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBInstance.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DBInstance.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    DBInstance.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    DBInstance.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PromotionTier"))
    DBInstance.add_member(:db_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceArn"))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnabledCloudwatchLogsExports"))
    DBInstance.add_member(:certificate_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateDetails, name: "CertificateDetails"))
    DBInstance.add_member(:performance_insights_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PerformanceInsightsEnabled"))
    DBInstance.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    DBInstance.type = Types::DBInstance
    DBInstanceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceAlreadyExistsFault.type = Types::DBInstanceAlreadyExistsFault
    DBInstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "member", traits: {"smithy.api#xmlName" => "DBInstance"}))
    DBInstanceMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBInstanceMessage.add_member(:db_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceList, name: "DBInstances"))
    DBInstanceMessage.type = Types::DBInstanceMessage
    DBInstanceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceNotFoundFault.type = Types::DBInstanceNotFoundFault
    DBInstanceStatusInfo.add_member(:status_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusType"))
    DBInstanceStatusInfo.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Normal"))
    DBInstanceStatusInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBInstanceStatusInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DBInstanceStatusInfo.type = Types::DBInstanceStatusInfo
    DBInstanceStatusInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceStatusInfo, name: "member", traits: {"smithy.api#xmlName" => "DBInstanceStatusInfo"}))
    DBParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBParameterGroupAlreadyExistsFault.type = Types::DBParameterGroupAlreadyExistsFault
    DBParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBParameterGroupNotFoundFault.type = Types::DBParameterGroupNotFoundFault
    DBParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBParameterGroupQuotaExceededFault.type = Types::DBParameterGroupQuotaExceededFault
    DBSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSecurityGroupNotFoundFault.type = Types::DBSecurityGroupNotFoundFault
    DBSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSnapshotAlreadyExistsFault.type = Types::DBSnapshotAlreadyExistsFault
    DBSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSnapshotNotFoundFault.type = Types::DBSnapshotNotFoundFault
    DBSubnetGroup.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    DBSubnetGroup.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupDescription"))
    DBSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupStatus"))
    DBSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "Subnets"))
    DBSubnetGroup.add_member(:db_subnet_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupArn"))
    DBSubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTypeList, name: "SupportedNetworkTypes"))
    DBSubnetGroup.type = Types::DBSubnetGroup
    DBSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupAlreadyExistsFault.type = Types::DBSubnetGroupAlreadyExistsFault
    DBSubnetGroupDoesNotCoverEnoughAZs.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupDoesNotCoverEnoughAZs.type = Types::DBSubnetGroupDoesNotCoverEnoughAZs
    DBSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBSubnetGroupMessage.add_member(:db_subnet_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroups, name: "DBSubnetGroups"))
    DBSubnetGroupMessage.type = Types::DBSubnetGroupMessage
    DBSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupNotFoundFault.type = Types::DBSubnetGroupNotFoundFault
    DBSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupQuotaExceededFault.type = Types::DBSubnetGroupQuotaExceededFault
    DBSubnetGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroup, name: "member", traits: {"smithy.api#xmlName" => "DBSubnetGroup"}))
    DBSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetQuotaExceededFault.type = Types::DBSubnetQuotaExceededFault
    DBUpgradeDependencyFailureFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBUpgradeDependencyFailureFault.type = Types::DBUpgradeDependencyFailureFault
    DeleteDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SkipFinalSnapshot"))
    DeleteDBClusterMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FinalDBSnapshotIdentifier"))
    DeleteDBClusterMessage.type = Types::DeleteDBClusterMessage
    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterParameterGroupMessage.type = Types::DeleteDBClusterParameterGroupMessage
    DeleteDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    DeleteDBClusterResult.type = Types::DeleteDBClusterResult
    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterSnapshotMessage.type = Types::DeleteDBClusterSnapshotMessage
    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshot, name: "DBClusterSnapshot"))
    DeleteDBClusterSnapshotResult.type = Types::DeleteDBClusterSnapshotResult
    DeleteDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBInstanceMessage.type = Types::DeleteDBInstanceMessage
    DeleteDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    DeleteDBInstanceResult.type = Types::DeleteDBInstanceResult
    DeleteDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBSubnetGroupMessage.type = Types::DeleteDBSubnetGroupMessage
    DeleteEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    DeleteEventSubscriptionResult.type = Types::DeleteEventSubscriptionResult
    DeleteGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGlobalClusterMessage.type = Types::DeleteGlobalClusterMessage
    DeleteGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    DeleteGlobalClusterResult.type = Types::DeleteGlobalClusterResult
    DescribeCertificatesMessage.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateIdentifier"))
    DescribeCertificatesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCertificatesMessage.type = Types::DescribeCertificatesMessage
    DescribeDBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    DescribeDBClusterParameterGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterParameterGroupsMessage.type = Types::DescribeDBClusterParameterGroupsMessage
    DescribeDBClusterParametersMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    DescribeDBClusterParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterParametersMessage.type = Types::DescribeDBClusterParametersMessage
    DescribeDBClusterParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    DescribeDBClusterParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterParametersOutput.type = Types::DescribeDBClusterParametersOutput
    DescribeDBClusterSnapshotAttributesMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterSnapshotAttributesMessage.type = Types::DescribeDBClusterSnapshotAttributesMessage
    DescribeDBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotAttributesResult, name: "DBClusterSnapshotAttributesResult"))
    DescribeDBClusterSnapshotAttributesResult.type = Types::DescribeDBClusterSnapshotAttributesResult
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DescribeDBClusterSnapshotsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeShared"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_public, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludePublic"))
    DescribeDBClusterSnapshotsMessage.type = Types::DescribeDBClusterSnapshotsMessage
    DescribeDBClustersMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DescribeDBClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClustersMessage.type = Types::DescribeDBClustersMessage
    DescribeDBEngineVersionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DescribeDBEngineVersionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DescribeDBEngineVersionsMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    DescribeDBEngineVersionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBEngineVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBEngineVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBEngineVersionsMessage.add_member(:default_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultOnly"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ListSupportedCharacterSets"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_timezones, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ListSupportedTimezones"))
    DescribeDBEngineVersionsMessage.type = Types::DescribeDBEngineVersionsMessage
    DescribeDBInstancesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DescribeDBInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBInstancesMessage.type = Types::DescribeDBInstancesMessage
    DescribeDBSubnetGroupsMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    DescribeDBSubnetGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBSubnetGroupsMessage.type = Types::DescribeDBSubnetGroupsMessage
    DescribeEngineDefaultClusterParametersMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEngineDefaultClusterParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEngineDefaultClusterParametersMessage.type = Types::DescribeEngineDefaultClusterParametersMessage
    DescribeEngineDefaultClusterParametersResult.add_member(:engine_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineDefaults, name: "EngineDefaults"))
    DescribeEngineDefaultClusterParametersResult.type = Types::DescribeEngineDefaultClusterParametersResult
    DescribeEventCategoriesMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Duration"))
    DescribeEventsMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    DescribeEventsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeGlobalClustersMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier"))
    DescribeGlobalClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeGlobalClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeGlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeGlobalClustersMessage.type = Types::DescribeGlobalClustersMessage
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Vpc"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeOrderableDBInstanceOptionsMessage.type = Types::DescribeOrderableDBInstanceOptionsMessage
    DescribePendingMaintenanceActionsMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribePendingMaintenanceActionsMessage.type = Types::DescribePendingMaintenanceActionsMessage
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    Endpoint.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HostedZoneId"))
    Endpoint.type = Types::Endpoint
    EngineDefaults.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    EngineDefaults.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    EngineDefaults.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    EngineDefaults.type = Types::EngineDefaults
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    Event.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    Event.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Date"))
    Event.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    Event.type = Types::Event
    EventCategoriesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "EventCategory"}))
    EventCategoriesMap.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    EventCategoriesMap.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    EventCategoriesMap.type = Types::EventCategoriesMap
    EventCategoriesMapList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesMap, name: "member", traits: {"smithy.api#xmlName" => "EventCategoriesMap"}))
    EventCategoriesMessage.add_member(:event_categories_map_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesMapList, name: "EventCategoriesMapList"))
    EventCategoriesMessage.type = Types::EventCategoriesMessage
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member", traits: {"smithy.api#xmlName" => "Event"}))
    EventSubscription.add_member(:customer_aws_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    EventSubscription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategoriesList"))
    EventSubscription.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    EventSubscription.add_member(:event_subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventSubscriptionArn"))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EventSubscriptionQuotaExceededFault.type = Types::EventSubscriptionQuotaExceededFault
    EventSubscriptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "member", traits: {"smithy.api#xmlName" => "EventSubscription"}))
    EventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscriptionsList, name: "EventSubscriptionsList"))
    EventSubscriptionsMessage.type = Types::EventSubscriptionsMessage
    EventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    EventsMessage.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "Events"))
    EventsMessage.type = Types::EventsMessage
    FailoverDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    FailoverDBClusterMessage.add_member(:target_db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBInstanceIdentifier"))
    FailoverDBClusterMessage.type = Types::FailoverDBClusterMessage
    FailoverDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    FailoverDBClusterResult.type = Types::FailoverDBClusterResult
    FailoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterIdentifier, name: "TargetDbClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:allow_data_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowDataLoss"))
    FailoverGlobalClusterMessage.add_member(:switchover, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Switchover"))
    FailoverGlobalClusterMessage.type = Types::FailoverGlobalClusterMessage
    FailoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    FailoverGlobalClusterResult.type = Types::FailoverGlobalClusterResult
    FailoverState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverStatus, name: "Status"))
    FailoverState.add_member(:from_db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FromDbClusterArn"))
    FailoverState.add_member(:to_db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ToDbClusterArn"))
    FailoverState.add_member(:is_data_loss_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDataLossAllowed"))
    FailoverState.type = Types::FailoverState
    FailoverStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "pending"}))
    FailoverStatus.add_member(:failing_over, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILING_OVER", traits: {"smithy.api#enumValue" => "failing-over"}))
    FailoverStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "cancelling"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member", traits: {"smithy.api#xmlName" => "Filter"}))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Value"}))
    GlobalCluster.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier"))
    GlobalCluster.add_member(:global_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalClusterResourceId"))
    GlobalCluster.add_member(:global_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalClusterArn"))
    GlobalCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    GlobalCluster.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    GlobalCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    GlobalCluster.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    GlobalCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    GlobalCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    GlobalCluster.add_member(:global_cluster_members, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterMemberList, name: "GlobalClusterMembers"))
    GlobalCluster.add_member(:failover_state, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverState, name: "FailoverState"))
    GlobalCluster.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    GlobalCluster.type = Types::GlobalCluster
    GlobalClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    GlobalClusterAlreadyExistsFault.type = Types::GlobalClusterAlreadyExistsFault
    GlobalClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "member", traits: {"smithy.api#xmlName" => "GlobalClusterMember"}))
    GlobalClusterMember.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterArn"))
    GlobalClusterMember.add_member(:readers, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadersArnList, name: "Readers"))
    GlobalClusterMember.add_member(:is_writer, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsWriter"))
    GlobalClusterMember.add_member(:synchronization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterMemberSynchronizationStatus, name: "SynchronizationStatus"))
    GlobalClusterMember.type = Types::GlobalClusterMember
    GlobalClusterMemberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterMember, name: "member", traits: {"smithy.api#xmlName" => "GlobalClusterMember"}))
    GlobalClusterMemberSynchronizationStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "connected"}))
    GlobalClusterMemberSynchronizationStatus.add_member(:pending_resync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_RESYNC", traits: {"smithy.api#enumValue" => "pending-resync"}))
    GlobalClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    GlobalClusterNotFoundFault.type = Types::GlobalClusterNotFoundFault
    GlobalClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    GlobalClusterQuotaExceededFault.type = Types::GlobalClusterQuotaExceededFault
    GlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    GlobalClustersMessage.add_member(:global_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterList, name: "GlobalClusters"))
    GlobalClustersMessage.type = Types::GlobalClustersMessage
    InstanceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InstanceQuotaExceededFault.type = Types::InstanceQuotaExceededFault
    InsufficientDBClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientDBClusterCapacityFault.type = Types::InsufficientDBClusterCapacityFault
    InsufficientDBInstanceCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientDBInstanceCapacityFault.type = Types::InsufficientDBInstanceCapacityFault
    InsufficientStorageClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientStorageClusterCapacityFault.type = Types::InsufficientStorageClusterCapacityFault
    InvalidDBClusterSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBClusterSnapshotStateFault.type = Types::InvalidDBClusterSnapshotStateFault
    InvalidDBClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBClusterStateFault.type = Types::InvalidDBClusterStateFault
    InvalidDBInstanceStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBInstanceStateFault.type = Types::InvalidDBInstanceStateFault
    InvalidDBParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBParameterGroupStateFault.type = Types::InvalidDBParameterGroupStateFault
    InvalidDBSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSecurityGroupStateFault.type = Types::InvalidDBSecurityGroupStateFault
    InvalidDBSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSnapshotStateFault.type = Types::InvalidDBSnapshotStateFault
    InvalidDBSubnetGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSubnetGroupStateFault.type = Types::InvalidDBSubnetGroupStateFault
    InvalidDBSubnetStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSubnetStateFault.type = Types::InvalidDBSubnetStateFault
    InvalidEventSubscriptionStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidEventSubscriptionStateFault.type = Types::InvalidEventSubscriptionStateFault
    InvalidGlobalClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidGlobalClusterStateFault.type = Types::InvalidGlobalClusterStateFault
    InvalidRestoreFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidRestoreFault.type = Types::InvalidRestoreFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    KMSKeyNotAccessibleFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSKeyNotAccessibleFault.type = Types::KMSKeyNotAccessibleFault
    KeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ListTagsForResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    LogTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ModifyDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterMessage.add_member(:new_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewDBClusterIdentifier"))
    ModifyDBClusterMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately"))
    ModifyDBClusterMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    ModifyDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    ModifyDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    ModifyDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    ModifyDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserPassword"))
    ModifyDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    ModifyDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ModifyDBClusterMessage.add_member(:cloudwatch_logs_export_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudwatchLogsExportConfiguration, name: "CloudwatchLogsExportConfiguration"))
    ModifyDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyDBClusterMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowMajorVersionUpgrade"))
    ModifyDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    ModifyDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    ModifyDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    ModifyDBClusterMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    ModifyDBClusterMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    ModifyDBClusterMessage.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RotateMasterUserPassword"))
    ModifyDBClusterMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    ModifyDBClusterMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    ModifyDBClusterMessage.type = Types::ModifyDBClusterMessage
    ModifyDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterParameterGroupMessage.type = Types::ModifyDBClusterParameterGroupMessage
    ModifyDBClusterParameterGroupOutput.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    ModifyDBClusterParameterGroupOutput.type = Types::ModifyDBClusterParameterGroupOutput
    ModifyDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    ModifyDBClusterResult.type = Types::ModifyDBClusterResult
    ModifyDBClusterSnapshotAttributeMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "ValuesToAdd"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "ValuesToRemove"))
    ModifyDBClusterSnapshotAttributeMessage.type = Types::ModifyDBClusterSnapshotAttributeMessage
    ModifyDBClusterSnapshotAttributeResult.add_member(:db_cluster_snapshot_attributes_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotAttributesResult, name: "DBClusterSnapshotAttributesResult"))
    ModifyDBClusterSnapshotAttributeResult.type = Types::ModifyDBClusterSnapshotAttributeResult
    ModifyDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBInstanceMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    ModifyDBInstanceMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately"))
    ModifyDBInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ModifyDBInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewDBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    ModifyDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    ModifyDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PromotionTier"))
    ModifyDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    ModifyDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    ModifyDBInstanceMessage.add_member(:certificate_rotation_restart, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CertificateRotationRestart"))
    ModifyDBInstanceMessage.type = Types::ModifyDBInstanceMessage
    ModifyDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    ModifyDBInstanceResult.type = Types::ModifyDBInstanceResult
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupDescription"))
    ModifyDBSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSubnetGroupMessage.type = Types::ModifyDBSubnetGroupMessage
    ModifyDBSubnetGroupResult.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroup, name: "DBSubnetGroup"))
    ModifyDBSubnetGroupResult.type = Types::ModifyDBSubnetGroupResult
    ModifyEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    ModifyEventSubscriptionResult.type = Types::ModifyEventSubscriptionResult
    ModifyGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyGlobalClusterMessage.add_member(:new_global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "NewGlobalClusterIdentifier"))
    ModifyGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    ModifyGlobalClusterMessage.type = Types::ModifyGlobalClusterMessage
    ModifyGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    ModifyGlobalClusterResult.type = Types::ModifyGlobalClusterResult
    NetworkTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    NetworkTypeNotSupported.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NetworkTypeNotSupported.type = Types::NetworkTypeNotSupported
    OrderableDBInstanceOption.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    OrderableDBInstanceOption.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    OrderableDBInstanceOption.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    OrderableDBInstanceOption.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    OrderableDBInstanceOption.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "AvailabilityZones"))
    OrderableDBInstanceOption.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Vpc"))
    OrderableDBInstanceOption.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    OrderableDBInstanceOption.type = Types::OrderableDBInstanceOption
    OrderableDBInstanceOptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderableDBInstanceOption, name: "member", traits: {"smithy.api#xmlName" => "OrderableDBInstanceOption"}))
    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderableDBInstanceOptionsList, name: "OrderableDBInstanceOptions"))
    OrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    OrderableDBInstanceOptionsMessage.type = Types::OrderableDBInstanceOptionsMessage
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterValue"))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    Parameter.add_member(:apply_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplyType"))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType"))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    Parameter.add_member(:apply_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyMethod, name: "ApplyMethod"))
    Parameter.type = Types::Parameter
    ParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member", traits: {"smithy.api#xmlName" => "Parameter"}))
    PendingCloudwatchLogsExports.add_member(:log_types_to_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "LogTypesToEnable"))
    PendingCloudwatchLogsExports.add_member(:log_types_to_disable, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "LogTypesToDisable"))
    PendingCloudwatchLogsExports.type = Types::PendingCloudwatchLogsExports
    PendingMaintenanceAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Action"))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AutoAppliedAfterDate"))
    PendingMaintenanceAction.add_member(:forced_apply_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ForcedApplyDate"))
    PendingMaintenanceAction.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptInStatus"))
    PendingMaintenanceAction.add_member(:current_apply_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CurrentApplyDate"))
    PendingMaintenanceAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    PendingMaintenanceAction.type = Types::PendingMaintenanceAction
    PendingMaintenanceActionDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceAction, name: "member", traits: {"smithy.api#xmlName" => "PendingMaintenanceAction"}))
    PendingMaintenanceActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePendingMaintenanceActions, name: "member", traits: {"smithy.api#xmlName" => "ResourcePendingMaintenanceActions"}))
    PendingMaintenanceActionsMessage.add_member(:pending_maintenance_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceActions, name: "PendingMaintenanceActions"))
    PendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    PendingMaintenanceActionsMessage.type = Types::PendingMaintenanceActionsMessage
    PendingModifiedValues.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    PendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    PendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserPassword"))
    PendingModifiedValues.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    PendingModifiedValues.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    PendingModifiedValues.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    PendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    PendingModifiedValues.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    PendingModifiedValues.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    PendingModifiedValues.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    PendingModifiedValues.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    PendingModifiedValues.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    PendingModifiedValues.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingCloudwatchLogsExports, name: "PendingCloudwatchLogsExports"))
    PendingModifiedValues.type = Types::PendingModifiedValues
    ReadReplicaIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "ReadReplicaIdentifier"}))
    ReadersArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    RebootDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBInstanceMessage.add_member(:force_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ForceFailover"))
    RebootDBInstanceMessage.type = Types::RebootDBInstanceMessage
    RebootDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    RebootDBInstanceResult.type = Types::RebootDBInstanceResult
    RemoveFromGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.type = Types::RemoveFromGlobalClusterMessage
    RemoveFromGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    RemoveFromGlobalClusterResult.type = Types::RemoveFromGlobalClusterResult
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.type = Types::RemoveSourceIdentifierFromSubscriptionMessage
    RemoveSourceIdentifierFromSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    RemoveSourceIdentifierFromSubscriptionResult.type = Types::RemoveSourceIdentifierFromSubscriptionResult
    RemoveTagsFromResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    ResetDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetDBClusterParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ResetAllParameters"))
    ResetDBClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    ResetDBClusterParameterGroupMessage.type = Types::ResetDBClusterParameterGroupMessage
    ResetDBClusterParameterGroupOutput.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    ResetDBClusterParameterGroupOutput.type = Types::ResetDBClusterParameterGroupOutput
    ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePendingMaintenanceActions.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceActionDetails, name: "PendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceActions.type = Types::ResourcePendingMaintenanceActions
    RestoreDBClusterFromSnapshotMessage.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    RestoreDBClusterFromSnapshotMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreDBClusterFromSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreDBClusterFromSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterFromSnapshotMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterFromSnapshotMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RestoreDBClusterFromSnapshotMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    RestoreDBClusterFromSnapshotMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    RestoreDBClusterFromSnapshotMessage.type = Types::RestoreDBClusterFromSnapshotMessage
    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    RestoreDBClusterFromSnapshotResult.type = Types::RestoreDBClusterFromSnapshotResult
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RestoreType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RestoreToTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseLatestRestorableTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreDBClusterToPointInTimeMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreDBClusterToPointInTimeMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterToPointInTimeMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    RestoreDBClusterToPointInTimeMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterToPointInTimeMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    RestoreDBClusterToPointInTimeMessage.type = Types::RestoreDBClusterToPointInTimeMessage
    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    RestoreDBClusterToPointInTimeResult.type = Types::RestoreDBClusterToPointInTimeResult
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SNSTopicArnNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSTopicArnNotFoundFault.type = Types::SNSTopicArnNotFoundFault
    ServerlessV2FeaturesSupport.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinCapacity"))
    ServerlessV2FeaturesSupport.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxCapacity"))
    ServerlessV2FeaturesSupport.type = Types::ServerlessV2FeaturesSupport
    ServerlessV2ScalingConfiguration.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinCapacity"))
    ServerlessV2ScalingConfiguration.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxCapacity"))
    ServerlessV2ScalingConfiguration.type = Types::ServerlessV2ScalingConfiguration
    ServerlessV2ScalingConfigurationInfo.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinCapacity"))
    ServerlessV2ScalingConfigurationInfo.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxCapacity"))
    ServerlessV2ScalingConfigurationInfo.type = Types::ServerlessV2ScalingConfigurationInfo
    SharedSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SharedSnapshotQuotaExceededFault.type = Types::SharedSnapshotQuotaExceededFault
    SnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SourceId"}))
    SourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SourceNotFoundFault.type = Types::SourceNotFoundFault
    SourceType.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_instance", traits: {"smithy.api#enumValue" => "db-instance"}))
    SourceType.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_parameter_group", traits: {"smithy.api#enumValue" => "db-parameter-group"}))
    SourceType.add_member(:db_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_security_group", traits: {"smithy.api#enumValue" => "db-security-group"}))
    SourceType.add_member(:db_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_snapshot", traits: {"smithy.api#enumValue" => "db-snapshot"}))
    SourceType.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_cluster", traits: {"smithy.api#enumValue" => "db-cluster"}))
    SourceType.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_cluster_snapshot", traits: {"smithy.api#enumValue" => "db-cluster-snapshot"}))
    StartDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBClusterMessage.type = Types::StartDBClusterMessage
    StartDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    StartDBClusterResult.type = Types::StartDBClusterResult
    StopDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBClusterMessage.type = Types::StopDBClusterMessage
    StopDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    StopDBClusterResult.type = Types::StopDBClusterResult
    StorageQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    StorageQuotaExceededFault.type = Types::StorageQuotaExceededFault
    StorageTypeNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    StorageTypeNotSupportedFault.type = Types::StorageTypeNotSupportedFault
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetStatus"))
    Subnet.type = Types::Subnet
    SubnetAlreadyInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetAlreadyInUse.type = Types::SubnetAlreadyInUse
    SubnetIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SubnetIdentifier"}))
    SubnetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnet, name: "member", traits: {"smithy.api#xmlName" => "Subnet"}))
    SubscriptionAlreadyExistFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionAlreadyExistFault.type = Types::SubscriptionAlreadyExistFault
    SubscriptionCategoryNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionCategoryNotFoundFault.type = Types::SubscriptionCategoryNotFoundFault
    SubscriptionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionNotFoundFault.type = Types::SubscriptionNotFoundFault
    SwitchoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterIdentifier, name: "TargetDbClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.type = Types::SwitchoverGlobalClusterMessage
    SwitchoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    SwitchoverGlobalClusterResult.type = Types::SwitchoverGlobalClusterResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"}))
    TagListMessage.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    TagListMessage.type = Types::TagListMessage
    UpgradeTarget.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    UpgradeTarget.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    UpgradeTarget.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpgradeTarget.add_member(:auto_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoUpgrade"))
    UpgradeTarget.add_member(:is_major_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsMajorVersionUpgrade"))
    UpgradeTarget.type = Types::UpgradeTarget
    ValidUpgradeTargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpgradeTarget, name: "member", traits: {"smithy.api#xmlName" => "UpgradeTarget"}))
    VpcSecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"}))
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembership, name: "member", traits: {"smithy.api#xmlName" => "VpcSecurityGroupMembership"}))

    AmazonRDSv19 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.docdb#AmazonRDSv19"
      service.name = "AmazonRDSv19"
      service.version = "2014-10-31"
      service.traits = {"aws.api#service" => {"sdkId" => "DocDB", "arnNamespace" => "rds", "cloudFormationName" => "DocDB", "cloudTrailEventSource" => "docdb.amazonaws.com", "endpointPrefix" => "rds"}, "aws.auth#sigv4" => {"name" => "rds"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon DocumentDB with MongoDB compatibility", "smithy.api#xmlNamespace" => {"uri" => "http://rds.amazonaws.com/doc/2014-10-31/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://rds-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rds.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://rds-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rds.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rds.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:add_source_identifier_to_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#AddSourceIdentifierToSubscription"
        operation.name = "AddSourceIdentifierToSubscription"
        operation.input = AddSourceIdentifierToSubscriptionMessage
        operation.output = AddSourceIdentifierToSubscriptionResult
        operation.errors << SourceNotFoundFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = AddTagsToResourceMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:apply_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = ApplyPendingMaintenanceActionMessage
        operation.output = ApplyPendingMaintenanceActionResult
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CopyDBClusterParameterGroup"
        operation.name = "CopyDBClusterParameterGroup"
        operation.input = CopyDBClusterParameterGroupMessage
        operation.output = CopyDBClusterParameterGroupResult
        operation.errors << DBParameterGroupAlreadyExistsFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBParameterGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CopyDBClusterSnapshot"
        operation.name = "CopyDBClusterSnapshot"
        operation.input = CopyDBClusterSnapshotMessage
        operation.output = CopyDBClusterSnapshotResult
        operation.errors << DBClusterSnapshotAlreadyExistsFault
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBCluster"
        operation.name = "CreateDBCluster"
        operation.input = CreateDBClusterMessage
        operation.output = CreateDBClusterResult
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterParameterGroupNotFoundFault
        operation.errors << DBClusterQuotaExceededFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InsufficientStorageClusterCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBSubnetGroupStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << StorageQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBClusterParameterGroup"
        operation.name = "CreateDBClusterParameterGroup"
        operation.input = CreateDBClusterParameterGroupMessage
        operation.output = CreateDBClusterParameterGroupResult
        operation.errors << DBParameterGroupAlreadyExistsFault
        operation.errors << DBParameterGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBClusterSnapshot"
        operation.name = "CreateDBClusterSnapshot"
        operation.input = CreateDBClusterSnapshotMessage
        operation.output = CreateDBClusterSnapshotResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterSnapshotAlreadyExistsFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBInstance"
        operation.name = "CreateDBInstance"
        operation.input = CreateDBInstanceMessage
        operation.output = CreateDBInstanceResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << InstanceQuotaExceededFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateDBSubnetGroup"
        operation.name = "CreateDBSubnetGroup"
        operation.input = CreateDBSubnetGroupMessage
        operation.output = CreateDBSubnetGroupResult
        operation.errors << DBSubnetGroupAlreadyExistsFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupQuotaExceededFault
        operation.errors << DBSubnetQuotaExceededFault
        operation.errors << InvalidSubnet
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = CreateEventSubscriptionMessage
        operation.output = CreateEventSubscriptionResult
        operation.errors << EventSubscriptionQuotaExceededFault
        operation.errors << SNSInvalidTopicFault
        operation.errors << SNSNoAuthorizationFault
        operation.errors << SNSTopicArnNotFoundFault
        operation.errors << SourceNotFoundFault
        operation.errors << SubscriptionAlreadyExistFault
        operation.errors << SubscriptionCategoryNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#CreateGlobalCluster"
        operation.name = "CreateGlobalCluster"
        operation.input = CreateGlobalClusterMessage
        operation.output = CreateGlobalClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << GlobalClusterAlreadyExistsFault
        operation.errors << GlobalClusterQuotaExceededFault
        operation.errors << InvalidDBClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBCluster"
        operation.name = "DeleteDBCluster"
        operation.input = DeleteDBClusterMessage
        operation.output = DeleteDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterSnapshotAlreadyExistsFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBClusterParameterGroup"
        operation.name = "DeleteDBClusterParameterGroup"
        operation.input = DeleteDBClusterParameterGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBClusterSnapshot"
        operation.name = "DeleteDBClusterSnapshot"
        operation.input = DeleteDBClusterSnapshotMessage
        operation.output = DeleteDBClusterSnapshotResult
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBInstance"
        operation.name = "DeleteDBInstance"
        operation.input = DeleteDBInstanceMessage
        operation.output = DeleteDBInstanceResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSnapshotAlreadyExistsFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteDBSubnetGroup"
        operation.name = "DeleteDBSubnetGroup"
        operation.input = DeleteDBSubnetGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << InvalidDBSubnetGroupStateFault
        operation.errors << InvalidDBSubnetStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = DeleteEventSubscriptionMessage
        operation.output = DeleteEventSubscriptionResult
        operation.errors << InvalidEventSubscriptionStateFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DeleteGlobalCluster"
        operation.name = "DeleteGlobalCluster"
        operation.input = DeleteGlobalClusterMessage
        operation.output = DeleteGlobalClusterResult
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:describe_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeCertificates"
        operation.name = "DescribeCertificates"
        operation.input = DescribeCertificatesMessage
        operation.output = CertificateMessage
        operation.errors << CertificateNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCertificates.new
      end)
      service.add_operation(:describe_db_cluster_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusterParameterGroups"
        operation.name = "DescribeDBClusterParameterGroups"
        operation.input = DescribeDBClusterParameterGroupsMessage
        operation.output = DBClusterParameterGroupsMessage
        operation.errors << DBParameterGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameterGroups.new
      end)
      service.add_operation(:describe_db_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusterParameters"
        operation.name = "DescribeDBClusterParameters"
        operation.input = DescribeDBClusterParametersMessage
        operation.output = DescribeDBClusterParametersOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameters.new
      end)
      service.add_operation(:describe_db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusterSnapshotAttributes"
        operation.name = "DescribeDBClusterSnapshotAttributes"
        operation.input = DescribeDBClusterSnapshotAttributesMessage
        operation.output = DescribeDBClusterSnapshotAttributesResult
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_db_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusterSnapshots"
        operation.name = "DescribeDBClusterSnapshots"
        operation.input = DescribeDBClusterSnapshotsMessage
        operation.output = DBClusterSnapshotMessage
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterSnapshots.new
      end)
      service.add_operation(:describe_db_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBClusters"
        operation.name = "DescribeDBClusters"
        operation.input = DescribeDBClustersMessage
        operation.output = DBClusterMessage
        operation.errors << DBClusterNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusters.new
      end)
      service.add_operation(:describe_db_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBEngineVersions"
        operation.name = "DescribeDBEngineVersions"
        operation.input = DescribeDBEngineVersionsMessage
        operation.output = DBEngineVersionMessage
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeDBEngineVersionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBEngineVersions.new
      end)
      service.add_operation(:describe_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBInstances"
        operation.name = "DescribeDBInstances"
        operation.input = DescribeDBInstancesMessage
        operation.output = DBInstanceMessage
        operation.errors << DBInstanceNotFoundFault
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeDBInstances.new
      end)
      service.add_operation(:describe_db_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeDBSubnetGroups"
        operation.name = "DescribeDBSubnetGroups"
        operation.input = DescribeDBSubnetGroupsMessage
        operation.output = DBSubnetGroupMessage
        operation.errors << DBSubnetGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSubnetGroups.new
      end)
      service.add_operation(:describe_engine_default_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeEngineDefaultClusterParameters"
        operation.name = "DescribeEngineDefaultClusterParameters"
        operation.input = DescribeEngineDefaultClusterParametersMessage
        operation.output = DescribeEngineDefaultClusterParametersResult
        operation.traits = {}
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = DescribeEventCategoriesMessage
        operation.output = EventCategoriesMessage
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = DescribeEventSubscriptionsMessage
        operation.output = EventSubscriptionsMessage
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = DescribeEventsMessage
        operation.output = EventsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_global_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeGlobalClusters"
        operation.name = "DescribeGlobalClusters"
        operation.input = DescribeGlobalClustersMessage
        operation.output = GlobalClustersMessage
        operation.errors << GlobalClusterNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGlobalClusters.new
      end)
      service.add_operation(:describe_orderable_db_instance_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribeOrderableDBInstanceOptions"
        operation.name = "DescribeOrderableDBInstanceOptions"
        operation.input = DescribeOrderableDBInstanceOptionsMessage
        operation.output = OrderableDBInstanceOptionsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableDBInstanceOptions.new
      end)
      service.add_operation(:describe_pending_maintenance_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#DescribePendingMaintenanceActions"
        operation.name = "DescribePendingMaintenanceActions"
        operation.input = DescribePendingMaintenanceActionsMessage
        operation.output = PendingMaintenanceActionsMessage
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePendingMaintenanceActions.new
      end)
      service.add_operation(:failover_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#FailoverDBCluster"
        operation.name = "FailoverDBCluster"
        operation.input = FailoverDBClusterMessage
        operation.output = FailoverDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:failover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#FailoverGlobalCluster"
        operation.name = "FailoverGlobalCluster"
        operation.input = FailoverGlobalClusterMessage
        operation.output = FailoverGlobalClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceMessage
        operation.output = TagListMessage
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBCluster"
        operation.name = "ModifyDBCluster"
        operation.input = ModifyDBClusterMessage
        operation.output = ModifyDBClusterResult
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterParameterGroupNotFoundFault
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBSecurityGroupStateFault
        operation.errors << InvalidDBSubnetGroupStateFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << StorageQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBClusterParameterGroup"
        operation.name = "ModifyDBClusterParameterGroup"
        operation.input = ModifyDBClusterParameterGroupMessage
        operation.output = ModifyDBClusterParameterGroupOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_snapshot_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBClusterSnapshotAttribute"
        operation.name = "ModifyDBClusterSnapshotAttribute"
        operation.input = ModifyDBClusterSnapshotAttributeMessage
        operation.output = ModifyDBClusterSnapshotAttributeResult
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << SharedSnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBInstance"
        operation.name = "ModifyDBInstance"
        operation.input = ModifyDBInstanceMessage
        operation.output = ModifyDBInstanceResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << CertificateNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << DBUpgradeDependencyFailureFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBSecurityGroupStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyDBSubnetGroup"
        operation.name = "ModifyDBSubnetGroup"
        operation.input = ModifyDBSubnetGroupMessage
        operation.output = ModifyDBSubnetGroupResult
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DBSubnetQuotaExceededFault
        operation.errors << InvalidSubnet
        operation.errors << SubnetAlreadyInUse
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = ModifyEventSubscriptionMessage
        operation.output = ModifyEventSubscriptionResult
        operation.errors << EventSubscriptionQuotaExceededFault
        operation.errors << SNSInvalidTopicFault
        operation.errors << SNSNoAuthorizationFault
        operation.errors << SNSTopicArnNotFoundFault
        operation.errors << SubscriptionCategoryNotFoundFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ModifyGlobalCluster"
        operation.name = "ModifyGlobalCluster"
        operation.input = ModifyGlobalClusterMessage
        operation.output = ModifyGlobalClusterResult
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RebootDBInstance"
        operation.name = "RebootDBInstance"
        operation.input = RebootDBInstanceMessage
        operation.output = RebootDBInstanceResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:remove_from_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RemoveFromGlobalCluster"
        operation.name = "RemoveFromGlobalCluster"
        operation.input = RemoveFromGlobalClusterMessage
        operation.output = RemoveFromGlobalClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:remove_source_identifier_from_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RemoveSourceIdentifierFromSubscription"
        operation.name = "RemoveSourceIdentifierFromSubscription"
        operation.input = RemoveSourceIdentifierFromSubscriptionMessage
        operation.output = RemoveSourceIdentifierFromSubscriptionResult
        operation.errors << SourceNotFoundFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = RemoveTagsFromResourceMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:reset_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#ResetDBClusterParameterGroup"
        operation.name = "ResetDBClusterParameterGroup"
        operation.input = ResetDBClusterParameterGroupMessage
        operation.output = ResetDBClusterParameterGroupOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RestoreDBClusterFromSnapshot"
        operation.name = "RestoreDBClusterFromSnapshot"
        operation.input = RestoreDBClusterFromSnapshotMessage
        operation.output = RestoreDBClusterFromSnapshotResult
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterQuotaExceededFault
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << InsufficientDBClusterCapacityFault
        operation.errors << InsufficientStorageClusterCapacityFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.errors << InvalidRestoreFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << StorageQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#RestoreDBClusterToPointInTime"
        operation.name = "RestoreDBClusterToPointInTime"
        operation.input = RestoreDBClusterToPointInTimeMessage
        operation.output = RestoreDBClusterToPointInTimeResult
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterQuotaExceededFault
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << InsufficientDBClusterCapacityFault
        operation.errors << InsufficientStorageClusterCapacityFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.errors << InvalidRestoreFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << StorageQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:start_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#StartDBCluster"
        operation.name = "StartDBCluster"
        operation.input = StartDBClusterMessage
        operation.output = StartDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:stop_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#StopDBCluster"
        operation.name = "StopDBCluster"
        operation.input = StopDBClusterMessage
        operation.output = StopDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:switchover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdb#SwitchoverGlobalCluster"
        operation.name = "SwitchoverGlobalCluster"
        operation.input = SwitchoverGlobalClusterMessage
        operation.output = SwitchoverGlobalClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidGlobalClusterStateFault
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
