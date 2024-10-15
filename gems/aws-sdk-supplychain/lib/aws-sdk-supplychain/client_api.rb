# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SupplyChain
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AscResourceArn = Shapes::StringShape.new(name: 'AscResourceArn')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BillOfMaterialsImportJob = Shapes::StructureShape.new(name: 'BillOfMaterialsImportJob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConfigurationJobStatus = Shapes::StringShape.new(name: 'ConfigurationJobStatus')
    ConfigurationS3Uri = Shapes::StringShape.new(name: 'ConfigurationS3Uri')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateBillOfMaterialsImportJobRequest = Shapes::StructureShape.new(name: 'CreateBillOfMaterialsImportJobRequest')
    CreateBillOfMaterialsImportJobResponse = Shapes::StructureShape.new(name: 'CreateBillOfMaterialsImportJobResponse')
    CreateDataIntegrationFlowRequest = Shapes::StructureShape.new(name: 'CreateDataIntegrationFlowRequest')
    CreateDataIntegrationFlowResponse = Shapes::StructureShape.new(name: 'CreateDataIntegrationFlowResponse')
    CreateDataLakeDatasetRequest = Shapes::StructureShape.new(name: 'CreateDataLakeDatasetRequest')
    CreateDataLakeDatasetResponse = Shapes::StructureShape.new(name: 'CreateDataLakeDatasetResponse')
    CreateInstanceRequest = Shapes::StructureShape.new(name: 'CreateInstanceRequest')
    CreateInstanceResponse = Shapes::StructureShape.new(name: 'CreateInstanceResponse')
    DataIntegrationEventData = Shapes::StringShape.new(name: 'DataIntegrationEventData')
    DataIntegrationEventGroupId = Shapes::StringShape.new(name: 'DataIntegrationEventGroupId')
    DataIntegrationEventType = Shapes::StringShape.new(name: 'DataIntegrationEventType')
    DataIntegrationFlow = Shapes::StructureShape.new(name: 'DataIntegrationFlow')
    DataIntegrationFlowDatasetOptions = Shapes::StructureShape.new(name: 'DataIntegrationFlowDatasetOptions')
    DataIntegrationFlowDatasetSourceConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationFlowDatasetSourceConfiguration')
    DataIntegrationFlowDatasetTargetConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationFlowDatasetTargetConfiguration')
    DataIntegrationFlowFileType = Shapes::StringShape.new(name: 'DataIntegrationFlowFileType')
    DataIntegrationFlowList = Shapes::ListShape.new(name: 'DataIntegrationFlowList')
    DataIntegrationFlowLoadType = Shapes::StringShape.new(name: 'DataIntegrationFlowLoadType')
    DataIntegrationFlowMaxResults = Shapes::IntegerShape.new(name: 'DataIntegrationFlowMaxResults')
    DataIntegrationFlowName = Shapes::StringShape.new(name: 'DataIntegrationFlowName')
    DataIntegrationFlowNextToken = Shapes::StringShape.new(name: 'DataIntegrationFlowNextToken')
    DataIntegrationFlowS3Options = Shapes::StructureShape.new(name: 'DataIntegrationFlowS3Options')
    DataIntegrationFlowS3Prefix = Shapes::StringShape.new(name: 'DataIntegrationFlowS3Prefix')
    DataIntegrationFlowS3SourceConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationFlowS3SourceConfiguration')
    DataIntegrationFlowS3TargetConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationFlowS3TargetConfiguration')
    DataIntegrationFlowSQLQuery = Shapes::StringShape.new(name: 'DataIntegrationFlowSQLQuery')
    DataIntegrationFlowSQLTransformationConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationFlowSQLTransformationConfiguration')
    DataIntegrationFlowSource = Shapes::StructureShape.new(name: 'DataIntegrationFlowSource')
    DataIntegrationFlowSourceList = Shapes::ListShape.new(name: 'DataIntegrationFlowSourceList')
    DataIntegrationFlowSourceName = Shapes::StringShape.new(name: 'DataIntegrationFlowSourceName')
    DataIntegrationFlowSourceType = Shapes::StringShape.new(name: 'DataIntegrationFlowSourceType')
    DataIntegrationFlowTarget = Shapes::StructureShape.new(name: 'DataIntegrationFlowTarget')
    DataIntegrationFlowTargetType = Shapes::StringShape.new(name: 'DataIntegrationFlowTargetType')
    DataIntegrationFlowTransformation = Shapes::StructureShape.new(name: 'DataIntegrationFlowTransformation')
    DataIntegrationFlowTransformationType = Shapes::StringShape.new(name: 'DataIntegrationFlowTransformationType')
    DataLakeDataset = Shapes::StructureShape.new(name: 'DataLakeDataset')
    DataLakeDatasetDescription = Shapes::StringShape.new(name: 'DataLakeDatasetDescription')
    DataLakeDatasetList = Shapes::ListShape.new(name: 'DataLakeDatasetList')
    DataLakeDatasetMaxResults = Shapes::IntegerShape.new(name: 'DataLakeDatasetMaxResults')
    DataLakeDatasetName = Shapes::StringShape.new(name: 'DataLakeDatasetName')
    DataLakeDatasetNamespace = Shapes::StringShape.new(name: 'DataLakeDatasetNamespace')
    DataLakeDatasetNextToken = Shapes::StringShape.new(name: 'DataLakeDatasetNextToken')
    DataLakeDatasetSchema = Shapes::StructureShape.new(name: 'DataLakeDatasetSchema')
    DataLakeDatasetSchemaField = Shapes::StructureShape.new(name: 'DataLakeDatasetSchemaField')
    DataLakeDatasetSchemaFieldList = Shapes::ListShape.new(name: 'DataLakeDatasetSchemaFieldList')
    DataLakeDatasetSchemaFieldName = Shapes::StringShape.new(name: 'DataLakeDatasetSchemaFieldName')
    DataLakeDatasetSchemaFieldType = Shapes::StringShape.new(name: 'DataLakeDatasetSchemaFieldType')
    DataLakeDatasetSchemaName = Shapes::StringShape.new(name: 'DataLakeDatasetSchemaName')
    DatasetIdentifier = Shapes::StringShape.new(name: 'DatasetIdentifier')
    DeleteDataIntegrationFlowRequest = Shapes::StructureShape.new(name: 'DeleteDataIntegrationFlowRequest')
    DeleteDataIntegrationFlowResponse = Shapes::StructureShape.new(name: 'DeleteDataIntegrationFlowResponse')
    DeleteDataLakeDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDataLakeDatasetRequest')
    DeleteDataLakeDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDataLakeDatasetResponse')
    DeleteInstanceRequest = Shapes::StructureShape.new(name: 'DeleteInstanceRequest')
    DeleteInstanceResponse = Shapes::StructureShape.new(name: 'DeleteInstanceResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    GetBillOfMaterialsImportJobRequest = Shapes::StructureShape.new(name: 'GetBillOfMaterialsImportJobRequest')
    GetBillOfMaterialsImportJobResponse = Shapes::StructureShape.new(name: 'GetBillOfMaterialsImportJobResponse')
    GetDataIntegrationFlowRequest = Shapes::StructureShape.new(name: 'GetDataIntegrationFlowRequest')
    GetDataIntegrationFlowResponse = Shapes::StructureShape.new(name: 'GetDataIntegrationFlowResponse')
    GetDataLakeDatasetRequest = Shapes::StructureShape.new(name: 'GetDataLakeDatasetRequest')
    GetDataLakeDatasetResponse = Shapes::StructureShape.new(name: 'GetDataLakeDatasetResponse')
    GetInstanceRequest = Shapes::StructureShape.new(name: 'GetInstanceRequest')
    GetInstanceResponse = Shapes::StructureShape.new(name: 'GetInstanceResponse')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceDescription = Shapes::StringShape.new(name: 'InstanceDescription')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstanceMaxResults = Shapes::IntegerShape.new(name: 'InstanceMaxResults')
    InstanceName = Shapes::StringShape.new(name: 'InstanceName')
    InstanceNameList = Shapes::ListShape.new(name: 'InstanceNameList')
    InstanceNextToken = Shapes::StringShape.new(name: 'InstanceNextToken')
    InstanceState = Shapes::StringShape.new(name: 'InstanceState')
    InstanceStateList = Shapes::ListShape.new(name: 'InstanceStateList')
    InstanceWebAppDnsDomain = Shapes::StringShape.new(name: 'InstanceWebAppDnsDomain')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListDataIntegrationFlowsRequest = Shapes::StructureShape.new(name: 'ListDataIntegrationFlowsRequest')
    ListDataIntegrationFlowsResponse = Shapes::StructureShape.new(name: 'ListDataIntegrationFlowsResponse')
    ListDataLakeDatasetsRequest = Shapes::StructureShape.new(name: 'ListDataLakeDatasetsRequest')
    ListDataLakeDatasetsResponse = Shapes::StructureShape.new(name: 'ListDataLakeDatasetsResponse')
    ListInstancesRequest = Shapes::StructureShape.new(name: 'ListInstancesRequest')
    ListInstancesResponse = Shapes::StructureShape.new(name: 'ListInstancesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    SendDataIntegrationEventRequest = Shapes::StructureShape.new(name: 'SendDataIntegrationEventRequest')
    SendDataIntegrationEventResponse = Shapes::StructureShape.new(name: 'SendDataIntegrationEventResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_epoch_seconds = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_epoch_seconds', timestampFormat: "unixTimestamp")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDataIntegrationFlowRequest = Shapes::StructureShape.new(name: 'UpdateDataIntegrationFlowRequest')
    UpdateDataIntegrationFlowResponse = Shapes::StructureShape.new(name: 'UpdateDataIntegrationFlowResponse')
    UpdateDataLakeDatasetRequest = Shapes::StructureShape.new(name: 'UpdateDataLakeDatasetRequest')
    UpdateDataLakeDatasetResponse = Shapes::StructureShape.new(name: 'UpdateDataLakeDatasetResponse')
    UpdateInstanceRequest = Shapes::StructureShape.new(name: 'UpdateInstanceRequest')
    UpdateInstanceResponse = Shapes::StructureShape.new(name: 'UpdateInstanceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BillOfMaterialsImportJob.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    BillOfMaterialsImportJob.add_member(:job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "jobId"))
    BillOfMaterialsImportJob.add_member(:status, Shapes::ShapeRef.new(shape: ConfigurationJobStatus, required: true, location_name: "status"))
    BillOfMaterialsImportJob.add_member(:s3uri, Shapes::ShapeRef.new(shape: ConfigurationS3Uri, required: true, location_name: "s3uri"))
    BillOfMaterialsImportJob.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BillOfMaterialsImportJob.struct_class = Types::BillOfMaterialsImportJob

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateBillOfMaterialsImportJobRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    CreateBillOfMaterialsImportJobRequest.add_member(:s3uri, Shapes::ShapeRef.new(shape: ConfigurationS3Uri, required: true, location_name: "s3uri"))
    CreateBillOfMaterialsImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateBillOfMaterialsImportJobRequest.struct_class = Types::CreateBillOfMaterialsImportJobRequest

    CreateBillOfMaterialsImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "jobId"))
    CreateBillOfMaterialsImportJobResponse.struct_class = Types::CreateBillOfMaterialsImportJobResponse

    CreateDataIntegrationFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    CreateDataIntegrationFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location: "uri", location_name: "name"))
    CreateDataIntegrationFlowRequest.add_member(:sources, Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceList, required: true, location_name: "sources"))
    CreateDataIntegrationFlowRequest.add_member(:transformation, Shapes::ShapeRef.new(shape: DataIntegrationFlowTransformation, required: true, location_name: "transformation"))
    CreateDataIntegrationFlowRequest.add_member(:target, Shapes::ShapeRef.new(shape: DataIntegrationFlowTarget, required: true, location_name: "target"))
    CreateDataIntegrationFlowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDataIntegrationFlowRequest.struct_class = Types::CreateDataIntegrationFlowRequest

    CreateDataIntegrationFlowResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    CreateDataIntegrationFlowResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location_name: "name"))
    CreateDataIntegrationFlowResponse.struct_class = Types::CreateDataIntegrationFlowResponse

    CreateDataLakeDatasetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    CreateDataLakeDatasetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeDatasetNamespace, required: true, location: "uri", location_name: "namespace"))
    CreateDataLakeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location: "uri", location_name: "name"))
    CreateDataLakeDatasetRequest.add_member(:schema, Shapes::ShapeRef.new(shape: DataLakeDatasetSchema, location_name: "schema"))
    CreateDataLakeDatasetRequest.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: "description"))
    CreateDataLakeDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDataLakeDatasetRequest.struct_class = Types::CreateDataLakeDatasetRequest

    CreateDataLakeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: DataLakeDataset, required: true, location_name: "dataset"))
    CreateDataLakeDatasetResponse.struct_class = Types::CreateDataLakeDatasetResponse

    CreateInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, location_name: "instanceName"))
    CreateInstanceRequest.add_member(:instance_description, Shapes::ShapeRef.new(shape: InstanceDescription, location_name: "instanceDescription"))
    CreateInstanceRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateInstanceRequest.struct_class = Types::CreateInstanceRequest

    CreateInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, required: true, location_name: "instance"))
    CreateInstanceResponse.struct_class = Types::CreateInstanceResponse

    DataIntegrationFlow.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DataIntegrationFlow.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location_name: "name"))
    DataIntegrationFlow.add_member(:sources, Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceList, required: true, location_name: "sources"))
    DataIntegrationFlow.add_member(:transformation, Shapes::ShapeRef.new(shape: DataIntegrationFlowTransformation, required: true, location_name: "transformation"))
    DataIntegrationFlow.add_member(:target, Shapes::ShapeRef.new(shape: DataIntegrationFlowTarget, required: true, location_name: "target"))
    DataIntegrationFlow.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    DataIntegrationFlow.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    DataIntegrationFlow.struct_class = Types::DataIntegrationFlow

    DataIntegrationFlowDatasetOptions.add_member(:load_type, Shapes::ShapeRef.new(shape: DataIntegrationFlowLoadType, location_name: "loadType"))
    DataIntegrationFlowDatasetOptions.add_member(:dedupe_records, Shapes::ShapeRef.new(shape: Boolean, location_name: "dedupeRecords"))
    DataIntegrationFlowDatasetOptions.struct_class = Types::DataIntegrationFlowDatasetOptions

    DataIntegrationFlowDatasetSourceConfiguration.add_member(:dataset_identifier, Shapes::ShapeRef.new(shape: DatasetIdentifier, required: true, location_name: "datasetIdentifier"))
    DataIntegrationFlowDatasetSourceConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetOptions, location_name: "options"))
    DataIntegrationFlowDatasetSourceConfiguration.struct_class = Types::DataIntegrationFlowDatasetSourceConfiguration

    DataIntegrationFlowDatasetTargetConfiguration.add_member(:dataset_identifier, Shapes::ShapeRef.new(shape: DatasetIdentifier, required: true, location_name: "datasetIdentifier"))
    DataIntegrationFlowDatasetTargetConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetOptions, location_name: "options"))
    DataIntegrationFlowDatasetTargetConfiguration.struct_class = Types::DataIntegrationFlowDatasetTargetConfiguration

    DataIntegrationFlowList.member = Shapes::ShapeRef.new(shape: DataIntegrationFlow)

    DataIntegrationFlowS3Options.add_member(:file_type, Shapes::ShapeRef.new(shape: DataIntegrationFlowFileType, location_name: "fileType"))
    DataIntegrationFlowS3Options.struct_class = Types::DataIntegrationFlowS3Options

    DataIntegrationFlowS3SourceConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    DataIntegrationFlowS3SourceConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Prefix, required: true, location_name: "prefix"))
    DataIntegrationFlowS3SourceConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Options, location_name: "options"))
    DataIntegrationFlowS3SourceConfiguration.struct_class = Types::DataIntegrationFlowS3SourceConfiguration

    DataIntegrationFlowS3TargetConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    DataIntegrationFlowS3TargetConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Prefix, required: true, location_name: "prefix"))
    DataIntegrationFlowS3TargetConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Options, location_name: "options"))
    DataIntegrationFlowS3TargetConfiguration.struct_class = Types::DataIntegrationFlowS3TargetConfiguration

    DataIntegrationFlowSQLTransformationConfiguration.add_member(:query, Shapes::ShapeRef.new(shape: DataIntegrationFlowSQLQuery, required: true, location_name: "query"))
    DataIntegrationFlowSQLTransformationConfiguration.struct_class = Types::DataIntegrationFlowSQLTransformationConfiguration

    DataIntegrationFlowSource.add_member(:source_type, Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceType, required: true, location_name: "sourceType"))
    DataIntegrationFlowSource.add_member(:source_name, Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceName, required: true, location_name: "sourceName"))
    DataIntegrationFlowSource.add_member(:s3_source, Shapes::ShapeRef.new(shape: DataIntegrationFlowS3SourceConfiguration, location_name: "s3Source"))
    DataIntegrationFlowSource.add_member(:dataset_source, Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetSourceConfiguration, location_name: "datasetSource"))
    DataIntegrationFlowSource.struct_class = Types::DataIntegrationFlowSource

    DataIntegrationFlowSourceList.member = Shapes::ShapeRef.new(shape: DataIntegrationFlowSource)

    DataIntegrationFlowTarget.add_member(:target_type, Shapes::ShapeRef.new(shape: DataIntegrationFlowTargetType, required: true, location_name: "targetType"))
    DataIntegrationFlowTarget.add_member(:s3_target, Shapes::ShapeRef.new(shape: DataIntegrationFlowS3TargetConfiguration, location_name: "s3Target"))
    DataIntegrationFlowTarget.add_member(:dataset_target, Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetTargetConfiguration, location_name: "datasetTarget"))
    DataIntegrationFlowTarget.struct_class = Types::DataIntegrationFlowTarget

    DataIntegrationFlowTransformation.add_member(:transformation_type, Shapes::ShapeRef.new(shape: DataIntegrationFlowTransformationType, required: true, location_name: "transformationType"))
    DataIntegrationFlowTransformation.add_member(:sql_transformation, Shapes::ShapeRef.new(shape: DataIntegrationFlowSQLTransformationConfiguration, location_name: "sqlTransformation"))
    DataIntegrationFlowTransformation.struct_class = Types::DataIntegrationFlowTransformation

    DataLakeDataset.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DataLakeDataset.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeDatasetNamespace, required: true, location_name: "namespace"))
    DataLakeDataset.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location_name: "name"))
    DataLakeDataset.add_member(:arn, Shapes::ShapeRef.new(shape: AscResourceArn, required: true, location_name: "arn"))
    DataLakeDataset.add_member(:schema, Shapes::ShapeRef.new(shape: DataLakeDatasetSchema, required: true, location_name: "schema"))
    DataLakeDataset.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: "description"))
    DataLakeDataset.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    DataLakeDataset.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    DataLakeDataset.struct_class = Types::DataLakeDataset

    DataLakeDatasetList.member = Shapes::ShapeRef.new(shape: DataLakeDataset)

    DataLakeDatasetSchema.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaName, required: true, location_name: "name"))
    DataLakeDatasetSchema.add_member(:fields, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldList, required: true, location_name: "fields"))
    DataLakeDatasetSchema.struct_class = Types::DataLakeDatasetSchema

    DataLakeDatasetSchemaField.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldName, required: true, location_name: "name"))
    DataLakeDatasetSchemaField.add_member(:type, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldType, required: true, location_name: "type"))
    DataLakeDatasetSchemaField.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isRequired"))
    DataLakeDatasetSchemaField.struct_class = Types::DataLakeDatasetSchemaField

    DataLakeDatasetSchemaFieldList.member = Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaField)

    DeleteDataIntegrationFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    DeleteDataIntegrationFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location: "uri", location_name: "name"))
    DeleteDataIntegrationFlowRequest.struct_class = Types::DeleteDataIntegrationFlowRequest

    DeleteDataIntegrationFlowResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DeleteDataIntegrationFlowResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location_name: "name"))
    DeleteDataIntegrationFlowResponse.struct_class = Types::DeleteDataIntegrationFlowResponse

    DeleteDataLakeDatasetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    DeleteDataLakeDatasetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeDatasetNamespace, required: true, location: "uri", location_name: "namespace"))
    DeleteDataLakeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location: "uri", location_name: "name"))
    DeleteDataLakeDatasetRequest.struct_class = Types::DeleteDataLakeDatasetRequest

    DeleteDataLakeDatasetResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DeleteDataLakeDatasetResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeDatasetNamespace, required: true, location_name: "namespace"))
    DeleteDataLakeDatasetResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location_name: "name"))
    DeleteDataLakeDatasetResponse.struct_class = Types::DeleteDataLakeDatasetResponse

    DeleteInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    DeleteInstanceRequest.struct_class = Types::DeleteInstanceRequest

    DeleteInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, required: true, location_name: "instance"))
    DeleteInstanceResponse.struct_class = Types::DeleteInstanceResponse

    GetBillOfMaterialsImportJobRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetBillOfMaterialsImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "jobId"))
    GetBillOfMaterialsImportJobRequest.struct_class = Types::GetBillOfMaterialsImportJobRequest

    GetBillOfMaterialsImportJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: BillOfMaterialsImportJob, required: true, location_name: "job"))
    GetBillOfMaterialsImportJobResponse.struct_class = Types::GetBillOfMaterialsImportJobResponse

    GetDataIntegrationFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetDataIntegrationFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location: "uri", location_name: "name"))
    GetDataIntegrationFlowRequest.struct_class = Types::GetDataIntegrationFlowRequest

    GetDataIntegrationFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: DataIntegrationFlow, required: true, location_name: "flow"))
    GetDataIntegrationFlowResponse.struct_class = Types::GetDataIntegrationFlowResponse

    GetDataLakeDatasetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetDataLakeDatasetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeDatasetNamespace, required: true, location: "uri", location_name: "namespace"))
    GetDataLakeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location: "uri", location_name: "name"))
    GetDataLakeDatasetRequest.struct_class = Types::GetDataLakeDatasetRequest

    GetDataLakeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: DataLakeDataset, required: true, location_name: "dataset"))
    GetDataLakeDatasetResponse.struct_class = Types::GetDataLakeDatasetResponse

    GetInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetInstanceRequest.struct_class = Types::GetInstanceRequest

    GetInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, required: true, location_name: "instance"))
    GetInstanceResponse.struct_class = Types::GetInstanceResponse

    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    Instance.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "awsAccountId"))
    Instance.add_member(:state, Shapes::ShapeRef.new(shape: InstanceState, required: true, location_name: "state"))
    Instance.add_member(:web_app_dns_domain, Shapes::ShapeRef.new(shape: InstanceWebAppDnsDomain, location_name: "webAppDnsDomain"))
    Instance.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTime"))
    Instance.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    Instance.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, location_name: "instanceName"))
    Instance.add_member(:instance_description, Shapes::ShapeRef.new(shape: InstanceDescription, location_name: "instanceDescription"))
    Instance.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    Instance.add_member(:version_number, Shapes::ShapeRef.new(shape: Double, location_name: "versionNumber"))
    Instance.struct_class = Types::Instance

    InstanceList.member = Shapes::ShapeRef.new(shape: Instance)

    InstanceNameList.member = Shapes::ShapeRef.new(shape: InstanceName)

    InstanceStateList.member = Shapes::ShapeRef.new(shape: InstanceState)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDataIntegrationFlowsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    ListDataIntegrationFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataIntegrationFlowNextToken, location: "querystring", location_name: "nextToken"))
    ListDataIntegrationFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DataIntegrationFlowMaxResults, location: "querystring", location_name: "maxResults"))
    ListDataIntegrationFlowsRequest.struct_class = Types::ListDataIntegrationFlowsRequest

    ListDataIntegrationFlowsResponse.add_member(:flows, Shapes::ShapeRef.new(shape: DataIntegrationFlowList, required: true, location_name: "flows"))
    ListDataIntegrationFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataIntegrationFlowNextToken, location_name: "nextToken"))
    ListDataIntegrationFlowsResponse.struct_class = Types::ListDataIntegrationFlowsResponse

    ListDataLakeDatasetsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    ListDataLakeDatasetsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeDatasetNamespace, required: true, location: "uri", location_name: "namespace"))
    ListDataLakeDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataLakeDatasetNextToken, location: "querystring", location_name: "nextToken"))
    ListDataLakeDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DataLakeDatasetMaxResults, location: "querystring", location_name: "maxResults"))
    ListDataLakeDatasetsRequest.struct_class = Types::ListDataLakeDatasetsRequest

    ListDataLakeDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: DataLakeDatasetList, required: true, location_name: "datasets"))
    ListDataLakeDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataLakeDatasetNextToken, location_name: "nextToken"))
    ListDataLakeDatasetsResponse.struct_class = Types::ListDataLakeDatasetsResponse

    ListInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: InstanceNextToken, location: "querystring", location_name: "nextToken"))
    ListInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: InstanceMaxResults, location: "querystring", location_name: "maxResults"))
    ListInstancesRequest.add_member(:instance_name_filter, Shapes::ShapeRef.new(shape: InstanceNameList, location: "querystring", location_name: "instanceNameFilter"))
    ListInstancesRequest.add_member(:instance_state_filter, Shapes::ShapeRef.new(shape: InstanceStateList, location: "querystring", location_name: "instanceStateFilter"))
    ListInstancesRequest.struct_class = Types::ListInstancesRequest

    ListInstancesResponse.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, required: true, location_name: "instances"))
    ListInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: InstanceNextToken, location_name: "nextToken"))
    ListInstancesResponse.struct_class = Types::ListInstancesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AscResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SendDataIntegrationEventRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    SendDataIntegrationEventRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: DataIntegrationEventType, required: true, location_name: "eventType"))
    SendDataIntegrationEventRequest.add_member(:data, Shapes::ShapeRef.new(shape: DataIntegrationEventData, required: true, location_name: "data"))
    SendDataIntegrationEventRequest.add_member(:event_group_id, Shapes::ShapeRef.new(shape: DataIntegrationEventGroupId, required: true, location_name: "eventGroupId"))
    SendDataIntegrationEventRequest.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, location_name: "eventTimestamp"))
    SendDataIntegrationEventRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    SendDataIntegrationEventRequest.struct_class = Types::SendDataIntegrationEventRequest

    SendDataIntegrationEventResponse.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "eventId"))
    SendDataIntegrationEventResponse.struct_class = Types::SendDataIntegrationEventResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AscResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AscResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDataIntegrationFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    UpdateDataIntegrationFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location: "uri", location_name: "name"))
    UpdateDataIntegrationFlowRequest.add_member(:sources, Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceList, location_name: "sources"))
    UpdateDataIntegrationFlowRequest.add_member(:transformation, Shapes::ShapeRef.new(shape: DataIntegrationFlowTransformation, location_name: "transformation"))
    UpdateDataIntegrationFlowRequest.add_member(:target, Shapes::ShapeRef.new(shape: DataIntegrationFlowTarget, location_name: "target"))
    UpdateDataIntegrationFlowRequest.struct_class = Types::UpdateDataIntegrationFlowRequest

    UpdateDataIntegrationFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: DataIntegrationFlow, required: true, location_name: "flow"))
    UpdateDataIntegrationFlowResponse.struct_class = Types::UpdateDataIntegrationFlowResponse

    UpdateDataLakeDatasetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    UpdateDataLakeDatasetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeDatasetNamespace, required: true, location: "uri", location_name: "namespace"))
    UpdateDataLakeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location: "uri", location_name: "name"))
    UpdateDataLakeDatasetRequest.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: "description"))
    UpdateDataLakeDatasetRequest.struct_class = Types::UpdateDataLakeDatasetRequest

    UpdateDataLakeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: DataLakeDataset, required: true, location_name: "dataset"))
    UpdateDataLakeDatasetResponse.struct_class = Types::UpdateDataLakeDatasetResponse

    UpdateInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    UpdateInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, location_name: "instanceName"))
    UpdateInstanceRequest.add_member(:instance_description, Shapes::ShapeRef.new(shape: InstanceDescription, location_name: "instanceDescription"))
    UpdateInstanceRequest.struct_class = Types::UpdateInstanceRequest

    UpdateInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, required: true, location_name: "instance"))
    UpdateInstanceResponse.struct_class = Types::UpdateInstanceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-01-01"

      api.metadata = {
        "apiVersion" => "2024-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "scn",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Supply Chain",
        "serviceId" => "SupplyChain",
        "signatureVersion" => "v4",
        "signingName" => "scn",
        "uid" => "supplychain-2024-01-01",
      }

      api.add_operation(:create_bill_of_materials_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBillOfMaterialsImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateBillOfMaterialsImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBillOfMaterialsImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_data_integration_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataIntegrationFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"
        o.input = Shapes::ShapeRef.new(shape: CreateDataIntegrationFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataIntegrationFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_data_lake_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataLakeDataset"
        o.http_method = "PUT"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"
        o.input = Shapes::ShapeRef.new(shape: CreateDataLakeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataLakeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstance"
        o.http_method = "POST"
        o.http_request_uri = "/api/instance"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_data_integration_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataIntegrationFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataIntegrationFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataIntegrationFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_data_lake_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataLakeDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataLakeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataLakeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/instance/{instanceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_bill_of_materials_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBillOfMaterialsImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetBillOfMaterialsImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBillOfMaterialsImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_data_integration_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataIntegrationFlow"
        o.http_method = "GET"
        o.http_request_uri = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetDataIntegrationFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataIntegrationFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_data_lake_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataLakeDataset"
        o.http_method = "GET"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetDataLakeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataLakeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstance"
        o.http_method = "GET"
        o.http_request_uri = "/api/instance/{instanceId}"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_data_integration_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataIntegrationFlows"
        o.http_method = "GET"
        o.http_request_uri = "/api/data-integration/instance/{instanceId}/data-integration-flows"
        o.input = Shapes::ShapeRef.new(shape: ListDataIntegrationFlowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataIntegrationFlowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_lake_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataLakeDatasets"
        o.http_method = "GET"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets"
        o.input = Shapes::ShapeRef.new(shape: ListDataLakeDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataLakeDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstances"
        o.http_method = "GET"
        o.http_request_uri = "/api/instance"
        o.input = Shapes::ShapeRef.new(shape: ListInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/api/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:send_data_integration_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendDataIntegrationEvent"
        o.http_method = "POST"
        o.http_request_uri = "/api-data/data-integration/instance/{instanceId}/data-integration-events"
        o.input = Shapes::ShapeRef.new(shape: SendDataIntegrationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: SendDataIntegrationEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/api/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_data_integration_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataIntegrationFlow"
        o.http_method = "PATCH"
        o.http_request_uri = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataIntegrationFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataIntegrationFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_data_lake_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataLakeDataset"
        o.http_method = "PATCH"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataLakeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataLakeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInstance"
        o.http_method = "PATCH"
        o.http_request_uri = "/api/instance/{instanceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
