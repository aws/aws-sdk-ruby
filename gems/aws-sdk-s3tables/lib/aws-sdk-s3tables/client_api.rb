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
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateNamespaceRequest = Shapes::StructureShape.new(name: 'CreateNamespaceRequest')
    CreateNamespaceRequestNamespaceList = Shapes::ListShape.new(name: 'CreateNamespaceRequestNamespaceList')
    CreateNamespaceResponse = Shapes::StructureShape.new(name: 'CreateNamespaceResponse')
    CreateTableBucketRequest = Shapes::StructureShape.new(name: 'CreateTableBucketRequest')
    CreateTableBucketResponse = Shapes::StructureShape.new(name: 'CreateTableBucketResponse')
    CreateTableRequest = Shapes::StructureShape.new(name: 'CreateTableRequest')
    CreateTableResponse = Shapes::StructureShape.new(name: 'CreateTableResponse')
    DeleteNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteNamespaceRequest')
    DeleteTableBucketPolicyRequest = Shapes::StructureShape.new(name: 'DeleteTableBucketPolicyRequest')
    DeleteTableBucketRequest = Shapes::StructureShape.new(name: 'DeleteTableBucketRequest')
    DeleteTablePolicyRequest = Shapes::StructureShape.new(name: 'DeleteTablePolicyRequest')
    DeleteTableRequest = Shapes::StructureShape.new(name: 'DeleteTableRequest')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetNamespaceRequest = Shapes::StructureShape.new(name: 'GetNamespaceRequest')
    GetNamespaceResponse = Shapes::StructureShape.new(name: 'GetNamespaceResponse')
    GetTableBucketMaintenanceConfigurationRequest = Shapes::StructureShape.new(name: 'GetTableBucketMaintenanceConfigurationRequest')
    GetTableBucketMaintenanceConfigurationResponse = Shapes::StructureShape.new(name: 'GetTableBucketMaintenanceConfigurationResponse')
    GetTableBucketPolicyRequest = Shapes::StructureShape.new(name: 'GetTableBucketPolicyRequest')
    GetTableBucketPolicyResponse = Shapes::StructureShape.new(name: 'GetTableBucketPolicyResponse')
    GetTableBucketRequest = Shapes::StructureShape.new(name: 'GetTableBucketRequest')
    GetTableBucketResponse = Shapes::StructureShape.new(name: 'GetTableBucketResponse')
    GetTableMaintenanceConfigurationRequest = Shapes::StructureShape.new(name: 'GetTableMaintenanceConfigurationRequest')
    GetTableMaintenanceConfigurationResponse = Shapes::StructureShape.new(name: 'GetTableMaintenanceConfigurationResponse')
    GetTableMaintenanceJobStatusRequest = Shapes::StructureShape.new(name: 'GetTableMaintenanceJobStatusRequest')
    GetTableMaintenanceJobStatusResponse = Shapes::StructureShape.new(name: 'GetTableMaintenanceJobStatusResponse')
    GetTableMetadataLocationRequest = Shapes::StructureShape.new(name: 'GetTableMetadataLocationRequest')
    GetTableMetadataLocationResponse = Shapes::StructureShape.new(name: 'GetTableMetadataLocationResponse')
    GetTablePolicyRequest = Shapes::StructureShape.new(name: 'GetTablePolicyRequest')
    GetTablePolicyResponse = Shapes::StructureShape.new(name: 'GetTablePolicyResponse')
    GetTableRequest = Shapes::StructureShape.new(name: 'GetTableRequest')
    GetTableResponse = Shapes::StructureShape.new(name: 'GetTableResponse')
    IcebergCompactionSettings = Shapes::StructureShape.new(name: 'IcebergCompactionSettings')
    IcebergMetadata = Shapes::StructureShape.new(name: 'IcebergMetadata')
    IcebergSchema = Shapes::StructureShape.new(name: 'IcebergSchema')
    IcebergSnapshotManagementSettings = Shapes::StructureShape.new(name: 'IcebergSnapshotManagementSettings')
    IcebergUnreferencedFileRemovalSettings = Shapes::StructureShape.new(name: 'IcebergUnreferencedFileRemovalSettings')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    ListNamespacesLimit = Shapes::IntegerShape.new(name: 'ListNamespacesLimit')
    ListNamespacesRequest = Shapes::StructureShape.new(name: 'ListNamespacesRequest')
    ListNamespacesRequestPrefixString = Shapes::StringShape.new(name: 'ListNamespacesRequestPrefixString')
    ListNamespacesResponse = Shapes::StructureShape.new(name: 'ListNamespacesResponse')
    ListTableBucketsLimit = Shapes::IntegerShape.new(name: 'ListTableBucketsLimit')
    ListTableBucketsRequest = Shapes::StructureShape.new(name: 'ListTableBucketsRequest')
    ListTableBucketsRequestPrefixString = Shapes::StringShape.new(name: 'ListTableBucketsRequestPrefixString')
    ListTableBucketsResponse = Shapes::StructureShape.new(name: 'ListTableBucketsResponse')
    ListTablesLimit = Shapes::IntegerShape.new(name: 'ListTablesLimit')
    ListTablesRequest = Shapes::StructureShape.new(name: 'ListTablesRequest')
    ListTablesRequestPrefixString = Shapes::StringShape.new(name: 'ListTablesRequestPrefixString')
    ListTablesResponse = Shapes::StructureShape.new(name: 'ListTablesResponse')
    MaintenanceStatus = Shapes::StringShape.new(name: 'MaintenanceStatus')
    MetadataLocation = Shapes::StringShape.new(name: 'MetadataLocation')
    NamespaceList = Shapes::ListShape.new(name: 'NamespaceList')
    NamespaceName = Shapes::StringShape.new(name: 'NamespaceName')
    NamespaceSummary = Shapes::StructureShape.new(name: 'NamespaceSummary')
    NamespaceSummaryList = Shapes::ListShape.new(name: 'NamespaceSummaryList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OpenTableFormat = Shapes::StringShape.new(name: 'OpenTableFormat')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PutTableBucketMaintenanceConfigurationRequest = Shapes::StructureShape.new(name: 'PutTableBucketMaintenanceConfigurationRequest')
    PutTableBucketPolicyRequest = Shapes::StructureShape.new(name: 'PutTableBucketPolicyRequest')
    PutTableMaintenanceConfigurationRequest = Shapes::StructureShape.new(name: 'PutTableMaintenanceConfigurationRequest')
    PutTablePolicyRequest = Shapes::StructureShape.new(name: 'PutTablePolicyRequest')
    RenameTableRequest = Shapes::StructureShape.new(name: 'RenameTableRequest')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    SchemaField = Shapes::StructureShape.new(name: 'SchemaField')
    SchemaFieldList = Shapes::ListShape.new(name: 'SchemaFieldList')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TableARN = Shapes::StringShape.new(name: 'TableARN')
    TableBucketARN = Shapes::StringShape.new(name: 'TableBucketARN')
    TableBucketMaintenanceConfiguration = Shapes::MapShape.new(name: 'TableBucketMaintenanceConfiguration')
    TableBucketMaintenanceConfigurationValue = Shapes::StructureShape.new(name: 'TableBucketMaintenanceConfigurationValue')
    TableBucketMaintenanceSettings = Shapes::UnionShape.new(name: 'TableBucketMaintenanceSettings')
    TableBucketMaintenanceType = Shapes::StringShape.new(name: 'TableBucketMaintenanceType')
    TableBucketName = Shapes::StringShape.new(name: 'TableBucketName')
    TableBucketSummary = Shapes::StructureShape.new(name: 'TableBucketSummary')
    TableBucketSummaryList = Shapes::ListShape.new(name: 'TableBucketSummaryList')
    TableMaintenanceConfiguration = Shapes::MapShape.new(name: 'TableMaintenanceConfiguration')
    TableMaintenanceConfigurationValue = Shapes::StructureShape.new(name: 'TableMaintenanceConfigurationValue')
    TableMaintenanceJobStatus = Shapes::MapShape.new(name: 'TableMaintenanceJobStatus')
    TableMaintenanceJobStatusValue = Shapes::StructureShape.new(name: 'TableMaintenanceJobStatusValue')
    TableMaintenanceJobType = Shapes::StringShape.new(name: 'TableMaintenanceJobType')
    TableMaintenanceSettings = Shapes::UnionShape.new(name: 'TableMaintenanceSettings')
    TableMaintenanceType = Shapes::StringShape.new(name: 'TableMaintenanceType')
    TableMetadata = Shapes::UnionShape.new(name: 'TableMetadata')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableSummary = Shapes::StructureShape.new(name: 'TableSummary')
    TableSummaryList = Shapes::ListShape.new(name: 'TableSummaryList')
    TableType = Shapes::StringShape.new(name: 'TableType')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UpdateTableMetadataLocationRequest = Shapes::StructureShape.new(name: 'UpdateTableMetadataLocationRequest')
    UpdateTableMetadataLocationResponse = Shapes::StructureShape.new(name: 'UpdateTableMetadataLocationResponse')
    VersionToken = Shapes::StringShape.new(name: 'VersionToken')
    WarehouseLocation = Shapes::StringShape.new(name: 'WarehouseLocation')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

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
    CreateTableBucketRequest.struct_class = Types::CreateTableBucketRequest

    CreateTableBucketResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "arn"))
    CreateTableBucketResponse.struct_class = Types::CreateTableBucketResponse

    CreateTableRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    CreateTableRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    CreateTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    CreateTableRequest.add_member(:format, Shapes::ShapeRef.new(shape: OpenTableFormat, required: true, location_name: "format"))
    CreateTableRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: TableMetadata, location_name: "metadata"))
    CreateTableRequest.struct_class = Types::CreateTableRequest

    CreateTableResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    CreateTableResponse.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, required: true, location_name: "versionToken"))
    CreateTableResponse.struct_class = Types::CreateTableResponse

    DeleteNamespaceRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    DeleteNamespaceRequest.struct_class = Types::DeleteNamespaceRequest

    DeleteTableBucketPolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTableBucketPolicyRequest.struct_class = Types::DeleteTableBucketPolicyRequest

    DeleteTableBucketRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTableBucketRequest.struct_class = Types::DeleteTableBucketRequest

    DeleteTablePolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTablePolicyRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    DeleteTablePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    DeleteTablePolicyRequest.struct_class = Types::DeleteTablePolicyRequest

    DeleteTableRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    DeleteTableRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    DeleteTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    DeleteTableRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, location: "querystring", location_name: "versionToken"))
    DeleteTableRequest.struct_class = Types::DeleteTableRequest

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetNamespaceRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetNamespaceRequest.struct_class = Types::GetNamespaceRequest

    GetNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    GetNamespaceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetNamespaceResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "createdBy"))
    GetNamespaceResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    GetNamespaceResponse.struct_class = Types::GetNamespaceResponse

    GetTableBucketMaintenanceConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketMaintenanceConfigurationRequest.struct_class = Types::GetTableBucketMaintenanceConfigurationRequest

    GetTableBucketMaintenanceConfigurationResponse.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "tableBucketARN"))
    GetTableBucketMaintenanceConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: TableBucketMaintenanceConfiguration, required: true, location_name: "configuration"))
    GetTableBucketMaintenanceConfigurationResponse.struct_class = Types::GetTableBucketMaintenanceConfigurationResponse

    GetTableBucketPolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketPolicyRequest.struct_class = Types::GetTableBucketPolicyRequest

    GetTableBucketPolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "resourcePolicy"))
    GetTableBucketPolicyResponse.struct_class = Types::GetTableBucketPolicyResponse

    GetTableBucketRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableBucketRequest.struct_class = Types::GetTableBucketRequest

    GetTableBucketResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "arn"))
    GetTableBucketResponse.add_member(:name, Shapes::ShapeRef.new(shape: TableBucketName, required: true, location_name: "name"))
    GetTableBucketResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    GetTableBucketResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetTableBucketResponse.struct_class = Types::GetTableBucketResponse

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

    GetTablePolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTablePolicyRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetTablePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    GetTablePolicyRequest.struct_class = Types::GetTablePolicyRequest

    GetTablePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "resourcePolicy"))
    GetTablePolicyResponse.struct_class = Types::GetTablePolicyResponse

    GetTableRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    GetTableRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    GetTableRequest.struct_class = Types::GetTableRequest

    GetTableResponse.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    GetTableResponse.add_member(:type, Shapes::ShapeRef.new(shape: TableType, required: true, location_name: "type"))
    GetTableResponse.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    GetTableResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
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
    GetTableResponse.struct_class = Types::GetTableResponse

    IcebergCompactionSettings.add_member(:target_file_size_mb, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "targetFileSizeMB"))
    IcebergCompactionSettings.struct_class = Types::IcebergCompactionSettings

    IcebergMetadata.add_member(:schema, Shapes::ShapeRef.new(shape: IcebergSchema, required: true, location_name: "schema"))
    IcebergMetadata.struct_class = Types::IcebergMetadata

    IcebergSchema.add_member(:fields, Shapes::ShapeRef.new(shape: SchemaFieldList, required: true, location_name: "fields"))
    IcebergSchema.struct_class = Types::IcebergSchema

    IcebergSnapshotManagementSettings.add_member(:min_snapshots_to_keep, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "minSnapshotsToKeep"))
    IcebergSnapshotManagementSettings.add_member(:max_snapshot_age_hours, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "maxSnapshotAgeHours"))
    IcebergSnapshotManagementSettings.struct_class = Types::IcebergSnapshotManagementSettings

    IcebergUnreferencedFileRemovalSettings.add_member(:unreferenced_days, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "unreferencedDays"))
    IcebergUnreferencedFileRemovalSettings.add_member(:non_current_days, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "nonCurrentDays"))
    IcebergUnreferencedFileRemovalSettings.struct_class = Types::IcebergUnreferencedFileRemovalSettings

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

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
    ListTableBucketsRequest.struct_class = Types::ListTableBucketsRequest

    ListTableBucketsResponse.add_member(:table_buckets, Shapes::ShapeRef.new(shape: TableBucketSummaryList, required: true, location_name: "tableBuckets"))
    ListTableBucketsResponse.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken"))
    ListTableBucketsResponse.struct_class = Types::ListTableBucketsResponse

    ListTablesRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    ListTablesRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, location: "querystring", location_name: "namespace"))
    ListTablesRequest.add_member(:prefix, Shapes::ShapeRef.new(shape: ListTablesRequestPrefixString, location: "querystring", location_name: "prefix"))
    ListTablesRequest.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "continuationToken"))
    ListTablesRequest.add_member(:max_tables, Shapes::ShapeRef.new(shape: ListTablesLimit, location: "querystring", location_name: "maxTables"))
    ListTablesRequest.struct_class = Types::ListTablesRequest

    ListTablesResponse.add_member(:tables, Shapes::ShapeRef.new(shape: TableSummaryList, required: true, location_name: "tables"))
    ListTablesResponse.add_member(:continuation_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "continuationToken"))
    ListTablesResponse.struct_class = Types::ListTablesResponse

    NamespaceList.member = Shapes::ShapeRef.new(shape: NamespaceName)

    NamespaceSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    NamespaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    NamespaceSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "createdBy"))
    NamespaceSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    NamespaceSummary.struct_class = Types::NamespaceSummary

    NamespaceSummaryList.member = Shapes::ShapeRef.new(shape: NamespaceSummary)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    PutTableBucketMaintenanceConfigurationRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableBucketMaintenanceConfigurationRequest.add_member(:type, Shapes::ShapeRef.new(shape: TableBucketMaintenanceType, required: true, location: "uri", location_name: "type"))
    PutTableBucketMaintenanceConfigurationRequest.add_member(:value, Shapes::ShapeRef.new(shape: TableBucketMaintenanceConfigurationValue, required: true, location_name: "value"))
    PutTableBucketMaintenanceConfigurationRequest.struct_class = Types::PutTableBucketMaintenanceConfigurationRequest

    PutTableBucketPolicyRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    PutTableBucketPolicyRequest.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "resourcePolicy"))
    PutTableBucketPolicyRequest.struct_class = Types::PutTableBucketPolicyRequest

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

    RenameTableRequest.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location: "uri", location_name: "tableBucketARN"))
    RenameTableRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location: "uri", location_name: "namespace"))
    RenameTableRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location: "uri", location_name: "name"))
    RenameTableRequest.add_member(:new_namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "newNamespaceName"))
    RenameTableRequest.add_member(:new_name, Shapes::ShapeRef.new(shape: TableName, location_name: "newName"))
    RenameTableRequest.add_member(:version_token, Shapes::ShapeRef.new(shape: VersionToken, location_name: "versionToken"))
    RenameTableRequest.struct_class = Types::RenameTableRequest

    SchemaField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SchemaField.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    SchemaField.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    SchemaField.struct_class = Types::SchemaField

    SchemaFieldList.member = Shapes::ShapeRef.new(shape: SchemaField)

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

    TableBucketSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "arn"))
    TableBucketSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableBucketName, required: true, location_name: "name"))
    TableBucketSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    TableBucketSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
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

    TableSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespace"))
    TableSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "name"))
    TableSummary.add_member(:type, Shapes::ShapeRef.new(shape: TableType, required: true, location_name: "type"))
    TableSummary.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableARN, required: true, location_name: "tableARN"))
    TableSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    TableSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    TableSummary.struct_class = Types::TableSummary

    TableSummaryList.member = Shapes::ShapeRef.new(shape: TableSummary)

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

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
        o.http_request_uri = "/tables/{tableBucketARN}/{namespace}/{name}"
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
    end

  end
end
