# frozen_string_literal: true

# This is generated code!

module Aws::S3Tables
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9].*$"})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#CreateNamespaceRequest", name: "CreateNamespaceRequest")
    CreateNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#CreateNamespaceResponse", name: "CreateNamespaceResponse")
    CreateTableBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#CreateTableBucketRequest", name: "CreateTableBucketRequest")
    CreateTableBucketResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#CreateTableBucketResponse", name: "CreateTableBucketResponse")
    CreateTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#CreateTableRequest", name: "CreateTableRequest")
    CreateTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#CreateTableResponse", name: "CreateTableResponse")
    DeleteNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteNamespaceRequest", name: "DeleteNamespaceRequest")
    DeleteTableBucketEncryptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableBucketEncryptionRequest", name: "DeleteTableBucketEncryptionRequest")
    DeleteTableBucketMetricsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableBucketMetricsConfigurationRequest", name: "DeleteTableBucketMetricsConfigurationRequest")
    DeleteTableBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableBucketPolicyRequest", name: "DeleteTableBucketPolicyRequest")
    DeleteTableBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableBucketReplicationRequest", name: "DeleteTableBucketReplicationRequest")
    DeleteTableBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableBucketRequest", name: "DeleteTableBucketRequest")
    DeleteTablePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTablePolicyRequest", name: "DeleteTablePolicyRequest")
    DeleteTableReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableReplicationRequest", name: "DeleteTableReplicationRequest")
    DeleteTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableRequest", name: "DeleteTableRequest")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#EncryptionConfiguration", name: "EncryptionConfiguration")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#ErrorMessage", name: "ErrorMessage")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetNamespaceRequest", name: "GetNamespaceRequest")
    GetNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetNamespaceResponse", name: "GetNamespaceResponse")
    GetTableBucketEncryptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketEncryptionRequest", name: "GetTableBucketEncryptionRequest")
    GetTableBucketEncryptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketEncryptionResponse", name: "GetTableBucketEncryptionResponse")
    GetTableBucketMaintenanceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketMaintenanceConfigurationRequest", name: "GetTableBucketMaintenanceConfigurationRequest")
    GetTableBucketMaintenanceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketMaintenanceConfigurationResponse", name: "GetTableBucketMaintenanceConfigurationResponse")
    GetTableBucketMetricsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketMetricsConfigurationRequest", name: "GetTableBucketMetricsConfigurationRequest")
    GetTableBucketMetricsConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketMetricsConfigurationResponse", name: "GetTableBucketMetricsConfigurationResponse")
    GetTableBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketPolicyRequest", name: "GetTableBucketPolicyRequest")
    GetTableBucketPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketPolicyResponse", name: "GetTableBucketPolicyResponse")
    GetTableBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketReplicationRequest", name: "GetTableBucketReplicationRequest")
    GetTableBucketReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketReplicationResponse", name: "GetTableBucketReplicationResponse")
    GetTableBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketRequest", name: "GetTableBucketRequest")
    GetTableBucketResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketResponse", name: "GetTableBucketResponse")
    GetTableBucketStorageClassRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketStorageClassRequest", name: "GetTableBucketStorageClassRequest")
    GetTableBucketStorageClassResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketStorageClassResponse", name: "GetTableBucketStorageClassResponse")
    GetTableEncryptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableEncryptionRequest", name: "GetTableEncryptionRequest")
    GetTableEncryptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableEncryptionResponse", name: "GetTableEncryptionResponse")
    GetTableMaintenanceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableMaintenanceConfigurationRequest", name: "GetTableMaintenanceConfigurationRequest")
    GetTableMaintenanceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableMaintenanceConfigurationResponse", name: "GetTableMaintenanceConfigurationResponse")
    GetTableMaintenanceJobStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableMaintenanceJobStatusRequest", name: "GetTableMaintenanceJobStatusRequest")
    GetTableMaintenanceJobStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableMaintenanceJobStatusResponse", name: "GetTableMaintenanceJobStatusResponse")
    GetTableMetadataLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableMetadataLocationRequest", name: "GetTableMetadataLocationRequest")
    GetTableMetadataLocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableMetadataLocationResponse", name: "GetTableMetadataLocationResponse")
    GetTablePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTablePolicyRequest", name: "GetTablePolicyRequest")
    GetTablePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTablePolicyResponse", name: "GetTablePolicyResponse")
    GetTableRecordExpirationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableRecordExpirationConfigurationRequest", name: "GetTableRecordExpirationConfigurationRequest")
    GetTableRecordExpirationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableRecordExpirationConfigurationResponse", name: "GetTableRecordExpirationConfigurationResponse")
    GetTableRecordExpirationJobStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableRecordExpirationJobStatusRequest", name: "GetTableRecordExpirationJobStatusRequest")
    GetTableRecordExpirationJobStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableRecordExpirationJobStatusResponse", name: "GetTableRecordExpirationJobStatusResponse")
    GetTableReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableReplicationRequest", name: "GetTableReplicationRequest")
    GetTableReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableReplicationResponse", name: "GetTableReplicationResponse")
    GetTableReplicationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableReplicationStatusRequest", name: "GetTableReplicationStatusRequest")
    GetTableReplicationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableReplicationStatusResponse", name: "GetTableReplicationStatusResponse")
    GetTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableRequest", name: "GetTableRequest")
    GetTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableResponse", name: "GetTableResponse")
    GetTableStorageClassRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableStorageClassRequest", name: "GetTableStorageClassRequest")
    GetTableStorageClassResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableStorageClassResponse", name: "GetTableStorageClassResponse")
    IAMRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#IAMRole", name: "IAMRole", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.+:iam::[0-9]{12}:role/.+$"})
    IcebergCompactionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergCompactionSettings", name: "IcebergCompactionSettings")
    IcebergCompactionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#IcebergCompactionStrategy", name: "IcebergCompactionStrategy")
    IcebergMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergMetadata", name: "IcebergMetadata")
    IcebergNullOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#IcebergNullOrder", name: "IcebergNullOrder")
    IcebergPartitionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergPartitionField", name: "IcebergPartitionField")
    IcebergPartitionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#IcebergPartitionFieldList", name: "IcebergPartitionFieldList")
    IcebergPartitionSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergPartitionSpec", name: "IcebergPartitionSpec")
    IcebergSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergSchema", name: "IcebergSchema")
    IcebergSchemaV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergSchemaV2", name: "IcebergSchemaV2")
    IcebergSnapshotManagementSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergSnapshotManagementSettings", name: "IcebergSnapshotManagementSettings")
    IcebergSortDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#IcebergSortDirection", name: "IcebergSortDirection")
    IcebergSortField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergSortField", name: "IcebergSortField")
    IcebergSortFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#IcebergSortFieldList", name: "IcebergSortFieldList")
    IcebergSortOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergSortOrder", name: "IcebergSortOrder")
    IcebergUnreferencedFileRemovalSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergUnreferencedFileRemovalSettings", name: "IcebergUnreferencedFileRemovalSettings")
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#IntegerList", name: "IntegerList")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#JobStatus", name: "JobStatus")
    LastSuccessfulReplicatedUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#LastSuccessfulReplicatedUpdate", name: "LastSuccessfulReplicatedUpdate")
    ListNamespacesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3tables#ListNamespacesLimit", name: "ListNamespacesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListNamespacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListNamespacesRequest", name: "ListNamespacesRequest")
    ListNamespacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListNamespacesResponse", name: "ListNamespacesResponse")
    ListTableBucketsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3tables#ListTableBucketsLimit", name: "ListTableBucketsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListTableBucketsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTableBucketsRequest", name: "ListTableBucketsRequest")
    ListTableBucketsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTableBucketsResponse", name: "ListTableBucketsResponse")
    ListTablesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3tables#ListTablesLimit", name: "ListTablesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListTablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTablesRequest", name: "ListTablesRequest")
    ListTablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTablesResponse", name: "ListTablesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaintenanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#MaintenanceStatus", name: "MaintenanceStatus")
    ManagedTableInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ManagedTableInformation", name: "ManagedTableInformation")
    MetadataLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#MetadataLocation", name: "MetadataLocation", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MethodNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#MethodNotAllowedException", name: "MethodNotAllowedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    NamespaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#NamespaceId", name: "NamespaceId")
    NamespaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#NamespaceList", name: "NamespaceList")
    NamespaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#NamespaceName", name: "NamespaceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-z_]*$"})
    NamespaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#NamespaceSummary", name: "NamespaceSummary")
    NamespaceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#NamespaceSummaryList", name: "NamespaceSummaryList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OpenTableFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#OpenTableFormat", name: "OpenTableFormat")
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3tables#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 2147483647}})
    PutTableBucketEncryptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableBucketEncryptionRequest", name: "PutTableBucketEncryptionRequest")
    PutTableBucketMaintenanceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableBucketMaintenanceConfigurationRequest", name: "PutTableBucketMaintenanceConfigurationRequest")
    PutTableBucketMetricsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableBucketMetricsConfigurationRequest", name: "PutTableBucketMetricsConfigurationRequest")
    PutTableBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableBucketPolicyRequest", name: "PutTableBucketPolicyRequest")
    PutTableBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableBucketReplicationRequest", name: "PutTableBucketReplicationRequest")
    PutTableBucketReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableBucketReplicationResponse", name: "PutTableBucketReplicationResponse")
    PutTableBucketStorageClassRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableBucketStorageClassRequest", name: "PutTableBucketStorageClassRequest")
    PutTableMaintenanceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableMaintenanceConfigurationRequest", name: "PutTableMaintenanceConfigurationRequest")
    PutTablePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTablePolicyRequest", name: "PutTablePolicyRequest")
    PutTableRecordExpirationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableRecordExpirationConfigurationRequest", name: "PutTableRecordExpirationConfigurationRequest")
    PutTableReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableReplicationRequest", name: "PutTableReplicationRequest")
    PutTableReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableReplicationResponse", name: "PutTableReplicationResponse")
    RenameTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#RenameTableRequest", name: "RenameTableRequest")
    ReplicationDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ReplicationDestination", name: "ReplicationDestination")
    ReplicationDestinationStatusModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ReplicationDestinationStatusModel", name: "ReplicationDestinationStatusModel")
    ReplicationDestinationStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#ReplicationDestinationStatuses", name: "ReplicationDestinationStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ReplicationDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#ReplicationDestinations", name: "ReplicationDestinations", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ReplicationInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ReplicationInformation", name: "ReplicationInformation")
    ReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#ReplicationStatus", name: "ReplicationStatus")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:bucket/.+$"})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#ResourcePolicy", name: "ResourcePolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}})
    SSEAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#SSEAlgorithm", name: "SSEAlgorithm")
    SchemaField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#SchemaField", name: "SchemaField")
    SchemaFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#SchemaFieldList", name: "SchemaFieldList")
    SchemaV2Field = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#SchemaV2Field", name: "SchemaV2Field")
    SchemaV2FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#SchemaV2FieldList", name: "SchemaV2FieldList")
    SchemaV2FieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#SchemaV2FieldType", name: "SchemaV2FieldType")
    StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#StorageClass", name: "StorageClass")
    StorageClassConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#StorageClassConfiguration", name: "StorageClassConfiguration")
    TableARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableARN", name: "TableARN", traits: {"aws.api#arnReference" => {"type" => "AWS::S3Tables::Table"}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:bucket/[a-z0-9_-]{3,63}/table/[a-zA-Z0-9-_]{1,255})$"})
    TableBucketARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableBucketARN", name: "TableBucketARN", traits: {"aws.api#arnReference" => {"type" => "AWS::S3Tables::TableBucket"}, "smithy.api#pattern" => "^(arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:bucket/[a-z0-9_-]{3,63})$"})
    TableBucketId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableBucketId", name: "TableBucketId")
    TableBucketMaintenanceConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3tables#TableBucketMaintenanceConfiguration", name: "TableBucketMaintenanceConfiguration")
    TableBucketMaintenanceConfigurationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableBucketMaintenanceConfigurationValue", name: "TableBucketMaintenanceConfigurationValue")
    TableBucketMaintenanceSettings = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3tables#TableBucketMaintenanceSettings", name: "TableBucketMaintenanceSettings")
    TableBucketMaintenanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableBucketMaintenanceType", name: "TableBucketMaintenanceType")
    TableBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableBucketName", name: "TableBucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z-]*$"})
    TableBucketReplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableBucketReplicationConfiguration", name: "TableBucketReplicationConfiguration")
    TableBucketReplicationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableBucketReplicationRule", name: "TableBucketReplicationRule")
    TableBucketReplicationRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#TableBucketReplicationRules", name: "TableBucketReplicationRules", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TableBucketSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableBucketSummary", name: "TableBucketSummary")
    TableBucketSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#TableBucketSummaryList", name: "TableBucketSummaryList")
    TableBucketType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableBucketType", name: "TableBucketType")
    TableMaintenanceConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3tables#TableMaintenanceConfiguration", name: "TableMaintenanceConfiguration")
    TableMaintenanceConfigurationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableMaintenanceConfigurationValue", name: "TableMaintenanceConfigurationValue")
    TableMaintenanceJobStatus = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3tables#TableMaintenanceJobStatus", name: "TableMaintenanceJobStatus")
    TableMaintenanceJobStatusValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableMaintenanceJobStatusValue", name: "TableMaintenanceJobStatusValue")
    TableMaintenanceJobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableMaintenanceJobType", name: "TableMaintenanceJobType")
    TableMaintenanceSettings = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3tables#TableMaintenanceSettings", name: "TableMaintenanceSettings")
    TableMaintenanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableMaintenanceType", name: "TableMaintenanceType")
    TableMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3tables#TableMetadata", name: "TableMetadata")
    TableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableName", name: "TableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-z_]*$"})
    TableProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3tables#TableProperties", name: "TableProperties")
    TableRecordExpirationConfigurationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableRecordExpirationConfigurationValue", name: "TableRecordExpirationConfigurationValue")
    TableRecordExpirationJobMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableRecordExpirationJobMetrics", name: "TableRecordExpirationJobMetrics")
    TableRecordExpirationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableRecordExpirationJobStatus", name: "TableRecordExpirationJobStatus")
    TableRecordExpirationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableRecordExpirationSettings", name: "TableRecordExpirationSettings")
    TableRecordExpirationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableRecordExpirationStatus", name: "TableRecordExpirationStatus")
    TableReplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableReplicationConfiguration", name: "TableReplicationConfiguration")
    TableReplicationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableReplicationRule", name: "TableReplicationRule")
    TableReplicationRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#TableReplicationRules", name: "TableReplicationRules", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TableSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableSummary", name: "TableSummary")
    TableSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#TableSummaryList", name: "TableSummaryList")
    TableType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableType", name: "TableType")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#TagKeyList", name: "TagKeyList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3tables#Tags", name: "Tags")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateTableMetadataLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#UpdateTableMetadataLocationRequest", name: "UpdateTableMetadataLocationRequest")
    UpdateTableMetadataLocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#UpdateTableMetadataLocationResponse", name: "UpdateTableMetadataLocationResponse")
    VersionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#VersionToken", name: "VersionToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    WarehouseLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#WarehouseLocation", name: "WarehouseLocation", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    BadRequestException.type = Types::BadRequestException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateNamespaceRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    CreateNamespaceRequest.type = Types::CreateNamespaceRequest
    CreateNamespaceResponse.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#required" => {}}))
    CreateNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespace", traits: {"smithy.api#required" => {}}))
    CreateNamespaceResponse.type = Types::CreateNamespaceResponse
    CreateTableBucketRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateTableBucketRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateTableBucketRequest.add_member(:storage_class_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassConfiguration, name: "storageClassConfiguration"))
    CreateTableBucketRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateTableBucketRequest.type = Types::CreateTableBucketRequest
    CreateTableBucketResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateTableBucketResponse.type = Types::CreateTableBucketResponse
    CreateTableRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTableRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTableRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateTableRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenTableFormat, name: "format", traits: {"smithy.api#required" => {}}))
    CreateTableRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMetadata, name: "metadata"))
    CreateTableRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateTableRequest.add_member(:storage_class_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassConfiguration, name: "storageClassConfiguration"))
    CreateTableRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateTableRequest.type = Types::CreateTableRequest
    CreateTableResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableARN", traits: {"smithy.api#required" => {}}))
    CreateTableResponse.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#required" => {}}))
    CreateTableResponse.type = Types::CreateTableResponse
    DeleteNamespaceRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNamespaceRequest.type = Types::DeleteNamespaceRequest
    DeleteTableBucketEncryptionRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableBucketEncryptionRequest.type = Types::DeleteTableBucketEncryptionRequest
    DeleteTableBucketMetricsConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableBucketMetricsConfigurationRequest.type = Types::DeleteTableBucketMetricsConfigurationRequest
    DeleteTableBucketPolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableBucketPolicyRequest.type = Types::DeleteTableBucketPolicyRequest
    DeleteTableBucketReplicationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpQuery" => "tableBucketARN", "smithy.api#required" => {}}))
    DeleteTableBucketReplicationRequest.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#httpQuery" => "versionToken"}))
    DeleteTableBucketReplicationRequest.type = Types::DeleteTableBucketReplicationRequest
    DeleteTableBucketRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableBucketRequest.type = Types::DeleteTableBucketRequest
    DeleteTablePolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTablePolicyRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTablePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTablePolicyRequest.type = Types::DeleteTablePolicyRequest
    DeleteTableReplicationRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn", "smithy.api#required" => {}}))
    DeleteTableReplicationRequest.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "versionToken", traits: {"smithy.api#httpQuery" => "versionToken", "smithy.api#required" => {}}))
    DeleteTableReplicationRequest.type = Types::DeleteTableReplicationRequest
    DeleteTableRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableRequest.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#httpQuery" => "versionToken"}))
    DeleteTableRequest.type = Types::DeleteTableRequest
    EncryptionConfiguration.add_member(:sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEAlgorithm, name: "sseAlgorithm", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws[-a-z0-9]*:kms:[-a-z0-9]*:[0-9]{12}:key/.+)$"}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GetNamespaceRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNamespaceRequest.type = Types::GetNamespaceRequest
    GetNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespace", traits: {"smithy.api#required" => {}}))
    GetNamespaceResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetNamespaceResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetNamespaceResponse.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    GetNamespaceResponse.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceId, name: "namespaceId"))
    GetNamespaceResponse.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketId, name: "tableBucketId"))
    GetNamespaceResponse.type = Types::GetNamespaceResponse
    GetTableBucketEncryptionRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketEncryptionRequest.type = Types::GetTableBucketEncryptionRequest
    GetTableBucketEncryptionResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration", traits: {"smithy.api#required" => {}}))
    GetTableBucketEncryptionResponse.type = Types::GetTableBucketEncryptionResponse
    GetTableBucketMaintenanceConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketMaintenanceConfigurationRequest.type = Types::GetTableBucketMaintenanceConfigurationRequest
    GetTableBucketMaintenanceConfigurationResponse.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#required" => {}}))
    GetTableBucketMaintenanceConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketMaintenanceConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    GetTableBucketMaintenanceConfigurationResponse.type = Types::GetTableBucketMaintenanceConfigurationResponse
    GetTableBucketMetricsConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketMetricsConfigurationRequest.type = Types::GetTableBucketMetricsConfigurationRequest
    GetTableBucketMetricsConfigurationResponse.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#required" => {}}))
    GetTableBucketMetricsConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    GetTableBucketMetricsConfigurationResponse.type = Types::GetTableBucketMetricsConfigurationResponse
    GetTableBucketPolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketPolicyRequest.type = Types::GetTableBucketPolicyRequest
    GetTableBucketPolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "resourcePolicy", traits: {"smithy.api#required" => {}}))
    GetTableBucketPolicyResponse.type = Types::GetTableBucketPolicyResponse
    GetTableBucketReplicationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpQuery" => "tableBucketARN", "smithy.api#required" => {}}))
    GetTableBucketReplicationRequest.type = Types::GetTableBucketReplicationRequest
    GetTableBucketReplicationResponse.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#required" => {}}))
    GetTableBucketReplicationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketReplicationConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    GetTableBucketReplicationResponse.type = Types::GetTableBucketReplicationResponse
    GetTableBucketRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketRequest.type = Types::GetTableBucketRequest
    GetTableBucketResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "arn", traits: {"smithy.api#required" => {}}))
    GetTableBucketResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketName, name: "name", traits: {"smithy.api#required" => {}}))
    GetTableBucketResponse.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    GetTableBucketResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTableBucketResponse.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketId, name: "tableBucketId"))
    GetTableBucketResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketType, name: "type"))
    GetTableBucketResponse.type = Types::GetTableBucketResponse
    GetTableBucketStorageClassRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketStorageClassRequest.type = Types::GetTableBucketStorageClassRequest
    GetTableBucketStorageClassResponse.add_member(:storage_class_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassConfiguration, name: "storageClassConfiguration", traits: {"smithy.api#required" => {}}))
    GetTableBucketStorageClassResponse.type = Types::GetTableBucketStorageClassResponse
    GetTableEncryptionRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableEncryptionRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableEncryptionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableEncryptionRequest.type = Types::GetTableEncryptionRequest
    GetTableEncryptionResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration", traits: {"smithy.api#required" => {}}))
    GetTableEncryptionResponse.type = Types::GetTableEncryptionResponse
    GetTableMaintenanceConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationRequest.type = Types::GetTableMaintenanceConfigurationRequest
    GetTableMaintenanceConfigurationResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableARN", traits: {"smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationResponse.type = Types::GetTableMaintenanceConfigurationResponse
    GetTableMaintenanceJobStatusRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusRequest.type = Types::GetTableMaintenanceJobStatusRequest
    GetTableMaintenanceJobStatusResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableARN", traits: {"smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusResponse.type = Types::GetTableMaintenanceJobStatusResponse
    GetTableMetadataLocationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMetadataLocationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMetadataLocationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMetadataLocationRequest.type = Types::GetTableMetadataLocationRequest
    GetTableMetadataLocationResponse.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#required" => {}}))
    GetTableMetadataLocationResponse.add_member(:metadata_location, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataLocation, name: "metadataLocation"))
    GetTableMetadataLocationResponse.add_member(:warehouse_location, ::Smithy::Schema::Shapes::MemberShape.new(target: WarehouseLocation, name: "warehouseLocation", traits: {"smithy.api#required" => {}}))
    GetTableMetadataLocationResponse.type = Types::GetTableMetadataLocationResponse
    GetTablePolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTablePolicyRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTablePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTablePolicyRequest.type = Types::GetTablePolicyRequest
    GetTablePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "resourcePolicy", traits: {"smithy.api#required" => {}}))
    GetTablePolicyResponse.type = Types::GetTablePolicyResponse
    GetTableRecordExpirationConfigurationRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn", "smithy.api#required" => {}}))
    GetTableRecordExpirationConfigurationRequest.type = Types::GetTableRecordExpirationConfigurationRequest
    GetTableRecordExpirationConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRecordExpirationConfigurationValue, name: "configuration", traits: {"smithy.api#required" => {}}))
    GetTableRecordExpirationConfigurationResponse.type = Types::GetTableRecordExpirationConfigurationResponse
    GetTableRecordExpirationJobStatusRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn", "smithy.api#required" => {}}))
    GetTableRecordExpirationJobStatusRequest.type = Types::GetTableRecordExpirationJobStatusRequest
    GetTableRecordExpirationJobStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRecordExpirationJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetTableRecordExpirationJobStatusResponse.add_member(:last_run_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastRunTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetTableRecordExpirationJobStatusResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    GetTableRecordExpirationJobStatusResponse.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRecordExpirationJobMetrics, name: "metrics"))
    GetTableRecordExpirationJobStatusResponse.type = Types::GetTableRecordExpirationJobStatusResponse
    GetTableReplicationRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn", "smithy.api#required" => {}}))
    GetTableReplicationRequest.type = Types::GetTableReplicationRequest
    GetTableReplicationResponse.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "versionToken", traits: {"smithy.api#required" => {}}))
    GetTableReplicationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableReplicationConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    GetTableReplicationResponse.type = Types::GetTableReplicationResponse
    GetTableReplicationStatusRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn", "smithy.api#required" => {}}))
    GetTableReplicationStatusRequest.type = Types::GetTableReplicationStatusRequest
    GetTableReplicationStatusResponse.add_member(:source_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "sourceTableArn", traits: {"smithy.api#required" => {}}))
    GetTableReplicationStatusResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDestinationStatuses, name: "destinations", traits: {"smithy.api#required" => {}}))
    GetTableReplicationStatusResponse.type = Types::GetTableReplicationStatusResponse
    GetTableRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpQuery" => "tableBucketARN"}))
    GetTableRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    GetTableRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    GetTableRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn"}))
    GetTableRequest.type = Types::GetTableRequest
    GetTableResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TableType, name: "type", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableARN", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespace", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceId, name: "namespaceId", traits: {"smithy.api#default" => nil}))
    GetTableResponse.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:metadata_location, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataLocation, name: "metadataLocation"))
    GetTableResponse.add_member(:warehouse_location, ::Smithy::Schema::Shapes::MemberShape.new(target: WarehouseLocation, name: "warehouseLocation", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTableResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:managed_by_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "managedByService"))
    GetTableResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTableResponse.add_member(:modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "modifiedBy", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenTableFormat, name: "format", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketId, name: "tableBucketId"))
    GetTableResponse.add_member(:managed_table_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTableInformation, name: "managedTableInformation"))
    GetTableResponse.type = Types::GetTableResponse
    GetTableStorageClassRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableStorageClassRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableStorageClassRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableStorageClassRequest.type = Types::GetTableStorageClassRequest
    GetTableStorageClassResponse.add_member(:storage_class_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassConfiguration, name: "storageClassConfiguration", traits: {"smithy.api#required" => {}}))
    GetTableStorageClassResponse.type = Types::GetTableStorageClassResponse
    IcebergCompactionSettings.add_member(:target_file_size_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "targetFileSizeMB"))
    IcebergCompactionSettings.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergCompactionStrategy, name: "strategy"))
    IcebergCompactionSettings.type = Types::IcebergCompactionSettings
    IcebergCompactionStrategy.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "auto"}))
    IcebergCompactionStrategy.add_member(:binpack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINPACK", traits: {"smithy.api#enumValue" => "binpack"}))
    IcebergCompactionStrategy.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SORT", traits: {"smithy.api#enumValue" => "sort"}))
    IcebergCompactionStrategy.add_member(:zorder, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZORDER", traits: {"smithy.api#enumValue" => "z-order"}))
    IcebergMetadata.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergSchema, name: "schema"))
    IcebergMetadata.add_member(:schema_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergSchemaV2, name: "schemaV2"))
    IcebergMetadata.add_member(:partition_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergPartitionSpec, name: "partitionSpec"))
    IcebergMetadata.add_member(:write_order, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergSortOrder, name: "writeOrder"))
    IcebergMetadata.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TableProperties, name: "properties"))
    IcebergMetadata.type = Types::IcebergMetadata
    IcebergNullOrder.add_member(:nulls_first, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NULLS_FIRST", traits: {"smithy.api#enumValue" => "nulls-first"}))
    IcebergNullOrder.add_member(:nulls_last, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NULLS_LAST", traits: {"smithy.api#enumValue" => "nulls-last"}))
    IcebergPartitionField.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sourceId", traits: {"smithy.api#jsonName" => "source-id", "smithy.api#required" => {}}))
    IcebergPartitionField.add_member(:transform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "transform", traits: {"smithy.api#required" => {}}))
    IcebergPartitionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    IcebergPartitionField.add_member(:field_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "fieldId", traits: {"smithy.api#jsonName" => "field-id"}))
    IcebergPartitionField.type = Types::IcebergPartitionField
    IcebergPartitionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergPartitionField, name: "member"))
    IcebergPartitionSpec.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergPartitionFieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    IcebergPartitionSpec.add_member(:spec_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "specId", traits: {"smithy.api#jsonName" => "spec-id"}))
    IcebergPartitionSpec.type = Types::IcebergPartitionSpec
    IcebergSchema.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    IcebergSchema.type = Types::IcebergSchema
    IcebergSchemaV2.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaV2FieldType, name: "type", traits: {"smithy.api#required" => {}}))
    IcebergSchemaV2.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaV2FieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    IcebergSchemaV2.add_member(:schema_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "schemaId", traits: {"smithy.api#jsonName" => "schema-id"}))
    IcebergSchemaV2.add_member(:identifier_field_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "identifierFieldIds", traits: {"smithy.api#jsonName" => "identifier-field-ids"}))
    IcebergSchemaV2.type = Types::IcebergSchemaV2
    IcebergSnapshotManagementSettings.add_member(:min_snapshots_to_keep, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "minSnapshotsToKeep"))
    IcebergSnapshotManagementSettings.add_member(:max_snapshot_age_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "maxSnapshotAgeHours"))
    IcebergSnapshotManagementSettings.type = Types::IcebergSnapshotManagementSettings
    IcebergSortDirection.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "asc"}))
    IcebergSortDirection.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "desc"}))
    IcebergSortField.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sourceId", traits: {"smithy.api#jsonName" => "source-id", "smithy.api#required" => {}}))
    IcebergSortField.add_member(:transform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "transform", traits: {"smithy.api#required" => {}}))
    IcebergSortField.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergSortDirection, name: "direction", traits: {"smithy.api#required" => {}}))
    IcebergSortField.add_member(:null_order, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergNullOrder, name: "nullOrder", traits: {"smithy.api#jsonName" => "null-order", "smithy.api#required" => {}}))
    IcebergSortField.type = Types::IcebergSortField
    IcebergSortFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergSortField, name: "member"))
    IcebergSortOrder.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "orderId", traits: {"smithy.api#jsonName" => "order-id", "smithy.api#required" => {}}))
    IcebergSortOrder.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergSortFieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    IcebergSortOrder.type = Types::IcebergSortOrder
    IcebergUnreferencedFileRemovalSettings.add_member(:unreferenced_days, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "unreferencedDays"))
    IcebergUnreferencedFileRemovalSettings.add_member(:non_current_days, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "nonCurrentDays"))
    IcebergUnreferencedFileRemovalSettings.type = Types::IcebergUnreferencedFileRemovalSettings
    IntegerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServerErrorException.type = Types::InternalServerErrorException
    JobStatus.add_member(:not_yet_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_YET_RUN", traits: {"smithy.api#enumValue" => "Not_Yet_Run"}))
    JobStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "Successful"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    JobStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    LastSuccessfulReplicatedUpdate.add_member(:metadata_location, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataLocation, name: "metadataLocation", traits: {"smithy.api#required" => {}}))
    LastSuccessfulReplicatedUpdate.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    LastSuccessfulReplicatedUpdate.type = Types::LastSuccessfulReplicatedUpdate
    ListNamespacesRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNamespacesRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListNamespacesRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "continuationToken", traits: {"smithy.api#httpQuery" => "continuationToken"}))
    ListNamespacesRequest.add_member(:max_namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNamespacesLimit, name: "maxNamespaces", traits: {"smithy.api#httpQuery" => "maxNamespaces"}))
    ListNamespacesRequest.type = Types::ListNamespacesRequest
    ListNamespacesResponse.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceSummaryList, name: "namespaces", traits: {"smithy.api#required" => {}}))
    ListNamespacesResponse.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "continuationToken"))
    ListNamespacesResponse.type = Types::ListNamespacesResponse
    ListTableBucketsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.api#length" => {"min" => 1, "max" => 63}}))
    ListTableBucketsRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "continuationToken", traits: {"smithy.api#httpQuery" => "continuationToken"}))
    ListTableBucketsRequest.add_member(:max_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTableBucketsLimit, name: "maxBuckets", traits: {"smithy.api#httpQuery" => "maxBuckets"}))
    ListTableBucketsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketType, name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListTableBucketsRequest.type = Types::ListTableBucketsRequest
    ListTableBucketsResponse.add_member(:table_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketSummaryList, name: "tableBuckets", traits: {"smithy.api#required" => {}}))
    ListTableBucketsResponse.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "continuationToken"))
    ListTableBucketsResponse.type = Types::ListTableBucketsResponse
    ListTablesRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTablesRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    ListTablesRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListTablesRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "continuationToken", traits: {"smithy.api#httpQuery" => "continuationToken"}))
    ListTablesRequest.add_member(:max_tables, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTablesLimit, name: "maxTables", traits: {"smithy.api#httpQuery" => "maxTables"}))
    ListTablesRequest.type = Types::ListTablesRequest
    ListTablesResponse.add_member(:tables, ::Smithy::Schema::Shapes::MemberShape.new(target: TableSummaryList, name: "tables", traits: {"smithy.api#required" => {}}))
    ListTablesResponse.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "continuationToken"))
    ListTablesResponse.type = Types::ListTablesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MaintenanceStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    MaintenanceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    ManagedTableInformation.add_member(:replication_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInformation, name: "replicationInformation"))
    ManagedTableInformation.type = Types::ManagedTableInformation
    MethodNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    NamespaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "member"))
    NamespaceSummary.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespace", traits: {"smithy.api#required" => {}}))
    NamespaceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    NamespaceSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy", traits: {"smithy.api#required" => {}}))
    NamespaceSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    NamespaceSummary.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceId, name: "namespaceId"))
    NamespaceSummary.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketId, name: "tableBucketId"))
    NamespaceSummary.type = Types::NamespaceSummary
    NamespaceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceSummary, name: "member"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NotFoundException.type = Types::NotFoundException
    OpenTableFormat.add_member(:iceberg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICEBERG", traits: {"smithy.api#enumValue" => "ICEBERG"}))
    PutTableBucketEncryptionRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketEncryptionRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration", traits: {"smithy.api#required" => {}}))
    PutTableBucketEncryptionRequest.type = Types::PutTableBucketEncryptionRequest
    PutTableBucketMaintenanceConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketMaintenanceConfigurationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketMaintenanceType, name: "type", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketMaintenanceConfigurationRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketMaintenanceConfigurationValue, name: "value", traits: {"smithy.api#required" => {}}))
    PutTableBucketMaintenanceConfigurationRequest.type = Types::PutTableBucketMaintenanceConfigurationRequest
    PutTableBucketMetricsConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketMetricsConfigurationRequest.type = Types::PutTableBucketMetricsConfigurationRequest
    PutTableBucketPolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketPolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "resourcePolicy", traits: {"smithy.api#required" => {}}))
    PutTableBucketPolicyRequest.type = Types::PutTableBucketPolicyRequest
    PutTableBucketReplicationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpQuery" => "tableBucketARN", "smithy.api#required" => {}}))
    PutTableBucketReplicationRequest.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#httpQuery" => "versionToken"}))
    PutTableBucketReplicationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketReplicationConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    PutTableBucketReplicationRequest.type = Types::PutTableBucketReplicationRequest
    PutTableBucketReplicationResponse.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#required" => {}}))
    PutTableBucketReplicationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "status", traits: {"smithy.api#required" => {}}))
    PutTableBucketReplicationResponse.type = Types::PutTableBucketReplicationResponse
    PutTableBucketStorageClassRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketStorageClassRequest.add_member(:storage_class_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassConfiguration, name: "storageClassConfiguration", traits: {"smithy.api#required" => {}}))
    PutTableBucketStorageClassRequest.type = Types::PutTableBucketStorageClassRequest
    PutTableMaintenanceConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceType, name: "type", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceConfigurationValue, name: "value", traits: {"smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.type = Types::PutTableMaintenanceConfigurationRequest
    PutTablePolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTablePolicyRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTablePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTablePolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "resourcePolicy", traits: {"smithy.api#required" => {}}))
    PutTablePolicyRequest.type = Types::PutTablePolicyRequest
    PutTableRecordExpirationConfigurationRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn", "smithy.api#required" => {}}))
    PutTableRecordExpirationConfigurationRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRecordExpirationConfigurationValue, name: "value", traits: {"smithy.api#required" => {}}))
    PutTableRecordExpirationConfigurationRequest.type = Types::PutTableRecordExpirationConfigurationRequest
    PutTableReplicationRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn", "smithy.api#required" => {}}))
    PutTableReplicationRequest.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "versionToken", traits: {"smithy.api#httpQuery" => "versionToken"}))
    PutTableReplicationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableReplicationConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    PutTableReplicationRequest.type = Types::PutTableReplicationRequest
    PutTableReplicationResponse.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "versionToken", traits: {"smithy.api#required" => {}}))
    PutTableReplicationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "status", traits: {"smithy.api#required" => {}}))
    PutTableReplicationResponse.type = Types::PutTableReplicationResponse
    RenameTableRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenameTableRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenameTableRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenameTableRequest.add_member(:new_namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "newNamespaceName"))
    RenameTableRequest.add_member(:new_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "newName"))
    RenameTableRequest.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken"))
    RenameTableRequest.type = Types::RenameTableRequest
    ReplicationDestination.add_member(:destination_table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "destinationTableBucketARN", traits: {"smithy.api#required" => {}}))
    ReplicationDestination.type = Types::ReplicationDestination
    ReplicationDestinationStatusModel.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "replicationStatus", traits: {"smithy.api#required" => {}}))
    ReplicationDestinationStatusModel.add_member(:destination_table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "destinationTableBucketArn", traits: {"smithy.api#required" => {}}))
    ReplicationDestinationStatusModel.add_member(:destination_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "destinationTableArn"))
    ReplicationDestinationStatusModel.add_member(:last_successful_replicated_update, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSuccessfulReplicatedUpdate, name: "lastSuccessfulReplicatedUpdate"))
    ReplicationDestinationStatusModel.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    ReplicationDestinationStatusModel.type = Types::ReplicationDestinationStatusModel
    ReplicationDestinationStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDestinationStatusModel, name: "member"))
    ReplicationDestinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDestination, name: "member"))
    ReplicationInformation.add_member(:source_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "sourceTableARN", traits: {"smithy.api#required" => {}}))
    ReplicationInformation.type = Types::ReplicationInformation
    ReplicationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "pending"}))
    ReplicationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "completed"}))
    ReplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    SSEAlgorithm.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    SSEAlgorithm.add_member(:aws_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_KMS", traits: {"smithy.api#enumValue" => "aws:kms"}))
    SchemaField.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "id"))
    SchemaField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    SchemaField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type", traits: {"smithy.api#required" => {}}))
    SchemaField.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required", traits: {"smithy.api#default" => false}))
    SchemaField.type = Types::SchemaField
    SchemaFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaField, name: "member"))
    SchemaV2Field.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "id", traits: {"smithy.api#required" => {}}))
    SchemaV2Field.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    SchemaV2Field.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "type", traits: {"smithy.api#required" => {}}))
    SchemaV2Field.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required", traits: {"smithy.api#required" => {}}))
    SchemaV2Field.add_member(:doc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "doc"))
    SchemaV2Field.type = Types::SchemaV2Field
    SchemaV2FieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaV2Field, name: "member"))
    SchemaV2FieldType.add_member(:struct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRUCT", traits: {"smithy.api#enumValue" => "struct"}))
    StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    StorageClassConfiguration.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "storageClass", traits: {"smithy.api#required" => {}}))
    StorageClassConfiguration.type = Types::StorageClassConfiguration
    TableBucketMaintenanceConfiguration.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketMaintenanceType, name: "key"))
    TableBucketMaintenanceConfiguration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketMaintenanceConfigurationValue, name: "value"))
    TableBucketMaintenanceConfigurationValue.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceStatus, name: "status"))
    TableBucketMaintenanceConfigurationValue.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketMaintenanceSettings, name: "settings"))
    TableBucketMaintenanceConfigurationValue.type = Types::TableBucketMaintenanceConfigurationValue
    TableBucketMaintenanceSettings.add_member(:iceberg_unreferenced_file_removal, Types::TableBucketMaintenanceSettings::IcebergUnreferencedFileRemoval, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergUnreferencedFileRemovalSettings, name: "icebergUnreferencedFileRemoval"))
    TableBucketMaintenanceSettings.add_member(:unknown, Types::TableBucketMaintenanceSettings::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TableBucketMaintenanceSettings.type = Types::TableBucketMaintenanceSettings
    TableBucketMaintenanceType.add_member(:iceberg_unreferenced_file_removal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICEBERG_UNREFERENCED_FILE_REMOVAL", traits: {"smithy.api#enumValue" => "icebergUnreferencedFileRemoval"}))
    TableBucketReplicationConfiguration.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRole, name: "role", traits: {"smithy.api#required" => {}}))
    TableBucketReplicationConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketReplicationRules, name: "rules", traits: {"smithy.api#required" => {}}))
    TableBucketReplicationConfiguration.type = Types::TableBucketReplicationConfiguration
    TableBucketReplicationRule.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDestinations, name: "destinations", traits: {"smithy.api#required" => {}}))
    TableBucketReplicationRule.type = Types::TableBucketReplicationRule
    TableBucketReplicationRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketReplicationRule, name: "member"))
    TableBucketSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "arn", traits: {"smithy.api#required" => {}}))
    TableBucketSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketName, name: "name", traits: {"smithy.api#required" => {}}))
    TableBucketSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    TableBucketSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TableBucketSummary.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketId, name: "tableBucketId"))
    TableBucketSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketType, name: "type"))
    TableBucketSummary.type = Types::TableBucketSummary
    TableBucketSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketSummary, name: "member"))
    TableBucketType.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "customer"}))
    TableBucketType.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "aws"}))
    TableMaintenanceConfiguration.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceType, name: "key"))
    TableMaintenanceConfiguration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceConfigurationValue, name: "value"))
    TableMaintenanceConfigurationValue.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceStatus, name: "status"))
    TableMaintenanceConfigurationValue.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceSettings, name: "settings"))
    TableMaintenanceConfigurationValue.type = Types::TableMaintenanceConfigurationValue
    TableMaintenanceJobStatus.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceJobType, name: "key"))
    TableMaintenanceJobStatus.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMaintenanceJobStatusValue, name: "value"))
    TableMaintenanceJobStatusValue.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    TableMaintenanceJobStatusValue.add_member(:last_run_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastRunTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TableMaintenanceJobStatusValue.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    TableMaintenanceJobStatusValue.type = Types::TableMaintenanceJobStatusValue
    TableMaintenanceJobType.add_member(:iceberg_compaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICEBERG_COMPACTION", traits: {"smithy.api#enumValue" => "icebergCompaction"}))
    TableMaintenanceJobType.add_member(:iceberg_snapshot_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICEBERG_SNAPSHOT_MANAGEMENT", traits: {"smithy.api#enumValue" => "icebergSnapshotManagement"}))
    TableMaintenanceJobType.add_member(:iceberg_unreferenced_file_removal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICEBERG_UNREFERENCED_FILE_REMOVAL", traits: {"smithy.api#enumValue" => "icebergUnreferencedFileRemoval"}))
    TableMaintenanceSettings.add_member(:iceberg_compaction, Types::TableMaintenanceSettings::IcebergCompaction, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergCompactionSettings, name: "icebergCompaction"))
    TableMaintenanceSettings.add_member(:iceberg_snapshot_management, Types::TableMaintenanceSettings::IcebergSnapshotManagement, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergSnapshotManagementSettings, name: "icebergSnapshotManagement"))
    TableMaintenanceSettings.add_member(:unknown, Types::TableMaintenanceSettings::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TableMaintenanceSettings.type = Types::TableMaintenanceSettings
    TableMaintenanceType.add_member(:iceberg_compaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICEBERG_COMPACTION", traits: {"smithy.api#enumValue" => "icebergCompaction"}))
    TableMaintenanceType.add_member(:iceberg_snapshot_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICEBERG_SNAPSHOT_MANAGEMENT", traits: {"smithy.api#enumValue" => "icebergSnapshotManagement"}))
    TableMetadata.add_member(:iceberg, Types::TableMetadata::Iceberg, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergMetadata, name: "iceberg"))
    TableMetadata.add_member(:unknown, Types::TableMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TableMetadata.type = Types::TableMetadata
    TableProperties.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TableProperties.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TableRecordExpirationConfigurationValue.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRecordExpirationStatus, name: "status"))
    TableRecordExpirationConfigurationValue.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRecordExpirationSettings, name: "settings"))
    TableRecordExpirationConfigurationValue.type = Types::TableRecordExpirationConfigurationValue
    TableRecordExpirationJobMetrics.add_member(:deleted_data_files, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "deletedDataFiles"))
    TableRecordExpirationJobMetrics.add_member(:deleted_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "deletedRecords"))
    TableRecordExpirationJobMetrics.add_member(:removed_files_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "removedFilesSize"))
    TableRecordExpirationJobMetrics.type = Types::TableRecordExpirationJobMetrics
    TableRecordExpirationJobStatus.add_member(:not_yet_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_YET_RUN", traits: {"smithy.api#enumValue" => "NotYetRun"}))
    TableRecordExpirationJobStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "Successful"}))
    TableRecordExpirationJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    TableRecordExpirationJobStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    TableRecordExpirationSettings.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "days"))
    TableRecordExpirationSettings.type = Types::TableRecordExpirationSettings
    TableRecordExpirationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    TableRecordExpirationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    TableReplicationConfiguration.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRole, name: "role", traits: {"smithy.api#required" => {}}))
    TableReplicationConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: TableReplicationRules, name: "rules", traits: {"smithy.api#required" => {}}))
    TableReplicationConfiguration.type = Types::TableReplicationConfiguration
    TableReplicationRule.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDestinations, name: "destinations", traits: {"smithy.api#required" => {}}))
    TableReplicationRule.type = Types::TableReplicationRule
    TableReplicationRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableReplicationRule, name: "member"))
    TableSummary.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespace", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TableType, name: "type", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableARN", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TableSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TableSummary.add_member(:managed_by_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "managedByService"))
    TableSummary.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceId, name: "namespaceId"))
    TableSummary.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketId, name: "tableBucketId"))
    TableSummary.type = Types::TableSummary
    TableSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableSummary, name: "member"))
    TableType.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "customer"}))
    TableType.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "aws"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateTableMetadataLocationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.add_member(:metadata_location, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataLocation, name: "metadataLocation", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.type = Types::UpdateTableMetadataLocationRequest
    UpdateTableMetadataLocationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableARN, name: "tableARN", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespace", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.add_member(:version_token, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionToken, name: "versionToken", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.add_member(:metadata_location, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataLocation, name: "metadataLocation", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.type = Types::UpdateTableMetadataLocationResponse

    S3TableBuckets = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3tables#S3TableBuckets"
      service.name = "S3TableBuckets"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "S3Tables", "arnNamespace" => "s3tables", "cloudTrailEventSource" => "s3tables.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "s3tables"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon S3 Tables", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://s3tables-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://s3tables-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://s3tables.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://s3tables.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#CreateNamespace"
        operation.name = "CreateNamespace"
        operation.input = CreateNamespaceRequest
        operation.output = CreateNamespaceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/namespaces/{tableBucketARN}", "method" => "PUT", "code" => 200}}
      end)
      service.add_operation(:create_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#CreateTable"
        operation.name = "CreateTable"
        operation.input = CreateTableRequest
        operation.output = CreateTableResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}", "method" => "PUT", "code" => 200}}
      end)
      service.add_operation(:create_table_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#CreateTableBucket"
        operation.name = "CreateTableBucket"
        operation.input = CreateTableBucketRequest
        operation.output = CreateTableBucketResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets", "method" => "PUT", "code" => 200}}
      end)
      service.add_operation(:delete_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteNamespace"
        operation.name = "DeleteNamespace"
        operation.input = DeleteNamespaceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/namespaces/{tableBucketARN}/{namespace}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTable"
        operation.name = "DeleteTable"
        operation.input = DeleteTableRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableBucket"
        operation.name = "DeleteTableBucket"
        operation.input = DeleteTableBucketRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableBucketEncryption"
        operation.name = "DeleteTableBucketEncryption"
        operation.input = DeleteTableBucketEncryptionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/encryption", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_bucket_metrics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableBucketMetricsConfiguration"
        operation.name = "DeleteTableBucketMetricsConfiguration"
        operation.input = DeleteTableBucketMetricsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/metrics", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableBucketPolicy"
        operation.name = "DeleteTableBucketPolicy"
        operation.input = DeleteTableBucketPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/policy", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableBucketReplication"
        operation.name = "DeleteTableBucketReplication"
        operation.input = DeleteTableBucketReplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-bucket-replication", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTablePolicy"
        operation.name = "DeleteTablePolicy"
        operation.input = DeleteTablePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/policy", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableReplication"
        operation.name = "DeleteTableReplication"
        operation.input = DeleteTableReplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-replication", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetNamespace"
        operation.name = "GetNamespace"
        operation.input = GetNamespaceRequest
        operation.output = GetNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/namespaces/{tableBucketARN}/{namespace}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetNamespace_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist", "namespace" => "doesnotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTable"
        operation.name = "GetTable"
        operation.input = GetTableRequest
        operation.output = GetTableResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/get-table", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTable_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist", "namespace" => "doesnotexist", "name" => "doesnotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "GetTableArn_AccessDeniedException", "params" => {"tableArn" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist/table/f577d6ca-c1dd-4686-9f41-62130a40e91b"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_table_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucket"
        operation.name = "GetTableBucket"
        operation.input = GetTableBucketRequest
        operation.output = GetTableBucketResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTableBucket_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_table_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketEncryption"
        operation.name = "GetTableBucketEncryption"
        operation.input = GetTableBucketEncryptionRequest
        operation.output = GetTableBucketEncryptionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/encryption", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_bucket_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketMaintenanceConfiguration"
        operation.name = "GetTableBucketMaintenanceConfiguration"
        operation.input = GetTableBucketMaintenanceConfigurationRequest
        operation.output = GetTableBucketMaintenanceConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/maintenance", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_bucket_metrics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketMetricsConfiguration"
        operation.name = "GetTableBucketMetricsConfiguration"
        operation.input = GetTableBucketMetricsConfigurationRequest
        operation.output = GetTableBucketMetricsConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/metrics", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketPolicy"
        operation.name = "GetTableBucketPolicy"
        operation.input = GetTableBucketPolicyRequest
        operation.output = GetTableBucketPolicyResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/policy", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketReplication"
        operation.name = "GetTableBucketReplication"
        operation.input = GetTableBucketReplicationRequest
        operation.output = GetTableBucketReplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-bucket-replication", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_bucket_storage_class, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketStorageClass"
        operation.name = "GetTableBucketStorageClass"
        operation.input = GetTableBucketStorageClassRequest
        operation.output = GetTableBucketStorageClassResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/storage-class", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableEncryption"
        operation.name = "GetTableEncryption"
        operation.input = GetTableEncryptionRequest
        operation.output = GetTableEncryptionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/encryption", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableMaintenanceConfiguration"
        operation.name = "GetTableMaintenanceConfiguration"
        operation.input = GetTableMaintenanceConfigurationRequest
        operation.output = GetTableMaintenanceConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/maintenance", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_maintenance_job_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableMaintenanceJobStatus"
        operation.name = "GetTableMaintenanceJobStatus"
        operation.input = GetTableMaintenanceJobStatusRequest
        operation.output = GetTableMaintenanceJobStatusResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/maintenance-job-status", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_metadata_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableMetadataLocation"
        operation.name = "GetTableMetadataLocation"
        operation.input = GetTableMetadataLocationRequest
        operation.output = GetTableMetadataLocationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTablePolicy"
        operation.name = "GetTablePolicy"
        operation.input = GetTablePolicyRequest
        operation.output = GetTablePolicyResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/policy", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_record_expiration_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableRecordExpirationConfiguration"
        operation.name = "GetTableRecordExpirationConfiguration"
        operation.input = GetTableRecordExpirationConfigurationRequest
        operation.output = GetTableRecordExpirationConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-record-expiration", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_record_expiration_job_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableRecordExpirationJobStatus"
        operation.name = "GetTableRecordExpirationJobStatus"
        operation.input = GetTableRecordExpirationJobStatusRequest
        operation.output = GetTableRecordExpirationJobStatusResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-record-expiration-job-status", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableReplication"
        operation.name = "GetTableReplication"
        operation.input = GetTableReplicationRequest
        operation.output = GetTableReplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-replication", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_replication_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableReplicationStatus"
        operation.name = "GetTableReplicationStatus"
        operation.input = GetTableReplicationStatusRequest
        operation.output = GetTableReplicationStatusResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/replication-status", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_storage_class, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableStorageClass"
        operation.name = "GetTableStorageClass"
        operation.input = GetTableStorageClassRequest
        operation.output = GetTableStorageClassResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/storage-class", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#ListNamespaces"
        operation.name = "ListNamespaces"
        operation.input = ListNamespacesRequest
        operation.output = ListNamespacesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/namespaces/{tableBucketARN}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListNamespaces_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListNamespaces.new
      end)
      service.add_operation(:list_table_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#ListTableBuckets"
        operation.name = "ListTableBuckets"
        operation.input = ListTableBucketsRequest
        operation.output = ListTableBucketsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTableBuckets_Success", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListTableBuckets.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#ListTables"
        operation.name = "ListTables"
        operation.input = ListTablesRequest
        operation.output = ListTablesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTables_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tag/{resourceArn}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_table_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketEncryption"
        operation.name = "PutTableBucketEncryption"
        operation.input = PutTableBucketEncryptionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/encryption", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_bucket_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketMaintenanceConfiguration"
        operation.name = "PutTableBucketMaintenanceConfiguration"
        operation.input = PutTableBucketMaintenanceConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/maintenance/{type}", "method" => "PUT", "code" => 204}}
      end)
      service.add_operation(:put_table_bucket_metrics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketMetricsConfiguration"
        operation.name = "PutTableBucketMetricsConfiguration"
        operation.input = PutTableBucketMetricsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/metrics", "method" => "PUT", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketPolicy"
        operation.name = "PutTableBucketPolicy"
        operation.input = PutTableBucketPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/policy", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketReplication"
        operation.name = "PutTableBucketReplication"
        operation.input = PutTableBucketReplicationRequest
        operation.output = PutTableBucketReplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-bucket-replication", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_bucket_storage_class, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketStorageClass"
        operation.name = "PutTableBucketStorageClass"
        operation.input = PutTableBucketStorageClassRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/storage-class", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableMaintenanceConfiguration"
        operation.name = "PutTableMaintenanceConfiguration"
        operation.input = PutTableMaintenanceConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/maintenance/{type}", "method" => "PUT", "code" => 204}}
      end)
      service.add_operation(:put_table_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTablePolicy"
        operation.name = "PutTablePolicy"
        operation.input = PutTablePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/policy", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_record_expiration_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableRecordExpirationConfiguration"
        operation.name = "PutTableRecordExpirationConfiguration"
        operation.input = PutTableRecordExpirationConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-record-expiration", "method" => "PUT", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableReplication"
        operation.name = "PutTableReplication"
        operation.input = PutTableReplicationRequest
        operation.output = PutTableReplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/table-replication", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:rename_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#RenameTable"
        operation.name = "RenameTable"
        operation.input = RenameTableRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/rename", "method" => "PUT", "code" => 204}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tag/{resourceArn}", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tag/{resourceArn}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_table_metadata_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#UpdateTableMetadataLocation"
        operation.name = "UpdateTableMetadataLocation"
        operation.input = UpdateTableMetadataLocationRequest
        operation.output = UpdateTableMetadataLocationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location", "method" => "PUT"}}
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
