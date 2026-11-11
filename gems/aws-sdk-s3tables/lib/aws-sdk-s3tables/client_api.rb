# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::S3Tables
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChecksumCRC64NVME = Shapes::StringShape.new(name: 'ChecksumCRC64NVME')
    CompleteTableMigrationRequest = Shapes::StructureShape.new(name: 'CompleteTableMigrationRequest')
    CompressionCodec = Shapes::StringShape.new(name: 'CompressionCodec')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateNamespaceRequest = Shapes::StructureShape.new(name: 'CreateNamespaceRequest')
    CreateNamespaceRequestNamespaceList = Shapes::ListShape.new(name: 'CreateNamespaceRequestNamespaceList')
    CreateNamespaceResponse = Shapes::StructureShape.new(name: 'CreateNamespaceResponse')
    CreateTableBucketRequest = Shapes::StructureShape.new(name: 'CreateTableBucketRequest')
    CreateTableBucketResponse = Shapes::StructureShape.new(name: 'CreateTableBucketResponse')
    CreateTableRequest = Shapes::StructureShape.new(name: 'CreateTableRequest')
    CreateTableResponse = Shapes::StructureShape.new(name: 'CreateTableResponse')
    DataFileFormat = Shapes::StringShape.new(name: 'DataFileFormat')
    DataMigrationOverview = Shapes::StructureShape.new(name: 'DataMigrationOverview')
    DataMigrationSettings = Shapes::StructureShape.new(name: 'DataMigrationSettings')
    DeleteNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteNamespaceRequest')
    DeleteTableBucketEncryptionRequest = Shapes::StructureShape.new(name: 'DeleteTableBucketEncryptionRequest')
    DeleteTableBucketMetricsConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteTableBucketMetricsConfigurationRequest')
    DeleteTableBucketPolicyRequest = Shapes::StructureShape.new(name: 'DeleteTableBucketPolicyRequest')
    DeleteTableBucketReplicationRequest = Shapes::StructureShape.new(name: 'DeleteTableBucketReplicationRequest')
    DeleteTableBucketRequest = Shapes::StructureShape.new(name: 'DeleteTableBucketRequest')
    DeleteTablePolicyRequest = Shapes::StructureShape.new(name: 'DeleteTablePolicyRequest')
    DeleteTableReplicationRequest = Shapes::StructureShape.new(name: 'DeleteTableReplicationRequest')
    DeleteTableRequest = Shapes::StructureShape.new(name: 'DeleteTableRequest')
    DestinationTable = Shapes::StructureShape.new(name: 'DestinationTable')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionConfigurationKmsKeyArnString = Shapes::StringShape.new(name: 'EncryptionConfigurationKmsKeyArnString')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FindingCategory = Shapes::StringShape.new(name: 'FindingCategory')
    FindingCategoryCounts = Shapes::MapShape.new(name: 'FindingCategoryCounts')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetNamespaceRequest = Shapes::StructureShape.new(name: 'GetNamespaceRequest')
    GetNamespaceResponse = Shapes::StructureShape.new(name: 'GetNamespaceResponse')
    GetTableBucketEncryptionRequest = Shapes::StructureShape.new(name: 'GetTableBucketEncryptionRequest')
    GetTableBucketEncryptionResponse = Shapes::StructureShape.new(name: 'GetTableBucketEncryptionResponse')
    GetTableBucketLoggingRequest = Shapes::StructureShape.new(name: 'GetTableBucketLoggingRequest')
    GetTableBucketLoggingResponse = Shapes::StructureShape.new(name: 'GetTableBucketLoggingResponse')
    GetTableBucketMaintenanceConfigurationRequest = Shapes::StructureShape.new(name: 'GetTableBucketMaintenanceConfigurationRequest')
    GetTableBucketMaintenanceConfigurationResponse = Shapes::StructureShape.new(name: 'GetTableBucketMaintenanceConfigurationResponse')
    GetTableBucketMetricsConfigurationRequest = Shapes::StructureShape.new(name: 'GetTableBucketMetricsConfigurationRequest')
    GetTableBucketMetricsConfigurationResponse = Shapes::StructureShape.new(name: 'GetTableBucketMetricsConfigurationResponse')
    GetTableBucketPolicyRequest = Shapes::StructureShape.new(name: 'GetTableBucketPolicyRequest')
    GetTableBucketPolicyResponse = Shapes::StructureShape.new(name: 'GetTableBucketPolicyResponse')
    GetTableBucketReplicationRequest = Shapes::StructureShape.new(name: 'GetTableBucketReplicationRequest')
    GetTableBucketReplicationResponse = Shapes::StructureShape.new(name: 'GetTableBucketReplicationResponse')
    GetTableBucketRequest = Shapes::StructureShape.new(name: 'GetTableBucketRequest')
    GetTableBucketResponse = Shapes::StructureShape.new(name: 'GetTableBucketResponse')
    GetTableBucketStorageClassRequest = Shapes::StructureShape.new(name: 'GetTableBucketStorageClassRequest')
    GetTableBucketStorageClassResponse = Shapes::StructureShape.new(name: 'GetTableBucketStorageClassResponse')
    GetTableEncryptionRequest = Shapes::StructureShape.new(name: 'GetTableEncryptionRequest')
    GetTableEncryptionResponse = Shapes::StructureShape.new(name: 'GetTableEncryptionResponse')
    GetTableMaintenanceConfigurationRequest = Shapes::StructureShape.new(name: 'GetTableMaintenanceConfigurationRequest')
    GetTableMaintenanceConfigurationResponse = Shapes::StructureShape.new(name: 'GetTableMaintenanceConfigurationResponse')
    GetTableMaintenanceJobStatusRequest = Shapes::StructureShape.new(name: 'GetTableMaintenanceJobStatusRequest')
    GetTableMaintenanceJobStatusResponse = Shapes::StructureShape.new(name: 'GetTableMaintenanceJobStatusResponse')
    GetTableMetadataLocationRequest = Shapes::StructureShape.new(name: 'GetTableMetadataLocationRequest')
    GetTableMetadataLocationResponse = Shapes::StructureShape.new(name: 'GetTableMetadataLocationResponse')
    GetTableMigrationRequest = Shapes::StructureShape.new(name: 'GetTableMigrationRequest')
    GetTableMigrationResponse = Shapes::StructureShape.new(name: 'GetTableMigrationResponse')
    GetTablePolicyRequest = Shapes::StructureShape.new(name: 'GetTablePolicyRequest')
    GetTablePolicyResponse = Shapes::StructureShape.new(name: 'GetTablePolicyResponse')
    GetTableRecordExpirationConfigurationRequest = Shapes::StructureShape.new(name: 'GetTableRecordExpirationConfigurationRequest')
    GetTableRecordExpirationConfigurationResponse = Shapes::StructureShape.new(name: 'GetTableRecordExpirationConfigurationResponse')
    GetTableRecordExpirationJobStatusRequest = Shapes::StructureShape.new(name: 'GetTableRecordExpirationJobStatusRequest')
    GetTableRecordExpirationJobStatusResponse = Shapes::StructureShape.new(name: 'GetTableRecordExpirationJobStatusResponse')
    GetTableReplicationRequest = Shapes::StructureShape.new(name: 'GetTableReplicationRequest')
    GetTableReplicationResponse = Shapes::StructureShape.new(name: 'GetTableReplicationResponse')
    GetTableReplicationStatusRequest = Shapes::StructureShape.new(name: 'GetTableReplicationStatusRequest')
    GetTableReplicationStatusResponse = Shapes::StructureShape.new(name: 'GetTableReplicationStatusResponse')
    GetTableRequest = Shapes::StructureShape.new(name: 'GetTableRequest')
    GetTableResponse = Shapes::StructureShape.new(name: 'GetTableResponse')
    GetTableStorageClassRequest = Shapes::StructureShape.new(name: 'GetTableStorageClassRequest')
    GetTableStorageClassResponse = Shapes::StructureShape.new(name: 'GetTableStorageClassResponse')
    GlueTableSource = Shapes::StructureShape.new(name: 'GlueTableSource')
    GlueTableSourceCatalogIdString = Shapes::StringShape.new(name: 'GlueTableSourceCatalogIdString')
    GlueTableSourceDatabaseNameString = Shapes::StringShape.new(name: 'GlueTableSourceDatabaseNameString')
    GlueTableSourceTableNameString = Shapes::StringShape.new(name: 'GlueTableSourceTableNameString')
    IAMRole = Shapes::StringShape.new(name: 'IAMRole')
    IcebergCompactionSettings = Shapes::StructureShape.new(name: 'IcebergCompactionSettings')
    IcebergCompactionStrategy = Shapes::StringShape.new(name: 'IcebergCompactionStrategy')
    IcebergMetadata = Shapes::StructureShape.new(name: 'IcebergMetadata')
    IcebergNullOrder = Shapes::StringShape.new(name: 'IcebergNullOrder')
    IcebergPartitionField = Shapes::StructureShape.new(name: 'IcebergPartitionField')
    IcebergPartitionFieldList = Shapes::ListShape.new(name: 'IcebergPartitionFieldList')
    IcebergPartitionSpec = Shapes::StructureShape.new(name: 'IcebergPartitionSpec')
    IcebergSchema = Shapes::StructureShape.new(name: 'IcebergSchema')
    IcebergSchemaV2 = Shapes::StructureShape.new(name: 'IcebergSchemaV2')
    IcebergSnapshotManagementSettings = Shapes::StructureShape.new(name: 'IcebergSnapshotManagementSettings')
    IcebergSortDirection = Shapes::StringShape.new(name: 'IcebergSortDirection')
    IcebergSortField = Shapes::StructureShape.new(name: 'IcebergSortField')
    IcebergSortFieldList = Shapes::ListShape.new(name: 'IcebergSortFieldList')
    IcebergSortOrder = Shapes::StructureShape.new(name: 'IcebergSortOrder')
    IcebergUnreferencedFileRemovalSettings = Shapes::StructureShape.new(name: 'IcebergUnreferencedFileRemovalSettings')
    IncompatibleValuesPolicy = Shapes::StringShape.new(name: 'IncompatibleValuesPolicy')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    LastSuccessfulReplicatedUpdate = Shapes::StructureShape.new(name: 'LastSuccessfulReplicatedUpdate')
    ListNamespacesLimit = Shapes::IntegerShape.new(name: 'ListNamespacesLimit')
    ListNamespacesRequest = Shapes::StructureShape.new(name: 'ListNamespacesRequest')
    ListNamespacesRequestPrefixString = Shapes::StringShape.new(name: 'ListNamespacesRequestPrefixString')
    ListNamespacesResponse = Shapes::StructureShape.new(name: 'ListNamespacesResponse')
    ListTableBucketsLimit = Shapes::IntegerShape.new(name: 'ListTableBucketsLimit')
    ListTableBucketsRequest = Shapes::StructureShape.new(name: 'ListTableBucketsRequest')
    ListTableBucketsRequestPrefixString = Shapes::StringShape.new(name: 'ListTableBucketsRequestPrefixString')
    ListTableBucketsResponse = Shapes::StructureShape.new(name: 'ListTableBucketsResponse')
    ListTableMigrationsLimit = Shapes::IntegerShape.new(name: 'ListTableMigrationsLimit')
    ListTableMigrationsRequest = Shapes::StructureShape.new(name: 'ListTableMigrationsRequest')
    ListTableMigrationsResponse = Shapes::StructureShape.new(name: 'ListTableMigrationsResponse')
    ListTablesLimit = Shapes::IntegerShape.new(name: 'ListTablesLimit')
    ListTablesRequest = Shapes::StructureShape.new(name: 'ListTablesRequest')
    ListTablesRequestPrefixString = Shapes::StringShape.new(name: 'ListTablesRequestPrefixString')
    ListTablesResponse = Shapes::StructureShape.new(name: 'ListTablesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LoggingEnabled = Shapes::StructureShape.new(name: 'LoggingEnabled')
    LoggingTargetBucket = Shapes::StringShape.new(name: 'LoggingTargetBucket')
    LoggingTargetPrefix = Shapes::StringShape.new(name: 'LoggingTargetPrefix')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaintenanceSettings = Shapes::StructureShape.new(name: 'MaintenanceSettings')
    MaintenanceStatus = Shapes::StringShape.new(name: 'MaintenanceStatus')
    ManagedTableInformation = Shapes::StructureShape.new(name: 'ManagedTableInformation')
    MetadataLocation = Shapes::StringShape.new(name: 'MetadataLocation')
    MethodNotAllowedException = Shapes::StructureShape.new(name: 'MethodNotAllowedException')
    MigrationCompactionSettings = Shapes::StructureShape.new(name: 'MigrationCompactionSettings')
    MigrationFailureCode = Shapes::StringShape.new(name: 'MigrationFailureCode')
    MigrationFailureDetail = Shapes::StringShape.new(name: 'MigrationFailureDetail')
    MigrationFailureReason = Shapes::StructureShape.new(name: 'MigrationFailureReason')
    MigrationId = Shapes::StringShape.new(name: 'MigrationId')
    MigrationMinSnapshotsToKeep = Shapes::IntegerShape.new(name: 'MigrationMinSnapshotsToKeep')
    MigrationOutputConfiguration = Shapes::StructureShape.new(name: 'MigrationOutputConfiguration')
    MigrationOutputOverview = Shapes::StructureShape.new(name: 'MigrationOutputOverview')
    MigrationPolicies = Shapes::StructureShape.new(name: 'MigrationPolicies')
    MigrationReportPrefix = Shapes::StringShape.new(name: 'MigrationReportPrefix')
    MigrationReportPrefixes = Shapes::StructureShape.new(name: 'MigrationReportPrefixes')
    MigrationRequestedState = Shapes::StringShape.new(name: 'MigrationRequestedState')
    MigrationSnapshotManagementSettings = Shapes::StructureShape.new(name: 'MigrationSnapshotManagementSettings')
    MigrationSourceType = Shapes::StringShape.new(name: 'MigrationSourceType')
    MigrationState = Shapes::StringShape.new(name: 'MigrationState')
    MigrationStats = Shapes::StructureShape.new(name: 'MigrationStats')
    MigrationSummary = Shapes::StructureShape.new(name: 'MigrationSummary')
    MigrationSummaryList = Shapes::ListShape.new(name: 'MigrationSummaryList')
    MigrationTableProperties = Shapes::StructureShape.new(name: 'MigrationTableProperties')
    MigrationTargetFileSizeMB = Shapes::IntegerShape.new(name: 'MigrationTargetFileSizeMB')
    MigrationType = Shapes::StringShape.new(name: 'MigrationType')
    NamespaceId = Shapes::StringShape.new(name: 'NamespaceId')
    NamespaceList = Shapes::ListShape.new(name: 'NamespaceList')
    NamespaceName = Shapes::StringShape.new(name: 'NamespaceName')
    NamespaceSummary = Shapes::StructureShape.new(name: 'NamespaceSummary')
    NamespaceSummaryList = Shapes::ListShape.new(name: 'NamespaceSummaryList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OpenTableFormat = Shapes::StringShape.new(name: 'OpenTableFormat')
    PartitionDateSource = Shapes::StringShape.new(name: 'PartitionDateSource')
    PartitionedPrefix = Shapes::StructureShape.new(name: 'PartitionedPrefix')
    PlanningStats = Shapes::StructureShape.new(name: 'PlanningStats')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PutTableBucketEncryptionRequest = Shapes::StructureShape.new(name: 'PutTableBucketEncryptionRequest')
    PutTableBucketLoggingRequest = Shapes::StructureShape.new(name: 'PutTableBucketLoggingRequest')
    PutTableBucketMaintenanceConfigurationRequest = Shapes::StructureShape.new(name: 'PutTableBucketMaintenanceConfigurationRequest')
    PutTableBucketMetricsConfigurationRequest = Shapes::StructureShape.new(name: 'PutTableBucketMetricsConfigurationRequest')
    PutTableBucketPolicyRequest = Shapes::StructureShape.new(name: 'PutTableBucketPolicyRequest')
    PutTableBucketReplicationRequest = Shapes::StructureShape.new(name: 'PutTableBucketReplicationRequest')
    PutTableBucketReplicationResponse = Shapes::StructureShape.new(name: 'PutTableBucketReplicationResponse')
    PutTableBucketStorageClassRequest = Shapes::StructureShape.new(name: 'PutTableBucketStorageClassRequest')
    PutTableMaintenanceConfigurationRequest = Shapes::StructureShape.new(name: 'PutTableMaintenanceConfigurationRequest')
    PutTablePolicyRequest = Shapes::StructureShape.new(name: 'PutTablePolicyRequest')
    PutTableRecordExpirationConfigurationRequest = Shapes::StructureShape.new(name: 'PutTableRecordExpirationConfigurationRequest')
    PutTableReplicationRequest = Shapes::StructureShape.new(name: 'PutTableReplicationRequest')
    PutTableReplicationResponse = Shapes::StructureShape.new(name: 'PutTableReplicationResponse')
    RenameTableRequest = Shapes::StructureShape.new(name: 'RenameTableRequest')
    ReplicationDestination = Shapes::StructureShape.new(name: 'ReplicationDestination')
    ReplicationDestinationStatusModel = Shapes::StructureShape.new(name: 'ReplicationDestinationStatusModel')
    ReplicationDestinationStatuses = Shapes::ListShape.new(name: 'ReplicationDestinationStatuses')
    ReplicationDestinations = Shapes::ListShape.new(name: 'ReplicationDestinations')
    ReplicationInformation = Shapes::StructureShape.new(name: 'ReplicationInformation')
    ReplicationStatus = Shapes::StringShape.new(name: 'ReplicationStatus')
    ReportObjectKey = Shapes::StringShape.new(name: 'ReportObjectKey')
    ReportOverview = Shapes::StructureShape.new(name: 'ReportOverview')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketARN = Shapes::StringShape.new(name: 'S3BucketARN')
    SSEAlgorithm = Shapes::StringShape.new(name: 'SSEAlgorithm')
    SchemaField = Shapes::StructureShape.new(name: 'SchemaField')
    SchemaFieldList = Shapes::ListShape.new(name: 'SchemaFieldList')
    SchemaV2Field = Shapes::StructureShape.new(name: 'SchemaV2Field')
    SchemaV2FieldList = Shapes::ListShape.new(name: 'SchemaV2FieldList')
    SchemaV2FieldType = Shapes::StringShape.new(name: 'SchemaV2FieldType')
    SourceConfiguration = Shapes::UnionShape.new(name: 'SourceConfiguration')
    StartTableMigrationRequest = Shapes::StructureShape.new(name: 'StartTableMigrationRequest')
    StartTableMigrationResponse = Shapes::StructureShape.new(name: 'StartTableMigrationResponse')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    StorageClassConfiguration = Shapes::StructureShape.new(name: 'StorageClassConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    SyncTableMigrationRequest = Shapes::StructureShape.new(name: 'SyncTableMigrationRequest')
    SyncTableMigrationResponse = Shapes::StructureShape.new(name: 'SyncTableMigrationResponse')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TableARN = Shapes::StringShape.new(name: 'TableARN')
    TableBucketARN = Shapes::StringShape.new(name: 'TableBucketARN')
    TableBucketId = Shapes::StringShape.new(name: 'TableBucketId')
    TableBucketLoggingStatus = Shapes::StructureShape.new(name: 'TableBucketLoggingStatus')
    TableBucketMaintenanceConfiguration = Shapes::MapShape.new(name: 'TableBucketMaintenanceConfiguration')
    TableBucketMaintenanceConfigurationValue = Shapes::StructureShape.new(name: 'TableBucketMaintenanceConfigurationValue')
    TableBucketMaintenanceSettings = Shapes::UnionShape.new(name: 'TableBucketMaintenanceSettings')
    TableBucketMaintenanceType = Shapes::StringShape.new(name: 'TableBucketMaintenanceType')
    TableBucketName = Shapes::StringShape.new(name: 'TableBucketName')
    TableBucketReplicationConfiguration = Shapes::StructureShape.new(name: 'TableBucketReplicationConfiguration')
    TableBucketReplicationRule = Shapes::StructureShape.new(name: 'TableBucketReplicationRule')
    TableBucketReplicationRules = Shapes::ListShape.new(name: 'TableBucketReplicationRules')
    TableBucketSummary = Shapes::StructureShape.new(name: 'TableBucketSummary')
    TableBucketSummaryList = Shapes::ListShape.new(name: 'TableBucketSummaryList')
    TableBucketType = Shapes::StringShape.new(name: 'TableBucketType')
    TableMaintenanceConfiguration = Shapes::MapShape.new(name: 'TableMaintenanceConfiguration')
    TableMaintenanceConfigurationValue = Shapes::StructureShape.new(name: 'TableMaintenanceConfigurationValue')
    TableMaintenanceJobStatus = Shapes::MapShape.new(name: 'TableMaintenanceJobStatus')
    TableMaintenanceJobStatusValue = Shapes::StructureShape.new(name: 'TableMaintenanceJobStatusValue')
    TableMaintenanceJobType = Shapes::StringShape.new(name: 'TableMaintenanceJobType')
    TableMaintenanceSettings = Shapes::UnionShape.new(name: 'TableMaintenanceSettings')
    TableMaintenanceType = Shapes::StringShape.new(name: 'TableMaintenanceType')
    TableMetadata = Shapes::UnionShape.new(name: 'TableMetadata')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableProperties = Shapes::MapShape.new(name: 'TableProperties')
    TableRecordExpirationConfigurationValue = Shapes::StructureShape.new(name: 'TableRecordExpirationConfigurationValue')
    TableRecordExpirationJobMetrics = Shapes::StructureShape.new(name: 'TableRecordExpirationJobMetrics')
    TableRecordExpirationJobStatus = Shapes::StringShape.new(name: 'TableRecordExpirationJobStatus')
    TableRecordExpirationSettings = Shapes::StructureShape.new(name: 'TableRecordExpirationSettings')
    TableRecordExpirationStatus = Shapes::StringShape.new(name: 'TableRecordExpirationStatus')
    TableReplicationConfiguration = Shapes::StructureShape.new(name: 'TableReplicationConfiguration')
    TableReplicationRule = Shapes::StructureShape.new(name: 'TableReplicationRule')
    TableReplicationRules = Shapes::ListShape.new(name: 'TableReplicationRules')
    TableSummary = Shapes::StructureShape.new(name: 'TableSummary')
    TableSummaryList = Shapes::ListShape.new(name: 'TableSummaryList')
    TableType = Shapes::StringShape.new(name: 'TableType')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TargetObjectKeyFormat = Shapes::StructureShape.new(name: 'TargetObjectKeyFormat')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnmatchedSourceFieldsPolicy = Shapes::StringShape.new(name: 'UnmatchedSourceFieldsPolicy')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateTableMetadataLocationRequest = Shapes::StructureShape.new(name: 'UpdateTableMetadataLocationRequest')
    UpdateTableMetadataLocationResponse = Shapes::StructureShape.new(name: 'UpdateTableMetadataLocationResponse')
    UpdateTableMigrationRequest = Shapes::StructureShape.new(name: 'UpdateTableMigrationRequest')
    UpdateTableMigrationRequestUpdateDescriptionString = Shapes::StringShape.new(name: 'UpdateTableMigrationRequestUpdateDescriptionString')
    UpdateTableMigrationResponse = Shapes::StructureShape.new(name: 'UpdateTableMigrationResponse')
    VersionToken = Shapes::StringShape.new(name: 'VersionToken')
    WarehouseLocation = Shapes::StringShape.new(name: 'WarehouseLocation')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    CompleteTableMigrationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location: "querystring", location_name: "tableARN"))
    CompleteTableMigrationRequest.struct_class = Types::CompleteTableMigrationRequest

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateNamespaceRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    CreateNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: CreateNamespaceRequestNamespaceList, required: true, location_name: "namespace"))
    CreateNamespaceRequest.struct_class = Types::CreateNamespaceRequest

    CreateNamespaceRequestNamespaceList.member = Shapes::ShapeRef.new(shape: NamespaceName)

    CreateNamespaceResponse.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "tableBucketARN"))
    CreateNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    CreateNamespaceResponse.struct_class = Types::CreateNamespaceResponse

    CreateTableBucketRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableBucketName, required: true, location_name: "name"))
    CreateTableBucketRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateTableBucketRequest.add_member(:storage_class_configuration, Shapes::ShapeRef.new(shape: StorageClassConfiguration, location_name: "storageClassConfiguration"))
    CreateTableBucketRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateTableBucketRequest.struct_class = Types::CreateTableBucketRequest

    CreateTableBucketResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "arn"))
    CreateTableBucketResponse.struct_class = Types::CreateTableBucketResponse

    CreateTableRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    CreateTableRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    CreateTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    CreateTableRequest.add_member(:format, Shapes::ShapeRef.new(shape: OpenTableFormat, required: true, location_name: "format"))
    CreateTableRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: TableMetadata, location_name: "metadata"))
    CreateTableRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateTableRequest.add_member(:storage_class_configuration, Shapes::ShapeRef.new(shape: StorageClassConfiguration, location_name: "storageClassConfiguration"))
    CreateTableRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateTableRequest.struct_class = Types::CreateTableRequest

    CreateTableResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    CreateTableResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, required: true, location_name: "versionToken"))
    CreateTableResponse.struct_class = Types::CreateTableResponse

    DataMigrationOverview.add_member(:maintenance_settings, Shapes::ShapeRef.new(shape: MaintenanceSettings, required: true, location_name: "maintenanceSettings"))
    DataMigrationOverview.add_member(:migration_policies, Shapes::ShapeRef.new(shape: MigrationPolicies, required: true, location_name: "migrationPolicies"))
    DataMigrationOverview.struct_class = Types::DataMigrationOverview

    DataMigrationSettings.add_member(:maintenance_settings, Shapes::ShapeRef.new(shape: MaintenanceSettings, location_name: "maintenanceSettings"))
    DataMigrationSettings.add_member(:migration_policies, Shapes::ShapeRef.new(shape: MigrationPolicies, location_name: "migrationPolicies"))
    DataMigrationSettings.struct_class = Types::DataMigrationSettings

    DeleteNamespaceRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    DeleteNamespaceRequest.struct_class = Types::DeleteNamespaceRequest

    DeleteTableBucketEncryptionRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTableBucketEncryptionRequest.struct_class = Types::DeleteTableBucketEncryptionRequest

    DeleteTableBucketMetricsConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTableBucketMetricsConfigurationRequest.struct_class = Types::DeleteTableBucketMetricsConfigurationRequest

    DeleteTableBucketPolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTableBucketPolicyRequest.struct_class = Types::DeleteTableBucketPolicyRequest

    DeleteTableBucketReplicationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "querystring", location_name: "tableBucketARN"))
    DeleteTableBucketReplicationRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, location: "querystring", location_name: "versionToken"))
    DeleteTableBucketReplicationRequest.struct_class = Types::DeleteTableBucketReplicationRequest

    DeleteTableBucketRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTableBucketRequest.struct_class = Types::DeleteTableBucketRequest

    DeleteTablePolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTablePolicyRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    DeleteTablePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    DeleteTablePolicyRequest.struct_class = Types::DeleteTablePolicyRequest

    DeleteTableReplicationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location: "querystring", location_name: "tableArn"))
    DeleteTableReplicationRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "versionToken"))
    DeleteTableReplicationRequest.struct_class = Types::DeleteTableReplicationRequest

    DeleteTableRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTableRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    DeleteTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    DeleteTableRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, location: "querystring", location_name: "versionToken"))
    DeleteTableRequest.struct_class = Types::DeleteTableRequest

    DestinationTable.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "tableBucketARN"))
    DestinationTable.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespace"))
    DestinationTable.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    DestinationTable.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    DestinationTable.add_member(:storage_class_configuration, Shapes::ShapeRef.new(shape: StorageClassConfiguration, location_name: "storageClassConfiguration"))
    DestinationTable.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DestinationTable.add_member(:properties, Shapes::ShapeRef.new(shape: MigrationTableProperties, location_name: "properties"))
    DestinationTable.add_member(:schema, Shapes::ShapeRef.new(shape: IcebergSchemaV2, location_name: "schema"))
    DestinationTable.add_member(:iceberg_sort_order, Shapes::ShapeRef.new(shape: IcebergSortOrder, location_name: "icebergSortOrder"))
    DestinationTable.struct_class = Types::DestinationTable

    EncryptionConfiguration.add_member(:sse_algorithm, Shapes::ShapeRef.new(shape: SSEAlgorithm, required: true, location_name: "sseAlgorithm"))
    EncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: EncryptionConfigurationKmsKeyArnString, location_name: "kmsKeyArn"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    FindingCategoryCounts.key = Shapes::ShapeRef.new(shape: FindingCategory)
    FindingCategoryCounts.value = Shapes::ShapeRef.new(shape: Long)

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetNamespaceRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetNamespaceRequest.struct_class = Types::GetNamespaceRequest

    GetNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    GetNamespaceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetNamespaceResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "createdBy"))
    GetNamespaceResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    GetNamespaceResponse.add_member(:namespace_id, Shapes::ShapeRef.new(shape: NamespaceId, location_name: "namespaceId"))
    GetNamespaceResponse.add_member(:table_bucket_id, Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    GetNamespaceResponse.struct_class = Types::GetNamespaceResponse

    GetTableBucketEncryptionRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketEncryptionRequest.struct_class = Types::GetTableBucketEncryptionRequest

    GetTableBucketEncryptionResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, required: true, location_name: "encryptionConfiguration"))
    GetTableBucketEncryptionResponse.struct_class = Types::GetTableBucketEncryptionResponse

    GetTableBucketLoggingRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketLoggingRequest.struct_class = Types::GetTableBucketLoggingRequest

    GetTableBucketLoggingResponse.add_member(:table_bucket_logging_status, Shapes::ShapeRef.new(shape: TableBucketLoggingStatus, required: true, location_name: "tableBucketLoggingStatus"))
    GetTableBucketLoggingResponse.struct_class = Types::GetTableBucketLoggingResponse

    GetTableBucketMaintenanceConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketMaintenanceConfigurationRequest.struct_class = Types::GetTableBucketMaintenanceConfigurationRequest

    GetTableBucketMaintenanceConfigurationResponse.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "tableBucketARN"))
    GetTableBucketMaintenanceConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: TableBucketMaintenanceConfiguration, required: true, location_name: "configuration"))
    GetTableBucketMaintenanceConfigurationResponse.struct_class = Types::GetTableBucketMaintenanceConfigurationResponse

    GetTableBucketMetricsConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketMetricsConfigurationRequest.struct_class = Types::GetTableBucketMetricsConfigurationRequest

    GetTableBucketMetricsConfigurationResponse.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "tableBucketARN"))
    GetTableBucketMetricsConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetTableBucketMetricsConfigurationResponse.struct_class = Types::GetTableBucketMetricsConfigurationResponse

    GetTableBucketPolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketPolicyRequest.struct_class = Types::GetTableBucketPolicyRequest

    GetTableBucketPolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "resourcePolicy"))
    GetTableBucketPolicyResponse.struct_class = Types::GetTableBucketPolicyResponse

    GetTableBucketReplicationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "querystring", location_name: "tableBucketARN"))
    GetTableBucketReplicationRequest.struct_class = Types::GetTableBucketReplicationRequest

    GetTableBucketReplicationResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, required: true, location_name: "versionToken"))
    GetTableBucketReplicationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: TableBucketReplicationConfiguration, required: true, location_name: "configuration"))
    GetTableBucketReplicationResponse.struct_class = Types::GetTableBucketReplicationResponse

    GetTableBucketRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketRequest.struct_class = Types::GetTableBucketRequest

    GetTableBucketResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "arn"))
    GetTableBucketResponse.add_member(:name, Shapes::ShapeRef.new(shape: TableBucketName, required: true, location_name: "name"))
    GetTableBucketResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    GetTableBucketResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetTableBucketResponse.add_member(:table_bucket_id, Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    GetTableBucketResponse.add_member(:type, Shapes::ShapeRef.new(shape: TableBucketType, location_name: "type"))
    GetTableBucketResponse.struct_class = Types::GetTableBucketResponse

    GetTableBucketStorageClassRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketStorageClassRequest.struct_class = Types::GetTableBucketStorageClassRequest

    GetTableBucketStorageClassResponse.add_member(:storage_class_configuration, Shapes::ShapeRef.new(shape: StorageClassConfiguration, required: true, location_name: "storageClassConfiguration"))
    GetTableBucketStorageClassResponse.struct_class = Types::GetTableBucketStorageClassResponse

    GetTableEncryptionRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableEncryptionRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetTableEncryptionRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    GetTableEncryptionRequest.struct_class = Types::GetTableEncryptionRequest

    GetTableEncryptionResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, required: true, location_name: "encryptionConfiguration"))
    GetTableEncryptionResponse.struct_class = Types::GetTableEncryptionResponse

    GetTableMaintenanceConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableMaintenanceConfigurationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetTableMaintenanceConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    GetTableMaintenanceConfigurationRequest.struct_class = Types::GetTableMaintenanceConfigurationRequest

    GetTableMaintenanceConfigurationResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    GetTableMaintenanceConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: TableMaintenanceConfiguration, required: true, location_name: "configuration"))
    GetTableMaintenanceConfigurationResponse.struct_class = Types::GetTableMaintenanceConfigurationResponse

    GetTableMaintenanceJobStatusRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableMaintenanceJobStatusRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetTableMaintenanceJobStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    GetTableMaintenanceJobStatusRequest.struct_class = Types::GetTableMaintenanceJobStatusRequest

    GetTableMaintenanceJobStatusResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    GetTableMaintenanceJobStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: TableMaintenanceJobStatus, required: true, location_name: "status"))
    GetTableMaintenanceJobStatusResponse.struct_class = Types::GetTableMaintenanceJobStatusResponse

    GetTableMetadataLocationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableMetadataLocationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetTableMetadataLocationRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    GetTableMetadataLocationRequest.struct_class = Types::GetTableMetadataLocationRequest

    GetTableMetadataLocationResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, required: true, location_name: "versionToken"))
    GetTableMetadataLocationResponse.add_member(:metadata_location, Shapes::ShapeRef.new(shape: MetadataLocation, location_name: "metadataLocation"))
    GetTableMetadataLocationResponse.add_member(:warehouse_location, Shapes::ShapeRef.new(shape: WarehouseLocation, required: true, location_name: "warehouseLocation"))
    GetTableMetadataLocationResponse.struct_class = Types::GetTableMetadataLocationResponse

    GetTableMigrationRequest.add_member(:migration_id, Shapes::ShapeRef.new(shape: MigrationId, location: "querystring", location_name: "migrationId"))
    GetTableMigrationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, location: "querystring", location_name: "tableARN"))
    GetTableMigrationRequest.struct_class = Types::GetTableMigrationRequest

    GetTableMigrationResponse.add_member(:migration_id, Shapes::ShapeRef.new(shape: MigrationId, required: true, location_name: "migrationId"))
    GetTableMigrationResponse.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "tableBucketARN"))
    GetTableMigrationResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespace"))
    GetTableMigrationResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN"))
    GetTableMigrationResponse.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    GetTableMigrationResponse.add_member(:type, Shapes::ShapeRef.new(shape: MigrationType, required: true, location_name: "type"))
    GetTableMigrationResponse.add_member(:state, Shapes::ShapeRef.new(shape: MigrationState, required: true, location_name: "state"))
    GetTableMigrationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleARN"))
    GetTableMigrationResponse.add_member(:review_migration_plan, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "reviewMigrationPlan"))
    GetTableMigrationResponse.add_member(:has_valid_plan, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasValidPlan"))
    GetTableMigrationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetTableMigrationResponse.add_member(:state_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "stateUpdatedAt"))
    GetTableMigrationResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: MigrationFailureReason, location_name: "failureReason"))
    GetTableMigrationResponse.add_member(:planning_stats, Shapes::ShapeRef.new(shape: PlanningStats, location_name: "planningStats"))
    GetTableMigrationResponse.add_member(:migration_stats, Shapes::ShapeRef.new(shape: MigrationStats, location_name: "migrationStats"))
    GetTableMigrationResponse.add_member(:source_type, Shapes::ShapeRef.new(shape: MigrationSourceType, required: true, location_name: "sourceType"))
    GetTableMigrationResponse.add_member(:source, Shapes::ShapeRef.new(shape: SourceConfiguration, required: true, location_name: "source"))
    GetTableMigrationResponse.add_member(:data_migration, Shapes::ShapeRef.new(shape: DataMigrationOverview, required: true, location_name: "dataMigration"))
    GetTableMigrationResponse.add_member(:migration_output, Shapes::ShapeRef.new(shape: MigrationOutputOverview, required: true, location_name: "migrationOutput"))
    GetTableMigrationResponse.struct_class = Types::GetTableMigrationResponse

    GetTablePolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTablePolicyRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetTablePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    GetTablePolicyRequest.struct_class = Types::GetTablePolicyRequest

    GetTablePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "resourcePolicy"))
    GetTablePolicyResponse.struct_class = Types::GetTablePolicyResponse

    GetTableRecordExpirationConfigurationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location: "querystring", location_name: "tableArn"))
    GetTableRecordExpirationConfigurationRequest.struct_class = Types::GetTableRecordExpirationConfigurationRequest

    GetTableRecordExpirationConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: TableRecordExpirationConfigurationValue, required: true, location_name: "configuration"))
    GetTableRecordExpirationConfigurationResponse.struct_class = Types::GetTableRecordExpirationConfigurationResponse

    GetTableRecordExpirationJobStatusRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location: "querystring", location_name: "tableArn"))
    GetTableRecordExpirationJobStatusRequest.struct_class = Types::GetTableRecordExpirationJobStatusRequest

    GetTableRecordExpirationJobStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: TableRecordExpirationJobStatus, required: true, location_name: "status"))
    GetTableRecordExpirationJobStatusResponse.add_member(:last_run_timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastRunTimestamp"))
    GetTableRecordExpirationJobStatusResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    GetTableRecordExpirationJobStatusResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: TableRecordExpirationJobMetrics, location_name: "metrics"))
    GetTableRecordExpirationJobStatusResponse.struct_class = Types::GetTableRecordExpirationJobStatusResponse

    GetTableReplicationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location: "querystring", location_name: "tableArn"))
    GetTableReplicationRequest.struct_class = Types::GetTableReplicationRequest

    GetTableReplicationResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "versionToken"))
    GetTableReplicationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: TableReplicationConfiguration, required: true, location_name: "configuration"))
    GetTableReplicationResponse.struct_class = Types::GetTableReplicationResponse

    GetTableReplicationStatusRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location: "querystring", location_name: "tableArn"))
    GetTableReplicationStatusRequest.struct_class = Types::GetTableReplicationStatusRequest

    GetTableReplicationStatusResponse.add_member(:source_table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "sourceTableArn"))
    GetTableReplicationStatusResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: ReplicationDestinationStatuses, required: true, location_name: "destinations"))
    GetTableReplicationStatusResponse.struct_class = Types::GetTableReplicationStatusResponse

    GetTableRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, location: "querystring", location_name: "tableBucketARN"))
    GetTableRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, location: "querystring", location_name: "namespace"))
    GetTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, location: "querystring", location_name: "name"))
    GetTableRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, location: "querystring", location_name: "tableArn"))
    GetTableRequest.struct_class = Types::GetTableRequest

    GetTableResponse.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    GetTableResponse.add_member(:type, Shapes::ShapeRef.new(shape: TableType, required: true, location_name: "type"))
    GetTableResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    GetTableResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    GetTableResponse.add_member(:namespace_id, Shapes::ShapeRef.new(shape: NamespaceId, location_name: "namespaceId"))
    GetTableResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, required: true, location_name: "versionToken"))
    GetTableResponse.add_member(:metadata_location, Shapes::ShapeRef.new(shape: MetadataLocation, location_name: "metadataLocation"))
    GetTableResponse.add_member(:warehouse_location, Shapes::ShapeRef.new(shape: WarehouseLocation, required: true, location_name: "warehouseLocation"))
    GetTableResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetTableResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "createdBy"))
    GetTableResponse.add_member(:managed_by_service, Shapes::ShapeRef.new(shape: String, location_name: "managedByService"))
    GetTableResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    GetTableResponse.add_member(:modified_by, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "modifiedBy"))
    GetTableResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    GetTableResponse.add_member(:format, Shapes::ShapeRef.new(shape: OpenTableFormat, required: true, location_name: "format"))
    GetTableResponse.add_member(:table_bucket_id, Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    GetTableResponse.add_member(:managed_table_information, Shapes::ShapeRef.new(shape: ManagedTableInformation, location_name: "managedTableInformation"))
    GetTableResponse.struct_class = Types::GetTableResponse

    GetTableStorageClassRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableStorageClassRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetTableStorageClassRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    GetTableStorageClassRequest.struct_class = Types::GetTableStorageClassRequest

    GetTableStorageClassResponse.add_member(:storage_class_configuration, Shapes::ShapeRef.new(shape: StorageClassConfiguration, required: true, location_name: "storageClassConfiguration"))
    GetTableStorageClassResponse.struct_class = Types::GetTableStorageClassResponse

    GlueTableSource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: GlueTableSourceCatalogIdString, required: true, location_name: "catalogId"))
    GlueTableSource.add_member(:database_name, Shapes::ShapeRef.new(shape: GlueTableSourceDatabaseNameString, required: true, location_name: "databaseName"))
    GlueTableSource.add_member(:table_name, Shapes::ShapeRef.new(shape: GlueTableSourceTableNameString, required: true, location_name: "tableName"))
    GlueTableSource.struct_class = Types::GlueTableSource

    IcebergCompactionSettings.add_member(:target_file_size_mb, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "targetFileSizeMB"))
    IcebergCompactionSettings.add_member(:strategy, Shapes::ShapeRef.new(shape: IcebergCompactionStrategy, location_name: "strategy"))
    IcebergCompactionSettings.struct_class = Types::IcebergCompactionSettings

    IcebergMetadata.add_member(:schema, Shapes::ShapeRef.new(shape: IcebergSchema, location_name: "schema"))
    IcebergMetadata.add_member(:schema_v2, Shapes::ShapeRef.new(shape: IcebergSchemaV2, location_name: "schemaV2"))
    IcebergMetadata.add_member(:partition_spec, Shapes::ShapeRef.new(shape: IcebergPartitionSpec, location_name: "partitionSpec"))
    IcebergMetadata.add_member(:write_order, Shapes::ShapeRef.new(shape: IcebergSortOrder, location_name: "writeOrder"))
    IcebergMetadata.add_member(:properties, Shapes::ShapeRef.new(shape: TableProperties, location_name: "properties"))
    IcebergMetadata.struct_class = Types::IcebergMetadata

    IcebergPartitionField.add_member(:source_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "source-id"))
    IcebergPartitionField.add_member(:transform, Shapes::ShapeRef.new(shape: String, required: true, location_name: "transform"))
    IcebergPartitionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    IcebergPartitionField.add_member(:field_id, Shapes::ShapeRef.new(shape: Integer, location_name: "field-id"))
    IcebergPartitionField.struct_class = Types::IcebergPartitionField

    IcebergPartitionFieldList.member = Shapes::ShapeRef.new(shape: IcebergPartitionField)

    IcebergPartitionSpec.add_member(:fields, Shapes::ShapeRef.new(shape: IcebergPartitionFieldList, required: true, location_name: "fields"))
    IcebergPartitionSpec.add_member(:spec_id, Shapes::ShapeRef.new(shape: Integer, location_name: "spec-id"))
    IcebergPartitionSpec.struct_class = Types::IcebergPartitionSpec

    IcebergSchema.add_member(:fields, Shapes::ShapeRef.new(shape: SchemaFieldList, required: true, location_name: "fields"))
    IcebergSchema.struct_class = Types::IcebergSchema

    IcebergSchemaV2.add_member(:type, Shapes::ShapeRef.new(shape: SchemaV2FieldType, required: true, location_name: "type"))
    IcebergSchemaV2.add_member(:fields, Shapes::ShapeRef.new(shape: SchemaV2FieldList, required: true, location_name: "fields"))
    IcebergSchemaV2.add_member(:schema_id, Shapes::ShapeRef.new(shape: Integer, location_name: "schema-id"))
    IcebergSchemaV2.add_member(:identifier_field_ids, Shapes::ShapeRef.new(shape: IntegerList, location_name: "identifier-field-ids"))
    IcebergSchemaV2.struct_class = Types::IcebergSchemaV2

    IcebergSnapshotManagementSettings.add_member(:min_snapshots_to_keep, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "minSnapshotsToKeep"))
    IcebergSnapshotManagementSettings.add_member(:max_snapshot_age_hours, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "maxSnapshotAgeHours"))
    IcebergSnapshotManagementSettings.struct_class = Types::IcebergSnapshotManagementSettings

    IcebergSortField.add_member(:source_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "source-id"))
    IcebergSortField.add_member(:transform, Shapes::ShapeRef.new(shape: String, required: true, location_name: "transform"))
    IcebergSortField.add_member(:direction, Shapes::ShapeRef.new(shape: IcebergSortDirection, required: true, location_name: "direction"))
    IcebergSortField.add_member(:null_order, Shapes::ShapeRef.new(shape: IcebergNullOrder, required: true, location_name: "null-order"))
    IcebergSortField.struct_class = Types::IcebergSortField

    IcebergSortFieldList.member = Shapes::ShapeRef.new(shape: IcebergSortField)

    IcebergSortOrder.add_member(:order_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "order-id"))
    IcebergSortOrder.add_member(:fields, Shapes::ShapeRef.new(shape: IcebergSortFieldList, required: true, location_name: "fields"))
    IcebergSortOrder.struct_class = Types::IcebergSortOrder

    IcebergUnreferencedFileRemovalSettings.add_member(:unreferenced_days, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "unreferencedDays"))
    IcebergUnreferencedFileRemovalSettings.add_member(:non_current_days, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "nonCurrentDays"))
    IcebergUnreferencedFileRemovalSettings.struct_class = Types::IcebergUnreferencedFileRemovalSettings

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    LastSuccessfulReplicatedUpdate.add_member(:metadata_location, Shapes::ShapeRef.new(shape: MetadataLocation, required: true, location_name: "metadataLocation"))
    LastSuccessfulReplicatedUpdate.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "timestamp"))
    LastSuccessfulReplicatedUpdate.struct_class = Types::LastSuccessfulReplicatedUpdate

    ListNamespacesRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    ListNamespacesRequest.add_member(:prefix, Shapes::ShapeRef.new(shape: ListNamespacesRequestPrefixString, location: "querystring", location_name: "prefix"))
    ListNamespacesRequest.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "continuationToken"))
    ListNamespacesRequest.add_member(:max_namespaces, Shapes::ShapeRef.new(shape: ListNamespacesLimit, location: "querystring", location_name: "maxNamespaces"))
    ListNamespacesRequest.struct_class = Types::ListNamespacesRequest

    ListNamespacesResponse.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespaceSummaryList, required: true, location_name: "namespaces"))
    ListNamespacesResponse.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken"))
    ListNamespacesResponse.struct_class = Types::ListNamespacesResponse

    ListTableBucketsRequest.add_member(:prefix, Shapes::ShapeRef.new(shape: ListTableBucketsRequestPrefixString, location: "querystring", location_name: "prefix"))
    ListTableBucketsRequest.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "continuationToken"))
    ListTableBucketsRequest.add_member(:max_buckets, Shapes::ShapeRef.new(shape: ListTableBucketsLimit, location: "querystring", location_name: "maxBuckets"))
    ListTableBucketsRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableBucketType, location: "querystring", location_name: "type"))
    ListTableBucketsRequest.struct_class = Types::ListTableBucketsRequest

    ListTableBucketsResponse.add_member(:table_buckets, Shapes::ShapeRef.new(shape: TableBucketSummaryList, required: true, location_name: "tableBuckets"))
    ListTableBucketsResponse.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken"))
    ListTableBucketsResponse.struct_class = Types::ListTableBucketsResponse

    ListTableMigrationsRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, location: "querystring", location_name: "tableBucketARN"))
    ListTableMigrationsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, location: "querystring", location_name: "namespace"))
    ListTableMigrationsRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, location: "querystring", location_name: "name"))
    ListTableMigrationsRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, location: "querystring", location_name: "tableARN"))
    ListTableMigrationsRequest.add_member(:state, Shapes::ShapeRef.new(shape: MigrationState, location: "querystring", location_name: "state"))
    ListTableMigrationsRequest.add_member(:has_valid_plan, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "hasValidPlan"))
    ListTableMigrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTableMigrationsLimit, location: "querystring", location_name: "maxResults"))
    ListTableMigrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTableMigrationsRequest.struct_class = Types::ListTableMigrationsRequest

    ListTableMigrationsResponse.add_member(:migrations, Shapes::ShapeRef.new(shape: MigrationSummaryList, required: true, location_name: "migrations"))
    ListTableMigrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTableMigrationsResponse.struct_class = Types::ListTableMigrationsResponse

    ListTablesRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    ListTablesRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, location: "querystring", location_name: "namespace"))
    ListTablesRequest.add_member(:prefix, Shapes::ShapeRef.new(shape: ListTablesRequestPrefixString, location: "querystring", location_name: "prefix"))
    ListTablesRequest.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "continuationToken"))
    ListTablesRequest.add_member(:max_tables, Shapes::ShapeRef.new(shape: ListTablesLimit, location: "querystring", location_name: "maxTables"))
    ListTablesRequest.struct_class = Types::ListTablesRequest

    ListTablesResponse.add_member(:tables, Shapes::ShapeRef.new(shape: TableSummaryList, required: true, location_name: "tables"))
    ListTablesResponse.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken"))
    ListTablesResponse.struct_class = Types::ListTablesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingEnabled.add_member(:target_bucket, Shapes::ShapeRef.new(shape: LoggingTargetBucket, required: true, location_name: "targetBucket"))
    LoggingEnabled.add_member(:target_prefix, Shapes::ShapeRef.new(shape: LoggingTargetPrefix, required: true, location_name: "targetPrefix"))
    LoggingEnabled.add_member(:target_object_key_format, Shapes::ShapeRef.new(shape: TargetObjectKeyFormat, required: true, location_name: "targetObjectKeyFormat"))
    LoggingEnabled.struct_class = Types::LoggingEnabled

    MaintenanceSettings.add_member(:iceberg_compaction, Shapes::ShapeRef.new(shape: MigrationCompactionSettings, location_name: "icebergCompaction"))
    MaintenanceSettings.add_member(:iceberg_snapshot_management, Shapes::ShapeRef.new(shape: MigrationSnapshotManagementSettings, location_name: "icebergSnapshotManagement"))
    MaintenanceSettings.struct_class = Types::MaintenanceSettings

    ManagedTableInformation.add_member(:replication_information, Shapes::ShapeRef.new(shape: ReplicationInformation, location_name: "replicationInformation"))
    ManagedTableInformation.struct_class = Types::ManagedTableInformation

    MethodNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    MethodNotAllowedException.struct_class = Types::MethodNotAllowedException

    MigrationCompactionSettings.add_member(:target_file_size_mb, Shapes::ShapeRef.new(shape: MigrationTargetFileSizeMB, location_name: "targetFileSizeMB"))
    MigrationCompactionSettings.add_member(:strategy, Shapes::ShapeRef.new(shape: IcebergCompactionStrategy, location_name: "strategy"))
    MigrationCompactionSettings.struct_class = Types::MigrationCompactionSettings

    MigrationFailureReason.add_member(:code, Shapes::ShapeRef.new(shape: MigrationFailureCode, required: true, location_name: "code"))
    MigrationFailureReason.add_member(:detail, Shapes::ShapeRef.new(shape: MigrationFailureDetail, location_name: "detail"))
    MigrationFailureReason.struct_class = Types::MigrationFailureReason

    MigrationOutputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketARN, required: true, location_name: "bucket"))
    MigrationOutputConfiguration.add_member(:prefixes, Shapes::ShapeRef.new(shape: MigrationReportPrefixes, location_name: "prefixes"))
    MigrationOutputConfiguration.struct_class = Types::MigrationOutputConfiguration

    MigrationOutputOverview.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketARN, required: true, location_name: "bucket"))
    MigrationOutputOverview.add_member(:table_compatibility_report, Shapes::ShapeRef.new(shape: ReportOverview, required: true, location_name: "tableCompatibilityReport"))
    MigrationOutputOverview.add_member(:object_compatibility_report, Shapes::ShapeRef.new(shape: ReportOverview, required: true, location_name: "objectCompatibilityReport"))
    MigrationOutputOverview.add_member(:object_migration_report, Shapes::ShapeRef.new(shape: ReportOverview, required: true, location_name: "objectMigrationReport"))
    MigrationOutputOverview.struct_class = Types::MigrationOutputOverview

    MigrationPolicies.add_member(:unmatched_source_fields_policy, Shapes::ShapeRef.new(shape: UnmatchedSourceFieldsPolicy, location_name: "unmatchedSourceFieldsPolicy"))
    MigrationPolicies.add_member(:incompatible_values_policy, Shapes::ShapeRef.new(shape: IncompatibleValuesPolicy, location_name: "incompatibleValuesPolicy"))
    MigrationPolicies.struct_class = Types::MigrationPolicies

    MigrationReportPrefixes.add_member(:table_compatibility_report, Shapes::ShapeRef.new(shape: MigrationReportPrefix, location_name: "tableCompatibilityReport"))
    MigrationReportPrefixes.add_member(:object_compatibility_report, Shapes::ShapeRef.new(shape: MigrationReportPrefix, location_name: "objectCompatibilityReport"))
    MigrationReportPrefixes.add_member(:object_migration_report, Shapes::ShapeRef.new(shape: MigrationReportPrefix, location_name: "objectMigrationReport"))
    MigrationReportPrefixes.struct_class = Types::MigrationReportPrefixes

    MigrationSnapshotManagementSettings.add_member(:min_snapshots_to_keep, Shapes::ShapeRef.new(shape: MigrationMinSnapshotsToKeep, location_name: "minSnapshotsToKeep"))
    MigrationSnapshotManagementSettings.add_member(:max_snapshot_age_hours, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "maxSnapshotAgeHours"))
    MigrationSnapshotManagementSettings.struct_class = Types::MigrationSnapshotManagementSettings

    MigrationStats.add_member(:objects_migrated, Shapes::ShapeRef.new(shape: Long, location_name: "objectsMigrated"))
    MigrationStats.add_member(:objects_failed_migration, Shapes::ShapeRef.new(shape: Long, location_name: "objectsFailedMigration"))
    MigrationStats.add_member(:objects_pending_migration, Shapes::ShapeRef.new(shape: Long, location_name: "objectsPendingMigration"))
    MigrationStats.struct_class = Types::MigrationStats

    MigrationSummary.add_member(:migration_id, Shapes::ShapeRef.new(shape: MigrationId, required: true, location_name: "migrationId"))
    MigrationSummary.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "tableBucketARN"))
    MigrationSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespace"))
    MigrationSummary.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN"))
    MigrationSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    MigrationSummary.add_member(:type, Shapes::ShapeRef.new(shape: MigrationType, required: true, location_name: "type"))
    MigrationSummary.add_member(:state, Shapes::ShapeRef.new(shape: MigrationState, required: true, location_name: "state"))
    MigrationSummary.add_member(:has_valid_plan, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasValidPlan"))
    MigrationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    MigrationSummary.add_member(:state_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "stateUpdatedAt"))
    MigrationSummary.struct_class = Types::MigrationSummary

    MigrationSummaryList.member = Shapes::ShapeRef.new(shape: MigrationSummary)

    MigrationTableProperties.add_member(:write_format, Shapes::ShapeRef.new(shape: DataFileFormat, location_name: "writeFormat"))
    MigrationTableProperties.add_member(:iceberg_format_version, Shapes::ShapeRef.new(shape: Integer, location_name: "icebergFormatVersion"))
    MigrationTableProperties.add_member(:compression_codec, Shapes::ShapeRef.new(shape: CompressionCodec, location_name: "compressionCodec"))
    MigrationTableProperties.add_member(:dictionary_encoding, Shapes::ShapeRef.new(shape: Boolean, location_name: "dictionaryEncoding"))
    MigrationTableProperties.struct_class = Types::MigrationTableProperties

    NamespaceList.member = Shapes::ShapeRef.new(shape: NamespaceName)

    NamespaceSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    NamespaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    NamespaceSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "createdBy"))
    NamespaceSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    NamespaceSummary.add_member(:namespace_id, Shapes::ShapeRef.new(shape: NamespaceId, location_name: "namespaceId"))
    NamespaceSummary.add_member(:table_bucket_id, Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    NamespaceSummary.struct_class = Types::NamespaceSummary

    NamespaceSummaryList.member = Shapes::ShapeRef.new(shape: NamespaceSummary)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    PartitionedPrefix.add_member(:partition_date_source, Shapes::ShapeRef.new(shape: PartitionDateSource, required: true, location_name: "partitionDateSource"))
    PartitionedPrefix.struct_class = Types::PartitionedPrefix

    PlanningStats.add_member(:objects_scanned, Shapes::ShapeRef.new(shape: Long, location_name: "objectsScanned"))
    PlanningStats.add_member(:objects_planned, Shapes::ShapeRef.new(shape: Long, location_name: "objectsPlanned"))
    PlanningStats.add_member(:partition_count, Shapes::ShapeRef.new(shape: Long, location_name: "partitionCount"))
    PlanningStats.struct_class = Types::PlanningStats

    PutTableBucketEncryptionRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableBucketEncryptionRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, required: true, location_name: "encryptionConfiguration"))
    PutTableBucketEncryptionRequest.struct_class = Types::PutTableBucketEncryptionRequest

    PutTableBucketLoggingRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableBucketLoggingRequest.add_member(:table_bucket_logging_status, Shapes::ShapeRef.new(shape: TableBucketLoggingStatus, required: true, location_name: "tableBucketLoggingStatus"))
    PutTableBucketLoggingRequest.struct_class = Types::PutTableBucketLoggingRequest

    PutTableBucketMaintenanceConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableBucketMaintenanceConfigurationRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableBucketMaintenanceType, required: true, location: "uri", location_name: "type"))
    PutTableBucketMaintenanceConfigurationRequest.add_member(:value, Shapes::ShapeRef.new(shape: TableBucketMaintenanceConfigurationValue, required: true, location_name: "value"))
    PutTableBucketMaintenanceConfigurationRequest.struct_class = Types::PutTableBucketMaintenanceConfigurationRequest

    PutTableBucketMetricsConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableBucketMetricsConfigurationRequest.struct_class = Types::PutTableBucketMetricsConfigurationRequest

    PutTableBucketPolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableBucketPolicyRequest.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "resourcePolicy"))
    PutTableBucketPolicyRequest.struct_class = Types::PutTableBucketPolicyRequest

    PutTableBucketReplicationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "querystring", location_name: "tableBucketARN"))
    PutTableBucketReplicationRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, location: "querystring", location_name: "versionToken"))
    PutTableBucketReplicationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: TableBucketReplicationConfiguration, required: true, location_name: "configuration"))
    PutTableBucketReplicationRequest.struct_class = Types::PutTableBucketReplicationRequest

    PutTableBucketReplicationResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, required: true, location_name: "versionToken"))
    PutTableBucketReplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    PutTableBucketReplicationResponse.struct_class = Types::PutTableBucketReplicationResponse

    PutTableBucketStorageClassRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableBucketStorageClassRequest.add_member(:storage_class_configuration, Shapes::ShapeRef.new(shape: StorageClassConfiguration, required: true, location_name: "storageClassConfiguration"))
    PutTableBucketStorageClassRequest.struct_class = Types::PutTableBucketStorageClassRequest

    PutTableMaintenanceConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableMaintenanceConfigurationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    PutTableMaintenanceConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    PutTableMaintenanceConfigurationRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableMaintenanceType, required: true, location: "uri", location_name: "type"))
    PutTableMaintenanceConfigurationRequest.add_member(:value, Shapes::ShapeRef.new(shape: TableMaintenanceConfigurationValue, required: true, location_name: "value"))
    PutTableMaintenanceConfigurationRequest.struct_class = Types::PutTableMaintenanceConfigurationRequest

    PutTablePolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTablePolicyRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    PutTablePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    PutTablePolicyRequest.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "resourcePolicy"))
    PutTablePolicyRequest.struct_class = Types::PutTablePolicyRequest

    PutTableRecordExpirationConfigurationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location: "querystring", location_name: "tableArn"))
    PutTableRecordExpirationConfigurationRequest.add_member(:value, Shapes::ShapeRef.new(shape: TableRecordExpirationConfigurationValue, required: true, location_name: "value"))
    PutTableRecordExpirationConfigurationRequest.struct_class = Types::PutTableRecordExpirationConfigurationRequest

    PutTableReplicationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location: "querystring", location_name: "tableArn"))
    PutTableReplicationRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "versionToken"))
    PutTableReplicationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: TableReplicationConfiguration, required: true, location_name: "configuration"))
    PutTableReplicationRequest.struct_class = Types::PutTableReplicationRequest

    PutTableReplicationResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "versionToken"))
    PutTableReplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    PutTableReplicationResponse.struct_class = Types::PutTableReplicationResponse

    RenameTableRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    RenameTableRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    RenameTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    RenameTableRequest.add_member(:new_namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "newNamespaceName"))
    RenameTableRequest.add_member(:new_name, Shapes::ShapeRef.new(shape: TableName, location_name: "newName"))
    RenameTableRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken"))
    RenameTableRequest.struct_class = Types::RenameTableRequest

    ReplicationDestination.add_member(:destination_table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "destinationTableBucketARN"))
    ReplicationDestination.struct_class = Types::ReplicationDestination

    ReplicationDestinationStatusModel.add_member(:replication_status, Shapes::ShapeRef.new(shape: ReplicationStatus, required: true, location_name: "replicationStatus"))
    ReplicationDestinationStatusModel.add_member(:destination_table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "destinationTableBucketArn"))
    ReplicationDestinationStatusModel.add_member(:destination_table_arn, Shapes::ShapeRef.new(shape: TableARN, location_name: "destinationTableArn"))
    ReplicationDestinationStatusModel.add_member(:last_successful_replicated_update, Shapes::ShapeRef.new(shape: LastSuccessfulReplicatedUpdate, location_name: "lastSuccessfulReplicatedUpdate"))
    ReplicationDestinationStatusModel.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    ReplicationDestinationStatusModel.struct_class = Types::ReplicationDestinationStatusModel

    ReplicationDestinationStatuses.member = Shapes::ShapeRef.new(shape: ReplicationDestinationStatusModel)

    ReplicationDestinations.member = Shapes::ShapeRef.new(shape: ReplicationDestination)

    ReplicationInformation.add_member(:source_table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "sourceTableARN"))
    ReplicationInformation.struct_class = Types::ReplicationInformation

    ReportOverview.add_member(:prefix, Shapes::ShapeRef.new(shape: MigrationReportPrefix, location_name: "prefix"))
    ReportOverview.add_member(:key, Shapes::ShapeRef.new(shape: ReportObjectKey, location_name: "key"))
    ReportOverview.add_member(:checksum_crc64nvme, Shapes::ShapeRef.new(shape: ChecksumCRC64NVME, location_name: "checksumCRC64NVME"))
    ReportOverview.add_member(:invalid_findings, Shapes::ShapeRef.new(shape: FindingCategoryCounts, location_name: "invalidFindings"))
    ReportOverview.struct_class = Types::ReportOverview

    SchemaField.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "id"))
    SchemaField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SchemaField.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    SchemaField.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    SchemaField.struct_class = Types::SchemaField

    SchemaFieldList.member = Shapes::ShapeRef.new(shape: SchemaField)

    SchemaV2Field.add_member(:id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "id"))
    SchemaV2Field.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SchemaV2Field.add_member(:type, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "type"))
    SchemaV2Field.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "required"))
    SchemaV2Field.add_member(:doc, Shapes::ShapeRef.new(shape: String, location_name: "doc"))
    SchemaV2Field.struct_class = Types::SchemaV2Field

    SchemaV2FieldList.member = Shapes::ShapeRef.new(shape: SchemaV2Field)

    SourceConfiguration.add_member(:glue_table, Shapes::ShapeRef.new(shape: GlueTableSource, location_name: "glueTable"))
    SourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceConfiguration.add_member_subclass(:glue_table, Types::SourceConfiguration::GlueTable)
    SourceConfiguration.add_member_subclass(:unknown, Types::SourceConfiguration::Unknown)
    SourceConfiguration.struct_class = Types::SourceConfiguration

    StartTableMigrationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleARN"))
    StartTableMigrationRequest.add_member(:destination_table, Shapes::ShapeRef.new(shape: DestinationTable, required: true, location_name: "destinationTable"))
    StartTableMigrationRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: MigrationSourceType, required: true, location_name: "sourceType"))
    StartTableMigrationRequest.add_member(:source, Shapes::ShapeRef.new(shape: SourceConfiguration, required: true, location_name: "source"))
    StartTableMigrationRequest.add_member(:data_migration, Shapes::ShapeRef.new(shape: DataMigrationSettings, location_name: "dataMigration"))
    StartTableMigrationRequest.add_member(:review_migration_plan, Shapes::ShapeRef.new(shape: Boolean, location_name: "reviewMigrationPlan"))
    StartTableMigrationRequest.add_member(:migration_output, Shapes::ShapeRef.new(shape: MigrationOutputConfiguration, required: true, location_name: "migrationOutput"))
    StartTableMigrationRequest.struct_class = Types::StartTableMigrationRequest

    StartTableMigrationResponse.add_member(:migration_id, Shapes::ShapeRef.new(shape: MigrationId, required: true, location_name: "migrationId"))
    StartTableMigrationResponse.add_member(:state, Shapes::ShapeRef.new(shape: MigrationState, required: true, location_name: "state"))
    StartTableMigrationResponse.struct_class = Types::StartTableMigrationResponse

    StorageClassConfiguration.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, required: true, location_name: "storageClass"))
    StorageClassConfiguration.struct_class = Types::StorageClassConfiguration

    SyncTableMigrationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleARN"))
    SyncTableMigrationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    SyncTableMigrationRequest.add_member(:review_migration_plan, Shapes::ShapeRef.new(shape: Boolean, location_name: "reviewMigrationPlan"))
    SyncTableMigrationRequest.add_member(:migration_output, Shapes::ShapeRef.new(shape: MigrationOutputConfiguration, required: true, location_name: "migrationOutput"))
    SyncTableMigrationRequest.struct_class = Types::SyncTableMigrationRequest

    SyncTableMigrationResponse.add_member(:migration_id, Shapes::ShapeRef.new(shape: MigrationId, required: true, location_name: "migrationId"))
    SyncTableMigrationResponse.add_member(:state, Shapes::ShapeRef.new(shape: MigrationState, required: true, location_name: "state"))
    SyncTableMigrationResponse.struct_class = Types::SyncTableMigrationResponse

    TableBucketLoggingStatus.add_member(:logging_enabled, Shapes::ShapeRef.new(shape: LoggingEnabled, location_name: "loggingEnabled"))
    TableBucketLoggingStatus.struct_class = Types::TableBucketLoggingStatus

    TableBucketMaintenanceConfiguration.key = Shapes::ShapeRef.new(shape: TableBucketMaintenanceType)
    TableBucketMaintenanceConfiguration.value = Shapes::ShapeRef.new(shape: TableBucketMaintenanceConfigurationValue)

    TableBucketMaintenanceConfigurationValue.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "status"))
    TableBucketMaintenanceConfigurationValue.add_member(:settings, Shapes::ShapeRef.new(shape: TableBucketMaintenanceSettings, location_name: "settings"))
    TableBucketMaintenanceConfigurationValue.struct_class = Types::TableBucketMaintenanceConfigurationValue

    TableBucketMaintenanceSettings.add_member(:iceberg_unreferenced_file_removal, Shapes::ShapeRef.new(shape: IcebergUnreferencedFileRemovalSettings, location_name: "icebergUnreferencedFileRemoval"))
    TableBucketMaintenanceSettings.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TableBucketMaintenanceSettings.add_member_subclass(:iceberg_unreferenced_file_removal, Types::TableBucketMaintenanceSettings::IcebergUnreferencedFileRemoval)
    TableBucketMaintenanceSettings.add_member_subclass(:unknown, Types::TableBucketMaintenanceSettings::Unknown)
    TableBucketMaintenanceSettings.struct_class = Types::TableBucketMaintenanceSettings

    TableBucketReplicationConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: IAMRole, required: true, location_name: "role"))
    TableBucketReplicationConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: TableBucketReplicationRules, required: true, location_name: "rules"))
    TableBucketReplicationConfiguration.struct_class = Types::TableBucketReplicationConfiguration

    TableBucketReplicationRule.add_member(:destinations, Shapes::ShapeRef.new(shape: ReplicationDestinations, required: true, location_name: "destinations"))
    TableBucketReplicationRule.struct_class = Types::TableBucketReplicationRule

    TableBucketReplicationRules.member = Shapes::ShapeRef.new(shape: TableBucketReplicationRule)

    TableBucketSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "arn"))
    TableBucketSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableBucketName, required: true, location_name: "name"))
    TableBucketSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    TableBucketSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    TableBucketSummary.add_member(:table_bucket_id, Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    TableBucketSummary.add_member(:type, Shapes::ShapeRef.new(shape: TableBucketType, location_name: "type"))
    TableBucketSummary.struct_class = Types::TableBucketSummary

    TableBucketSummaryList.member = Shapes::ShapeRef.new(shape: TableBucketSummary)

    TableMaintenanceConfiguration.key = Shapes::ShapeRef.new(shape: TableMaintenanceType)
    TableMaintenanceConfiguration.value = Shapes::ShapeRef.new(shape: TableMaintenanceConfigurationValue)

    TableMaintenanceConfigurationValue.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "status"))
    TableMaintenanceConfigurationValue.add_member(:settings, Shapes::ShapeRef.new(shape: TableMaintenanceSettings, location_name: "settings"))
    TableMaintenanceConfigurationValue.struct_class = Types::TableMaintenanceConfigurationValue

    TableMaintenanceJobStatus.key = Shapes::ShapeRef.new(shape: TableMaintenanceJobType)
    TableMaintenanceJobStatus.value = Shapes::ShapeRef.new(shape: TableMaintenanceJobStatusValue)

    TableMaintenanceJobStatusValue.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    TableMaintenanceJobStatusValue.add_member(:last_run_timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastRunTimestamp"))
    TableMaintenanceJobStatusValue.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    TableMaintenanceJobStatusValue.struct_class = Types::TableMaintenanceJobStatusValue

    TableMaintenanceSettings.add_member(:iceberg_compaction, Shapes::ShapeRef.new(shape: IcebergCompactionSettings, location_name: "icebergCompaction"))
    TableMaintenanceSettings.add_member(:iceberg_snapshot_management, Shapes::ShapeRef.new(shape: IcebergSnapshotManagementSettings, location_name: "icebergSnapshotManagement"))
    TableMaintenanceSettings.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TableMaintenanceSettings.add_member_subclass(:iceberg_compaction, Types::TableMaintenanceSettings::IcebergCompaction)
    TableMaintenanceSettings.add_member_subclass(:iceberg_snapshot_management, Types::TableMaintenanceSettings::IcebergSnapshotManagement)
    TableMaintenanceSettings.add_member_subclass(:unknown, Types::TableMaintenanceSettings::Unknown)
    TableMaintenanceSettings.struct_class = Types::TableMaintenanceSettings

    TableMetadata.add_member(:iceberg, Shapes::ShapeRef.new(shape: IcebergMetadata, location_name: "iceberg"))
    TableMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TableMetadata.add_member_subclass(:iceberg, Types::TableMetadata::Iceberg)
    TableMetadata.add_member_subclass(:unknown, Types::TableMetadata::Unknown)
    TableMetadata.struct_class = Types::TableMetadata

    TableProperties.key = Shapes::ShapeRef.new(shape: String)
    TableProperties.value = Shapes::ShapeRef.new(shape: String)

    TableRecordExpirationConfigurationValue.add_member(:status, Shapes::ShapeRef.new(shape: TableRecordExpirationStatus, location_name: "status"))
    TableRecordExpirationConfigurationValue.add_member(:settings, Shapes::ShapeRef.new(shape: TableRecordExpirationSettings, location_name: "settings"))
    TableRecordExpirationConfigurationValue.struct_class = Types::TableRecordExpirationConfigurationValue

    TableRecordExpirationJobMetrics.add_member(:deleted_data_files, Shapes::ShapeRef.new(shape: Long, location_name: "deletedDataFiles"))
    TableRecordExpirationJobMetrics.add_member(:deleted_records, Shapes::ShapeRef.new(shape: Long, location_name: "deletedRecords"))
    TableRecordExpirationJobMetrics.add_member(:removed_files_size, Shapes::ShapeRef.new(shape: Long, location_name: "removedFilesSize"))
    TableRecordExpirationJobMetrics.struct_class = Types::TableRecordExpirationJobMetrics

    TableRecordExpirationSettings.add_member(:days, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "days"))
    TableRecordExpirationSettings.struct_class = Types::TableRecordExpirationSettings

    TableReplicationConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: IAMRole, required: true, location_name: "role"))
    TableReplicationConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: TableReplicationRules, required: true, location_name: "rules"))
    TableReplicationConfiguration.struct_class = Types::TableReplicationConfiguration

    TableReplicationRule.add_member(:destinations, Shapes::ShapeRef.new(shape: ReplicationDestinations, required: true, location_name: "destinations"))
    TableReplicationRule.struct_class = Types::TableReplicationRule

    TableReplicationRules.member = Shapes::ShapeRef.new(shape: TableReplicationRule)

    TableSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    TableSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    TableSummary.add_member(:type, Shapes::ShapeRef.new(shape: TableType, required: true, location_name: "type"))
    TableSummary.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    TableSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    TableSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    TableSummary.add_member(:managed_by_service, Shapes::ShapeRef.new(shape: String, location_name: "managedByService"))
    TableSummary.add_member(:namespace_id, Shapes::ShapeRef.new(shape: NamespaceId, location_name: "namespaceId"))
    TableSummary.add_member(:table_bucket_id, Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    TableSummary.struct_class = Types::TableSummary

    TableSummaryList.member = Shapes::ShapeRef.new(shape: TableSummary)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TargetObjectKeyFormat.add_member(:partitioned_prefix, Shapes::ShapeRef.new(shape: PartitionedPrefix, required: true, location_name: "partitionedPrefix"))
    TargetObjectKeyFormat.struct_class = Types::TargetObjectKeyFormat

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateTableMetadataLocationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    UpdateTableMetadataLocationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    UpdateTableMetadataLocationRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    UpdateTableMetadataLocationRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, required: true, location_name: "versionToken"))
    UpdateTableMetadataLocationRequest.add_member(:metadata_location, Shapes::ShapeRef.new(shape: MetadataLocation, required: true, location_name: "metadataLocation"))
    UpdateTableMetadataLocationRequest.struct_class = Types::UpdateTableMetadataLocationRequest

    UpdateTableMetadataLocationResponse.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    UpdateTableMetadataLocationResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    UpdateTableMetadataLocationResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    UpdateTableMetadataLocationResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, required: true, location_name: "versionToken"))
    UpdateTableMetadataLocationResponse.add_member(:metadata_location, Shapes::ShapeRef.new(shape: MetadataLocation, required: true, location_name: "metadataLocation"))
    UpdateTableMetadataLocationResponse.struct_class = Types::UpdateTableMetadataLocationResponse

    UpdateTableMigrationRequest.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, location: "querystring", location_name: "tableARN"))
    UpdateTableMigrationRequest.add_member(:migration_id, Shapes::ShapeRef.new(shape: MigrationId, location: "querystring", location_name: "migrationId"))
    UpdateTableMigrationRequest.add_member(:requested_state, Shapes::ShapeRef.new(shape: MigrationRequestedState, required: true, location_name: "requestedState"))
    UpdateTableMigrationRequest.add_member(:update_description, Shapes::ShapeRef.new(shape: UpdateTableMigrationRequestUpdateDescriptionString, location_name: "updateDescription"))
    UpdateTableMigrationRequest.struct_class = Types::UpdateTableMigrationRequest

    UpdateTableMigrationResponse.add_member(:migration_id, Shapes::ShapeRef.new(shape: MigrationId, required: true, location_name: "migrationId"))
    UpdateTableMigrationResponse.add_member(:state, Shapes::ShapeRef.new(shape: MigrationState, required: true, location_name: "state"))
    UpdateTableMigrationResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN"))
    UpdateTableMigrationResponse.struct_class = Types::UpdateTableMigrationResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "s3tables",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon S3 Tables",
        "serviceId" => "S3Tables",
        "signatureVersion" => "v4",
        "signingName" => "s3tables",
        "uid" => "s3tables-2018-05-10",
      }

      api.add_operation(:complete_table_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteTableMigration"
        o.http_method = "POST"
        o.http_request_uri = "/complete-table-migration"
        o.input = Shapes::ShapeRef.new(shape: CompleteTableMigrationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNamespace"
        o.http_method = "PUT"
        o.http_request_uri = "/namespaces/{tableBucketARN}"
        o.input = Shapes::ShapeRef.new(shape: CreateNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTable"
        o.http_method = "PUT"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}"
        o.input = Shapes::ShapeRef.new(shape: CreateTableRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_table_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTableBucket"
        o.http_method = "PUT"
        o.http_request_uri = "/buckets"
        o.input = Shapes::ShapeRef.new(shape: CreateTableBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTableBucketResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNamespace"
        o.http_method = "DELETE"
        o.http_request_uri = "/namespaces/{tableBucketARN}/{namespace}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTable"
        o.http_method = "DELETE"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_table_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTableBucket"
        o.http_method = "DELETE"
        o.http_request_uri = "/buckets/{tableBucketARN}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_table_bucket_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTableBucketEncryption"
        o.http_method = "DELETE"
        o.http_request_uri = "/buckets/{tableBucketARN}/encryption"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableBucketEncryptionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_table_bucket_metrics_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTableBucketMetricsConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/buckets/{tableBucketARN}/metrics"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableBucketMetricsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_table_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTableBucketPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/buckets/{tableBucketARN}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableBucketPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_table_bucket_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTableBucketReplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/table-bucket-replication"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableBucketReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_table_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTablePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteTablePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_table_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTableReplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/table-replication"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNamespace"
        o.http_method = "GET"
        o.http_request_uri = "/namespaces/{tableBucketARN}/{namespace}"
        o.input = Shapes::ShapeRef.new(shape: GetNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTable"
        o.http_method = "GET"
        o.http_request_uri = "/get-table"
        o.input = Shapes::ShapeRef.new(shape: GetTableRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableBucket"
        o.http_method = "GET"
        o.http_request_uri = "/buckets/{tableBucketARN}"
        o.input = Shapes::ShapeRef.new(shape: GetTableBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableBucketResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_bucket_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableBucketEncryption"
        o.http_method = "GET"
        o.http_request_uri = "/buckets/{tableBucketARN}/encryption"
        o.input = Shapes::ShapeRef.new(shape: GetTableBucketEncryptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableBucketEncryptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_bucket_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableBucketLogging"
        o.http_method = "GET"
        o.http_request_uri = "/buckets/{tableBucketARN}/logging"
        o.input = Shapes::ShapeRef.new(shape: GetTableBucketLoggingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableBucketLoggingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_bucket_maintenance_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableBucketMaintenanceConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/buckets/{tableBucketARN}/maintenance"
        o.input = Shapes::ShapeRef.new(shape: GetTableBucketMaintenanceConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableBucketMaintenanceConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_bucket_metrics_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableBucketMetricsConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/buckets/{tableBucketARN}/metrics"
        o.input = Shapes::ShapeRef.new(shape: GetTableBucketMetricsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableBucketMetricsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableBucketPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/buckets/{tableBucketARN}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetTableBucketPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableBucketPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_bucket_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableBucketReplication"
        o.http_method = "GET"
        o.http_request_uri = "/table-bucket-replication"
        o.input = Shapes::ShapeRef.new(shape: GetTableBucketReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableBucketReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_bucket_storage_class, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableBucketStorageClass"
        o.http_method = "GET"
        o.http_request_uri = "/buckets/{tableBucketARN}/storage-class"
        o.input = Shapes::ShapeRef.new(shape: GetTableBucketStorageClassRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableBucketStorageClassResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableEncryption"
        o.http_method = "GET"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/encryption"
        o.input = Shapes::ShapeRef.new(shape: GetTableEncryptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableEncryptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_maintenance_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableMaintenanceConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance"
        o.input = Shapes::ShapeRef.new(shape: GetTableMaintenanceConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableMaintenanceConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_maintenance_job_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableMaintenanceJobStatus"
        o.http_method = "GET"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance-job-status"
        o.input = Shapes::ShapeRef.new(shape: GetTableMaintenanceJobStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableMaintenanceJobStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_metadata_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableMetadataLocation"
        o.http_method = "GET"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location"
        o.input = Shapes::ShapeRef.new(shape: GetTableMetadataLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableMetadataLocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableMigration"
        o.http_method = "GET"
        o.http_request_uri = "/get-table-migration"
        o.input = Shapes::ShapeRef.new(shape: GetTableMigrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTablePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetTablePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTablePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_record_expiration_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableRecordExpirationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/table-record-expiration"
        o.input = Shapes::ShapeRef.new(shape: GetTableRecordExpirationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableRecordExpirationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_record_expiration_job_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableRecordExpirationJobStatus"
        o.http_method = "GET"
        o.http_request_uri = "/table-record-expiration-job-status"
        o.input = Shapes::ShapeRef.new(shape: GetTableRecordExpirationJobStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableRecordExpirationJobStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableReplication"
        o.http_method = "GET"
        o.http_request_uri = "/table-replication"
        o.input = Shapes::ShapeRef.new(shape: GetTableReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_replication_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableReplicationStatus"
        o.http_method = "GET"
        o.http_request_uri = "/replication-status"
        o.input = Shapes::ShapeRef.new(shape: GetTableReplicationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableReplicationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_table_storage_class, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableStorageClass"
        o.http_method = "GET"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/storage-class"
        o.input = Shapes::ShapeRef.new(shape: GetTableStorageClassRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableStorageClassResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_namespaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNamespaces"
        o.http_method = "GET"
        o.http_request_uri = "/namespaces/{tableBucketARN}"
        o.input = Shapes::ShapeRef.new(shape: ListNamespacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNamespacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_namespaces",
          tokens: {
            "continuation_token" => "continuation_token"
          }
        )
      end)

      api.add_operation(:list_table_buckets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTableBuckets"
        o.http_method = "GET"
        o.http_request_uri = "/buckets"
        o.input = Shapes::ShapeRef.new(shape: ListTableBucketsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTableBucketsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_buckets",
          tokens: {
            "continuation_token" => "continuation_token"
          }
        )
      end)

      api.add_operation(:list_table_migrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTableMigrations"
        o.http_method = "GET"
        o.http_request_uri = "/list-table-migrations"
        o.input = Shapes::ShapeRef.new(shape: ListTableMigrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTableMigrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTables"
        o.http_method = "GET"
        o.http_request_uri = "/tables/{tableBucketARN}"
        o.input = Shapes::ShapeRef.new(shape: ListTablesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTablesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_tables",
          tokens: {
            "continuation_token" => "continuation_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tag/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_bucket_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableBucketEncryption"
        o.http_method = "PUT"
        o.http_request_uri = "/buckets/{tableBucketARN}/encryption"
        o.input = Shapes::ShapeRef.new(shape: PutTableBucketEncryptionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_bucket_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableBucketLogging"
        o.http_method = "PUT"
        o.http_request_uri = "/buckets/{tableBucketARN}/logging"
        o.input = Shapes::ShapeRef.new(shape: PutTableBucketLoggingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_bucket_maintenance_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableBucketMaintenanceConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/buckets/{tableBucketARN}/maintenance/{type}"
        o.input = Shapes::ShapeRef.new(shape: PutTableBucketMaintenanceConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_bucket_metrics_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableBucketMetricsConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/buckets/{tableBucketARN}/metrics"
        o.input = Shapes::ShapeRef.new(shape: PutTableBucketMetricsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableBucketPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/buckets/{tableBucketARN}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutTableBucketPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_bucket_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableBucketReplication"
        o.http_method = "PUT"
        o.http_request_uri = "/table-bucket-replication"
        o.input = Shapes::ShapeRef.new(shape: PutTableBucketReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTableBucketReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_bucket_storage_class, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableBucketStorageClass"
        o.http_method = "PUT"
        o.http_request_uri = "/buckets/{tableBucketARN}/storage-class"
        o.input = Shapes::ShapeRef.new(shape: PutTableBucketStorageClassRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_maintenance_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableMaintenanceConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance/{type}"
        o.input = Shapes::ShapeRef.new(shape: PutTableMaintenanceConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTablePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutTablePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_record_expiration_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableRecordExpirationConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/table-record-expiration"
        o.input = Shapes::ShapeRef.new(shape: PutTableRecordExpirationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_table_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTableReplication"
        o.http_method = "PUT"
        o.http_request_uri = "/table-replication"
        o.input = Shapes::ShapeRef.new(shape: PutTableReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTableReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:rename_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RenameTable"
        o.http_method = "PUT"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/rename"
        o.input = Shapes::ShapeRef.new(shape: RenameTableRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:start_table_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTableMigration"
        o.http_method = "POST"
        o.http_request_uri = "/start-table-migration"
        o.input = Shapes::ShapeRef.new(shape: StartTableMigrationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTableMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:sync_table_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SyncTableMigration"
        o.http_method = "POST"
        o.http_request_uri = "/sync-table-migration"
        o.input = Shapes::ShapeRef.new(shape: SyncTableMigrationRequest)
        o.output = Shapes::ShapeRef.new(shape: SyncTableMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tag/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tag/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_table_metadata_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTableMetadataLocation"
        o.http_method = "PUT"
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableMetadataLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableMetadataLocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_table_migration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTableMigration"
        o.http_method = "POST"
        o.http_request_uri = "/update-table-migration"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableMigrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableMigrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)
    end

  end
end
