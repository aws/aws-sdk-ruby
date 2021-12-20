# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FinSpaceData
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AliasString = Shapes::StringShape.new(name: 'AliasString')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ChangesetArn = Shapes::StringShape.new(name: 'ChangesetArn')
    ChangesetErrorInfo = Shapes::StructureShape.new(name: 'ChangesetErrorInfo')
    ChangesetId = Shapes::StringShape.new(name: 'ChangesetId')
    ChangesetList = Shapes::ListShape.new(name: 'ChangesetList')
    ChangesetSummary = Shapes::StructureShape.new(name: 'ChangesetSummary')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ColumnDataType = Shapes::StringShape.new(name: 'ColumnDataType')
    ColumnDefinition = Shapes::StructureShape.new(name: 'ColumnDefinition')
    ColumnDescription = Shapes::StringShape.new(name: 'ColumnDescription')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnNameList = Shapes::ListShape.new(name: 'ColumnNameList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateChangesetRequest = Shapes::StructureShape.new(name: 'CreateChangesetRequest')
    CreateChangesetResponse = Shapes::StructureShape.new(name: 'CreateChangesetResponse')
    CreateDataViewRequest = Shapes::StructureShape.new(name: 'CreateDataViewRequest')
    CreateDataViewResponse = Shapes::StructureShape.new(name: 'CreateDataViewResponse')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    DataViewArn = Shapes::StringShape.new(name: 'DataViewArn')
    DataViewDestinationType = Shapes::StringShape.new(name: 'DataViewDestinationType')
    DataViewDestinationTypeParams = Shapes::StructureShape.new(name: 'DataViewDestinationTypeParams')
    DataViewErrorInfo = Shapes::StructureShape.new(name: 'DataViewErrorInfo')
    DataViewId = Shapes::StringShape.new(name: 'DataViewId')
    DataViewList = Shapes::ListShape.new(name: 'DataViewList')
    DataViewStatus = Shapes::StringShape.new(name: 'DataViewStatus')
    DataViewSummary = Shapes::StructureShape.new(name: 'DataViewSummary')
    Dataset = Shapes::StructureShape.new(name: 'Dataset')
    DatasetArn = Shapes::StringShape.new(name: 'DatasetArn')
    DatasetDescription = Shapes::StringShape.new(name: 'DatasetDescription')
    DatasetId = Shapes::StringShape.new(name: 'DatasetId')
    DatasetKind = Shapes::StringShape.new(name: 'DatasetKind')
    DatasetList = Shapes::ListShape.new(name: 'DatasetList')
    DatasetOwnerInfo = Shapes::StructureShape.new(name: 'DatasetOwnerInfo')
    DatasetStatus = Shapes::StringShape.new(name: 'DatasetStatus')
    DatasetTitle = Shapes::StringShape.new(name: 'DatasetTitle')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDatasetResponse')
    Email = Shapes::StringShape.new(name: 'Email')
    ErrorCategory = Shapes::StringShape.new(name: 'ErrorCategory')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExportFileFormat = Shapes::StringShape.new(name: 'ExportFileFormat')
    FormatParams = Shapes::MapShape.new(name: 'FormatParams')
    GetChangesetRequest = Shapes::StructureShape.new(name: 'GetChangesetRequest')
    GetChangesetResponse = Shapes::StructureShape.new(name: 'GetChangesetResponse')
    GetDataViewRequest = Shapes::StructureShape.new(name: 'GetDataViewRequest')
    GetDataViewResponse = Shapes::StructureShape.new(name: 'GetDataViewResponse')
    GetDatasetRequest = Shapes::StructureShape.new(name: 'GetDatasetRequest')
    GetDatasetResponse = Shapes::StructureShape.new(name: 'GetDatasetResponse')
    GetProgrammaticAccessCredentialsRequest = Shapes::StructureShape.new(name: 'GetProgrammaticAccessCredentialsRequest')
    GetProgrammaticAccessCredentialsResponse = Shapes::StructureShape.new(name: 'GetProgrammaticAccessCredentialsResponse')
    GetWorkingLocationRequest = Shapes::StructureShape.new(name: 'GetWorkingLocationRequest')
    GetWorkingLocationResponse = Shapes::StructureShape.new(name: 'GetWorkingLocationResponse')
    IdType = Shapes::StringShape.new(name: 'IdType')
    IngestionStatus = Shapes::StringShape.new(name: 'IngestionStatus')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListChangesetsRequest = Shapes::StructureShape.new(name: 'ListChangesetsRequest')
    ListChangesetsResponse = Shapes::StructureShape.new(name: 'ListChangesetsResponse')
    ListDataViewsRequest = Shapes::StructureShape.new(name: 'ListDataViewsRequest')
    ListDataViewsResponse = Shapes::StructureShape.new(name: 'ListDataViewsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    OwnerName = Shapes::StringShape.new(name: 'OwnerName')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PartitionColumnList = Shapes::ListShape.new(name: 'PartitionColumnList')
    PermissionGroupId = Shapes::StringShape.new(name: 'PermissionGroupId')
    PermissionGroupParams = Shapes::StructureShape.new(name: 'PermissionGroupParams')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePermission = Shapes::StructureShape.new(name: 'ResourcePermission')
    ResourcePermissionsList = Shapes::ListShape.new(name: 'ResourcePermissionsList')
    ResultLimit = Shapes::IntegerShape.new(name: 'ResultLimit')
    S3DestinationFormatOptions = Shapes::MapShape.new(name: 'S3DestinationFormatOptions')
    SchemaDefinition = Shapes::StructureShape.new(name: 'SchemaDefinition')
    SchemaUnion = Shapes::StructureShape.new(name: 'SchemaUnion')
    SessionDuration = Shapes::IntegerShape.new(name: 'SessionDuration')
    SortColumnList = Shapes::ListShape.new(name: 'SortColumnList')
    SourceParams = Shapes::MapShape.new(name: 'SourceParams')
    StringMapKey = Shapes::StringShape.new(name: 'StringMapKey')
    StringMapValue = Shapes::StringShape.new(name: 'StringMapValue')
    StringValueLength1to250 = Shapes::StringShape.new(name: 'StringValueLength1to250')
    StringValueLength1to255 = Shapes::StringShape.new(name: 'StringValueLength1to255')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimestampEpoch = Shapes::IntegerShape.new(name: 'TimestampEpoch')
    UpdateChangesetRequest = Shapes::StructureShape.new(name: 'UpdateChangesetRequest')
    UpdateChangesetResponse = Shapes::StructureShape.new(name: 'UpdateChangesetResponse')
    UpdateDatasetRequest = Shapes::StructureShape.new(name: 'UpdateDatasetRequest')
    UpdateDatasetResponse = Shapes::StructureShape.new(name: 'UpdateDatasetResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    locationType = Shapes::StringShape.new(name: 'locationType')
    stringValueLength1to1024 = Shapes::StringShape.new(name: 'stringValueLength1to1024')
    stringValueLength1to255 = Shapes::StringShape.new(name: 'stringValueLength1to255')
    stringValueLength1to63 = Shapes::StringShape.new(name: 'stringValueLength1to63')
    stringValueMaxLength1000 = Shapes::StringShape.new(name: 'stringValueMaxLength1000')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ChangesetErrorInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    ChangesetErrorInfo.add_member(:error_category, Shapes::ShapeRef.new(shape: ErrorCategory, location_name: "errorCategory"))
    ChangesetErrorInfo.struct_class = Types::ChangesetErrorInfo

    ChangesetList.member = Shapes::ShapeRef.new(shape: ChangesetSummary)

    ChangesetSummary.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    ChangesetSummary.add_member(:changeset_arn, Shapes::ShapeRef.new(shape: ChangesetArn, location_name: "changesetArn"))
    ChangesetSummary.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    ChangesetSummary.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "changeType"))
    ChangesetSummary.add_member(:source_params, Shapes::ShapeRef.new(shape: SourceParams, location_name: "sourceParams"))
    ChangesetSummary.add_member(:format_params, Shapes::ShapeRef.new(shape: FormatParams, location_name: "formatParams"))
    ChangesetSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    ChangesetSummary.add_member(:status, Shapes::ShapeRef.new(shape: IngestionStatus, location_name: "status"))
    ChangesetSummary.add_member(:error_info, Shapes::ShapeRef.new(shape: ChangesetErrorInfo, location_name: "errorInfo"))
    ChangesetSummary.add_member(:active_until_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "activeUntilTimestamp", metadata: {"box"=>true}))
    ChangesetSummary.add_member(:active_from_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "activeFromTimestamp", metadata: {"box"=>true}))
    ChangesetSummary.add_member(:updates_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "updatesChangesetId"))
    ChangesetSummary.add_member(:updated_by_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "updatedByChangesetId"))
    ChangesetSummary.struct_class = Types::ChangesetSummary

    ColumnDefinition.add_member(:data_type, Shapes::ShapeRef.new(shape: ColumnDataType, location_name: "dataType"))
    ColumnDefinition.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "columnName"))
    ColumnDefinition.add_member(:column_description, Shapes::ShapeRef.new(shape: ColumnDescription, location_name: "columnDescription"))
    ColumnDefinition.struct_class = Types::ColumnDefinition

    ColumnList.member = Shapes::ShapeRef.new(shape: ColumnDefinition)

    ColumnNameList.member = Shapes::ShapeRef.new(shape: ColumnName)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateChangesetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateChangesetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    CreateChangesetRequest.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, required: true, location_name: "changeType"))
    CreateChangesetRequest.add_member(:source_params, Shapes::ShapeRef.new(shape: SourceParams, required: true, location_name: "sourceParams"))
    CreateChangesetRequest.add_member(:format_params, Shapes::ShapeRef.new(shape: FormatParams, required: true, location_name: "formatParams"))
    CreateChangesetRequest.struct_class = Types::CreateChangesetRequest

    CreateChangesetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    CreateChangesetResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    CreateChangesetResponse.struct_class = Types::CreateChangesetResponse

    CreateDataViewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataViewRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    CreateDataViewRequest.add_member(:auto_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoUpdate"))
    CreateDataViewRequest.add_member(:sort_columns, Shapes::ShapeRef.new(shape: SortColumnList, location_name: "sortColumns"))
    CreateDataViewRequest.add_member(:partition_columns, Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: "partitionColumns"))
    CreateDataViewRequest.add_member(:as_of_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "asOfTimestamp", metadata: {"box"=>true}))
    CreateDataViewRequest.add_member(:destination_type_params, Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, required: true, location_name: "destinationTypeParams"))
    CreateDataViewRequest.struct_class = Types::CreateDataViewRequest

    CreateDataViewResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    CreateDataViewResponse.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, location_name: "dataViewId"))
    CreateDataViewResponse.struct_class = Types::CreateDataViewResponse

    CreateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDatasetRequest.add_member(:dataset_title, Shapes::ShapeRef.new(shape: DatasetTitle, required: true, location_name: "datasetTitle"))
    CreateDatasetRequest.add_member(:kind, Shapes::ShapeRef.new(shape: DatasetKind, required: true, location_name: "kind"))
    CreateDatasetRequest.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "datasetDescription"))
    CreateDatasetRequest.add_member(:owner_info, Shapes::ShapeRef.new(shape: DatasetOwnerInfo, location_name: "ownerInfo"))
    CreateDatasetRequest.add_member(:permission_group_params, Shapes::ShapeRef.new(shape: PermissionGroupParams, required: true, location_name: "permissionGroupParams"))
    CreateDatasetRequest.add_member(:alias, Shapes::ShapeRef.new(shape: AliasString, location_name: "alias"))
    CreateDatasetRequest.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaUnion, location_name: "schemaDefinition"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    Credentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: stringValueLength1to255, location_name: "accessKeyId"))
    Credentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: stringValueMaxLength1000, location_name: "secretAccessKey"))
    Credentials.add_member(:session_token, Shapes::ShapeRef.new(shape: stringValueMaxLength1000, location_name: "sessionToken"))
    Credentials.struct_class = Types::Credentials

    DataViewDestinationTypeParams.add_member(:destination_type, Shapes::ShapeRef.new(shape: DataViewDestinationType, required: true, location_name: "destinationType"))
    DataViewDestinationTypeParams.add_member(:s3_destination_export_file_format, Shapes::ShapeRef.new(shape: ExportFileFormat, location_name: "s3DestinationExportFileFormat"))
    DataViewDestinationTypeParams.add_member(:s3_destination_export_file_format_options, Shapes::ShapeRef.new(shape: S3DestinationFormatOptions, location_name: "s3DestinationExportFileFormatOptions"))
    DataViewDestinationTypeParams.struct_class = Types::DataViewDestinationTypeParams

    DataViewErrorInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    DataViewErrorInfo.add_member(:error_category, Shapes::ShapeRef.new(shape: ErrorCategory, location_name: "errorCategory"))
    DataViewErrorInfo.struct_class = Types::DataViewErrorInfo

    DataViewList.member = Shapes::ShapeRef.new(shape: DataViewSummary)

    DataViewSummary.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, location_name: "dataViewId"))
    DataViewSummary.add_member(:data_view_arn, Shapes::ShapeRef.new(shape: DataViewArn, location_name: "dataViewArn"))
    DataViewSummary.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    DataViewSummary.add_member(:as_of_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "asOfTimestamp", metadata: {"box"=>true}))
    DataViewSummary.add_member(:partition_columns, Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: "partitionColumns"))
    DataViewSummary.add_member(:sort_columns, Shapes::ShapeRef.new(shape: SortColumnList, location_name: "sortColumns"))
    DataViewSummary.add_member(:status, Shapes::ShapeRef.new(shape: DataViewStatus, location_name: "status"))
    DataViewSummary.add_member(:error_info, Shapes::ShapeRef.new(shape: DataViewErrorInfo, location_name: "errorInfo"))
    DataViewSummary.add_member(:destination_type_properties, Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, location_name: "destinationTypeProperties"))
    DataViewSummary.add_member(:auto_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoUpdate"))
    DataViewSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    DataViewSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    DataViewSummary.struct_class = Types::DataViewSummary

    Dataset.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    Dataset.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "datasetArn"))
    Dataset.add_member(:dataset_title, Shapes::ShapeRef.new(shape: DatasetTitle, location_name: "datasetTitle"))
    Dataset.add_member(:kind, Shapes::ShapeRef.new(shape: DatasetKind, location_name: "kind"))
    Dataset.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "datasetDescription"))
    Dataset.add_member(:owner_info, Shapes::ShapeRef.new(shape: DatasetOwnerInfo, location_name: "ownerInfo"))
    Dataset.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    Dataset.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    Dataset.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaUnion, location_name: "schemaDefinition"))
    Dataset.add_member(:alias, Shapes::ShapeRef.new(shape: AliasString, location_name: "alias"))
    Dataset.struct_class = Types::Dataset

    DatasetList.member = Shapes::ShapeRef.new(shape: Dataset)

    DatasetOwnerInfo.add_member(:name, Shapes::ShapeRef.new(shape: OwnerName, location_name: "name"))
    DatasetOwnerInfo.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "phoneNumber"))
    DatasetOwnerInfo.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    DatasetOwnerInfo.struct_class = Types::DatasetOwnerInfo

    DeleteDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    DeleteDatasetResponse.struct_class = Types::DeleteDatasetResponse

    FormatParams.key = Shapes::ShapeRef.new(shape: StringMapKey)
    FormatParams.value = Shapes::ShapeRef.new(shape: StringMapValue)

    GetChangesetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    GetChangesetRequest.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, required: true, location: "uri", location_name: "changesetId"))
    GetChangesetRequest.struct_class = Types::GetChangesetRequest

    GetChangesetResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    GetChangesetResponse.add_member(:changeset_arn, Shapes::ShapeRef.new(shape: ChangesetArn, location_name: "changesetArn"))
    GetChangesetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    GetChangesetResponse.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "changeType"))
    GetChangesetResponse.add_member(:source_params, Shapes::ShapeRef.new(shape: SourceParams, location_name: "sourceParams"))
    GetChangesetResponse.add_member(:format_params, Shapes::ShapeRef.new(shape: FormatParams, location_name: "formatParams"))
    GetChangesetResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    GetChangesetResponse.add_member(:status, Shapes::ShapeRef.new(shape: IngestionStatus, location_name: "status"))
    GetChangesetResponse.add_member(:error_info, Shapes::ShapeRef.new(shape: ChangesetErrorInfo, location_name: "errorInfo"))
    GetChangesetResponse.add_member(:active_until_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "activeUntilTimestamp", metadata: {"box"=>true}))
    GetChangesetResponse.add_member(:active_from_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "activeFromTimestamp", metadata: {"box"=>true}))
    GetChangesetResponse.add_member(:updates_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "updatesChangesetId"))
    GetChangesetResponse.add_member(:updated_by_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "updatedByChangesetId"))
    GetChangesetResponse.struct_class = Types::GetChangesetResponse

    GetDataViewRequest.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, required: true, location: "uri", location_name: "dataviewId"))
    GetDataViewRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    GetDataViewRequest.struct_class = Types::GetDataViewRequest

    GetDataViewResponse.add_member(:auto_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoUpdate"))
    GetDataViewResponse.add_member(:partition_columns, Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: "partitionColumns"))
    GetDataViewResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    GetDataViewResponse.add_member(:as_of_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "asOfTimestamp", metadata: {"box"=>true}))
    GetDataViewResponse.add_member(:error_info, Shapes::ShapeRef.new(shape: DataViewErrorInfo, location_name: "errorInfo"))
    GetDataViewResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    GetDataViewResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    GetDataViewResponse.add_member(:sort_columns, Shapes::ShapeRef.new(shape: SortColumnList, location_name: "sortColumns"))
    GetDataViewResponse.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, location_name: "dataViewId"))
    GetDataViewResponse.add_member(:data_view_arn, Shapes::ShapeRef.new(shape: DataViewArn, location_name: "dataViewArn"))
    GetDataViewResponse.add_member(:destination_type_params, Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, location_name: "destinationTypeParams"))
    GetDataViewResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataViewStatus, location_name: "status"))
    GetDataViewResponse.struct_class = Types::GetDataViewResponse

    GetDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: StringValueLength1to255, required: true, location: "uri", location_name: "datasetId"))
    GetDatasetRequest.struct_class = Types::GetDatasetRequest

    GetDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    GetDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "datasetArn"))
    GetDatasetResponse.add_member(:dataset_title, Shapes::ShapeRef.new(shape: DatasetTitle, location_name: "datasetTitle"))
    GetDatasetResponse.add_member(:kind, Shapes::ShapeRef.new(shape: DatasetKind, location_name: "kind"))
    GetDatasetResponse.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "datasetDescription"))
    GetDatasetResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    GetDatasetResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    GetDatasetResponse.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaUnion, location_name: "schemaDefinition"))
    GetDatasetResponse.add_member(:alias, Shapes::ShapeRef.new(shape: AliasString, location_name: "alias"))
    GetDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "status"))
    GetDatasetResponse.struct_class = Types::GetDatasetResponse

    GetProgrammaticAccessCredentialsRequest.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: SessionDuration, location: "querystring", location_name: "durationInMinutes"))
    GetProgrammaticAccessCredentialsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "querystring", location_name: "environmentId"))
    GetProgrammaticAccessCredentialsRequest.struct_class = Types::GetProgrammaticAccessCredentialsRequest

    GetProgrammaticAccessCredentialsResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "credentials"))
    GetProgrammaticAccessCredentialsResponse.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: SessionDuration, location_name: "durationInMinutes"))
    GetProgrammaticAccessCredentialsResponse.struct_class = Types::GetProgrammaticAccessCredentialsResponse

    GetWorkingLocationRequest.add_member(:location_type, Shapes::ShapeRef.new(shape: locationType, location_name: "locationType"))
    GetWorkingLocationRequest.struct_class = Types::GetWorkingLocationRequest

    GetWorkingLocationResponse.add_member(:s3_uri, Shapes::ShapeRef.new(shape: stringValueLength1to1024, location_name: "s3Uri"))
    GetWorkingLocationResponse.add_member(:s3_path, Shapes::ShapeRef.new(shape: stringValueLength1to1024, location_name: "s3Path"))
    GetWorkingLocationResponse.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: stringValueLength1to63, location_name: "s3Bucket"))
    GetWorkingLocationResponse.struct_class = Types::GetWorkingLocationResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListChangesetsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    ListChangesetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListChangesetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListChangesetsRequest.struct_class = Types::ListChangesetsRequest

    ListChangesetsResponse.add_member(:changesets, Shapes::ShapeRef.new(shape: ChangesetList, location_name: "changesets"))
    ListChangesetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChangesetsResponse.struct_class = Types::ListChangesetsResponse

    ListDataViewsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    ListDataViewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataViewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListDataViewsRequest.struct_class = Types::ListDataViewsRequest

    ListDataViewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataViewsResponse.add_member(:data_views, Shapes::ShapeRef.new(shape: DataViewList, location_name: "dataViews"))
    ListDataViewsResponse.struct_class = Types::ListDataViewsResponse

    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: DatasetList, location_name: "datasets"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    PartitionColumnList.member = Shapes::ShapeRef.new(shape: StringValueLength1to255)

    PermissionGroupParams.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: "permissionGroupId"))
    PermissionGroupParams.add_member(:dataset_permissions, Shapes::ShapeRef.new(shape: ResourcePermissionsList, location_name: "datasetPermissions"))
    PermissionGroupParams.struct_class = Types::PermissionGroupParams

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePermission.add_member(:permission, Shapes::ShapeRef.new(shape: StringValueLength1to250, location_name: "permission"))
    ResourcePermission.struct_class = Types::ResourcePermission

    ResourcePermissionsList.member = Shapes::ShapeRef.new(shape: ResourcePermission)

    S3DestinationFormatOptions.key = Shapes::ShapeRef.new(shape: StringMapKey)
    S3DestinationFormatOptions.value = Shapes::ShapeRef.new(shape: StringMapValue)

    SchemaDefinition.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, location_name: "columns"))
    SchemaDefinition.add_member(:primary_key_columns, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "primaryKeyColumns"))
    SchemaDefinition.struct_class = Types::SchemaDefinition

    SchemaUnion.add_member(:tabular_schema_config, Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: "tabularSchemaConfig"))
    SchemaUnion.struct_class = Types::SchemaUnion

    SortColumnList.member = Shapes::ShapeRef.new(shape: StringValueLength1to255)

    SourceParams.key = Shapes::ShapeRef.new(shape: StringMapKey)
    SourceParams.value = Shapes::ShapeRef.new(shape: StringMapValue)

    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateChangesetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateChangesetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    UpdateChangesetRequest.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, required: true, location: "uri", location_name: "changesetId"))
    UpdateChangesetRequest.add_member(:source_params, Shapes::ShapeRef.new(shape: SourceParams, required: true, location_name: "sourceParams"))
    UpdateChangesetRequest.add_member(:format_params, Shapes::ShapeRef.new(shape: FormatParams, required: true, location_name: "formatParams"))
    UpdateChangesetRequest.struct_class = Types::UpdateChangesetRequest

    UpdateChangesetResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    UpdateChangesetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    UpdateChangesetResponse.struct_class = Types::UpdateChangesetResponse

    UpdateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    UpdateDatasetRequest.add_member(:dataset_title, Shapes::ShapeRef.new(shape: DatasetTitle, required: true, location_name: "datasetTitle"))
    UpdateDatasetRequest.add_member(:kind, Shapes::ShapeRef.new(shape: DatasetKind, required: true, location_name: "kind"))
    UpdateDatasetRequest.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "datasetDescription"))
    UpdateDatasetRequest.add_member(:alias, Shapes::ShapeRef.new(shape: AliasString, location_name: "alias"))
    UpdateDatasetRequest.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaUnion, location_name: "schemaDefinition"))
    UpdateDatasetRequest.struct_class = Types::UpdateDatasetRequest

    UpdateDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    UpdateDatasetResponse.struct_class = Types::UpdateDatasetResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-13"

      api.metadata = {
        "apiVersion" => "2020-07-13",
        "endpointPrefix" => "finspace-api",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "FinSpace Data",
        "serviceFullName" => "FinSpace Public API",
        "serviceId" => "finspace data",
        "signatureVersion" => "v4",
        "signingName" => "finspace-api",
        "uid" => "finspace-2020-07-13",
      }

      api.add_operation(:create_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChangeset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/changesetsv2"
        o.input = Shapes::ShapeRef.new(shape: CreateChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_data_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataView"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/dataviewsv2"
        o.input = Shapes::ShapeRef.new(shape: CreateDataViewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/datasetsv2"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/datasetsv2/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChangeset"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/changesetsv2/{changesetId}"
        o.input = Shapes::ShapeRef.new(shape: GetChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_data_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataView"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/dataviewsv2/{dataviewId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataViewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataset"
        o.http_method = "GET"
        o.http_request_uri = "/datasetsv2/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: GetDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_programmatic_access_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProgrammaticAccessCredentials"
        o.http_method = "GET"
        o.http_request_uri = "/credentials/programmatic"
        o.input = Shapes::ShapeRef.new(shape: GetProgrammaticAccessCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProgrammaticAccessCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_working_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkingLocation"
        o.http_method = "POST"
        o.http_request_uri = "/workingLocationV1"
        o.input = Shapes::ShapeRef.new(shape: GetWorkingLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkingLocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_changesets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChangesets"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/changesetsv2"
        o.input = Shapes::ShapeRef.new(shape: ListChangesetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChangesetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataViews"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/dataviewsv2"
        o.input = Shapes::ShapeRef.new(shape: ListDataViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "GET"
        o.http_request_uri = "/datasetsv2"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChangeset"
        o.http_method = "PUT"
        o.http_request_uri = "/datasets/{datasetId}/changesetsv2/{changesetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataset"
        o.http_method = "PUT"
        o.http_request_uri = "/datasetsv2/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
