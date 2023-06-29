# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Keyspaces
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    CapacitySpecification = Shapes::StructureShape.new(name: 'CapacitySpecification')
    CapacitySpecificationSummary = Shapes::StructureShape.new(name: 'CapacitySpecificationSummary')
    CapacityUnits = Shapes::IntegerShape.new(name: 'CapacityUnits')
    ClientSideTimestamps = Shapes::StructureShape.new(name: 'ClientSideTimestamps')
    ClientSideTimestampsStatus = Shapes::StringShape.new(name: 'ClientSideTimestampsStatus')
    ClusteringKey = Shapes::StructureShape.new(name: 'ClusteringKey')
    ClusteringKeyList = Shapes::ListShape.new(name: 'ClusteringKeyList')
    ColumnDefinition = Shapes::StructureShape.new(name: 'ColumnDefinition')
    ColumnDefinitionList = Shapes::ListShape.new(name: 'ColumnDefinitionList')
    Comment = Shapes::StructureShape.new(name: 'Comment')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateKeyspaceRequest = Shapes::StructureShape.new(name: 'CreateKeyspaceRequest')
    CreateKeyspaceResponse = Shapes::StructureShape.new(name: 'CreateKeyspaceResponse')
    CreateTableRequest = Shapes::StructureShape.new(name: 'CreateTableRequest')
    CreateTableResponse = Shapes::StructureShape.new(name: 'CreateTableResponse')
    DefaultTimeToLive = Shapes::IntegerShape.new(name: 'DefaultTimeToLive')
    DeleteKeyspaceRequest = Shapes::StructureShape.new(name: 'DeleteKeyspaceRequest')
    DeleteKeyspaceResponse = Shapes::StructureShape.new(name: 'DeleteKeyspaceResponse')
    DeleteTableRequest = Shapes::StructureShape.new(name: 'DeleteTableRequest')
    DeleteTableResponse = Shapes::StructureShape.new(name: 'DeleteTableResponse')
    EncryptionSpecification = Shapes::StructureShape.new(name: 'EncryptionSpecification')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetKeyspaceRequest = Shapes::StructureShape.new(name: 'GetKeyspaceRequest')
    GetKeyspaceResponse = Shapes::StructureShape.new(name: 'GetKeyspaceResponse')
    GetTableRequest = Shapes::StructureShape.new(name: 'GetTableRequest')
    GetTableResponse = Shapes::StructureShape.new(name: 'GetTableResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeyspaceName = Shapes::StringShape.new(name: 'KeyspaceName')
    KeyspaceSummary = Shapes::StructureShape.new(name: 'KeyspaceSummary')
    KeyspaceSummaryList = Shapes::ListShape.new(name: 'KeyspaceSummaryList')
    ListKeyspacesRequest = Shapes::StructureShape.new(name: 'ListKeyspacesRequest')
    ListKeyspacesResponse = Shapes::StructureShape.new(name: 'ListKeyspacesResponse')
    ListTablesRequest = Shapes::StructureShape.new(name: 'ListTablesRequest')
    ListTablesResponse = Shapes::StructureShape.new(name: 'ListTablesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PartitionKey = Shapes::StructureShape.new(name: 'PartitionKey')
    PartitionKeyList = Shapes::ListShape.new(name: 'PartitionKeyList')
    PointInTimeRecovery = Shapes::StructureShape.new(name: 'PointInTimeRecovery')
    PointInTimeRecoveryStatus = Shapes::StringShape.new(name: 'PointInTimeRecoveryStatus')
    PointInTimeRecoverySummary = Shapes::StructureShape.new(name: 'PointInTimeRecoverySummary')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    ReplicationSpecification = Shapes::StructureShape.new(name: 'ReplicationSpecification')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreTableRequest = Shapes::StructureShape.new(name: 'RestoreTableRequest')
    RestoreTableResponse = Shapes::StructureShape.new(name: 'RestoreTableResponse')
    SchemaDefinition = Shapes::StructureShape.new(name: 'SchemaDefinition')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StaticColumn = Shapes::StructureShape.new(name: 'StaticColumn')
    StaticColumnList = Shapes::ListShape.new(name: 'StaticColumnList')
    String = Shapes::StringShape.new(name: 'String')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableStatus = Shapes::StringShape.new(name: 'TableStatus')
    TableSummary = Shapes::StructureShape.new(name: 'TableSummary')
    TableSummaryList = Shapes::ListShape.new(name: 'TableSummaryList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThroughputMode = Shapes::StringShape.new(name: 'ThroughputMode')
    TimeToLive = Shapes::StructureShape.new(name: 'TimeToLive')
    TimeToLiveStatus = Shapes::StringShape.new(name: 'TimeToLiveStatus')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateTableRequest = Shapes::StructureShape.new(name: 'UpdateTableRequest')
    UpdateTableResponse = Shapes::StructureShape.new(name: 'UpdateTableResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    kmsKeyARN = Shapes::StringShape.new(name: 'kmsKeyARN')
    region = Shapes::StringShape.new(name: 'region')
    rs = Shapes::StringShape.new(name: 'rs')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CapacitySpecification.add_member(:throughput_mode, Shapes::ShapeRef.new(shape: ThroughputMode, required: true, location_name: "throughputMode"))
    CapacitySpecification.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: CapacityUnits, location_name: "readCapacityUnits"))
    CapacitySpecification.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: CapacityUnits, location_name: "writeCapacityUnits"))
    CapacitySpecification.struct_class = Types::CapacitySpecification

    CapacitySpecificationSummary.add_member(:throughput_mode, Shapes::ShapeRef.new(shape: ThroughputMode, required: true, location_name: "throughputMode"))
    CapacitySpecificationSummary.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: CapacityUnits, location_name: "readCapacityUnits"))
    CapacitySpecificationSummary.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: CapacityUnits, location_name: "writeCapacityUnits"))
    CapacitySpecificationSummary.add_member(:last_update_to_pay_per_request_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateToPayPerRequestTimestamp"))
    CapacitySpecificationSummary.struct_class = Types::CapacitySpecificationSummary

    ClientSideTimestamps.add_member(:status, Shapes::ShapeRef.new(shape: ClientSideTimestampsStatus, required: true, location_name: "status"))
    ClientSideTimestamps.struct_class = Types::ClientSideTimestamps

    ClusteringKey.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "name"))
    ClusteringKey.add_member(:order_by, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "orderBy"))
    ClusteringKey.struct_class = Types::ClusteringKey

    ClusteringKeyList.member = Shapes::ShapeRef.new(shape: ClusteringKey)

    ColumnDefinition.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "name"))
    ColumnDefinition.add_member(:type, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "type"))
    ColumnDefinition.struct_class = Types::ColumnDefinition

    ColumnDefinitionList.member = Shapes::ShapeRef.new(shape: ColumnDefinition)

    Comment.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    Comment.struct_class = Types::Comment

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateKeyspaceRequest.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    CreateKeyspaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateKeyspaceRequest.add_member(:replication_specification, Shapes::ShapeRef.new(shape: ReplicationSpecification, location_name: "replicationSpecification"))
    CreateKeyspaceRequest.struct_class = Types::CreateKeyspaceRequest

    CreateKeyspaceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    CreateKeyspaceResponse.struct_class = Types::CreateKeyspaceResponse

    CreateTableRequest.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    CreateTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    CreateTableRequest.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaDefinition, required: true, location_name: "schemaDefinition"))
    CreateTableRequest.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    CreateTableRequest.add_member(:capacity_specification, Shapes::ShapeRef.new(shape: CapacitySpecification, location_name: "capacitySpecification"))
    CreateTableRequest.add_member(:encryption_specification, Shapes::ShapeRef.new(shape: EncryptionSpecification, location_name: "encryptionSpecification"))
    CreateTableRequest.add_member(:point_in_time_recovery, Shapes::ShapeRef.new(shape: PointInTimeRecovery, location_name: "pointInTimeRecovery"))
    CreateTableRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: TimeToLive, location_name: "ttl"))
    CreateTableRequest.add_member(:default_time_to_live, Shapes::ShapeRef.new(shape: DefaultTimeToLive, location_name: "defaultTimeToLive"))
    CreateTableRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateTableRequest.add_member(:client_side_timestamps, Shapes::ShapeRef.new(shape: ClientSideTimestamps, location_name: "clientSideTimestamps"))
    CreateTableRequest.struct_class = Types::CreateTableRequest

    CreateTableResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    CreateTableResponse.struct_class = Types::CreateTableResponse

    DeleteKeyspaceRequest.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    DeleteKeyspaceRequest.struct_class = Types::DeleteKeyspaceRequest

    DeleteKeyspaceResponse.struct_class = Types::DeleteKeyspaceResponse

    DeleteTableRequest.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    DeleteTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    DeleteTableRequest.struct_class = Types::DeleteTableRequest

    DeleteTableResponse.struct_class = Types::DeleteTableResponse

    EncryptionSpecification.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "type"))
    EncryptionSpecification.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: kmsKeyARN, location_name: "kmsKeyIdentifier"))
    EncryptionSpecification.struct_class = Types::EncryptionSpecification

    GetKeyspaceRequest.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    GetKeyspaceRequest.struct_class = Types::GetKeyspaceRequest

    GetKeyspaceResponse.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    GetKeyspaceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    GetKeyspaceResponse.add_member(:replication_strategy, Shapes::ShapeRef.new(shape: rs, required: true, location_name: "replicationStrategy"))
    GetKeyspaceResponse.add_member(:replication_regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "replicationRegions"))
    GetKeyspaceResponse.struct_class = Types::GetKeyspaceResponse

    GetTableRequest.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    GetTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    GetTableRequest.struct_class = Types::GetTableRequest

    GetTableResponse.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    GetTableResponse.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    GetTableResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    GetTableResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    GetTableResponse.add_member(:status, Shapes::ShapeRef.new(shape: TableStatus, location_name: "status"))
    GetTableResponse.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: "schemaDefinition"))
    GetTableResponse.add_member(:capacity_specification, Shapes::ShapeRef.new(shape: CapacitySpecificationSummary, location_name: "capacitySpecification"))
    GetTableResponse.add_member(:encryption_specification, Shapes::ShapeRef.new(shape: EncryptionSpecification, location_name: "encryptionSpecification"))
    GetTableResponse.add_member(:point_in_time_recovery, Shapes::ShapeRef.new(shape: PointInTimeRecoverySummary, location_name: "pointInTimeRecovery"))
    GetTableResponse.add_member(:ttl, Shapes::ShapeRef.new(shape: TimeToLive, location_name: "ttl"))
    GetTableResponse.add_member(:default_time_to_live, Shapes::ShapeRef.new(shape: DefaultTimeToLive, location_name: "defaultTimeToLive"))
    GetTableResponse.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    GetTableResponse.add_member(:client_side_timestamps, Shapes::ShapeRef.new(shape: ClientSideTimestamps, location_name: "clientSideTimestamps"))
    GetTableResponse.struct_class = Types::GetTableResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KeyspaceSummary.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    KeyspaceSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    KeyspaceSummary.add_member(:replication_strategy, Shapes::ShapeRef.new(shape: rs, required: true, location_name: "replicationStrategy"))
    KeyspaceSummary.add_member(:replication_regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "replicationRegions"))
    KeyspaceSummary.struct_class = Types::KeyspaceSummary

    KeyspaceSummaryList.member = Shapes::ShapeRef.new(shape: KeyspaceSummary)

    ListKeyspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListKeyspacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListKeyspacesRequest.struct_class = Types::ListKeyspacesRequest

    ListKeyspacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListKeyspacesResponse.add_member(:keyspaces, Shapes::ShapeRef.new(shape: KeyspaceSummaryList, required: true, location_name: "keyspaces"))
    ListKeyspacesResponse.struct_class = Types::ListKeyspacesResponse

    ListTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTablesRequest.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    ListTablesRequest.struct_class = Types::ListTablesRequest

    ListTablesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTablesResponse.add_member(:tables, Shapes::ShapeRef.new(shape: TableSummaryList, location_name: "tables"))
    ListTablesResponse.struct_class = Types::ListTablesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PartitionKey.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "name"))
    PartitionKey.struct_class = Types::PartitionKey

    PartitionKeyList.member = Shapes::ShapeRef.new(shape: PartitionKey)

    PointInTimeRecovery.add_member(:status, Shapes::ShapeRef.new(shape: PointInTimeRecoveryStatus, required: true, location_name: "status"))
    PointInTimeRecovery.struct_class = Types::PointInTimeRecovery

    PointInTimeRecoverySummary.add_member(:status, Shapes::ShapeRef.new(shape: PointInTimeRecoveryStatus, required: true, location_name: "status"))
    PointInTimeRecoverySummary.add_member(:earliest_restorable_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "earliestRestorableTimestamp"))
    PointInTimeRecoverySummary.struct_class = Types::PointInTimeRecoverySummary

    RegionList.member = Shapes::ShapeRef.new(shape: region)

    ReplicationSpecification.add_member(:replication_strategy, Shapes::ShapeRef.new(shape: rs, required: true, location_name: "replicationStrategy"))
    ReplicationSpecification.add_member(:region_list, Shapes::ShapeRef.new(shape: RegionList, location_name: "regionList"))
    ReplicationSpecification.struct_class = Types::ReplicationSpecification

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "resourceArn"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreTableRequest.add_member(:source_keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "sourceKeyspaceName"))
    RestoreTableRequest.add_member(:source_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "sourceTableName"))
    RestoreTableRequest.add_member(:target_keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "targetKeyspaceName"))
    RestoreTableRequest.add_member(:target_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "targetTableName"))
    RestoreTableRequest.add_member(:restore_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "restoreTimestamp"))
    RestoreTableRequest.add_member(:capacity_specification_override, Shapes::ShapeRef.new(shape: CapacitySpecification, location_name: "capacitySpecificationOverride"))
    RestoreTableRequest.add_member(:encryption_specification_override, Shapes::ShapeRef.new(shape: EncryptionSpecification, location_name: "encryptionSpecificationOverride"))
    RestoreTableRequest.add_member(:point_in_time_recovery_override, Shapes::ShapeRef.new(shape: PointInTimeRecovery, location_name: "pointInTimeRecoveryOverride"))
    RestoreTableRequest.add_member(:tags_override, Shapes::ShapeRef.new(shape: TagList, location_name: "tagsOverride"))
    RestoreTableRequest.struct_class = Types::RestoreTableRequest

    RestoreTableResponse.add_member(:restored_table_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "restoredTableARN"))
    RestoreTableResponse.struct_class = Types::RestoreTableResponse

    SchemaDefinition.add_member(:all_columns, Shapes::ShapeRef.new(shape: ColumnDefinitionList, required: true, location_name: "allColumns"))
    SchemaDefinition.add_member(:partition_keys, Shapes::ShapeRef.new(shape: PartitionKeyList, required: true, location_name: "partitionKeys"))
    SchemaDefinition.add_member(:clustering_keys, Shapes::ShapeRef.new(shape: ClusteringKeyList, location_name: "clusteringKeys"))
    SchemaDefinition.add_member(:static_columns, Shapes::ShapeRef.new(shape: StaticColumnList, location_name: "staticColumns"))
    SchemaDefinition.struct_class = Types::SchemaDefinition

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StaticColumn.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "name"))
    StaticColumn.struct_class = Types::StaticColumn

    StaticColumnList.member = Shapes::ShapeRef.new(shape: StaticColumn)

    TableSummary.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    TableSummary.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    TableSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    TableSummary.struct_class = Types::TableSummary

    TableSummaryList.member = Shapes::ShapeRef.new(shape: TableSummary)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TimeToLive.add_member(:status, Shapes::ShapeRef.new(shape: TimeToLiveStatus, required: true, location_name: "status"))
    TimeToLive.struct_class = Types::TimeToLive

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateTableRequest.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    UpdateTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    UpdateTableRequest.add_member(:add_columns, Shapes::ShapeRef.new(shape: ColumnDefinitionList, location_name: "addColumns"))
    UpdateTableRequest.add_member(:capacity_specification, Shapes::ShapeRef.new(shape: CapacitySpecification, location_name: "capacitySpecification"))
    UpdateTableRequest.add_member(:encryption_specification, Shapes::ShapeRef.new(shape: EncryptionSpecification, location_name: "encryptionSpecification"))
    UpdateTableRequest.add_member(:point_in_time_recovery, Shapes::ShapeRef.new(shape: PointInTimeRecovery, location_name: "pointInTimeRecovery"))
    UpdateTableRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: TimeToLive, location_name: "ttl"))
    UpdateTableRequest.add_member(:default_time_to_live, Shapes::ShapeRef.new(shape: DefaultTimeToLive, location_name: "defaultTimeToLive"))
    UpdateTableRequest.add_member(:client_side_timestamps, Shapes::ShapeRef.new(shape: ClientSideTimestamps, location_name: "clientSideTimestamps"))
    UpdateTableRequest.struct_class = Types::UpdateTableRequest

    UpdateTableResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "resourceArn"))
    UpdateTableResponse.struct_class = Types::UpdateTableResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-02-10"

      api.metadata = {
        "apiVersion" => "2022-02-10",
        "endpointPrefix" => "cassandra",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "Amazon Keyspaces",
        "serviceId" => "Keyspaces",
        "signatureVersion" => "v4",
        "signingName" => "cassandra",
        "targetPrefix" => "KeyspacesService",
        "uid" => "keyspaces-2022-02-10",
      }

      api.add_operation(:create_keyspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKeyspace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateKeyspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKeyspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTableRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_keyspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKeyspace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteKeyspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKeyspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_keyspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKeyspace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetKeyspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKeyspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTableRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_keyspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKeyspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListKeyspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKeyspacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTablesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:restore_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreTableRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
