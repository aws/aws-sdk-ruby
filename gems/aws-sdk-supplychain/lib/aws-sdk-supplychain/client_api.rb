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
    CreateDataLakeNamespaceRequest = Shapes::StructureShape.new(name: 'CreateDataLakeNamespaceRequest')
    CreateDataLakeNamespaceResponse = Shapes::StructureShape.new(name: 'CreateDataLakeNamespaceResponse')
    CreateInstanceRequest = Shapes::StructureShape.new(name: 'CreateInstanceRequest')
    CreateInstanceResponse = Shapes::StructureShape.new(name: 'CreateInstanceResponse')
    DataIntegrationDatasetArn = Shapes::StringShape.new(name: 'DataIntegrationDatasetArn')
    DataIntegrationEvent = Shapes::StructureShape.new(name: 'DataIntegrationEvent')
    DataIntegrationEventData = Shapes::StringShape.new(name: 'DataIntegrationEventData')
    DataIntegrationEventDatasetLoadExecutionDetails = Shapes::StructureShape.new(name: 'DataIntegrationEventDatasetLoadExecutionDetails')
    DataIntegrationEventDatasetLoadStatus = Shapes::StringShape.new(name: 'DataIntegrationEventDatasetLoadStatus')
    DataIntegrationEventDatasetOperationType = Shapes::StringShape.new(name: 'DataIntegrationEventDatasetOperationType')
    DataIntegrationEventDatasetTargetConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationEventDatasetTargetConfiguration')
    DataIntegrationEventDatasetTargetDetails = Shapes::StructureShape.new(name: 'DataIntegrationEventDatasetTargetDetails')
    DataIntegrationEventGroupId = Shapes::StringShape.new(name: 'DataIntegrationEventGroupId')
    DataIntegrationEventList = Shapes::ListShape.new(name: 'DataIntegrationEventList')
    DataIntegrationEventMaxResults = Shapes::IntegerShape.new(name: 'DataIntegrationEventMaxResults')
    DataIntegrationEventNextToken = Shapes::StringShape.new(name: 'DataIntegrationEventNextToken')
    DataIntegrationEventType = Shapes::StringShape.new(name: 'DataIntegrationEventType')
    DataIntegrationFlow = Shapes::StructureShape.new(name: 'DataIntegrationFlow')
    DataIntegrationFlowDatasetOptions = Shapes::StructureShape.new(name: 'DataIntegrationFlowDatasetOptions')
    DataIntegrationFlowDatasetSource = Shapes::StructureShape.new(name: 'DataIntegrationFlowDatasetSource')
    DataIntegrationFlowDatasetSourceConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationFlowDatasetSourceConfiguration')
    DataIntegrationFlowDatasetTargetConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationFlowDatasetTargetConfiguration')
    DataIntegrationFlowDedupeStrategy = Shapes::StructureShape.new(name: 'DataIntegrationFlowDedupeStrategy')
    DataIntegrationFlowDedupeStrategyType = Shapes::StringShape.new(name: 'DataIntegrationFlowDedupeStrategyType')
    DataIntegrationFlowExecution = Shapes::StructureShape.new(name: 'DataIntegrationFlowExecution')
    DataIntegrationFlowExecutionDiagnosticReportsRootS3URI = Shapes::StringShape.new(name: 'DataIntegrationFlowExecutionDiagnosticReportsRootS3URI')
    DataIntegrationFlowExecutionList = Shapes::ListShape.new(name: 'DataIntegrationFlowExecutionList')
    DataIntegrationFlowExecutionMaxResults = Shapes::IntegerShape.new(name: 'DataIntegrationFlowExecutionMaxResults')
    DataIntegrationFlowExecutionNextToken = Shapes::StringShape.new(name: 'DataIntegrationFlowExecutionNextToken')
    DataIntegrationFlowExecutionOutputMetadata = Shapes::StructureShape.new(name: 'DataIntegrationFlowExecutionOutputMetadata')
    DataIntegrationFlowExecutionSourceInfo = Shapes::StructureShape.new(name: 'DataIntegrationFlowExecutionSourceInfo')
    DataIntegrationFlowExecutionStatus = Shapes::StringShape.new(name: 'DataIntegrationFlowExecutionStatus')
    DataIntegrationFlowFieldPriorityDedupeField = Shapes::StructureShape.new(name: 'DataIntegrationFlowFieldPriorityDedupeField')
    DataIntegrationFlowFieldPriorityDedupeFieldList = Shapes::ListShape.new(name: 'DataIntegrationFlowFieldPriorityDedupeFieldList')
    DataIntegrationFlowFieldPriorityDedupeFieldName = Shapes::StringShape.new(name: 'DataIntegrationFlowFieldPriorityDedupeFieldName')
    DataIntegrationFlowFieldPriorityDedupeSortOrder = Shapes::StringShape.new(name: 'DataIntegrationFlowFieldPriorityDedupeSortOrder')
    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration = Shapes::StructureShape.new(name: 'DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration')
    DataIntegrationFlowFileType = Shapes::StringShape.new(name: 'DataIntegrationFlowFileType')
    DataIntegrationFlowList = Shapes::ListShape.new(name: 'DataIntegrationFlowList')
    DataIntegrationFlowLoadType = Shapes::StringShape.new(name: 'DataIntegrationFlowLoadType')
    DataIntegrationFlowMaxResults = Shapes::IntegerShape.new(name: 'DataIntegrationFlowMaxResults')
    DataIntegrationFlowName = Shapes::StringShape.new(name: 'DataIntegrationFlowName')
    DataIntegrationFlowNextToken = Shapes::StringShape.new(name: 'DataIntegrationFlowNextToken')
    DataIntegrationFlowS3Options = Shapes::StructureShape.new(name: 'DataIntegrationFlowS3Options')
    DataIntegrationFlowS3Prefix = Shapes::StringShape.new(name: 'DataIntegrationFlowS3Prefix')
    DataIntegrationFlowS3Source = Shapes::StructureShape.new(name: 'DataIntegrationFlowS3Source')
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
    DataIntegrationS3ObjectKey = Shapes::StringShape.new(name: 'DataIntegrationS3ObjectKey')
    DataLakeDataset = Shapes::StructureShape.new(name: 'DataLakeDataset')
    DataLakeDatasetDescription = Shapes::StringShape.new(name: 'DataLakeDatasetDescription')
    DataLakeDatasetList = Shapes::ListShape.new(name: 'DataLakeDatasetList')
    DataLakeDatasetMaxResults = Shapes::IntegerShape.new(name: 'DataLakeDatasetMaxResults')
    DataLakeDatasetName = Shapes::StringShape.new(name: 'DataLakeDatasetName')
    DataLakeDatasetNextToken = Shapes::StringShape.new(name: 'DataLakeDatasetNextToken')
    DataLakeDatasetPartitionField = Shapes::StructureShape.new(name: 'DataLakeDatasetPartitionField')
    DataLakeDatasetPartitionFieldList = Shapes::ListShape.new(name: 'DataLakeDatasetPartitionFieldList')
    DataLakeDatasetPartitionFieldTransform = Shapes::StructureShape.new(name: 'DataLakeDatasetPartitionFieldTransform')
    DataLakeDatasetPartitionSpec = Shapes::StructureShape.new(name: 'DataLakeDatasetPartitionSpec')
    DataLakeDatasetPartitionTransformType = Shapes::StringShape.new(name: 'DataLakeDatasetPartitionTransformType')
    DataLakeDatasetPrimaryKeyField = Shapes::StructureShape.new(name: 'DataLakeDatasetPrimaryKeyField')
    DataLakeDatasetPrimaryKeyFieldList = Shapes::ListShape.new(name: 'DataLakeDatasetPrimaryKeyFieldList')
    DataLakeDatasetSchema = Shapes::StructureShape.new(name: 'DataLakeDatasetSchema')
    DataLakeDatasetSchemaField = Shapes::StructureShape.new(name: 'DataLakeDatasetSchemaField')
    DataLakeDatasetSchemaFieldList = Shapes::ListShape.new(name: 'DataLakeDatasetSchemaFieldList')
    DataLakeDatasetSchemaFieldName = Shapes::StringShape.new(name: 'DataLakeDatasetSchemaFieldName')
    DataLakeDatasetSchemaFieldType = Shapes::StringShape.new(name: 'DataLakeDatasetSchemaFieldType')
    DataLakeDatasetSchemaName = Shapes::StringShape.new(name: 'DataLakeDatasetSchemaName')
    DataLakeNamespace = Shapes::StructureShape.new(name: 'DataLakeNamespace')
    DataLakeNamespaceDescription = Shapes::StringShape.new(name: 'DataLakeNamespaceDescription')
    DataLakeNamespaceList = Shapes::ListShape.new(name: 'DataLakeNamespaceList')
    DataLakeNamespaceMaxResults = Shapes::IntegerShape.new(name: 'DataLakeNamespaceMaxResults')
    DataLakeNamespaceName = Shapes::StringShape.new(name: 'DataLakeNamespaceName')
    DataLakeNamespaceNextToken = Shapes::StringShape.new(name: 'DataLakeNamespaceNextToken')
    DatasetIdentifier = Shapes::StringShape.new(name: 'DatasetIdentifier')
    DeleteDataIntegrationFlowRequest = Shapes::StructureShape.new(name: 'DeleteDataIntegrationFlowRequest')
    DeleteDataIntegrationFlowResponse = Shapes::StructureShape.new(name: 'DeleteDataIntegrationFlowResponse')
    DeleteDataLakeDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDataLakeDatasetRequest')
    DeleteDataLakeDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDataLakeDatasetResponse')
    DeleteDataLakeNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteDataLakeNamespaceRequest')
    DeleteDataLakeNamespaceResponse = Shapes::StructureShape.new(name: 'DeleteDataLakeNamespaceResponse')
    DeleteInstanceRequest = Shapes::StructureShape.new(name: 'DeleteInstanceRequest')
    DeleteInstanceResponse = Shapes::StructureShape.new(name: 'DeleteInstanceResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    GetBillOfMaterialsImportJobRequest = Shapes::StructureShape.new(name: 'GetBillOfMaterialsImportJobRequest')
    GetBillOfMaterialsImportJobResponse = Shapes::StructureShape.new(name: 'GetBillOfMaterialsImportJobResponse')
    GetDataIntegrationEventRequest = Shapes::StructureShape.new(name: 'GetDataIntegrationEventRequest')
    GetDataIntegrationEventResponse = Shapes::StructureShape.new(name: 'GetDataIntegrationEventResponse')
    GetDataIntegrationFlowExecutionRequest = Shapes::StructureShape.new(name: 'GetDataIntegrationFlowExecutionRequest')
    GetDataIntegrationFlowExecutionResponse = Shapes::StructureShape.new(name: 'GetDataIntegrationFlowExecutionResponse')
    GetDataIntegrationFlowRequest = Shapes::StructureShape.new(name: 'GetDataIntegrationFlowRequest')
    GetDataIntegrationFlowResponse = Shapes::StructureShape.new(name: 'GetDataIntegrationFlowResponse')
    GetDataLakeDatasetRequest = Shapes::StructureShape.new(name: 'GetDataLakeDatasetRequest')
    GetDataLakeDatasetResponse = Shapes::StructureShape.new(name: 'GetDataLakeDatasetResponse')
    GetDataLakeNamespaceRequest = Shapes::StructureShape.new(name: 'GetDataLakeNamespaceRequest')
    GetDataLakeNamespaceResponse = Shapes::StructureShape.new(name: 'GetDataLakeNamespaceResponse')
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
    ListDataIntegrationEventsRequest = Shapes::StructureShape.new(name: 'ListDataIntegrationEventsRequest')
    ListDataIntegrationEventsResponse = Shapes::StructureShape.new(name: 'ListDataIntegrationEventsResponse')
    ListDataIntegrationFlowExecutionsRequest = Shapes::StructureShape.new(name: 'ListDataIntegrationFlowExecutionsRequest')
    ListDataIntegrationFlowExecutionsResponse = Shapes::StructureShape.new(name: 'ListDataIntegrationFlowExecutionsResponse')
    ListDataIntegrationFlowsRequest = Shapes::StructureShape.new(name: 'ListDataIntegrationFlowsRequest')
    ListDataIntegrationFlowsResponse = Shapes::StructureShape.new(name: 'ListDataIntegrationFlowsResponse')
    ListDataLakeDatasetsRequest = Shapes::StructureShape.new(name: 'ListDataLakeDatasetsRequest')
    ListDataLakeDatasetsResponse = Shapes::StructureShape.new(name: 'ListDataLakeDatasetsResponse')
    ListDataLakeNamespacesRequest = Shapes::StructureShape.new(name: 'ListDataLakeNamespacesRequest')
    ListDataLakeNamespacesResponse = Shapes::StructureShape.new(name: 'ListDataLakeNamespacesResponse')
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
    UpdateDataLakeNamespaceRequest = Shapes::StructureShape.new(name: 'UpdateDataLakeNamespaceRequest')
    UpdateDataLakeNamespaceResponse = Shapes::StructureShape.new(name: 'UpdateDataLakeNamespaceResponse')
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
    CreateBillOfMaterialsImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
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
    CreateDataLakeDatasetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "namespace"))
    CreateDataLakeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location: "uri", location_name: "name"))
    CreateDataLakeDatasetRequest.add_member(:schema, Shapes::ShapeRef.new(shape: DataLakeDatasetSchema, location_name: "schema"))
    CreateDataLakeDatasetRequest.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: "description"))
    CreateDataLakeDatasetRequest.add_member(:partition_spec, Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionSpec, location_name: "partitionSpec"))
    CreateDataLakeDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDataLakeDatasetRequest.struct_class = Types::CreateDataLakeDatasetRequest

    CreateDataLakeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: DataLakeDataset, required: true, location_name: "dataset"))
    CreateDataLakeDatasetResponse.struct_class = Types::CreateDataLakeDatasetResponse

    CreateDataLakeNamespaceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    CreateDataLakeNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "name"))
    CreateDataLakeNamespaceRequest.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeNamespaceDescription, location_name: "description"))
    CreateDataLakeNamespaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDataLakeNamespaceRequest.struct_class = Types::CreateDataLakeNamespaceRequest

    CreateDataLakeNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespace, required: true, location_name: "namespace"))
    CreateDataLakeNamespaceResponse.struct_class = Types::CreateDataLakeNamespaceResponse

    CreateInstanceRequest.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, location_name: "instanceName"))
    CreateInstanceRequest.add_member(:instance_description, Shapes::ShapeRef.new(shape: InstanceDescription, location_name: "instanceDescription"))
    CreateInstanceRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateInstanceRequest.add_member(:web_app_dns_domain, Shapes::ShapeRef.new(shape: InstanceWebAppDnsDomain, location_name: "webAppDnsDomain"))
    CreateInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateInstanceRequest.struct_class = Types::CreateInstanceRequest

    CreateInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, required: true, location_name: "instance"))
    CreateInstanceResponse.struct_class = Types::CreateInstanceResponse

    DataIntegrationEvent.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DataIntegrationEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "eventId"))
    DataIntegrationEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: DataIntegrationEventType, required: true, location_name: "eventType"))
    DataIntegrationEvent.add_member(:event_group_id, Shapes::ShapeRef.new(shape: DataIntegrationEventGroupId, required: true, location_name: "eventGroupId"))
    DataIntegrationEvent.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTimestamp"))
    DataIntegrationEvent.add_member(:dataset_target_details, Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetTargetDetails, location_name: "datasetTargetDetails"))
    DataIntegrationEvent.struct_class = Types::DataIntegrationEvent

    DataIntegrationEventDatasetLoadExecutionDetails.add_member(:status, Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetLoadStatus, required: true, location_name: "status"))
    DataIntegrationEventDatasetLoadExecutionDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DataIntegrationEventDatasetLoadExecutionDetails.struct_class = Types::DataIntegrationEventDatasetLoadExecutionDetails

    DataIntegrationEventDatasetTargetConfiguration.add_member(:dataset_identifier, Shapes::ShapeRef.new(shape: DataIntegrationDatasetArn, required: true, location_name: "datasetIdentifier"))
    DataIntegrationEventDatasetTargetConfiguration.add_member(:operation_type, Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetOperationType, required: true, location_name: "operationType"))
    DataIntegrationEventDatasetTargetConfiguration.struct_class = Types::DataIntegrationEventDatasetTargetConfiguration

    DataIntegrationEventDatasetTargetDetails.add_member(:dataset_identifier, Shapes::ShapeRef.new(shape: DataIntegrationDatasetArn, required: true, location_name: "datasetIdentifier"))
    DataIntegrationEventDatasetTargetDetails.add_member(:operation_type, Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetOperationType, required: true, location_name: "operationType"))
    DataIntegrationEventDatasetTargetDetails.add_member(:dataset_load_execution, Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetLoadExecutionDetails, required: true, location_name: "datasetLoadExecution"))
    DataIntegrationEventDatasetTargetDetails.struct_class = Types::DataIntegrationEventDatasetTargetDetails

    DataIntegrationEventList.member = Shapes::ShapeRef.new(shape: DataIntegrationEvent)

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
    DataIntegrationFlowDatasetOptions.add_member(:dedupe_strategy, Shapes::ShapeRef.new(shape: DataIntegrationFlowDedupeStrategy, location_name: "dedupeStrategy"))
    DataIntegrationFlowDatasetOptions.struct_class = Types::DataIntegrationFlowDatasetOptions

    DataIntegrationFlowDatasetSource.add_member(:dataset_identifier, Shapes::ShapeRef.new(shape: DataIntegrationDatasetArn, required: true, location_name: "datasetIdentifier"))
    DataIntegrationFlowDatasetSource.struct_class = Types::DataIntegrationFlowDatasetSource

    DataIntegrationFlowDatasetSourceConfiguration.add_member(:dataset_identifier, Shapes::ShapeRef.new(shape: DatasetIdentifier, required: true, location_name: "datasetIdentifier"))
    DataIntegrationFlowDatasetSourceConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetOptions, location_name: "options"))
    DataIntegrationFlowDatasetSourceConfiguration.struct_class = Types::DataIntegrationFlowDatasetSourceConfiguration

    DataIntegrationFlowDatasetTargetConfiguration.add_member(:dataset_identifier, Shapes::ShapeRef.new(shape: DatasetIdentifier, required: true, location_name: "datasetIdentifier"))
    DataIntegrationFlowDatasetTargetConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetOptions, location_name: "options"))
    DataIntegrationFlowDatasetTargetConfiguration.struct_class = Types::DataIntegrationFlowDatasetTargetConfiguration

    DataIntegrationFlowDedupeStrategy.add_member(:type, Shapes::ShapeRef.new(shape: DataIntegrationFlowDedupeStrategyType, required: true, location_name: "type"))
    DataIntegrationFlowDedupeStrategy.add_member(:field_priority, Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration, location_name: "fieldPriority"))
    DataIntegrationFlowDedupeStrategy.struct_class = Types::DataIntegrationFlowDedupeStrategy

    DataIntegrationFlowExecution.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DataIntegrationFlowExecution.add_member(:flow_name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location_name: "flowName"))
    DataIntegrationFlowExecution.add_member(:execution_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "executionId"))
    DataIntegrationFlowExecution.add_member(:status, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionStatus, location_name: "status"))
    DataIntegrationFlowExecution.add_member(:source_info, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionSourceInfo, location_name: "sourceInfo"))
    DataIntegrationFlowExecution.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DataIntegrationFlowExecution.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    DataIntegrationFlowExecution.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    DataIntegrationFlowExecution.add_member(:output_metadata, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionOutputMetadata, location_name: "outputMetadata"))
    DataIntegrationFlowExecution.struct_class = Types::DataIntegrationFlowExecution

    DataIntegrationFlowExecutionList.member = Shapes::ShapeRef.new(shape: DataIntegrationFlowExecution)

    DataIntegrationFlowExecutionOutputMetadata.add_member(:diagnostic_reports_root_s3uri, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionDiagnosticReportsRootS3URI, location_name: "diagnosticReportsRootS3URI"))
    DataIntegrationFlowExecutionOutputMetadata.struct_class = Types::DataIntegrationFlowExecutionOutputMetadata

    DataIntegrationFlowExecutionSourceInfo.add_member(:source_type, Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceType, required: true, location_name: "sourceType"))
    DataIntegrationFlowExecutionSourceInfo.add_member(:s3_source, Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Source, location_name: "s3Source"))
    DataIntegrationFlowExecutionSourceInfo.add_member(:dataset_source, Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetSource, location_name: "datasetSource"))
    DataIntegrationFlowExecutionSourceInfo.struct_class = Types::DataIntegrationFlowExecutionSourceInfo

    DataIntegrationFlowFieldPriorityDedupeField.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeFieldName, required: true, location_name: "name"))
    DataIntegrationFlowFieldPriorityDedupeField.add_member(:sort_order, Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeSortOrder, required: true, location_name: "sortOrder"))
    DataIntegrationFlowFieldPriorityDedupeField.struct_class = Types::DataIntegrationFlowFieldPriorityDedupeField

    DataIntegrationFlowFieldPriorityDedupeFieldList.member = Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeField)

    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration.add_member(:fields, Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeFieldList, required: true, location_name: "fields"))
    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration.struct_class = Types::DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration

    DataIntegrationFlowList.member = Shapes::ShapeRef.new(shape: DataIntegrationFlow)

    DataIntegrationFlowS3Options.add_member(:file_type, Shapes::ShapeRef.new(shape: DataIntegrationFlowFileType, location_name: "fileType"))
    DataIntegrationFlowS3Options.struct_class = Types::DataIntegrationFlowS3Options

    DataIntegrationFlowS3Source.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    DataIntegrationFlowS3Source.add_member(:key, Shapes::ShapeRef.new(shape: DataIntegrationS3ObjectKey, required: true, location_name: "key"))
    DataIntegrationFlowS3Source.struct_class = Types::DataIntegrationFlowS3Source

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
    DataLakeDataset.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location_name: "namespace"))
    DataLakeDataset.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location_name: "name"))
    DataLakeDataset.add_member(:arn, Shapes::ShapeRef.new(shape: AscResourceArn, required: true, location_name: "arn"))
    DataLakeDataset.add_member(:schema, Shapes::ShapeRef.new(shape: DataLakeDatasetSchema, required: true, location_name: "schema"))
    DataLakeDataset.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: "description"))
    DataLakeDataset.add_member(:partition_spec, Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionSpec, location_name: "partitionSpec"))
    DataLakeDataset.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    DataLakeDataset.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    DataLakeDataset.struct_class = Types::DataLakeDataset

    DataLakeDatasetList.member = Shapes::ShapeRef.new(shape: DataLakeDataset)

    DataLakeDatasetPartitionField.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldName, required: true, location_name: "name"))
    DataLakeDatasetPartitionField.add_member(:transform, Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionFieldTransform, required: true, location_name: "transform"))
    DataLakeDatasetPartitionField.struct_class = Types::DataLakeDatasetPartitionField

    DataLakeDatasetPartitionFieldList.member = Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionField)

    DataLakeDatasetPartitionFieldTransform.add_member(:type, Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionTransformType, required: true, location_name: "type"))
    DataLakeDatasetPartitionFieldTransform.struct_class = Types::DataLakeDatasetPartitionFieldTransform

    DataLakeDatasetPartitionSpec.add_member(:fields, Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionFieldList, required: true, location_name: "fields"))
    DataLakeDatasetPartitionSpec.struct_class = Types::DataLakeDatasetPartitionSpec

    DataLakeDatasetPrimaryKeyField.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldName, required: true, location_name: "name"))
    DataLakeDatasetPrimaryKeyField.struct_class = Types::DataLakeDatasetPrimaryKeyField

    DataLakeDatasetPrimaryKeyFieldList.member = Shapes::ShapeRef.new(shape: DataLakeDatasetPrimaryKeyField)

    DataLakeDatasetSchema.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaName, required: true, location_name: "name"))
    DataLakeDatasetSchema.add_member(:fields, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldList, required: true, location_name: "fields"))
    DataLakeDatasetSchema.add_member(:primary_keys, Shapes::ShapeRef.new(shape: DataLakeDatasetPrimaryKeyFieldList, location_name: "primaryKeys"))
    DataLakeDatasetSchema.struct_class = Types::DataLakeDatasetSchema

    DataLakeDatasetSchemaField.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldName, required: true, location_name: "name"))
    DataLakeDatasetSchemaField.add_member(:type, Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldType, required: true, location_name: "type"))
    DataLakeDatasetSchemaField.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isRequired"))
    DataLakeDatasetSchemaField.struct_class = Types::DataLakeDatasetSchemaField

    DataLakeDatasetSchemaFieldList.member = Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaField)

    DataLakeNamespace.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DataLakeNamespace.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location_name: "name"))
    DataLakeNamespace.add_member(:arn, Shapes::ShapeRef.new(shape: AscResourceArn, required: true, location_name: "arn"))
    DataLakeNamespace.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeNamespaceDescription, location_name: "description"))
    DataLakeNamespace.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    DataLakeNamespace.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    DataLakeNamespace.struct_class = Types::DataLakeNamespace

    DataLakeNamespaceList.member = Shapes::ShapeRef.new(shape: DataLakeNamespace)

    DeleteDataIntegrationFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    DeleteDataIntegrationFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location: "uri", location_name: "name"))
    DeleteDataIntegrationFlowRequest.struct_class = Types::DeleteDataIntegrationFlowRequest

    DeleteDataIntegrationFlowResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DeleteDataIntegrationFlowResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location_name: "name"))
    DeleteDataIntegrationFlowResponse.struct_class = Types::DeleteDataIntegrationFlowResponse

    DeleteDataLakeDatasetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    DeleteDataLakeDatasetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "namespace"))
    DeleteDataLakeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location: "uri", location_name: "name"))
    DeleteDataLakeDatasetRequest.struct_class = Types::DeleteDataLakeDatasetRequest

    DeleteDataLakeDatasetResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DeleteDataLakeDatasetResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location_name: "namespace"))
    DeleteDataLakeDatasetResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location_name: "name"))
    DeleteDataLakeDatasetResponse.struct_class = Types::DeleteDataLakeDatasetResponse

    DeleteDataLakeNamespaceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    DeleteDataLakeNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "name"))
    DeleteDataLakeNamespaceRequest.struct_class = Types::DeleteDataLakeNamespaceRequest

    DeleteDataLakeNamespaceResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    DeleteDataLakeNamespaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location_name: "name"))
    DeleteDataLakeNamespaceResponse.struct_class = Types::DeleteDataLakeNamespaceResponse

    DeleteInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    DeleteInstanceRequest.struct_class = Types::DeleteInstanceRequest

    DeleteInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, required: true, location_name: "instance"))
    DeleteInstanceResponse.struct_class = Types::DeleteInstanceResponse

    GetBillOfMaterialsImportJobRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetBillOfMaterialsImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "jobId"))
    GetBillOfMaterialsImportJobRequest.struct_class = Types::GetBillOfMaterialsImportJobRequest

    GetBillOfMaterialsImportJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: BillOfMaterialsImportJob, required: true, location_name: "job"))
    GetBillOfMaterialsImportJobResponse.struct_class = Types::GetBillOfMaterialsImportJobResponse

    GetDataIntegrationEventRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetDataIntegrationEventRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "eventId"))
    GetDataIntegrationEventRequest.struct_class = Types::GetDataIntegrationEventRequest

    GetDataIntegrationEventResponse.add_member(:event, Shapes::ShapeRef.new(shape: DataIntegrationEvent, required: true, location_name: "event"))
    GetDataIntegrationEventResponse.struct_class = Types::GetDataIntegrationEventResponse

    GetDataIntegrationFlowExecutionRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetDataIntegrationFlowExecutionRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location: "uri", location_name: "flowName"))
    GetDataIntegrationFlowExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "executionId"))
    GetDataIntegrationFlowExecutionRequest.struct_class = Types::GetDataIntegrationFlowExecutionRequest

    GetDataIntegrationFlowExecutionResponse.add_member(:flow_execution, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecution, required: true, location_name: "flowExecution"))
    GetDataIntegrationFlowExecutionResponse.struct_class = Types::GetDataIntegrationFlowExecutionResponse

    GetDataIntegrationFlowRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetDataIntegrationFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location: "uri", location_name: "name"))
    GetDataIntegrationFlowRequest.struct_class = Types::GetDataIntegrationFlowRequest

    GetDataIntegrationFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: DataIntegrationFlow, required: true, location_name: "flow"))
    GetDataIntegrationFlowResponse.struct_class = Types::GetDataIntegrationFlowResponse

    GetDataLakeDatasetRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetDataLakeDatasetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "namespace"))
    GetDataLakeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location: "uri", location_name: "name"))
    GetDataLakeDatasetRequest.struct_class = Types::GetDataLakeDatasetRequest

    GetDataLakeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: DataLakeDataset, required: true, location_name: "dataset"))
    GetDataLakeDatasetResponse.struct_class = Types::GetDataLakeDatasetResponse

    GetDataLakeNamespaceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetDataLakeNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "name"))
    GetDataLakeNamespaceRequest.struct_class = Types::GetDataLakeNamespaceRequest

    GetDataLakeNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespace, required: true, location_name: "namespace"))
    GetDataLakeNamespaceResponse.struct_class = Types::GetDataLakeNamespaceResponse

    GetInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    GetInstanceRequest.struct_class = Types::GetInstanceRequest

    GetInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, required: true, location_name: "instance"))
    GetInstanceResponse.struct_class = Types::GetInstanceResponse

    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "instanceId"))
    Instance.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "awsAccountId"))
    Instance.add_member(:state, Shapes::ShapeRef.new(shape: InstanceState, required: true, location_name: "state"))
    Instance.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
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

    ListDataIntegrationEventsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    ListDataIntegrationEventsRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: DataIntegrationEventType, location: "querystring", location_name: "eventType"))
    ListDataIntegrationEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataIntegrationEventNextToken, location: "querystring", location_name: "nextToken"))
    ListDataIntegrationEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DataIntegrationEventMaxResults, location: "querystring", location_name: "maxResults"))
    ListDataIntegrationEventsRequest.struct_class = Types::ListDataIntegrationEventsRequest

    ListDataIntegrationEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: DataIntegrationEventList, required: true, location_name: "events"))
    ListDataIntegrationEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataIntegrationEventNextToken, location_name: "nextToken"))
    ListDataIntegrationEventsResponse.struct_class = Types::ListDataIntegrationEventsResponse

    ListDataIntegrationFlowExecutionsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    ListDataIntegrationFlowExecutionsRequest.add_member(:flow_name, Shapes::ShapeRef.new(shape: DataIntegrationFlowName, required: true, location: "uri", location_name: "flowName"))
    ListDataIntegrationFlowExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionNextToken, location: "querystring", location_name: "nextToken"))
    ListDataIntegrationFlowExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionMaxResults, location: "querystring", location_name: "maxResults"))
    ListDataIntegrationFlowExecutionsRequest.struct_class = Types::ListDataIntegrationFlowExecutionsRequest

    ListDataIntegrationFlowExecutionsResponse.add_member(:flow_executions, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionList, required: true, location_name: "flowExecutions"))
    ListDataIntegrationFlowExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionNextToken, location_name: "nextToken"))
    ListDataIntegrationFlowExecutionsResponse.struct_class = Types::ListDataIntegrationFlowExecutionsResponse

    ListDataIntegrationFlowsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    ListDataIntegrationFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataIntegrationFlowNextToken, location: "querystring", location_name: "nextToken"))
    ListDataIntegrationFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DataIntegrationFlowMaxResults, location: "querystring", location_name: "maxResults"))
    ListDataIntegrationFlowsRequest.struct_class = Types::ListDataIntegrationFlowsRequest

    ListDataIntegrationFlowsResponse.add_member(:flows, Shapes::ShapeRef.new(shape: DataIntegrationFlowList, required: true, location_name: "flows"))
    ListDataIntegrationFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataIntegrationFlowNextToken, location_name: "nextToken"))
    ListDataIntegrationFlowsResponse.struct_class = Types::ListDataIntegrationFlowsResponse

    ListDataLakeDatasetsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    ListDataLakeDatasetsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "namespace"))
    ListDataLakeDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataLakeDatasetNextToken, location: "querystring", location_name: "nextToken"))
    ListDataLakeDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DataLakeDatasetMaxResults, location: "querystring", location_name: "maxResults"))
    ListDataLakeDatasetsRequest.struct_class = Types::ListDataLakeDatasetsRequest

    ListDataLakeDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: DataLakeDatasetList, required: true, location_name: "datasets"))
    ListDataLakeDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataLakeDatasetNextToken, location_name: "nextToken"))
    ListDataLakeDatasetsResponse.struct_class = Types::ListDataLakeDatasetsResponse

    ListDataLakeNamespacesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    ListDataLakeNamespacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DataLakeNamespaceNextToken, location: "querystring", location_name: "nextToken"))
    ListDataLakeNamespacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DataLakeNamespaceMaxResults, location: "querystring", location_name: "maxResults"))
    ListDataLakeNamespacesRequest.struct_class = Types::ListDataLakeNamespacesRequest

    ListDataLakeNamespacesResponse.add_member(:namespaces, Shapes::ShapeRef.new(shape: DataLakeNamespaceList, required: true, location_name: "namespaces"))
    ListDataLakeNamespacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DataLakeNamespaceNextToken, location_name: "nextToken"))
    ListDataLakeNamespacesResponse.struct_class = Types::ListDataLakeNamespacesResponse

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
    SendDataIntegrationEventRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    SendDataIntegrationEventRequest.add_member(:dataset_target, Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetTargetConfiguration, location_name: "datasetTarget"))
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
    UpdateDataLakeDatasetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "namespace"))
    UpdateDataLakeDatasetRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeDatasetName, required: true, location: "uri", location_name: "name"))
    UpdateDataLakeDatasetRequest.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: "description"))
    UpdateDataLakeDatasetRequest.struct_class = Types::UpdateDataLakeDatasetRequest

    UpdateDataLakeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: DataLakeDataset, required: true, location_name: "dataset"))
    UpdateDataLakeDatasetResponse.struct_class = Types::UpdateDataLakeDatasetResponse

    UpdateDataLakeNamespaceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "instanceId"))
    UpdateDataLakeNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataLakeNamespaceName, required: true, location: "uri", location_name: "name"))
    UpdateDataLakeNamespaceRequest.add_member(:description, Shapes::ShapeRef.new(shape: DataLakeNamespaceDescription, location_name: "description"))
    UpdateDataLakeNamespaceRequest.struct_class = Types::UpdateDataLakeNamespaceRequest

    UpdateDataLakeNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: DataLakeNamespace, required: true, location_name: "namespace"))
    UpdateDataLakeNamespaceResponse.struct_class = Types::UpdateDataLakeNamespaceResponse

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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_data_lake_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataLakeNamespace"
        o.http_method = "PUT"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: CreateDataLakeNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataLakeNamespaceResponse)
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

      api.add_operation(:delete_data_lake_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataLakeNamespace"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataLakeNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataLakeNamespaceResponse)
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

      api.add_operation(:get_data_integration_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataIntegrationEvent"
        o.http_method = "GET"
        o.http_request_uri = "/api-data/data-integration/instance/{instanceId}/data-integration-events/{eventId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataIntegrationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataIntegrationEventResponse)
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

      api.add_operation(:get_data_integration_flow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataIntegrationFlowExecution"
        o.http_method = "GET"
        o.http_request_uri = "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions/{executionId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataIntegrationFlowExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataIntegrationFlowExecutionResponse)
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

      api.add_operation(:get_data_lake_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataLakeNamespace"
        o.http_method = "GET"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetDataLakeNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataLakeNamespaceResponse)
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

      api.add_operation(:list_data_integration_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataIntegrationEvents"
        o.http_method = "GET"
        o.http_request_uri = "/api-data/data-integration/instance/{instanceId}/data-integration-events"
        o.input = Shapes::ShapeRef.new(shape: ListDataIntegrationEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataIntegrationEventsResponse)
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

      api.add_operation(:list_data_integration_flow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataIntegrationFlowExecutions"
        o.http_method = "GET"
        o.http_request_uri = "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions"
        o.input = Shapes::ShapeRef.new(shape: ListDataIntegrationFlowExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataIntegrationFlowExecutionsResponse)
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

      api.add_operation(:list_data_lake_namespaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataLakeNamespaces"
        o.http_method = "GET"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces"
        o.input = Shapes::ShapeRef.new(shape: ListDataLakeNamespacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataLakeNamespacesResponse)
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

      api.add_operation(:update_data_lake_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataLakeNamespace"
        o.http_method = "PATCH"
        o.http_request_uri = "/api/datalake/instance/{instanceId}/namespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataLakeNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataLakeNamespaceResponse)
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
