# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DatabaseMigrationService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedFault = Shapes::StructureShape.new(name: 'AccessDeniedFault')
    AccountQuota = Shapes::StructureShape.new(name: 'AccountQuota')
    AccountQuotaList = Shapes::ListShape.new(name: 'AccountQuotaList')
    AddTagsToResourceMessage = Shapes::StructureShape.new(name: 'AddTagsToResourceMessage')
    AddTagsToResourceResponse = Shapes::StructureShape.new(name: 'AddTagsToResourceResponse')
    AuthMechanismValue = Shapes::StringShape.new(name: 'AuthMechanismValue')
    AuthTypeValue = Shapes::StringShape.new(name: 'AuthTypeValue')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateList = Shapes::ListShape.new(name: 'CertificateList')
    CertificateWallet = Shapes::BlobShape.new(name: 'CertificateWallet')
    CompressionTypeValue = Shapes::StringShape.new(name: 'CompressionTypeValue')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    CreateEndpointMessage = Shapes::StructureShape.new(name: 'CreateEndpointMessage')
    CreateEndpointResponse = Shapes::StructureShape.new(name: 'CreateEndpointResponse')
    CreateEventSubscriptionMessage = Shapes::StructureShape.new(name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateEventSubscriptionResponse')
    CreateReplicationInstanceMessage = Shapes::StructureShape.new(name: 'CreateReplicationInstanceMessage')
    CreateReplicationInstanceResponse = Shapes::StructureShape.new(name: 'CreateReplicationInstanceResponse')
    CreateReplicationSubnetGroupMessage = Shapes::StructureShape.new(name: 'CreateReplicationSubnetGroupMessage')
    CreateReplicationSubnetGroupResponse = Shapes::StructureShape.new(name: 'CreateReplicationSubnetGroupResponse')
    CreateReplicationTaskMessage = Shapes::StructureShape.new(name: 'CreateReplicationTaskMessage')
    CreateReplicationTaskResponse = Shapes::StructureShape.new(name: 'CreateReplicationTaskResponse')
    DeleteCertificateMessage = Shapes::StructureShape.new(name: 'DeleteCertificateMessage')
    DeleteCertificateResponse = Shapes::StructureShape.new(name: 'DeleteCertificateResponse')
    DeleteEndpointMessage = Shapes::StructureShape.new(name: 'DeleteEndpointMessage')
    DeleteEndpointResponse = Shapes::StructureShape.new(name: 'DeleteEndpointResponse')
    DeleteEventSubscriptionMessage = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionMessage')
    DeleteEventSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionResponse')
    DeleteReplicationInstanceMessage = Shapes::StructureShape.new(name: 'DeleteReplicationInstanceMessage')
    DeleteReplicationInstanceResponse = Shapes::StructureShape.new(name: 'DeleteReplicationInstanceResponse')
    DeleteReplicationSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteReplicationSubnetGroupMessage')
    DeleteReplicationSubnetGroupResponse = Shapes::StructureShape.new(name: 'DeleteReplicationSubnetGroupResponse')
    DeleteReplicationTaskMessage = Shapes::StructureShape.new(name: 'DeleteReplicationTaskMessage')
    DeleteReplicationTaskResponse = Shapes::StructureShape.new(name: 'DeleteReplicationTaskResponse')
    DescribeAccountAttributesMessage = Shapes::StructureShape.new(name: 'DescribeAccountAttributesMessage')
    DescribeAccountAttributesResponse = Shapes::StructureShape.new(name: 'DescribeAccountAttributesResponse')
    DescribeCertificatesMessage = Shapes::StructureShape.new(name: 'DescribeCertificatesMessage')
    DescribeCertificatesResponse = Shapes::StructureShape.new(name: 'DescribeCertificatesResponse')
    DescribeConnectionsMessage = Shapes::StructureShape.new(name: 'DescribeConnectionsMessage')
    DescribeConnectionsResponse = Shapes::StructureShape.new(name: 'DescribeConnectionsResponse')
    DescribeEndpointTypesMessage = Shapes::StructureShape.new(name: 'DescribeEndpointTypesMessage')
    DescribeEndpointTypesResponse = Shapes::StructureShape.new(name: 'DescribeEndpointTypesResponse')
    DescribeEndpointsMessage = Shapes::StructureShape.new(name: 'DescribeEndpointsMessage')
    DescribeEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointsResponse')
    DescribeEventCategoriesMessage = Shapes::StructureShape.new(name: 'DescribeEventCategoriesMessage')
    DescribeEventCategoriesResponse = Shapes::StructureShape.new(name: 'DescribeEventCategoriesResponse')
    DescribeEventSubscriptionsMessage = Shapes::StructureShape.new(name: 'DescribeEventSubscriptionsMessage')
    DescribeEventSubscriptionsResponse = Shapes::StructureShape.new(name: 'DescribeEventSubscriptionsResponse')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeEventsResponse = Shapes::StructureShape.new(name: 'DescribeEventsResponse')
    DescribeOrderableReplicationInstancesMessage = Shapes::StructureShape.new(name: 'DescribeOrderableReplicationInstancesMessage')
    DescribeOrderableReplicationInstancesResponse = Shapes::StructureShape.new(name: 'DescribeOrderableReplicationInstancesResponse')
    DescribeRefreshSchemasStatusMessage = Shapes::StructureShape.new(name: 'DescribeRefreshSchemasStatusMessage')
    DescribeRefreshSchemasStatusResponse = Shapes::StructureShape.new(name: 'DescribeRefreshSchemasStatusResponse')
    DescribeReplicationInstanceTaskLogsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationInstanceTaskLogsMessage')
    DescribeReplicationInstanceTaskLogsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationInstanceTaskLogsResponse')
    DescribeReplicationInstancesMessage = Shapes::StructureShape.new(name: 'DescribeReplicationInstancesMessage')
    DescribeReplicationInstancesResponse = Shapes::StructureShape.new(name: 'DescribeReplicationInstancesResponse')
    DescribeReplicationSubnetGroupsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationSubnetGroupsMessage')
    DescribeReplicationSubnetGroupsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationSubnetGroupsResponse')
    DescribeReplicationTaskAssessmentResultsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationTaskAssessmentResultsMessage')
    DescribeReplicationTaskAssessmentResultsResponse = Shapes::StructureShape.new(name: 'DescribeReplicationTaskAssessmentResultsResponse')
    DescribeReplicationTasksMessage = Shapes::StructureShape.new(name: 'DescribeReplicationTasksMessage')
    DescribeReplicationTasksResponse = Shapes::StructureShape.new(name: 'DescribeReplicationTasksResponse')
    DescribeSchemasMessage = Shapes::StructureShape.new(name: 'DescribeSchemasMessage')
    DescribeSchemasResponse = Shapes::StructureShape.new(name: 'DescribeSchemasResponse')
    DescribeTableStatisticsMessage = Shapes::StructureShape.new(name: 'DescribeTableStatisticsMessage')
    DescribeTableStatisticsResponse = Shapes::StructureShape.new(name: 'DescribeTableStatisticsResponse')
    DmsSslModeValue = Shapes::StringShape.new(name: 'DmsSslModeValue')
    DmsTransferSettings = Shapes::StructureShape.new(name: 'DmsTransferSettings')
    DynamoDbSettings = Shapes::StructureShape.new(name: 'DynamoDbSettings')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointList = Shapes::ListShape.new(name: 'EndpointList')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategoriesList = Shapes::ListShape.new(name: 'EventCategoriesList')
    EventCategoryGroup = Shapes::StructureShape.new(name: 'EventCategoryGroup')
    EventCategoryGroupList = Shapes::ListShape.new(name: 'EventCategoryGroupList')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventSubscription = Shapes::StructureShape.new(name: 'EventSubscription')
    EventSubscriptionsList = Shapes::ListShape.new(name: 'EventSubscriptionsList')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    ImportCertificateMessage = Shapes::StructureShape.new(name: 'ImportCertificateMessage')
    ImportCertificateResponse = Shapes::StructureShape.new(name: 'ImportCertificateResponse')
    InsufficientResourceCapacityFault = Shapes::StructureShape.new(name: 'InsufficientResourceCapacityFault')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidCertificateFault = Shapes::StructureShape.new(name: 'InvalidCertificateFault')
    InvalidResourceStateFault = Shapes::StructureShape.new(name: 'InvalidResourceStateFault')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    KMSKeyNotAccessibleFault = Shapes::StructureShape.new(name: 'KMSKeyNotAccessibleFault')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    ListTagsForResourceMessage = Shapes::StructureShape.new(name: 'ListTagsForResourceMessage')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MigrationTypeValue = Shapes::StringShape.new(name: 'MigrationTypeValue')
    ModifyEndpointMessage = Shapes::StructureShape.new(name: 'ModifyEndpointMessage')
    ModifyEndpointResponse = Shapes::StructureShape.new(name: 'ModifyEndpointResponse')
    ModifyEventSubscriptionMessage = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResponse = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionResponse')
    ModifyReplicationInstanceMessage = Shapes::StructureShape.new(name: 'ModifyReplicationInstanceMessage')
    ModifyReplicationInstanceResponse = Shapes::StructureShape.new(name: 'ModifyReplicationInstanceResponse')
    ModifyReplicationSubnetGroupMessage = Shapes::StructureShape.new(name: 'ModifyReplicationSubnetGroupMessage')
    ModifyReplicationSubnetGroupResponse = Shapes::StructureShape.new(name: 'ModifyReplicationSubnetGroupResponse')
    ModifyReplicationTaskMessage = Shapes::StructureShape.new(name: 'ModifyReplicationTaskMessage')
    ModifyReplicationTaskResponse = Shapes::StructureShape.new(name: 'ModifyReplicationTaskResponse')
    MongoDbSettings = Shapes::StructureShape.new(name: 'MongoDbSettings')
    NestingLevelValue = Shapes::StringShape.new(name: 'NestingLevelValue')
    OrderableReplicationInstance = Shapes::StructureShape.new(name: 'OrderableReplicationInstance')
    OrderableReplicationInstanceList = Shapes::ListShape.new(name: 'OrderableReplicationInstanceList')
    RebootReplicationInstanceMessage = Shapes::StructureShape.new(name: 'RebootReplicationInstanceMessage')
    RebootReplicationInstanceResponse = Shapes::StructureShape.new(name: 'RebootReplicationInstanceResponse')
    RefreshSchemasMessage = Shapes::StructureShape.new(name: 'RefreshSchemasMessage')
    RefreshSchemasResponse = Shapes::StructureShape.new(name: 'RefreshSchemasResponse')
    RefreshSchemasStatus = Shapes::StructureShape.new(name: 'RefreshSchemasStatus')
    RefreshSchemasStatusTypeValue = Shapes::StringShape.new(name: 'RefreshSchemasStatusTypeValue')
    ReloadOptionValue = Shapes::StringShape.new(name: 'ReloadOptionValue')
    ReloadTablesMessage = Shapes::StructureShape.new(name: 'ReloadTablesMessage')
    ReloadTablesResponse = Shapes::StructureShape.new(name: 'ReloadTablesResponse')
    RemoveTagsFromResourceMessage = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceMessage')
    RemoveTagsFromResourceResponse = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceResponse')
    ReplicationEndpointTypeValue = Shapes::StringShape.new(name: 'ReplicationEndpointTypeValue')
    ReplicationInstance = Shapes::StructureShape.new(name: 'ReplicationInstance')
    ReplicationInstanceList = Shapes::ListShape.new(name: 'ReplicationInstanceList')
    ReplicationInstancePrivateIpAddressList = Shapes::ListShape.new(name: 'ReplicationInstancePrivateIpAddressList')
    ReplicationInstancePublicIpAddressList = Shapes::ListShape.new(name: 'ReplicationInstancePublicIpAddressList')
    ReplicationInstanceTaskLog = Shapes::StructureShape.new(name: 'ReplicationInstanceTaskLog')
    ReplicationInstanceTaskLogsList = Shapes::ListShape.new(name: 'ReplicationInstanceTaskLogsList')
    ReplicationPendingModifiedValues = Shapes::StructureShape.new(name: 'ReplicationPendingModifiedValues')
    ReplicationSubnetGroup = Shapes::StructureShape.new(name: 'ReplicationSubnetGroup')
    ReplicationSubnetGroupDoesNotCoverEnoughAZs = Shapes::StructureShape.new(name: 'ReplicationSubnetGroupDoesNotCoverEnoughAZs')
    ReplicationSubnetGroups = Shapes::ListShape.new(name: 'ReplicationSubnetGroups')
    ReplicationTask = Shapes::StructureShape.new(name: 'ReplicationTask')
    ReplicationTaskAssessmentResult = Shapes::StructureShape.new(name: 'ReplicationTaskAssessmentResult')
    ReplicationTaskAssessmentResultList = Shapes::ListShape.new(name: 'ReplicationTaskAssessmentResultList')
    ReplicationTaskList = Shapes::ListShape.new(name: 'ReplicationTaskList')
    ReplicationTaskStats = Shapes::StructureShape.new(name: 'ReplicationTaskStats')
    ResourceAlreadyExistsFault = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsFault')
    ResourceNotFoundFault = Shapes::StructureShape.new(name: 'ResourceNotFoundFault')
    ResourceQuotaExceededFault = Shapes::StructureShape.new(name: 'ResourceQuotaExceededFault')
    S3Settings = Shapes::StructureShape.new(name: 'S3Settings')
    SNSInvalidTopicFault = Shapes::StructureShape.new(name: 'SNSInvalidTopicFault')
    SNSNoAuthorizationFault = Shapes::StructureShape.new(name: 'SNSNoAuthorizationFault')
    SchemaList = Shapes::ListShape.new(name: 'SchemaList')
    SecretString = Shapes::StringShape.new(name: 'SecretString')
    SourceIdsList = Shapes::ListShape.new(name: 'SourceIdsList')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartReplicationTaskAssessmentMessage = Shapes::StructureShape.new(name: 'StartReplicationTaskAssessmentMessage')
    StartReplicationTaskAssessmentResponse = Shapes::StructureShape.new(name: 'StartReplicationTaskAssessmentResponse')
    StartReplicationTaskMessage = Shapes::StructureShape.new(name: 'StartReplicationTaskMessage')
    StartReplicationTaskResponse = Shapes::StructureShape.new(name: 'StartReplicationTaskResponse')
    StartReplicationTaskTypeValue = Shapes::StringShape.new(name: 'StartReplicationTaskTypeValue')
    StopReplicationTaskMessage = Shapes::StructureShape.new(name: 'StopReplicationTaskMessage')
    StopReplicationTaskResponse = Shapes::StructureShape.new(name: 'StopReplicationTaskResponse')
    StorageQuotaExceededFault = Shapes::StructureShape.new(name: 'StorageQuotaExceededFault')
    String = Shapes::StringShape.new(name: 'String')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetAlreadyInUse = Shapes::StructureShape.new(name: 'SubnetAlreadyInUse')
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    SupportedEndpointType = Shapes::StructureShape.new(name: 'SupportedEndpointType')
    SupportedEndpointTypeList = Shapes::ListShape.new(name: 'SupportedEndpointTypeList')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    TableListToReload = Shapes::ListShape.new(name: 'TableListToReload')
    TableStatistics = Shapes::StructureShape.new(name: 'TableStatistics')
    TableStatisticsList = Shapes::ListShape.new(name: 'TableStatisticsList')
    TableToReload = Shapes::StructureShape.new(name: 'TableToReload')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TestConnectionMessage = Shapes::StructureShape.new(name: 'TestConnectionMessage')
    TestConnectionResponse = Shapes::StructureShape.new(name: 'TestConnectionResponse')
    UpgradeDependencyFailureFault = Shapes::StructureShape.new(name: 'UpgradeDependencyFailureFault')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')

    AccountQuota.add_member(:account_quota_name, Shapes::ShapeRef.new(shape: String, location_name: "AccountQuotaName"))
    AccountQuota.add_member(:used, Shapes::ShapeRef.new(shape: Long, location_name: "Used"))
    AccountQuota.add_member(:max, Shapes::ShapeRef.new(shape: Long, location_name: "Max"))
    AccountQuota.struct_class = Types::AccountQuota

    AccountQuotaList.member = Shapes::ShapeRef.new(shape: AccountQuota)

    AddTagsToResourceMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    AddTagsToResourceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToResourceMessage.struct_class = Types::AddTagsToResourceMessage

    AddTagsToResourceResponse.struct_class = Types::AddTagsToResourceResponse

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    Certificate.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    Certificate.add_member(:certificate_creation_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CertificateCreationDate"))
    Certificate.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: String, location_name: "CertificatePem"))
    Certificate.add_member(:certificate_wallet, Shapes::ShapeRef.new(shape: CertificateWallet, location_name: "CertificateWallet"))
    Certificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    Certificate.add_member(:certificate_owner, Shapes::ShapeRef.new(shape: String, location_name: "CertificateOwner"))
    Certificate.add_member(:valid_from_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidFromDate"))
    Certificate.add_member(:valid_to_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidToDate"))
    Certificate.add_member(:signing_algorithm, Shapes::ShapeRef.new(shape: String, location_name: "SigningAlgorithm"))
    Certificate.add_member(:key_length, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "KeyLength"))
    Certificate.struct_class = Types::Certificate

    CertificateList.member = Shapes::ShapeRef.new(shape: Certificate)

    Connection.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    Connection.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    Connection.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Connection.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    Connection.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    Connection.add_member(:replication_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    Connection.struct_class = Types::Connection

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    CreateEndpointMessage.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointIdentifier"))
    CreateEndpointMessage.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, required: true, location_name: "EndpointType"))
    CreateEndpointMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EngineName"))
    CreateEndpointMessage.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    CreateEndpointMessage.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    CreateEndpointMessage.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    CreateEndpointMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateEndpointMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    CreateEndpointMessage.add_member(:extra_connection_attributes, Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    CreateEndpointMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateEndpointMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEndpointMessage.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    CreateEndpointMessage.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    CreateEndpointMessage.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    CreateEndpointMessage.add_member(:external_table_definition, Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    CreateEndpointMessage.add_member(:dynamo_db_settings, Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    CreateEndpointMessage.add_member(:s3_settings, Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    CreateEndpointMessage.add_member(:dms_transfer_settings, Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    CreateEndpointMessage.add_member(:mongo_db_settings, Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    CreateEndpointMessage.struct_class = Types::CreateEndpointMessage

    CreateEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    CreateEndpointResponse.struct_class = Types::CreateEndpointResponse

    CreateEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnsTopicArn"))
    CreateEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:source_ids, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEventSubscriptionMessage.struct_class = Types::CreateEventSubscriptionMessage

    CreateEventSubscriptionResponse.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    CreateEventSubscriptionResponse.struct_class = Types::CreateEventSubscriptionResponse

    CreateReplicationInstanceMessage.add_member(:replication_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceIdentifier"))
    CreateReplicationInstanceMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    CreateReplicationInstanceMessage.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceClass"))
    CreateReplicationInstanceMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateReplicationInstanceMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateReplicationInstanceMessage.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier"))
    CreateReplicationInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateReplicationInstanceMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    CreateReplicationInstanceMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateReplicationInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateReplicationInstanceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationInstanceMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateReplicationInstanceMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateReplicationInstanceMessage.struct_class = Types::CreateReplicationInstanceMessage

    CreateReplicationInstanceResponse.add_member(:replication_instance, Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    CreateReplicationInstanceResponse.struct_class = Types::CreateReplicationInstanceResponse

    CreateReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationSubnetGroupIdentifier"))
    CreateReplicationSubnetGroupMessage.add_member(:replication_subnet_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationSubnetGroupDescription"))
    CreateReplicationSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateReplicationSubnetGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationSubnetGroupMessage.struct_class = Types::CreateReplicationSubnetGroupMessage

    CreateReplicationSubnetGroupResponse.add_member(:replication_subnet_group, Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    CreateReplicationSubnetGroupResponse.struct_class = Types::CreateReplicationSubnetGroupResponse

    CreateReplicationTaskMessage.add_member(:replication_task_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskIdentifier"))
    CreateReplicationTaskMessage.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceEndpointArn"))
    CreateReplicationTaskMessage.add_member(:target_endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetEndpointArn"))
    CreateReplicationTaskMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    CreateReplicationTaskMessage.add_member(:migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, required: true, location_name: "MigrationType"))
    CreateReplicationTaskMessage.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TableMappings"))
    CreateReplicationTaskMessage.add_member(:replication_task_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    CreateReplicationTaskMessage.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    CreateReplicationTaskMessage.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    CreateReplicationTaskMessage.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    CreateReplicationTaskMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationTaskMessage.struct_class = Types::CreateReplicationTaskMessage

    CreateReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    CreateReplicationTaskResponse.struct_class = Types::CreateReplicationTaskResponse

    DeleteCertificateMessage.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CertificateArn"))
    DeleteCertificateMessage.struct_class = Types::DeleteCertificateMessage

    DeleteCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    DeleteCertificateResponse.struct_class = Types::DeleteCertificateResponse

    DeleteEndpointMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    DeleteEndpointMessage.struct_class = Types::DeleteEndpointMessage

    DeleteEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    DeleteEndpointResponse.struct_class = Types::DeleteEndpointResponse

    DeleteEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    DeleteEventSubscriptionMessage.struct_class = Types::DeleteEventSubscriptionMessage

    DeleteEventSubscriptionResponse.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    DeleteEventSubscriptionResponse.struct_class = Types::DeleteEventSubscriptionResponse

    DeleteReplicationInstanceMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    DeleteReplicationInstanceMessage.struct_class = Types::DeleteReplicationInstanceMessage

    DeleteReplicationInstanceResponse.add_member(:replication_instance, Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    DeleteReplicationInstanceResponse.struct_class = Types::DeleteReplicationInstanceResponse

    DeleteReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationSubnetGroupIdentifier"))
    DeleteReplicationSubnetGroupMessage.struct_class = Types::DeleteReplicationSubnetGroupMessage

    DeleteReplicationSubnetGroupResponse.struct_class = Types::DeleteReplicationSubnetGroupResponse

    DeleteReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    DeleteReplicationTaskMessage.struct_class = Types::DeleteReplicationTaskMessage

    DeleteReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    DeleteReplicationTaskResponse.struct_class = Types::DeleteReplicationTaskResponse

    DescribeAccountAttributesMessage.struct_class = Types::DescribeAccountAttributesMessage

    DescribeAccountAttributesResponse.add_member(:account_quotas, Shapes::ShapeRef.new(shape: AccountQuotaList, location_name: "AccountQuotas"))
    DescribeAccountAttributesResponse.struct_class = Types::DescribeAccountAttributesResponse

    DescribeCertificatesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesMessage.struct_class = Types::DescribeCertificatesMessage

    DescribeCertificatesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    DescribeCertificatesResponse.struct_class = Types::DescribeCertificatesResponse

    DescribeConnectionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeConnectionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeConnectionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeConnectionsMessage.struct_class = Types::DescribeConnectionsMessage

    DescribeConnectionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeConnectionsResponse.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    DescribeConnectionsResponse.struct_class = Types::DescribeConnectionsResponse

    DescribeEndpointTypesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEndpointTypesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointTypesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointTypesMessage.struct_class = Types::DescribeEndpointTypesMessage

    DescribeEndpointTypesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointTypesResponse.add_member(:supported_endpoint_types, Shapes::ShapeRef.new(shape: SupportedEndpointTypeList, location_name: "SupportedEndpointTypes"))
    DescribeEndpointTypesResponse.struct_class = Types::DescribeEndpointTypesResponse

    DescribeEndpointsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEndpointsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEndpointsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointsMessage.struct_class = Types::DescribeEndpointsMessage

    DescribeEndpointsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointList, location_name: "Endpoints"))
    DescribeEndpointsResponse.struct_class = Types::DescribeEndpointsResponse

    DescribeEventCategoriesMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventCategoriesMessage.struct_class = Types::DescribeEventCategoriesMessage

    DescribeEventCategoriesResponse.add_member(:event_category_group_list, Shapes::ShapeRef.new(shape: EventCategoryGroupList, location_name: "EventCategoryGroupList"))
    DescribeEventCategoriesResponse.struct_class = Types::DescribeEventCategoriesResponse

    DescribeEventSubscriptionsMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsMessage.struct_class = Types::DescribeEventSubscriptionsMessage

    DescribeEventSubscriptionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsResponse.add_member(:event_subscriptions_list, Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: "EventSubscriptionsList"))
    DescribeEventSubscriptionsResponse.struct_class = Types::DescribeEventSubscriptionsResponse

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

    DescribeEventsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    DescribeEventsResponse.struct_class = Types::DescribeEventsResponse

    DescribeOrderableReplicationInstancesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOrderableReplicationInstancesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableReplicationInstancesMessage.struct_class = Types::DescribeOrderableReplicationInstancesMessage

    DescribeOrderableReplicationInstancesResponse.add_member(:orderable_replication_instances, Shapes::ShapeRef.new(shape: OrderableReplicationInstanceList, location_name: "OrderableReplicationInstances"))
    DescribeOrderableReplicationInstancesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableReplicationInstancesResponse.struct_class = Types::DescribeOrderableReplicationInstancesResponse

    DescribeRefreshSchemasStatusMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    DescribeRefreshSchemasStatusMessage.struct_class = Types::DescribeRefreshSchemasStatusMessage

    DescribeRefreshSchemasStatusResponse.add_member(:refresh_schemas_status, Shapes::ShapeRef.new(shape: RefreshSchemasStatus, location_name: "RefreshSchemasStatus"))
    DescribeRefreshSchemasStatusResponse.struct_class = Types::DescribeRefreshSchemasStatusResponse

    DescribeReplicationInstanceTaskLogsMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    DescribeReplicationInstanceTaskLogsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationInstanceTaskLogsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstanceTaskLogsMessage.struct_class = Types::DescribeReplicationInstanceTaskLogsMessage

    DescribeReplicationInstanceTaskLogsResponse.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    DescribeReplicationInstanceTaskLogsResponse.add_member(:replication_instance_task_logs, Shapes::ShapeRef.new(shape: ReplicationInstanceTaskLogsList, location_name: "ReplicationInstanceTaskLogs"))
    DescribeReplicationInstanceTaskLogsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstanceTaskLogsResponse.struct_class = Types::DescribeReplicationInstanceTaskLogsResponse

    DescribeReplicationInstancesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationInstancesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationInstancesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstancesMessage.struct_class = Types::DescribeReplicationInstancesMessage

    DescribeReplicationInstancesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationInstancesResponse.add_member(:replication_instances, Shapes::ShapeRef.new(shape: ReplicationInstanceList, location_name: "ReplicationInstances"))
    DescribeReplicationInstancesResponse.struct_class = Types::DescribeReplicationInstancesResponse

    DescribeReplicationSubnetGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationSubnetGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationSubnetGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationSubnetGroupsMessage.struct_class = Types::DescribeReplicationSubnetGroupsMessage

    DescribeReplicationSubnetGroupsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationSubnetGroupsResponse.add_member(:replication_subnet_groups, Shapes::ShapeRef.new(shape: ReplicationSubnetGroups, location_name: "ReplicationSubnetGroups"))
    DescribeReplicationSubnetGroupsResponse.struct_class = Types::DescribeReplicationSubnetGroupsResponse

    DescribeReplicationTaskAssessmentResultsMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTaskAssessmentResultsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentResultsMessage.struct_class = Types::DescribeReplicationTaskAssessmentResultsMessage

    DescribeReplicationTaskAssessmentResultsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    DescribeReplicationTaskAssessmentResultsResponse.add_member(:replication_task_assessment_results, Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentResultList, location_name: "ReplicationTaskAssessmentResults"))
    DescribeReplicationTaskAssessmentResultsResponse.struct_class = Types::DescribeReplicationTaskAssessmentResultsResponse

    DescribeReplicationTasksMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReplicationTasksMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationTasksMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTasksMessage.struct_class = Types::DescribeReplicationTasksMessage

    DescribeReplicationTasksResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationTasksResponse.add_member(:replication_tasks, Shapes::ShapeRef.new(shape: ReplicationTaskList, location_name: "ReplicationTasks"))
    DescribeReplicationTasksResponse.struct_class = Types::DescribeReplicationTasksResponse

    DescribeSchemasMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    DescribeSchemasMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeSchemasMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSchemasMessage.struct_class = Types::DescribeSchemasMessage

    DescribeSchemasResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSchemasResponse.add_member(:schemas, Shapes::ShapeRef.new(shape: SchemaList, location_name: "Schemas"))
    DescribeSchemasResponse.struct_class = Types::DescribeSchemasResponse

    DescribeTableStatisticsMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    DescribeTableStatisticsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeTableStatisticsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTableStatisticsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeTableStatisticsMessage.struct_class = Types::DescribeTableStatisticsMessage

    DescribeTableStatisticsResponse.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    DescribeTableStatisticsResponse.add_member(:table_statistics, Shapes::ShapeRef.new(shape: TableStatisticsList, location_name: "TableStatistics"))
    DescribeTableStatisticsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTableStatisticsResponse.struct_class = Types::DescribeTableStatisticsResponse

    DmsTransferSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    DmsTransferSettings.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    DmsTransferSettings.struct_class = Types::DmsTransferSettings

    DynamoDbSettings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceAccessRoleArn"))
    DynamoDbSettings.struct_class = Types::DynamoDbSettings

    Endpoint.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    Endpoint.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    Endpoint.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    Endpoint.add_member(:engine_display_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineDisplayName"))
    Endpoint.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    Endpoint.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    Endpoint.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    Endpoint.add_member(:extra_connection_attributes, Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    Endpoint.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Endpoint.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    Endpoint.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    Endpoint.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    Endpoint.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    Endpoint.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    Endpoint.add_member(:external_table_definition, Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    Endpoint.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "ExternalId"))
    Endpoint.add_member(:dynamo_db_settings, Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    Endpoint.add_member(:s3_settings, Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    Endpoint.add_member(:dms_transfer_settings, Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    Endpoint.add_member(:mongo_db_settings, Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    Endpoint.struct_class = Types::Endpoint

    EndpointList.member = Shapes::ShapeRef.new(shape: Endpoint)

    Event.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.struct_class = Types::Event

    EventCategoriesList.member = Shapes::ShapeRef.new(shape: String)

    EventCategoryGroup.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventCategoryGroup.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    EventCategoryGroup.struct_class = Types::EventCategoryGroup

    EventCategoryGroupList.member = Shapes::ShapeRef.new(shape: EventCategoryGroup)

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    EventSubscription.add_member(:customer_aws_id, Shapes::ShapeRef.new(shape: String, location_name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    EventSubscription.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategoriesList"))
    EventSubscription.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventSubscription.struct_class = Types::EventSubscription

    EventSubscriptionsList.member = Shapes::ShapeRef.new(shape: EventSubscription)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValueList.member = Shapes::ShapeRef.new(shape: String)

    ImportCertificateMessage.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CertificateIdentifier"))
    ImportCertificateMessage.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: String, location_name: "CertificatePem"))
    ImportCertificateMessage.add_member(:certificate_wallet, Shapes::ShapeRef.new(shape: CertificateWallet, location_name: "CertificateWallet"))
    ImportCertificateMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportCertificateMessage.struct_class = Types::ImportCertificateMessage

    ImportCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    ImportCertificateResponse.struct_class = Types::ImportCertificateResponse

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    ListTagsForResourceMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    ListTagsForResourceMessage.struct_class = Types::ListTagsForResourceMessage

    ListTagsForResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ModifyEndpointMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    ModifyEndpointMessage.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "EndpointIdentifier"))
    ModifyEndpointMessage.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    ModifyEndpointMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    ModifyEndpointMessage.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    ModifyEndpointMessage.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    ModifyEndpointMessage.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    ModifyEndpointMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    ModifyEndpointMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    ModifyEndpointMessage.add_member(:extra_connection_attributes, Shapes::ShapeRef.new(shape: String, location_name: "ExtraConnectionAttributes"))
    ModifyEndpointMessage.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    ModifyEndpointMessage.add_member(:ssl_mode, Shapes::ShapeRef.new(shape: DmsSslModeValue, location_name: "SslMode"))
    ModifyEndpointMessage.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    ModifyEndpointMessage.add_member(:external_table_definition, Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    ModifyEndpointMessage.add_member(:dynamo_db_settings, Shapes::ShapeRef.new(shape: DynamoDbSettings, location_name: "DynamoDbSettings"))
    ModifyEndpointMessage.add_member(:s3_settings, Shapes::ShapeRef.new(shape: S3Settings, location_name: "S3Settings"))
    ModifyEndpointMessage.add_member(:dms_transfer_settings, Shapes::ShapeRef.new(shape: DmsTransferSettings, location_name: "DmsTransferSettings"))
    ModifyEndpointMessage.add_member(:mongo_db_settings, Shapes::ShapeRef.new(shape: MongoDbSettings, location_name: "MongoDbSettings"))
    ModifyEndpointMessage.struct_class = Types::ModifyEndpointMessage

    ModifyEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    ModifyEndpointResponse.struct_class = Types::ModifyEndpointResponse

    ModifyEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    ModifyEventSubscriptionMessage.struct_class = Types::ModifyEventSubscriptionMessage

    ModifyEventSubscriptionResponse.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    ModifyEventSubscriptionResponse.struct_class = Types::ModifyEventSubscriptionResponse

    ModifyReplicationInstanceMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    ModifyReplicationInstanceMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ModifyReplicationInstanceMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyReplicationInstanceMessage.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceClass"))
    ModifyReplicationInstanceMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyReplicationInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyReplicationInstanceMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ModifyReplicationInstanceMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyReplicationInstanceMessage.add_member(:allow_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowMajorVersionUpgrade"))
    ModifyReplicationInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyReplicationInstanceMessage.add_member(:replication_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    ModifyReplicationInstanceMessage.struct_class = Types::ModifyReplicationInstanceMessage

    ModifyReplicationInstanceResponse.add_member(:replication_instance, Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    ModifyReplicationInstanceResponse.struct_class = Types::ModifyReplicationInstanceResponse

    ModifyReplicationSubnetGroupMessage.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationSubnetGroupIdentifier"))
    ModifyReplicationSubnetGroupMessage.add_member(:replication_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupDescription"))
    ModifyReplicationSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    ModifyReplicationSubnetGroupMessage.struct_class = Types::ModifyReplicationSubnetGroupMessage

    ModifyReplicationSubnetGroupResponse.add_member(:replication_subnet_group, Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    ModifyReplicationSubnetGroupResponse.struct_class = Types::ModifyReplicationSubnetGroupResponse

    ModifyReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    ModifyReplicationTaskMessage.add_member(:replication_task_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ModifyReplicationTaskMessage.add_member(:migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType"))
    ModifyReplicationTaskMessage.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ModifyReplicationTaskMessage.add_member(:replication_task_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    ModifyReplicationTaskMessage.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    ModifyReplicationTaskMessage.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    ModifyReplicationTaskMessage.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    ModifyReplicationTaskMessage.struct_class = Types::ModifyReplicationTaskMessage

    ModifyReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    ModifyReplicationTaskResponse.struct_class = Types::ModifyReplicationTaskResponse

    MongoDbSettings.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    MongoDbSettings.add_member(:password, Shapes::ShapeRef.new(shape: SecretString, location_name: "Password"))
    MongoDbSettings.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    MongoDbSettings.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    MongoDbSettings.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    MongoDbSettings.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthTypeValue, location_name: "AuthType"))
    MongoDbSettings.add_member(:auth_mechanism, Shapes::ShapeRef.new(shape: AuthMechanismValue, location_name: "AuthMechanism"))
    MongoDbSettings.add_member(:nesting_level, Shapes::ShapeRef.new(shape: NestingLevelValue, location_name: "NestingLevel"))
    MongoDbSettings.add_member(:extract_doc_id, Shapes::ShapeRef.new(shape: String, location_name: "ExtractDocId"))
    MongoDbSettings.add_member(:docs_to_investigate, Shapes::ShapeRef.new(shape: String, location_name: "DocsToInvestigate"))
    MongoDbSettings.add_member(:auth_source, Shapes::ShapeRef.new(shape: String, location_name: "AuthSource"))
    MongoDbSettings.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    MongoDbSettings.struct_class = Types::MongoDbSettings

    OrderableReplicationInstance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    OrderableReplicationInstance.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceClass"))
    OrderableReplicationInstance.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    OrderableReplicationInstance.add_member(:min_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "MinAllocatedStorage"))
    OrderableReplicationInstance.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAllocatedStorage"))
    OrderableReplicationInstance.add_member(:default_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "DefaultAllocatedStorage"))
    OrderableReplicationInstance.add_member(:included_allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "IncludedAllocatedStorage"))
    OrderableReplicationInstance.struct_class = Types::OrderableReplicationInstance

    OrderableReplicationInstanceList.member = Shapes::ShapeRef.new(shape: OrderableReplicationInstance)

    RebootReplicationInstanceMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    RebootReplicationInstanceMessage.add_member(:force_failover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceFailover"))
    RebootReplicationInstanceMessage.struct_class = Types::RebootReplicationInstanceMessage

    RebootReplicationInstanceResponse.add_member(:replication_instance, Shapes::ShapeRef.new(shape: ReplicationInstance, location_name: "ReplicationInstance"))
    RebootReplicationInstanceResponse.struct_class = Types::RebootReplicationInstanceResponse

    RefreshSchemasMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    RefreshSchemasMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    RefreshSchemasMessage.struct_class = Types::RefreshSchemasMessage

    RefreshSchemasResponse.add_member(:refresh_schemas_status, Shapes::ShapeRef.new(shape: RefreshSchemasStatus, location_name: "RefreshSchemasStatus"))
    RefreshSchemasResponse.struct_class = Types::RefreshSchemasResponse

    RefreshSchemasStatus.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "EndpointArn"))
    RefreshSchemasStatus.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    RefreshSchemasStatus.add_member(:status, Shapes::ShapeRef.new(shape: RefreshSchemasStatusTypeValue, location_name: "Status"))
    RefreshSchemasStatus.add_member(:last_refresh_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastRefreshDate"))
    RefreshSchemasStatus.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    RefreshSchemasStatus.struct_class = Types::RefreshSchemasStatus

    ReloadTablesMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    ReloadTablesMessage.add_member(:tables_to_reload, Shapes::ShapeRef.new(shape: TableListToReload, required: true, location_name: "TablesToReload"))
    ReloadTablesMessage.add_member(:reload_option, Shapes::ShapeRef.new(shape: ReloadOptionValue, location_name: "ReloadOption"))
    ReloadTablesMessage.struct_class = Types::ReloadTablesMessage

    ReloadTablesResponse.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReloadTablesResponse.struct_class = Types::ReloadTablesResponse

    RemoveTagsFromResourceMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceMessage.struct_class = Types::RemoveTagsFromResourceMessage

    RemoveTagsFromResourceResponse.struct_class = Types::RemoveTagsFromResourceResponse

    ReplicationInstance.add_member(:replication_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceIdentifier"))
    ReplicationInstance.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceClass"))
    ReplicationInstance.add_member(:replication_instance_status, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceStatus"))
    ReplicationInstance.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    ReplicationInstance.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "InstanceCreateTime"))
    ReplicationInstance.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    ReplicationInstance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    ReplicationInstance.add_member(:replication_subnet_group, Shapes::ShapeRef.new(shape: ReplicationSubnetGroup, location_name: "ReplicationSubnetGroup"))
    ReplicationInstance.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ReplicationInstance.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: ReplicationPendingModifiedValues, location_name: "PendingModifiedValues"))
    ReplicationInstance.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    ReplicationInstance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ReplicationInstance.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    ReplicationInstance.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    ReplicationInstance.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    ReplicationInstance.add_member(:replication_instance_public_ip_address, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "ReplicationInstancePublicIpAddress"))
    ReplicationInstance.add_member(:replication_instance_private_ip_address, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "ReplicationInstancePrivateIpAddress"))
    ReplicationInstance.add_member(:replication_instance_public_ip_addresses, Shapes::ShapeRef.new(shape: ReplicationInstancePublicIpAddressList, location_name: "ReplicationInstancePublicIpAddresses"))
    ReplicationInstance.add_member(:replication_instance_private_ip_addresses, Shapes::ShapeRef.new(shape: ReplicationInstancePrivateIpAddressList, location_name: "ReplicationInstancePrivateIpAddresses"))
    ReplicationInstance.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    ReplicationInstance.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "SecondaryAvailabilityZone"))
    ReplicationInstance.add_member(:free_until, Shapes::ShapeRef.new(shape: TStamp, location_name: "FreeUntil"))
    ReplicationInstance.struct_class = Types::ReplicationInstance

    ReplicationInstanceList.member = Shapes::ShapeRef.new(shape: ReplicationInstance)

    ReplicationInstancePrivateIpAddressList.member = Shapes::ShapeRef.new(shape: String)

    ReplicationInstancePublicIpAddressList.member = Shapes::ShapeRef.new(shape: String)

    ReplicationInstanceTaskLog.add_member(:replication_task_name, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskName"))
    ReplicationInstanceTaskLog.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationInstanceTaskLog.add_member(:replication_instance_task_log_size, Shapes::ShapeRef.new(shape: Long, location_name: "ReplicationInstanceTaskLogSize"))
    ReplicationInstanceTaskLog.struct_class = Types::ReplicationInstanceTaskLog

    ReplicationInstanceTaskLogsList.member = Shapes::ShapeRef.new(shape: ReplicationInstanceTaskLog)

    ReplicationPendingModifiedValues.add_member(:replication_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceClass"))
    ReplicationPendingModifiedValues.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ReplicationPendingModifiedValues.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ReplicationPendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ReplicationPendingModifiedValues.struct_class = Types::ReplicationPendingModifiedValues

    ReplicationSubnetGroup.add_member(:replication_subnet_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupIdentifier"))
    ReplicationSubnetGroup.add_member(:replication_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSubnetGroupDescription"))
    ReplicationSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    ReplicationSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    ReplicationSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    ReplicationSubnetGroup.struct_class = Types::ReplicationSubnetGroup

    ReplicationSubnetGroups.member = Shapes::ShapeRef.new(shape: ReplicationSubnetGroup)

    ReplicationTask.add_member(:replication_task_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ReplicationTask.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceEndpointArn"))
    ReplicationTask.add_member(:target_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetEndpointArn"))
    ReplicationTask.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationInstanceArn"))
    ReplicationTask.add_member(:migration_type, Shapes::ShapeRef.new(shape: MigrationTypeValue, location_name: "MigrationType"))
    ReplicationTask.add_member(:table_mappings, Shapes::ShapeRef.new(shape: String, location_name: "TableMappings"))
    ReplicationTask.add_member(:replication_task_settings, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskSettings"))
    ReplicationTask.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ReplicationTask.add_member(:last_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "LastFailureMessage"))
    ReplicationTask.add_member(:stop_reason, Shapes::ShapeRef.new(shape: String, location_name: "StopReason"))
    ReplicationTask.add_member(:replication_task_creation_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskCreationDate"))
    ReplicationTask.add_member(:replication_task_start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskStartDate"))
    ReplicationTask.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    ReplicationTask.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    ReplicationTask.add_member(:recovery_checkpoint, Shapes::ShapeRef.new(shape: String, location_name: "RecoveryCheckpoint"))
    ReplicationTask.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationTask.add_member(:replication_task_stats, Shapes::ShapeRef.new(shape: ReplicationTaskStats, location_name: "ReplicationTaskStats"))
    ReplicationTask.struct_class = Types::ReplicationTask

    ReplicationTaskAssessmentResult.add_member(:replication_task_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskIdentifier"))
    ReplicationTaskAssessmentResult.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationTaskArn"))
    ReplicationTaskAssessmentResult.add_member(:replication_task_last_assessment_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReplicationTaskLastAssessmentDate"))
    ReplicationTaskAssessmentResult.add_member(:assessment_status, Shapes::ShapeRef.new(shape: String, location_name: "AssessmentStatus"))
    ReplicationTaskAssessmentResult.add_member(:assessment_results_file, Shapes::ShapeRef.new(shape: String, location_name: "AssessmentResultsFile"))
    ReplicationTaskAssessmentResult.add_member(:assessment_results, Shapes::ShapeRef.new(shape: String, location_name: "AssessmentResults"))
    ReplicationTaskAssessmentResult.add_member(:s3_object_url, Shapes::ShapeRef.new(shape: String, location_name: "S3ObjectUrl"))
    ReplicationTaskAssessmentResult.struct_class = Types::ReplicationTaskAssessmentResult

    ReplicationTaskAssessmentResultList.member = Shapes::ShapeRef.new(shape: ReplicationTaskAssessmentResult)

    ReplicationTaskList.member = Shapes::ShapeRef.new(shape: ReplicationTask)

    ReplicationTaskStats.add_member(:full_load_progress_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "FullLoadProgressPercent"))
    ReplicationTaskStats.add_member(:elapsed_time_millis, Shapes::ShapeRef.new(shape: Long, location_name: "ElapsedTimeMillis"))
    ReplicationTaskStats.add_member(:tables_loaded, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoaded"))
    ReplicationTaskStats.add_member(:tables_loading, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesLoading"))
    ReplicationTaskStats.add_member(:tables_queued, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesQueued"))
    ReplicationTaskStats.add_member(:tables_errored, Shapes::ShapeRef.new(shape: Integer, location_name: "TablesErrored"))
    ReplicationTaskStats.struct_class = Types::ReplicationTaskStats

    S3Settings.add_member(:service_access_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessRoleArn"))
    S3Settings.add_member(:external_table_definition, Shapes::ShapeRef.new(shape: String, location_name: "ExternalTableDefinition"))
    S3Settings.add_member(:csv_row_delimiter, Shapes::ShapeRef.new(shape: String, location_name: "CsvRowDelimiter"))
    S3Settings.add_member(:csv_delimiter, Shapes::ShapeRef.new(shape: String, location_name: "CsvDelimiter"))
    S3Settings.add_member(:bucket_folder, Shapes::ShapeRef.new(shape: String, location_name: "BucketFolder"))
    S3Settings.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "BucketName"))
    S3Settings.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionTypeValue, location_name: "CompressionType"))
    S3Settings.struct_class = Types::S3Settings

    SchemaList.member = Shapes::ShapeRef.new(shape: String)

    SourceIdsList.member = Shapes::ShapeRef.new(shape: String)

    StartReplicationTaskAssessmentMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    StartReplicationTaskAssessmentMessage.struct_class = Types::StartReplicationTaskAssessmentMessage

    StartReplicationTaskAssessmentResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StartReplicationTaskAssessmentResponse.struct_class = Types::StartReplicationTaskAssessmentResponse

    StartReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    StartReplicationTaskMessage.add_member(:start_replication_task_type, Shapes::ShapeRef.new(shape: StartReplicationTaskTypeValue, required: true, location_name: "StartReplicationTaskType"))
    StartReplicationTaskMessage.add_member(:cdc_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CdcStartTime"))
    StartReplicationTaskMessage.add_member(:cdc_start_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStartPosition"))
    StartReplicationTaskMessage.add_member(:cdc_stop_position, Shapes::ShapeRef.new(shape: String, location_name: "CdcStopPosition"))
    StartReplicationTaskMessage.struct_class = Types::StartReplicationTaskMessage

    StartReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StartReplicationTaskResponse.struct_class = Types::StartReplicationTaskResponse

    StopReplicationTaskMessage.add_member(:replication_task_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationTaskArn"))
    StopReplicationTaskMessage.struct_class = Types::StopReplicationTaskMessage

    StopReplicationTaskResponse.add_member(:replication_task, Shapes::ShapeRef.new(shape: ReplicationTask, location_name: "ReplicationTask"))
    StopReplicationTaskResponse.struct_class = Types::StopReplicationTaskResponse

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.struct_class = Types::Subnet

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String)

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet)

    SupportedEndpointType.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    SupportedEndpointType.add_member(:supports_cdc, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsCDC"))
    SupportedEndpointType.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: ReplicationEndpointTypeValue, location_name: "EndpointType"))
    SupportedEndpointType.add_member(:engine_display_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineDisplayName"))
    SupportedEndpointType.struct_class = Types::SupportedEndpointType

    SupportedEndpointTypeList.member = Shapes::ShapeRef.new(shape: SupportedEndpointType)

    TableListToReload.member = Shapes::ShapeRef.new(shape: TableToReload)

    TableStatistics.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    TableStatistics.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "TableName"))
    TableStatistics.add_member(:inserts, Shapes::ShapeRef.new(shape: Long, location_name: "Inserts"))
    TableStatistics.add_member(:deletes, Shapes::ShapeRef.new(shape: Long, location_name: "Deletes"))
    TableStatistics.add_member(:updates, Shapes::ShapeRef.new(shape: Long, location_name: "Updates"))
    TableStatistics.add_member(:ddls, Shapes::ShapeRef.new(shape: Long, location_name: "Ddls"))
    TableStatistics.add_member(:full_load_rows, Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadRows"))
    TableStatistics.add_member(:full_load_condtnl_chk_failed_rows, Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadCondtnlChkFailedRows"))
    TableStatistics.add_member(:full_load_error_rows, Shapes::ShapeRef.new(shape: Long, location_name: "FullLoadErrorRows"))
    TableStatistics.add_member(:last_update_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastUpdateTime"))
    TableStatistics.add_member(:table_state, Shapes::ShapeRef.new(shape: String, location_name: "TableState"))
    TableStatistics.add_member(:validation_pending_records, Shapes::ShapeRef.new(shape: Long, location_name: "ValidationPendingRecords"))
    TableStatistics.add_member(:validation_failed_records, Shapes::ShapeRef.new(shape: Long, location_name: "ValidationFailedRecords"))
    TableStatistics.add_member(:validation_suspended_records, Shapes::ShapeRef.new(shape: Long, location_name: "ValidationSuspendedRecords"))
    TableStatistics.add_member(:validation_state, Shapes::ShapeRef.new(shape: String, location_name: "ValidationState"))
    TableStatistics.add_member(:validation_state_details, Shapes::ShapeRef.new(shape: String, location_name: "ValidationStateDetails"))
    TableStatistics.struct_class = Types::TableStatistics

    TableStatisticsList.member = Shapes::ShapeRef.new(shape: TableStatistics)

    TableToReload.add_member(:schema_name, Shapes::ShapeRef.new(shape: String, location_name: "SchemaName"))
    TableToReload.add_member(:table_name, Shapes::ShapeRef.new(shape: String, location_name: "TableName"))
    TableToReload.struct_class = Types::TableToReload

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TestConnectionMessage.add_member(:replication_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationInstanceArn"))
    TestConnectionMessage.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointArn"))
    TestConnectionMessage.struct_class = Types::TestConnectionMessage

    TestConnectionResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    TestConnectionResponse.struct_class = Types::TestConnectionResponse

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String)

    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    VpcSecurityGroupMembership.struct_class = Types::VpcSecurityGroupMembership

    VpcSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-01-01"

      api.metadata = {
        "apiVersion" => "2016-01-01",
        "endpointPrefix" => "dms",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Database Migration Service",
        "serviceId" => "Database Migration Service",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonDMSv20160101",
        "uid" => "dms-2016-01-01",
      }

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: AddTagsToResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:create_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:create_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateEventSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:create_replication_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientResourceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:create_replication_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:create_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:delete_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:delete_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:delete_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:delete_replication_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:delete_replication_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:delete_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:describe_account_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAttributesResponse)
      end)

      api.add_operation(:describe_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificatesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_endpoint_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointTypesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointTypesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
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
        o.output = Shapes::ShapeRef.new(shape: DescribeEventCategoriesResponse)
      end)

      api.add_operation(:describe_event_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
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
        o.output = Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_orderable_replication_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrderableReplicationInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrderableReplicationInstancesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrderableReplicationInstancesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_refresh_schemas_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRefreshSchemasStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRefreshSchemasStatusMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeRefreshSchemasStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:describe_replication_instance_task_logs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationInstanceTaskLogs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationInstanceTaskLogsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationInstanceTaskLogsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationInstancesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationSubnetGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationSubnetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_task_assessment_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationTaskAssessmentResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentResultsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationTaskAssessmentResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationTasksMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSchemas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSchemasMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_table_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTableStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTableStatisticsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeTableStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:import_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportCertificateMessage)
        o.output = Shapes::ShapeRef.new(shape: ImportCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCertificateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:modify_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:modify_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
      end)

      api.add_operation(:modify_replication_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientResourceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: UpgradeDependencyFailureFault)
      end)

      api.add_operation(:modify_replication_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:modify_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:reboot_replication_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootReplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootReplicationInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootReplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:refresh_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RefreshSchemas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RefreshSchemasMessage)
        o.output = Shapes::ShapeRef.new(shape: RefreshSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)

      api.add_operation(:reload_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReloadTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReloadTablesMessage)
        o.output = Shapes::ShapeRef.new(shape: ReloadTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:start_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: StartReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedFault)
      end)

      api.add_operation(:start_replication_task_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplicationTaskAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentMessage)
        o.output = Shapes::ShapeRef.new(shape: StartReplicationTaskAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:stop_replication_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopReplicationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopReplicationTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: StopReplicationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:test_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestConnectionMessage)
        o.output = Shapes::ShapeRef.new(shape: TestConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededFault)
      end)
    end

  end
end
