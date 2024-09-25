# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BCMDataExports
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    Column = Shapes::StructureShape.new(name: 'Column')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    CompressionOption = Shapes::StringShape.new(name: 'CompressionOption')
    CreateExportRequest = Shapes::StructureShape.new(name: 'CreateExportRequest')
    CreateExportResponse = Shapes::StructureShape.new(name: 'CreateExportResponse')
    DataQuery = Shapes::StructureShape.new(name: 'DataQuery')
    DeleteExportRequest = Shapes::StructureShape.new(name: 'DeleteExportRequest')
    DeleteExportResponse = Shapes::StructureShape.new(name: 'DeleteExportResponse')
    DestinationConfigurations = Shapes::StructureShape.new(name: 'DestinationConfigurations')
    ExecutionReference = Shapes::StructureShape.new(name: 'ExecutionReference')
    ExecutionReferenceList = Shapes::ListShape.new(name: 'ExecutionReferenceList')
    ExecutionStatus = Shapes::StructureShape.new(name: 'ExecutionStatus')
    ExecutionStatusCode = Shapes::StringShape.new(name: 'ExecutionStatusCode')
    ExecutionStatusReason = Shapes::StringShape.new(name: 'ExecutionStatusReason')
    Export = Shapes::StructureShape.new(name: 'Export')
    ExportName = Shapes::StringShape.new(name: 'ExportName')
    ExportReference = Shapes::StructureShape.new(name: 'ExportReference')
    ExportReferenceList = Shapes::ListShape.new(name: 'ExportReferenceList')
    ExportStatus = Shapes::StructureShape.new(name: 'ExportStatus')
    ExportStatusCode = Shapes::StringShape.new(name: 'ExportStatusCode')
    FormatOption = Shapes::StringShape.new(name: 'FormatOption')
    FrequencyOption = Shapes::StringShape.new(name: 'FrequencyOption')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GenericStringList = Shapes::ListShape.new(name: 'GenericStringList')
    GetExecutionRequest = Shapes::StructureShape.new(name: 'GetExecutionRequest')
    GetExecutionResponse = Shapes::StructureShape.new(name: 'GetExecutionResponse')
    GetExportRequest = Shapes::StructureShape.new(name: 'GetExportRequest')
    GetExportResponse = Shapes::StructureShape.new(name: 'GetExportResponse')
    GetTableRequest = Shapes::StructureShape.new(name: 'GetTableRequest')
    GetTableResponse = Shapes::StructureShape.new(name: 'GetTableResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListExecutionsRequest = Shapes::StructureShape.new(name: 'ListExecutionsRequest')
    ListExecutionsResponse = Shapes::StructureShape.new(name: 'ListExecutionsResponse')
    ListExportsRequest = Shapes::StructureShape.new(name: 'ListExportsRequest')
    ListExportsResponse = Shapes::StructureShape.new(name: 'ListExportsResponse')
    ListTablesRequest = Shapes::StructureShape.new(name: 'ListTablesRequest')
    ListTablesResponse = Shapes::StructureShape.new(name: 'ListTablesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextPageToken = Shapes::StringShape.new(name: 'NextPageToken')
    OverwriteOption = Shapes::StringShape.new(name: 'OverwriteOption')
    QueryStatement = Shapes::StringShape.new(name: 'QueryStatement')
    RefreshCadence = Shapes::StructureShape.new(name: 'RefreshCadence')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeyList = Shapes::ListShape.new(name: 'ResourceTagKeyList')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3OutputConfigurations = Shapes::StructureShape.new(name: 'S3OutputConfigurations')
    S3OutputType = Shapes::StringShape.new(name: 'S3OutputType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    Table = Shapes::StructureShape.new(name: 'Table')
    TableConfigurations = Shapes::MapShape.new(name: 'TableConfigurations')
    TableList = Shapes::ListShape.new(name: 'TableList')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableProperties = Shapes::MapShape.new(name: 'TableProperties')
    TableProperty = Shapes::StringShape.new(name: 'TableProperty')
    TablePropertyDescription = Shapes::StructureShape.new(name: 'TablePropertyDescription')
    TablePropertyDescriptionList = Shapes::ListShape.new(name: 'TablePropertyDescriptionList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateExportRequest = Shapes::StructureShape.new(name: 'UpdateExportRequest')
    UpdateExportResponse = Shapes::StructureShape.new(name: 'UpdateExportResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    Column.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    Column.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    Column.add_member(:type, Shapes::ShapeRef.new(shape: GenericString, location_name: "Type"))
    Column.struct_class = Types::Column

    ColumnList.member = Shapes::ShapeRef.new(shape: Column)

    CreateExportRequest.add_member(:export, Shapes::ShapeRef.new(shape: Export, required: true, location_name: "Export"))
    CreateExportRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateExportRequest.struct_class = Types::CreateExportRequest

    CreateExportResponse.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn"))
    CreateExportResponse.struct_class = Types::CreateExportResponse

    DataQuery.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryStatement, required: true, location_name: "QueryStatement"))
    DataQuery.add_member(:table_configurations, Shapes::ShapeRef.new(shape: TableConfigurations, location_name: "TableConfigurations"))
    DataQuery.struct_class = Types::DataQuery

    DeleteExportRequest.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ExportArn"))
    DeleteExportRequest.struct_class = Types::DeleteExportRequest

    DeleteExportResponse.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn"))
    DeleteExportResponse.struct_class = Types::DeleteExportResponse

    DestinationConfigurations.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3Destination, required: true, location_name: "S3Destination"))
    DestinationConfigurations.struct_class = Types::DestinationConfigurations

    ExecutionReference.add_member(:execution_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ExecutionId"))
    ExecutionReference.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "ExecutionStatus"))
    ExecutionReference.struct_class = Types::ExecutionReference

    ExecutionReferenceList.member = Shapes::ShapeRef.new(shape: ExecutionReference)

    ExecutionStatus.add_member(:completed_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "CompletedAt"))
    ExecutionStatus.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "CreatedAt"))
    ExecutionStatus.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastUpdatedAt"))
    ExecutionStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: ExecutionStatusCode, location_name: "StatusCode"))
    ExecutionStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: ExecutionStatusReason, location_name: "StatusReason"))
    ExecutionStatus.struct_class = Types::ExecutionStatus

    Export.add_member(:data_query, Shapes::ShapeRef.new(shape: DataQuery, required: true, location_name: "DataQuery"))
    Export.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    Export.add_member(:destination_configurations, Shapes::ShapeRef.new(shape: DestinationConfigurations, required: true, location_name: "DestinationConfigurations"))
    Export.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn"))
    Export.add_member(:name, Shapes::ShapeRef.new(shape: ExportName, required: true, location_name: "Name"))
    Export.add_member(:refresh_cadence, Shapes::ShapeRef.new(shape: RefreshCadence, required: true, location_name: "RefreshCadence"))
    Export.struct_class = Types::Export

    ExportReference.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ExportArn"))
    ExportReference.add_member(:export_name, Shapes::ShapeRef.new(shape: ExportName, required: true, location_name: "ExportName"))
    ExportReference.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, required: true, location_name: "ExportStatus"))
    ExportReference.struct_class = Types::ExportReference

    ExportReferenceList.member = Shapes::ShapeRef.new(shape: ExportReference)

    ExportStatus.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "CreatedAt"))
    ExportStatus.add_member(:last_refreshed_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastRefreshedAt"))
    ExportStatus.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastUpdatedAt"))
    ExportStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: ExportStatusCode, location_name: "StatusCode"))
    ExportStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: ExecutionStatusReason, location_name: "StatusReason"))
    ExportStatus.struct_class = Types::ExportStatus

    GenericStringList.member = Shapes::ShapeRef.new(shape: GenericString)

    GetExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ExecutionId"))
    GetExecutionRequest.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ExportArn"))
    GetExecutionRequest.struct_class = Types::GetExecutionRequest

    GetExecutionResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExecutionId"))
    GetExecutionResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "ExecutionStatus"))
    GetExecutionResponse.add_member(:export, Shapes::ShapeRef.new(shape: Export, location_name: "Export"))
    GetExecutionResponse.struct_class = Types::GetExecutionResponse

    GetExportRequest.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ExportArn"))
    GetExportRequest.struct_class = Types::GetExportRequest

    GetExportResponse.add_member(:export, Shapes::ShapeRef.new(shape: Export, location_name: "Export"))
    GetExportResponse.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "ExportStatus"))
    GetExportResponse.struct_class = Types::GetExportResponse

    GetTableRequest.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    GetTableRequest.add_member(:table_properties, Shapes::ShapeRef.new(shape: TableProperties, location_name: "TableProperties"))
    GetTableRequest.struct_class = Types::GetTableRequest

    GetTableResponse.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    GetTableResponse.add_member(:schema, Shapes::ShapeRef.new(shape: ColumnList, location_name: "Schema"))
    GetTableResponse.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    GetTableResponse.add_member(:table_properties, Shapes::ShapeRef.new(shape: TableProperties, location_name: "TableProperties"))
    GetTableResponse.struct_class = Types::GetTableResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListExecutionsRequest.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ExportArn"))
    ListExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListExecutionsRequest.struct_class = Types::ListExecutionsRequest

    ListExecutionsResponse.add_member(:executions, Shapes::ShapeRef.new(shape: ExecutionReferenceList, location_name: "Executions"))
    ListExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListExecutionsResponse.struct_class = Types::ListExecutionsResponse

    ListExportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListExportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListExportsRequest.struct_class = Types::ListExportsRequest

    ListExportsResponse.add_member(:exports, Shapes::ShapeRef.new(shape: ExportReferenceList, location_name: "Exports"))
    ListExportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListExportsResponse.struct_class = Types::ListExportsResponse

    ListTablesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTablesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListTablesRequest.struct_class = Types::ListTablesRequest

    ListTablesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListTablesResponse.add_member(:tables, Shapes::ShapeRef.new(shape: TableList, location_name: "Tables"))
    ListTablesResponse.struct_class = Types::ListTablesResponse

    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    RefreshCadence.add_member(:frequency, Shapes::ShapeRef.new(shape: FrequencyOption, required: true, location_name: "Frequency"))
    RefreshCadence.struct_class = Types::RefreshCadence

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "Key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, required: true, location_name: "Value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagKeyList.member = Shapes::ShapeRef.new(shape: ResourceTagKey)

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    S3Destination.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "S3Bucket"))
    S3Destination.add_member(:s3_output_configurations, Shapes::ShapeRef.new(shape: S3OutputConfigurations, required: true, location_name: "S3OutputConfigurations"))
    S3Destination.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "S3Prefix"))
    S3Destination.add_member(:s3_region, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "S3Region"))
    S3Destination.struct_class = Types::S3Destination

    S3OutputConfigurations.add_member(:compression, Shapes::ShapeRef.new(shape: CompressionOption, required: true, location_name: "Compression"))
    S3OutputConfigurations.add_member(:format, Shapes::ShapeRef.new(shape: FormatOption, required: true, location_name: "Format"))
    S3OutputConfigurations.add_member(:output_type, Shapes::ShapeRef.new(shape: S3OutputType, required: true, location_name: "OutputType"))
    S3OutputConfigurations.add_member(:overwrite, Shapes::ShapeRef.new(shape: OverwriteOption, required: true, location_name: "Overwrite"))
    S3OutputConfigurations.struct_class = Types::S3OutputConfigurations

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Table.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    Table.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    Table.add_member(:table_properties, Shapes::ShapeRef.new(shape: TablePropertyDescriptionList, location_name: "TableProperties"))
    Table.struct_class = Types::Table

    TableConfigurations.key = Shapes::ShapeRef.new(shape: TableName)
    TableConfigurations.value = Shapes::ShapeRef.new(shape: TableProperties)

    TableList.member = Shapes::ShapeRef.new(shape: Table)

    TableProperties.key = Shapes::ShapeRef.new(shape: TableProperty)
    TableProperties.value = Shapes::ShapeRef.new(shape: GenericString)

    TablePropertyDescription.add_member(:default_value, Shapes::ShapeRef.new(shape: GenericString, location_name: "DefaultValue"))
    TablePropertyDescription.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "Description"))
    TablePropertyDescription.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    TablePropertyDescription.add_member(:valid_values, Shapes::ShapeRef.new(shape: GenericStringList, location_name: "ValidValues"))
    TablePropertyDescription.struct_class = Types::TablePropertyDescription

    TablePropertyDescriptionList.member = Shapes::ShapeRef.new(shape: TablePropertyDescription)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, required: true, location_name: "ResourceTags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "ServiceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:resource_tag_keys, Shapes::ShapeRef.new(shape: ResourceTagKeyList, required: true, location_name: "ResourceTagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateExportRequest.add_member(:export, Shapes::ShapeRef.new(shape: Export, required: true, location_name: "Export"))
    UpdateExportRequest.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ExportArn"))
    UpdateExportRequest.struct_class = Types::UpdateExportRequest

    UpdateExportResponse.add_member(:export_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ExportArn"))
    UpdateExportResponse.struct_class = Types::UpdateExportResponse

    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-11-26"

      api.metadata = {
        "apiVersion" => "2023-11-26",
        "endpointPrefix" => "bcm-data-exports",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Billing and Cost Management Data Exports",
        "serviceId" => "BCM Data Exports",
        "signatureVersion" => "v4",
        "signingName" => "bcm-data-exports",
        "targetPrefix" => "AWSBillingAndCostManagementDataExports",
        "uid" => "bcm-data-exports-2023-11-26",
      }

      api.add_operation(:create_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateExportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteExportRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTableRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_exports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExports"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateExportRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
