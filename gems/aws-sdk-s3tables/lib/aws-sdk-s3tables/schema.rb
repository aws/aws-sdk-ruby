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
    DeleteTableBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableBucketPolicyRequest", name: "DeleteTableBucketPolicyRequest")
    DeleteTableBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTableBucketRequest", name: "DeleteTableBucketRequest")
    DeleteTablePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#DeleteTablePolicyRequest", name: "DeleteTablePolicyRequest")
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
    GetTableBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketPolicyRequest", name: "GetTableBucketPolicyRequest")
    GetTableBucketPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketPolicyResponse", name: "GetTableBucketPolicyResponse")
    GetTableBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketRequest", name: "GetTableBucketRequest")
    GetTableBucketResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableBucketResponse", name: "GetTableBucketResponse")
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
    GetTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableRequest", name: "GetTableRequest")
    GetTableResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#GetTableResponse", name: "GetTableResponse")
    IcebergCompactionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergCompactionSettings", name: "IcebergCompactionSettings")
    IcebergCompactionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#IcebergCompactionStrategy", name: "IcebergCompactionStrategy")
    IcebergMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergMetadata", name: "IcebergMetadata")
    IcebergSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergSchema", name: "IcebergSchema")
    IcebergSnapshotManagementSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergSnapshotManagementSettings", name: "IcebergSnapshotManagementSettings")
    IcebergUnreferencedFileRemovalSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#IcebergUnreferencedFileRemovalSettings", name: "IcebergUnreferencedFileRemovalSettings")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#JobStatus", name: "JobStatus")
    ListNamespacesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3tables#ListNamespacesLimit", name: "ListNamespacesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListNamespacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListNamespacesRequest", name: "ListNamespacesRequest")
    ListNamespacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListNamespacesResponse", name: "ListNamespacesResponse")
    ListTableBucketsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3tables#ListTableBucketsLimit", name: "ListTableBucketsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListTableBucketsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTableBucketsRequest", name: "ListTableBucketsRequest")
    ListTableBucketsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTableBucketsResponse", name: "ListTableBucketsResponse")
    ListTablesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3tables#ListTablesLimit", name: "ListTablesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListTablesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTablesRequest", name: "ListTablesRequest")
    ListTablesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#ListTablesResponse", name: "ListTablesResponse")
    MaintenanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#MaintenanceStatus", name: "MaintenanceStatus")
    MetadataLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#MetadataLocation", name: "MetadataLocation", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
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
    PutTableBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableBucketPolicyRequest", name: "PutTableBucketPolicyRequest")
    PutTableMaintenanceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTableMaintenanceConfigurationRequest", name: "PutTableMaintenanceConfigurationRequest")
    PutTablePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#PutTablePolicyRequest", name: "PutTablePolicyRequest")
    RenameTableRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#RenameTableRequest", name: "RenameTableRequest")
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#ResourcePolicy", name: "ResourcePolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}})
    SSEAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#SSEAlgorithm", name: "SSEAlgorithm")
    SchemaField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#SchemaField", name: "SchemaField")
    SchemaFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#SchemaFieldList", name: "SchemaFieldList")
    TableARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableARN", name: "TableARN", traits: {"aws.api#arnReference" => {"type" => "AWS::S3Tables::Table"}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:bucket/[a-z0-9_-]{3,63}/table/[a-zA-Z0-9-_]{1,255})$"})
    TableBucketARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableBucketARN", name: "TableBucketARN", traits: {"aws.api#arnReference" => {"type" => "AWS::S3Tables::TableBucket"}, "smithy.api#pattern" => "^(arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:bucket/[a-z0-9_-]{3,63})$"})
    TableBucketId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableBucketId", name: "TableBucketId")
    TableBucketMaintenanceConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3tables#TableBucketMaintenanceConfiguration", name: "TableBucketMaintenanceConfiguration")
    TableBucketMaintenanceConfigurationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableBucketMaintenanceConfigurationValue", name: "TableBucketMaintenanceConfigurationValue")
    TableBucketMaintenanceSettings = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3tables#TableBucketMaintenanceSettings", name: "TableBucketMaintenanceSettings")
    TableBucketMaintenanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableBucketMaintenanceType", name: "TableBucketMaintenanceType")
    TableBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#TableBucketName", name: "TableBucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z-]*$"})
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
    TableSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TableSummary", name: "TableSummary")
    TableSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3tables#TableSummaryList", name: "TableSummaryList")
    TableType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3tables#TableType", name: "TableType")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateTableMetadataLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#UpdateTableMetadataLocationRequest", name: "UpdateTableMetadataLocationRequest")
    UpdateTableMetadataLocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3tables#UpdateTableMetadataLocationResponse", name: "UpdateTableMetadataLocationResponse")
    VersionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#VersionToken", name: "VersionToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    WarehouseLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3tables#WarehouseLocation", name: "WarehouseLocation", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.type = Types::BadRequestException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.type = Types::ConflictException
    CreateNamespaceRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceList, location_name: "namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    CreateNamespaceRequest.type = Types::CreateNamespaceRequest
    CreateNamespaceResponse.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#required" => {}}))
    CreateNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceList, location_name: "namespace", traits: {"smithy.api#required" => {}}))
    CreateNamespaceResponse.type = Types::CreateNamespaceResponse
    CreateTableBucketRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateTableBucketRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateTableBucketRequest.type = Types::CreateTableBucketRequest
    CreateTableBucketResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateTableBucketResponse.type = Types::CreateTableBucketResponse
    CreateTableRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTableRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTableRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateTableRequest.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenTableFormat, location_name: "format", traits: {"smithy.api#required" => {}}))
    CreateTableRequest.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMetadata, location_name: "metadata"))
    CreateTableRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateTableRequest.type = Types::CreateTableRequest
    CreateTableResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN", traits: {"smithy.api#required" => {}}))
    CreateTableResponse.add_member(:version_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken", traits: {"smithy.api#required" => {}}))
    CreateTableResponse.type = Types::CreateTableResponse
    DeleteNamespaceRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNamespaceRequest.type = Types::DeleteNamespaceRequest
    DeleteTableBucketEncryptionRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableBucketEncryptionRequest.type = Types::DeleteTableBucketEncryptionRequest
    DeleteTableBucketPolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableBucketPolicyRequest.type = Types::DeleteTableBucketPolicyRequest
    DeleteTableBucketRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableBucketRequest.type = Types::DeleteTableBucketRequest
    DeleteTablePolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTablePolicyRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTablePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTablePolicyRequest.type = Types::DeleteTablePolicyRequest
    DeleteTableRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTableRequest.add_member(:version_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken", traits: {"smithy.api#httpQuery" => "versionToken"}))
    DeleteTableRequest.type = Types::DeleteTableRequest
    EncryptionConfiguration.add_member(:sse_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEAlgorithm, location_name: "sseAlgorithm", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "kmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws[-a-z0-9]*:kms:[-a-z0-9]*:[0-9]{12}:key/.+)$"}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GetNamespaceRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNamespaceRequest.type = Types::GetNamespaceRequest
    GetNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceList, location_name: "namespace", traits: {"smithy.api#required" => {}}))
    GetNamespaceResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetNamespaceResponse.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetNamespaceResponse.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    GetNamespaceResponse.add_member(:namespace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceId, location_name: "namespaceId"))
    GetNamespaceResponse.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    GetNamespaceResponse.type = Types::GetNamespaceResponse
    GetTableBucketEncryptionRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketEncryptionRequest.type = Types::GetTableBucketEncryptionRequest
    GetTableBucketEncryptionResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration", traits: {"smithy.api#required" => {}}))
    GetTableBucketEncryptionResponse.type = Types::GetTableBucketEncryptionResponse
    GetTableBucketMaintenanceConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketMaintenanceConfigurationRequest.type = Types::GetTableBucketMaintenanceConfigurationRequest
    GetTableBucketMaintenanceConfigurationResponse.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#required" => {}}))
    GetTableBucketMaintenanceConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketMaintenanceConfiguration, location_name: "configuration", traits: {"smithy.api#required" => {}}))
    GetTableBucketMaintenanceConfigurationResponse.type = Types::GetTableBucketMaintenanceConfigurationResponse
    GetTableBucketPolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketPolicyRequest.type = Types::GetTableBucketPolicyRequest
    GetTableBucketPolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "resourcePolicy", traits: {"smithy.api#required" => {}}))
    GetTableBucketPolicyResponse.type = Types::GetTableBucketPolicyResponse
    GetTableBucketRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableBucketRequest.type = Types::GetTableBucketRequest
    GetTableBucketResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetTableBucketResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetTableBucketResponse.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    GetTableBucketResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTableBucketResponse.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    GetTableBucketResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketType, location_name: "type"))
    GetTableBucketResponse.type = Types::GetTableBucketResponse
    GetTableEncryptionRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableEncryptionRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableEncryptionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableEncryptionRequest.type = Types::GetTableEncryptionRequest
    GetTableEncryptionResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration", traits: {"smithy.api#required" => {}}))
    GetTableEncryptionResponse.type = Types::GetTableEncryptionResponse
    GetTableMaintenanceConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationRequest.type = Types::GetTableMaintenanceConfigurationRequest
    GetTableMaintenanceConfigurationResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN", traits: {"smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceConfiguration, location_name: "configuration", traits: {"smithy.api#required" => {}}))
    GetTableMaintenanceConfigurationResponse.type = Types::GetTableMaintenanceConfigurationResponse
    GetTableMaintenanceJobStatusRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusRequest.type = Types::GetTableMaintenanceJobStatusRequest
    GetTableMaintenanceJobStatusResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN", traits: {"smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetTableMaintenanceJobStatusResponse.type = Types::GetTableMaintenanceJobStatusResponse
    GetTableMetadataLocationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMetadataLocationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMetadataLocationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTableMetadataLocationRequest.type = Types::GetTableMetadataLocationRequest
    GetTableMetadataLocationResponse.add_member(:version_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken", traits: {"smithy.api#required" => {}}))
    GetTableMetadataLocationResponse.add_member(:metadata_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataLocation, location_name: "metadataLocation"))
    GetTableMetadataLocationResponse.add_member(:warehouse_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WarehouseLocation, location_name: "warehouseLocation", traits: {"smithy.api#required" => {}}))
    GetTableMetadataLocationResponse.type = Types::GetTableMetadataLocationResponse
    GetTablePolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTablePolicyRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTablePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTablePolicyRequest.type = Types::GetTablePolicyRequest
    GetTablePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "resourcePolicy", traits: {"smithy.api#required" => {}}))
    GetTablePolicyResponse.type = Types::GetTablePolicyResponse
    GetTableRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpQuery" => "tableBucketARN"}))
    GetTableRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    GetTableRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    GetTableRequest.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableARN, location_name: "tableArn", traits: {"smithy.api#httpQuery" => "tableArn"}))
    GetTableRequest.type = Types::GetTableRequest
    GetTableResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceList, location_name: "namespace", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:namespace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceId, location_name: "namespaceId", traits: {"smithy.api#default" => nil}))
    GetTableResponse.add_member(:version_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:metadata_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataLocation, location_name: "metadataLocation"))
    GetTableResponse.add_member(:warehouse_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WarehouseLocation, location_name: "warehouseLocation", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTableResponse.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:managed_by_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "managedByService"))
    GetTableResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetTableResponse.add_member(:modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "modifiedBy", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenTableFormat, location_name: "format", traits: {"smithy.api#required" => {}}))
    GetTableResponse.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    GetTableResponse.type = Types::GetTableResponse
    IcebergCompactionSettings.add_member(:target_file_size_mb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "targetFileSizeMB"))
    IcebergCompactionSettings.add_member(:strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IcebergCompactionStrategy, location_name: "strategy"))
    IcebergCompactionSettings.type = Types::IcebergCompactionSettings
    IcebergCompactionStrategy.add_member(:auto, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO", traits: {"smithy.api#enumValue" => "auto"}))
    IcebergCompactionStrategy.add_member(:binpack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BINPACK", traits: {"smithy.api#enumValue" => "binpack"}))
    IcebergCompactionStrategy.add_member(:sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SORT", traits: {"smithy.api#enumValue" => "sort"}))
    IcebergCompactionStrategy.add_member(:zorder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZORDER", traits: {"smithy.api#enumValue" => "z-order"}))
    IcebergMetadata.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IcebergSchema, location_name: "schema", traits: {"smithy.api#required" => {}}))
    IcebergMetadata.type = Types::IcebergMetadata
    IcebergSchema.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFieldList, location_name: "fields", traits: {"smithy.api#required" => {}}))
    IcebergSchema.type = Types::IcebergSchema
    IcebergSnapshotManagementSettings.add_member(:min_snapshots_to_keep, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "minSnapshotsToKeep"))
    IcebergSnapshotManagementSettings.add_member(:max_snapshot_age_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "maxSnapshotAgeHours"))
    IcebergSnapshotManagementSettings.type = Types::IcebergSnapshotManagementSettings
    IcebergUnreferencedFileRemovalSettings.add_member(:unreferenced_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "unreferencedDays"))
    IcebergUnreferencedFileRemovalSettings.add_member(:non_current_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "nonCurrentDays"))
    IcebergUnreferencedFileRemovalSettings.type = Types::IcebergUnreferencedFileRemovalSettings
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerErrorException.type = Types::InternalServerErrorException
    JobStatus.add_member(:not_yet_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_YET_RUN", traits: {"smithy.api#enumValue" => "Not_Yet_Run"}))
    JobStatus.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "Successful"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    JobStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    ListNamespacesRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNamespacesRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListNamespacesRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken", traits: {"smithy.api#httpQuery" => "continuationToken"}))
    ListNamespacesRequest.add_member(:max_namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamespacesLimit, location_name: "maxNamespaces", traits: {"smithy.api#httpQuery" => "maxNamespaces"}))
    ListNamespacesRequest.type = Types::ListNamespacesRequest
    ListNamespacesResponse.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceSummaryList, location_name: "namespaces", traits: {"smithy.api#required" => {}}))
    ListNamespacesResponse.add_member(:continuation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken"))
    ListNamespacesResponse.type = Types::ListNamespacesResponse
    ListTableBucketsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.api#length" => {"min" => 1, "max" => 63}}))
    ListTableBucketsRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken", traits: {"smithy.api#httpQuery" => "continuationToken"}))
    ListTableBucketsRequest.add_member(:max_buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableBucketsLimit, location_name: "maxBuckets", traits: {"smithy.api#httpQuery" => "maxBuckets"}))
    ListTableBucketsRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketType, location_name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListTableBucketsRequest.type = Types::ListTableBucketsRequest
    ListTableBucketsResponse.add_member(:table_buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketSummaryList, location_name: "tableBuckets", traits: {"smithy.api#required" => {}}))
    ListTableBucketsResponse.add_member(:continuation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken"))
    ListTableBucketsResponse.type = Types::ListTableBucketsResponse
    ListTablesRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTablesRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    ListTablesRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.api#length" => {"min" => 1, "max" => 255}}))
    ListTablesRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken", traits: {"smithy.api#httpQuery" => "continuationToken"}))
    ListTablesRequest.add_member(:max_tables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesLimit, location_name: "maxTables", traits: {"smithy.api#httpQuery" => "maxTables"}))
    ListTablesRequest.type = Types::ListTablesRequest
    ListTablesResponse.add_member(:tables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableSummaryList, location_name: "tables", traits: {"smithy.api#required" => {}}))
    ListTablesResponse.add_member(:continuation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken"))
    ListTablesResponse.type = Types::ListTablesResponse
    MaintenanceStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    MaintenanceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    NamespaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName)
    NamespaceSummary.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceList, location_name: "namespace", traits: {"smithy.api#required" => {}}))
    NamespaceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    NamespaceSummary.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy", traits: {"smithy.api#required" => {}}))
    NamespaceSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    NamespaceSummary.add_member(:namespace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceId, location_name: "namespaceId"))
    NamespaceSummary.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    NamespaceSummary.type = Types::NamespaceSummary
    NamespaceSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceSummary)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NotFoundException.type = Types::NotFoundException
    OpenTableFormat.add_member(:iceberg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICEBERG", traits: {"smithy.api#enumValue" => "ICEBERG"}))
    PutTableBucketEncryptionRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketEncryptionRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration", traits: {"smithy.api#required" => {}}))
    PutTableBucketEncryptionRequest.type = Types::PutTableBucketEncryptionRequest
    PutTableBucketMaintenanceConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketMaintenanceConfigurationRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketMaintenanceType, location_name: "type", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketMaintenanceConfigurationRequest.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketMaintenanceConfigurationValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    PutTableBucketMaintenanceConfigurationRequest.type = Types::PutTableBucketMaintenanceConfigurationRequest
    PutTableBucketPolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableBucketPolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "resourcePolicy", traits: {"smithy.api#required" => {}}))
    PutTableBucketPolicyRequest.type = Types::PutTableBucketPolicyRequest
    PutTableMaintenanceConfigurationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceType, location_name: "type", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceConfigurationValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    PutTableMaintenanceConfigurationRequest.type = Types::PutTableMaintenanceConfigurationRequest
    PutTablePolicyRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTablePolicyRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTablePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutTablePolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "resourcePolicy", traits: {"smithy.api#required" => {}}))
    PutTablePolicyRequest.type = Types::PutTablePolicyRequest
    RenameTableRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenameTableRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenameTableRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RenameTableRequest.add_member(:new_namespace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "newNamespaceName"))
    RenameTableRequest.add_member(:new_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "newName"))
    RenameTableRequest.add_member(:version_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken"))
    RenameTableRequest.type = Types::RenameTableRequest
    SSEAlgorithm.add_member(:aes256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    SSEAlgorithm.add_member(:aws_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_KMS", traits: {"smithy.api#enumValue" => "aws:kms"}))
    SchemaField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    SchemaField.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "type", traits: {"smithy.api#required" => {}}))
    SchemaField.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "required", traits: {"smithy.api#default" => false}))
    SchemaField.type = Types::SchemaField
    SchemaFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaField)
    TableBucketMaintenanceConfiguration.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketMaintenanceType)
    TableBucketMaintenanceConfiguration.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketMaintenanceConfigurationValue)
    TableBucketMaintenanceConfigurationValue.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "status"))
    TableBucketMaintenanceConfigurationValue.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketMaintenanceSettings, location_name: "settings"))
    TableBucketMaintenanceConfigurationValue.type = Types::TableBucketMaintenanceConfigurationValue
    TableBucketMaintenanceSettings.add_member(:iceberg_unreferenced_file_removal, Types::TableBucketMaintenanceSettings::IcebergUnreferencedFileRemoval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IcebergUnreferencedFileRemovalSettings, location_name: "icebergUnreferencedFileRemoval"))
    TableBucketMaintenanceSettings.add_member(:unknown, Types::TableBucketMaintenanceSettings::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TableBucketMaintenanceSettings.type = Types::TableBucketMaintenanceSettings
    TableBucketMaintenanceType.add_member(:iceberg_unreferenced_file_removal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICEBERG_UNREFERENCED_FILE_REMOVAL", traits: {"smithy.api#enumValue" => "icebergUnreferencedFileRemoval"}))
    TableBucketSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "arn", traits: {"smithy.api#required" => {}}))
    TableBucketSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TableBucketSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    TableBucketSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TableBucketSummary.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    TableBucketSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketType, location_name: "type"))
    TableBucketSummary.type = Types::TableBucketSummary
    TableBucketSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketSummary)
    TableBucketType.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER", traits: {"smithy.api#enumValue" => "customer"}))
    TableBucketType.add_member(:aws, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS", traits: {"smithy.api#enumValue" => "aws"}))
    TableMaintenanceConfiguration.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceType)
    TableMaintenanceConfiguration.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceConfigurationValue)
    TableMaintenanceConfigurationValue.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "status"))
    TableMaintenanceConfigurationValue.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceSettings, location_name: "settings"))
    TableMaintenanceConfigurationValue.type = Types::TableMaintenanceConfigurationValue
    TableMaintenanceJobStatus.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceJobType)
    TableMaintenanceJobStatus.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMaintenanceJobStatusValue)
    TableMaintenanceJobStatusValue.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    TableMaintenanceJobStatusValue.add_member(:last_run_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastRunTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TableMaintenanceJobStatusValue.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    TableMaintenanceJobStatusValue.type = Types::TableMaintenanceJobStatusValue
    TableMaintenanceJobType.add_member(:iceberg_compaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICEBERG_COMPACTION", traits: {"smithy.api#enumValue" => "icebergCompaction"}))
    TableMaintenanceJobType.add_member(:iceberg_snapshot_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICEBERG_SNAPSHOT_MANAGEMENT", traits: {"smithy.api#enumValue" => "icebergSnapshotManagement"}))
    TableMaintenanceJobType.add_member(:iceberg_unreferenced_file_removal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICEBERG_UNREFERENCED_FILE_REMOVAL", traits: {"smithy.api#enumValue" => "icebergUnreferencedFileRemoval"}))
    TableMaintenanceSettings.add_member(:iceberg_compaction, Types::TableMaintenanceSettings::IcebergCompaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IcebergCompactionSettings, location_name: "icebergCompaction"))
    TableMaintenanceSettings.add_member(:iceberg_snapshot_management, Types::TableMaintenanceSettings::IcebergSnapshotManagement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IcebergSnapshotManagementSettings, location_name: "icebergSnapshotManagement"))
    TableMaintenanceSettings.add_member(:unknown, Types::TableMaintenanceSettings::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TableMaintenanceSettings.type = Types::TableMaintenanceSettings
    TableMaintenanceType.add_member(:iceberg_compaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICEBERG_COMPACTION", traits: {"smithy.api#enumValue" => "icebergCompaction"}))
    TableMaintenanceType.add_member(:iceberg_snapshot_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICEBERG_SNAPSHOT_MANAGEMENT", traits: {"smithy.api#enumValue" => "icebergSnapshotManagement"}))
    TableMetadata.add_member(:iceberg, Types::TableMetadata::Iceberg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IcebergMetadata, location_name: "iceberg"))
    TableMetadata.add_member(:unknown, Types::TableMetadata::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TableMetadata.type = Types::TableMetadata
    TableSummary.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceList, location_name: "namespace", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableType, location_name: "type", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TableSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TableSummary.add_member(:namespace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceId, location_name: "namespaceId"))
    TableSummary.add_member(:table_bucket_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketId, location_name: "tableBucketId"))
    TableSummary.type = Types::TableSummary
    TableSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableSummary)
    TableType.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER", traits: {"smithy.api#enumValue" => "customer"}))
    TableType.add_member(:aws, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS", traits: {"smithy.api#enumValue" => "aws"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UpdateTableMetadataLocationRequest.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableBucketARN, location_name: "tableBucketARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.add_member(:version_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.add_member(:metadata_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataLocation, location_name: "metadataLocation", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationRequest.type = Types::UpdateTableMetadataLocationRequest
    UpdateTableMetadataLocationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableARN, location_name: "tableARN", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceList, location_name: "namespace", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.add_member(:version_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.add_member(:metadata_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataLocation, location_name: "metadataLocation", traits: {"smithy.api#required" => {}}))
    UpdateTableMetadataLocationResponse.type = Types::UpdateTableMetadataLocationResponse

    S3TableBuckets = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3tables#S3TableBuckets"
      service.name = "S3TableBuckets"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "S3Tables", "arnNamespace" => "s3tables", "cloudTrailEventSource" => "s3tables.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "s3tables"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon S3 Tables"}
      service.add_operation(:create_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#CreateNamespace"
        operation.name = "CreateNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNamespaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/namespaces/{tableBucketARN}", "method" => "PUT", "code" => 200}}
      end)
      service.add_operation(:create_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#CreateTable"
        operation.name = "CreateTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}", "method" => "PUT", "code" => 200}}
      end)
      service.add_operation(:create_table_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#CreateTableBucket"
        operation.name = "CreateTableBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableBucketResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets", "method" => "PUT", "code" => 200}}
      end)
      service.add_operation(:delete_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteNamespace"
        operation.name = "DeleteNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/namespaces/{tableBucketARN}/{namespace}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTable"
        operation.name = "DeleteTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableBucket"
        operation.name = "DeleteTableBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableBucketEncryption"
        operation.name = "DeleteTableBucketEncryption"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableBucketEncryptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/encryption", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTableBucketPolicy"
        operation.name = "DeleteTableBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableBucketPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/policy", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_table_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#DeleteTablePolicy"
        operation.name = "DeleteTablePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTablePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/policy", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetNamespace"
        operation.name = "GetNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamespaceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamespaceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/namespaces/{tableBucketARN}/{namespace}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetNamespace_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist", "namespace" => "doesnotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTable"
        operation.name = "GetTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/get-table", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTable_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist", "namespace" => "doesnotexist", "name" => "doesnotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "GetTableArn_AccessDeniedException", "params" => {"tableArn" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist/table/f577d6ca-c1dd-4686-9f41-62130a40e91b"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_table_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucket"
        operation.name = "GetTableBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableBucketResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTableBucket_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_table_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketEncryption"
        operation.name = "GetTableBucketEncryption"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableBucketEncryptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableBucketEncryptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/encryption", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_bucket_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketMaintenanceConfiguration"
        operation.name = "GetTableBucketMaintenanceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableBucketMaintenanceConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableBucketMaintenanceConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/maintenance", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableBucketPolicy"
        operation.name = "GetTableBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableBucketPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableBucketPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/policy", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableEncryption"
        operation.name = "GetTableEncryption"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableEncryptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableEncryptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/encryption", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableMaintenanceConfiguration"
        operation.name = "GetTableMaintenanceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMaintenanceConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMaintenanceConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/maintenance", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_maintenance_job_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableMaintenanceJobStatus"
        operation.name = "GetTableMaintenanceJobStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMaintenanceJobStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMaintenanceJobStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/maintenance-job-status", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_metadata_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTableMetadataLocation"
        operation.name = "GetTableMetadataLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMetadataLocationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMetadataLocationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_table_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#GetTablePolicy"
        operation.name = "GetTablePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTablePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTablePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/policy", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#ListNamespaces"
        operation.name = "ListNamespaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamespacesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamespacesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/namespaces/{tableBucketARN}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListNamespaces_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListNamespaces.new
      end)
      service.add_operation(:list_table_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#ListTableBuckets"
        operation.name = "ListTableBuckets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableBucketsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableBucketsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTableBuckets_Success", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListTableBuckets.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#ListTables"
        operation.name = "ListTables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTables_AccessDeniedException", "params" => {"tableBucketARN" => "arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3tables#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:put_table_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketEncryption"
        operation.name = "PutTableBucketEncryption"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTableBucketEncryptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/encryption", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_bucket_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketMaintenanceConfiguration"
        operation.name = "PutTableBucketMaintenanceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTableBucketMaintenanceConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/maintenance/{type}", "method" => "PUT", "code" => 204}}
      end)
      service.add_operation(:put_table_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableBucketPolicy"
        operation.name = "PutTableBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTableBucketPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/buckets/{tableBucketARN}/policy", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_table_maintenance_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTableMaintenanceConfiguration"
        operation.name = "PutTableMaintenanceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTableMaintenanceConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/maintenance/{type}", "method" => "PUT", "code" => 204}}
      end)
      service.add_operation(:put_table_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#PutTablePolicy"
        operation.name = "PutTablePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTablePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/policy", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:rename_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#RenameTable"
        operation.name = "RenameTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenameTableRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tables/{tableBucketARN}/{namespace}/{name}/rename", "method" => "PUT", "code" => 204}}
      end)
      service.add_operation(:update_table_metadata_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3tables#UpdateTableMetadataLocation"
        operation.name = "UpdateTableMetadataLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableMetadataLocationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableMetadataLocationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
