# frozen_string_literal: true

# This is generated code!

module Aws::SupplyChain
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AscResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#AscResourceArn", name: "AscResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:scn(?::([a-z0-9-]+):([0-9]+):instance)?/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})[-_./A-Za-z0-9]*$"})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    BillOfMaterialsImportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#BillOfMaterialsImportJob", name: "BillOfMaterialsImportJob")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 33, "max" => 126}})
    ConfigurationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#ConfigurationJobStatus", name: "ConfigurationJobStatus")
    ConfigurationS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#ConfigurationS3Uri", name: "ConfigurationS3Uri", traits: {"smithy.api#length" => {"min" => 10}, "smithy.api#pattern" => "^[sS]3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBillOfMaterialsImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateBillOfMaterialsImportJobRequest", name: "CreateBillOfMaterialsImportJobRequest")
    CreateBillOfMaterialsImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateBillOfMaterialsImportJobResponse", name: "CreateBillOfMaterialsImportJobResponse")
    CreateDataIntegrationFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateDataIntegrationFlowRequest", name: "CreateDataIntegrationFlowRequest")
    CreateDataIntegrationFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateDataIntegrationFlowResponse", name: "CreateDataIntegrationFlowResponse")
    CreateDataLakeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateDataLakeDatasetRequest", name: "CreateDataLakeDatasetRequest")
    CreateDataLakeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateDataLakeDatasetResponse", name: "CreateDataLakeDatasetResponse")
    CreateDataLakeNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateDataLakeNamespaceRequest", name: "CreateDataLakeNamespaceRequest")
    CreateDataLakeNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateDataLakeNamespaceResponse", name: "CreateDataLakeNamespaceResponse")
    CreateInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateInstanceRequest", name: "CreateInstanceRequest")
    CreateInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#CreateInstanceResponse", name: "CreateInstanceResponse")
    DataIntegrationDatasetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationDatasetArn", name: "DataIntegrationDatasetArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:scn:([a-z0-9-]+):([0-9]+):instance/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/namespaces/[^/]+/datasets/[^/]+$"})
    DataIntegrationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationEvent", name: "DataIntegrationEvent")
    DataIntegrationEventData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventData", name: "DataIntegrationEventData", traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}, "smithy.api#sensitive" => {}})
    DataIntegrationEventDatasetLoadExecutionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventDatasetLoadExecutionDetails", name: "DataIntegrationEventDatasetLoadExecutionDetails")
    DataIntegrationEventDatasetLoadStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventDatasetLoadStatus", name: "DataIntegrationEventDatasetLoadStatus")
    DataIntegrationEventDatasetOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventDatasetOperationType", name: "DataIntegrationEventDatasetOperationType")
    DataIntegrationEventDatasetTargetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventDatasetTargetConfiguration", name: "DataIntegrationEventDatasetTargetConfiguration")
    DataIntegrationEventDatasetTargetDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventDatasetTargetDetails", name: "DataIntegrationEventDatasetTargetDetails")
    DataIntegrationEventGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventGroupId", name: "DataIntegrationEventGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DataIntegrationEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventList", name: "DataIntegrationEventList")
    DataIntegrationEventMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventMaxResults", name: "DataIntegrationEventMaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}})
    DataIntegrationEventNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventNextToken", name: "DataIntegrationEventNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DataIntegrationEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationEventType", name: "DataIntegrationEventType")
    DataIntegrationFlow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlow", name: "DataIntegrationFlow")
    DataIntegrationFlowDatasetOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowDatasetOptions", name: "DataIntegrationFlowDatasetOptions")
    DataIntegrationFlowDatasetSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowDatasetSource", name: "DataIntegrationFlowDatasetSource")
    DataIntegrationFlowDatasetSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowDatasetSourceConfiguration", name: "DataIntegrationFlowDatasetSourceConfiguration")
    DataIntegrationFlowDatasetTargetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowDatasetTargetConfiguration", name: "DataIntegrationFlowDatasetTargetConfiguration")
    DataIntegrationFlowDedupeStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowDedupeStrategy", name: "DataIntegrationFlowDedupeStrategy")
    DataIntegrationFlowDedupeStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowDedupeStrategyType", name: "DataIntegrationFlowDedupeStrategyType")
    DataIntegrationFlowExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowExecution", name: "DataIntegrationFlowExecution")
    DataIntegrationFlowExecutionDiagnosticReportsRootS3URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowExecutionDiagnosticReportsRootS3URI", name: "DataIntegrationFlowExecutionDiagnosticReportsRootS3URI", traits: {"smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.{1,1024}$"})
    DataIntegrationFlowExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowExecutionList", name: "DataIntegrationFlowExecutionList")
    DataIntegrationFlowExecutionMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowExecutionMaxResults", name: "DataIntegrationFlowExecutionMaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}})
    DataIntegrationFlowExecutionNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowExecutionNextToken", name: "DataIntegrationFlowExecutionNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DataIntegrationFlowExecutionOutputMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowExecutionOutputMetadata", name: "DataIntegrationFlowExecutionOutputMetadata")
    DataIntegrationFlowExecutionSourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowExecutionSourceInfo", name: "DataIntegrationFlowExecutionSourceInfo")
    DataIntegrationFlowExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowExecutionStatus", name: "DataIntegrationFlowExecutionStatus")
    DataIntegrationFlowFieldPriorityDedupeField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeField", name: "DataIntegrationFlowFieldPriorityDedupeField")
    DataIntegrationFlowFieldPriorityDedupeFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeFieldList", name: "DataIntegrationFlowFieldPriorityDedupeFieldList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataIntegrationFlowFieldPriorityDedupeFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeFieldName", name: "DataIntegrationFlowFieldPriorityDedupeFieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-z0-9_]+$"})
    DataIntegrationFlowFieldPriorityDedupeSortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeSortOrder", name: "DataIntegrationFlowFieldPriorityDedupeSortOrder")
    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration", name: "DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration")
    DataIntegrationFlowFileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowFileType", name: "DataIntegrationFlowFileType")
    DataIntegrationFlowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowList", name: "DataIntegrationFlowList")
    DataIntegrationFlowLoadType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowLoadType", name: "DataIntegrationFlowLoadType")
    DataIntegrationFlowMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowMaxResults", name: "DataIntegrationFlowMaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 0, "max" => 20}})
    DataIntegrationFlowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowName", name: "DataIntegrationFlowName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    DataIntegrationFlowNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowNextToken", name: "DataIntegrationFlowNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DataIntegrationFlowS3Options = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowS3Options", name: "DataIntegrationFlowS3Options")
    DataIntegrationFlowS3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowS3Prefix", name: "DataIntegrationFlowS3Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 700}, "smithy.api#pattern" => "^[/A-Za-z0-9._-]+$"})
    DataIntegrationFlowS3Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowS3Source", name: "DataIntegrationFlowS3Source")
    DataIntegrationFlowS3SourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowS3SourceConfiguration", name: "DataIntegrationFlowS3SourceConfiguration")
    DataIntegrationFlowS3TargetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowS3TargetConfiguration", name: "DataIntegrationFlowS3TargetConfiguration")
    DataIntegrationFlowSQLQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowSQLQuery", name: "DataIntegrationFlowSQLQuery", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#sensitive" => {}})
    DataIntegrationFlowSQLTransformationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowSQLTransformationConfiguration", name: "DataIntegrationFlowSQLTransformationConfiguration")
    DataIntegrationFlowSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowSource", name: "DataIntegrationFlowSource")
    DataIntegrationFlowSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowSourceList", name: "DataIntegrationFlowSourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    DataIntegrationFlowSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowSourceName", name: "DataIntegrationFlowSourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    DataIntegrationFlowSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowSourceType", name: "DataIntegrationFlowSourceType")
    DataIntegrationFlowTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowTarget", name: "DataIntegrationFlowTarget")
    DataIntegrationFlowTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowTargetType", name: "DataIntegrationFlowTargetType")
    DataIntegrationFlowTransformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowTransformation", name: "DataIntegrationFlowTransformation")
    DataIntegrationFlowTransformationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataIntegrationFlowTransformationType", name: "DataIntegrationFlowTransformationType")
    DataIntegrationS3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataIntegrationS3ObjectKey", name: "DataIntegrationS3ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[/A-Za-z0-9._:*()'!=?&+;@-]+$"})
    DataLakeDataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataLakeDataset", name: "DataLakeDataset")
    DataLakeDatasetDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetDescription", name: "DataLakeDatasetDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DataLakeDatasetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetList", name: "DataLakeDatasetList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    DataLakeDatasetMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetMaxResults", name: "DataLakeDatasetMaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 0, "max" => 20}})
    DataLakeDatasetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetName", name: "DataLakeDatasetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 75}, "smithy.api#pattern" => "^[a-z0-9_]+$"})
    DataLakeDatasetNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetNextToken", name: "DataLakeDatasetNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DataLakeDatasetPartitionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetPartitionField", name: "DataLakeDatasetPartitionField")
    DataLakeDatasetPartitionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetPartitionFieldList", name: "DataLakeDatasetPartitionFieldList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataLakeDatasetPartitionFieldTransform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetPartitionFieldTransform", name: "DataLakeDatasetPartitionFieldTransform")
    DataLakeDatasetPartitionSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetPartitionSpec", name: "DataLakeDatasetPartitionSpec")
    DataLakeDatasetPartitionTransformType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetPartitionTransformType", name: "DataLakeDatasetPartitionTransformType")
    DataLakeDatasetPrimaryKeyField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetPrimaryKeyField", name: "DataLakeDatasetPrimaryKeyField")
    DataLakeDatasetPrimaryKeyFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetPrimaryKeyFieldList", name: "DataLakeDatasetPrimaryKeyFieldList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    DataLakeDatasetSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetSchema", name: "DataLakeDatasetSchema")
    DataLakeDatasetSchemaField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetSchemaField", name: "DataLakeDatasetSchemaField")
    DataLakeDatasetSchemaFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetSchemaFieldList", name: "DataLakeDatasetSchemaFieldList", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DataLakeDatasetSchemaFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetSchemaFieldName", name: "DataLakeDatasetSchemaFieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-z0-9_]+$"})
    DataLakeDatasetSchemaFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetSchemaFieldType", name: "DataLakeDatasetSchemaFieldType")
    DataLakeDatasetSchemaName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataLakeDatasetSchemaName", name: "DataLakeDatasetSchemaName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    DataLakeNamespace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DataLakeNamespace", name: "DataLakeNamespace")
    DataLakeNamespaceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataLakeNamespaceDescription", name: "DataLakeNamespaceDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DataLakeNamespaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#DataLakeNamespaceList", name: "DataLakeNamespaceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    DataLakeNamespaceMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.supplychain#DataLakeNamespaceMaxResults", name: "DataLakeNamespaceMaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}})
    DataLakeNamespaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataLakeNamespaceName", name: "DataLakeNamespaceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-z0-9_]+$"})
    DataLakeNamespaceNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DataLakeNamespaceNextToken", name: "DataLakeNamespaceNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DatasetIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#DatasetIdentifier", name: "DatasetIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[-_/A-Za-z0-9:]+$"})
    DeleteDataIntegrationFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DeleteDataIntegrationFlowRequest", name: "DeleteDataIntegrationFlowRequest")
    DeleteDataIntegrationFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DeleteDataIntegrationFlowResponse", name: "DeleteDataIntegrationFlowResponse")
    DeleteDataLakeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DeleteDataLakeDatasetRequest", name: "DeleteDataLakeDatasetRequest")
    DeleteDataLakeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DeleteDataLakeDatasetResponse", name: "DeleteDataLakeDatasetResponse")
    DeleteDataLakeNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DeleteDataLakeNamespaceRequest", name: "DeleteDataLakeNamespaceRequest")
    DeleteDataLakeNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DeleteDataLakeNamespaceResponse", name: "DeleteDataLakeNamespaceResponse")
    DeleteInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DeleteInstanceRequest", name: "DeleteInstanceRequest")
    DeleteInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#DeleteInstanceResponse", name: "DeleteInstanceResponse")
    GetBillOfMaterialsImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetBillOfMaterialsImportJobRequest", name: "GetBillOfMaterialsImportJobRequest")
    GetBillOfMaterialsImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetBillOfMaterialsImportJobResponse", name: "GetBillOfMaterialsImportJobResponse")
    GetDataIntegrationEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataIntegrationEventRequest", name: "GetDataIntegrationEventRequest")
    GetDataIntegrationEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataIntegrationEventResponse", name: "GetDataIntegrationEventResponse")
    GetDataIntegrationFlowExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataIntegrationFlowExecutionRequest", name: "GetDataIntegrationFlowExecutionRequest")
    GetDataIntegrationFlowExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataIntegrationFlowExecutionResponse", name: "GetDataIntegrationFlowExecutionResponse")
    GetDataIntegrationFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataIntegrationFlowRequest", name: "GetDataIntegrationFlowRequest")
    GetDataIntegrationFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataIntegrationFlowResponse", name: "GetDataIntegrationFlowResponse")
    GetDataLakeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataLakeDatasetRequest", name: "GetDataLakeDatasetRequest")
    GetDataLakeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataLakeDatasetResponse", name: "GetDataLakeDatasetResponse")
    GetDataLakeNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataLakeNamespaceRequest", name: "GetDataLakeNamespaceRequest")
    GetDataLakeNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetDataLakeNamespaceResponse", name: "GetDataLakeNamespaceResponse")
    GetInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetInstanceRequest", name: "GetInstanceRequest")
    GetInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#GetInstanceResponse", name: "GetInstanceResponse")
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#Instance", name: "Instance")
    InstanceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#InstanceDescription", name: "InstanceDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 501}, "smithy.api#pattern" => "^([a-zA-Z0-9., _ʼ'%-]){0,500}$"})
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#InstanceList", name: "InstanceList")
    InstanceMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.supplychain#InstanceMaxResults", name: "InstanceMaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 0, "max" => 20}})
    InstanceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#InstanceName", name: "InstanceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^(?![ _ʼ'%-])[a-zA-Z0-9 _ʼ'%-]{0,62}[a-zA-Z0-9]$"})
    InstanceNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#InstanceNameList", name: "InstanceNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    InstanceNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#InstanceNextToken", name: "InstanceNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    InstanceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supplychain#InstanceState", name: "InstanceState")
    InstanceStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#InstanceStateList", name: "InstanceStateList", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    InstanceWebAppDnsDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#InstanceWebAppDnsDomain", name: "InstanceWebAppDnsDomain", traits: {"smithy.api#pattern" => "^(?![-])[a-zA-Z0-9-]{1,62}[a-zA-Z0-9]$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:kms:([a-z0-9][-.a-z0-9]{0,62})?:([a-z0-9][-.a-z0-9]{0,62})?:key/.{0,1019}$"})
    ListDataIntegrationEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataIntegrationEventsRequest", name: "ListDataIntegrationEventsRequest")
    ListDataIntegrationEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataIntegrationEventsResponse", name: "ListDataIntegrationEventsResponse")
    ListDataIntegrationFlowExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataIntegrationFlowExecutionsRequest", name: "ListDataIntegrationFlowExecutionsRequest")
    ListDataIntegrationFlowExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataIntegrationFlowExecutionsResponse", name: "ListDataIntegrationFlowExecutionsResponse")
    ListDataIntegrationFlowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataIntegrationFlowsRequest", name: "ListDataIntegrationFlowsRequest")
    ListDataIntegrationFlowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataIntegrationFlowsResponse", name: "ListDataIntegrationFlowsResponse")
    ListDataLakeDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataLakeDatasetsRequest", name: "ListDataLakeDatasetsRequest")
    ListDataLakeDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataLakeDatasetsResponse", name: "ListDataLakeDatasetsResponse")
    ListDataLakeNamespacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataLakeNamespacesRequest", name: "ListDataLakeNamespacesRequest")
    ListDataLakeNamespacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListDataLakeNamespacesResponse", name: "ListDataLakeNamespacesResponse")
    ListInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListInstancesRequest", name: "ListInstancesRequest")
    ListInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListInstancesResponse", name: "ListInstancesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]*[a-z0-9]$"})
    SendDataIntegrationEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#SendDataIntegrationEventRequest", name: "SendDataIntegrationEventRequest")
    SendDataIntegrationEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#SendDataIntegrationEventResponse", name: "SendDataIntegrationEventResponse")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supplychain#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.supplychain#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supplychain#UUID", name: "UUID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDataIntegrationFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UpdateDataIntegrationFlowRequest", name: "UpdateDataIntegrationFlowRequest")
    UpdateDataIntegrationFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UpdateDataIntegrationFlowResponse", name: "UpdateDataIntegrationFlowResponse")
    UpdateDataLakeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UpdateDataLakeDatasetRequest", name: "UpdateDataLakeDatasetRequest")
    UpdateDataLakeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UpdateDataLakeDatasetResponse", name: "UpdateDataLakeDatasetResponse")
    UpdateDataLakeNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UpdateDataLakeNamespaceRequest", name: "UpdateDataLakeNamespaceRequest")
    UpdateDataLakeNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UpdateDataLakeNamespaceResponse", name: "UpdateDataLakeNamespaceResponse")
    UpdateInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UpdateInstanceRequest", name: "UpdateInstanceRequest")
    UpdateInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#UpdateInstanceResponse", name: "UpdateInstanceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supplychain#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BillOfMaterialsImportJob.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    BillOfMaterialsImportJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "jobId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobId"}))
    BillOfMaterialsImportJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    BillOfMaterialsImportJob.add_member(:s3uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationS3Uri, name: "s3uri", traits: {"smithy.api#required" => {}}))
    BillOfMaterialsImportJob.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    BillOfMaterialsImportJob.type = Types::BillOfMaterialsImportJob
    ConfigurationJobStatus.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    ConfigurationJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ConfigurationJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ConfigurationJobStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    ConfigurationJobStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateBillOfMaterialsImportJobRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBillOfMaterialsImportJobRequest.add_member(:s3uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationS3Uri, name: "s3uri", traits: {"smithy.api#required" => {}}))
    CreateBillOfMaterialsImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBillOfMaterialsImportJobRequest.type = Types::CreateBillOfMaterialsImportJobRequest
    CreateBillOfMaterialsImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "jobId", traits: {"smithy.api#required" => {}}))
    CreateBillOfMaterialsImportJobResponse.type = Types::CreateBillOfMaterialsImportJobResponse
    CreateDataIntegrationFlowRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSourceList, name: "sources", traits: {"smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowTransformation, name: "transformation", traits: {"smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowTarget, name: "target", traits: {"smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateDataIntegrationFlowRequest.type = Types::CreateDataIntegrationFlowRequest
    CreateDataIntegrationFlowResponse.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}}))
    CreateDataIntegrationFlowResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDataIntegrationFlowResponse.type = Types::CreateDataIntegrationFlowResponse
    CreateDataLakeDatasetRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeDatasetRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeDatasetRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchema, name: "schema"))
    CreateDataLakeDatasetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetDescription, name: "description"))
    CreateDataLakeDatasetRequest.add_member(:partition_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetPartitionSpec, name: "partitionSpec"))
    CreateDataLakeDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateDataLakeDatasetRequest.type = Types::CreateDataLakeDatasetRequest
    CreateDataLakeDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDataset, name: "dataset", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    CreateDataLakeDatasetResponse.type = Types::CreateDataLakeDatasetResponse
    CreateDataLakeNamespaceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeNamespaceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceDescription, name: "description"))
    CreateDataLakeNamespaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateDataLakeNamespaceRequest.type = Types::CreateDataLakeNamespaceRequest
    CreateDataLakeNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespace, name: "namespace", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    CreateDataLakeNamespaceResponse.type = Types::CreateDataLakeNamespaceResponse
    CreateInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "instanceName"))
    CreateInstanceRequest.add_member(:instance_description, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceDescription, name: "instanceDescription"))
    CreateInstanceRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateInstanceRequest.add_member(:web_app_dns_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceWebAppDnsDomain, name: "webAppDnsDomain"))
    CreateInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateInstanceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateInstanceRequest.type = Types::CreateInstanceRequest
    CreateInstanceResponse.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "instance", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    CreateInstanceResponse.type = Types::CreateInstanceResponse
    DataIntegrationEvent.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "eventId", traits: {"smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:event_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventGroupId, name: "eventGroupId", traits: {"smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "eventTimestamp", traits: {"smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:dataset_target_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventDatasetTargetDetails, name: "datasetTargetDetails"))
    DataIntegrationEvent.type = Types::DataIntegrationEvent
    DataIntegrationEventDatasetLoadExecutionDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventDatasetLoadStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DataIntegrationEventDatasetLoadExecutionDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    DataIntegrationEventDatasetLoadExecutionDetails.type = Types::DataIntegrationEventDatasetLoadExecutionDetails
    DataIntegrationEventDatasetLoadStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DataIntegrationEventDatasetLoadStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DataIntegrationEventDatasetLoadStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataIntegrationEventDatasetOperationType.add_member(:append, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPEND", traits: {"smithy.api#enumValue" => "APPEND"}))
    DataIntegrationEventDatasetOperationType.add_member(:upsert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPSERT", traits: {"smithy.api#enumValue" => "UPSERT"}))
    DataIntegrationEventDatasetOperationType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    DataIntegrationEventDatasetTargetConfiguration.add_member(:dataset_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationDatasetArn, name: "datasetIdentifier", traits: {"smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetConfiguration.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventDatasetOperationType, name: "operationType", traits: {"smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetConfiguration.type = Types::DataIntegrationEventDatasetTargetConfiguration
    DataIntegrationEventDatasetTargetDetails.add_member(:dataset_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationDatasetArn, name: "datasetIdentifier", traits: {"smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetDetails.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventDatasetOperationType, name: "operationType", traits: {"smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetDetails.add_member(:dataset_load_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventDatasetLoadExecutionDetails, name: "datasetLoadExecution", traits: {"smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetDetails.type = Types::DataIntegrationEventDatasetTargetDetails
    DataIntegrationEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEvent, name: "member"))
    DataIntegrationEventType.add_member(:forecast, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORECAST", traits: {"smithy.api#enumValue" => "scn.data.forecast"}))
    DataIntegrationEventType.add_member(:inventory_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVENTORY_LEVEL", traits: {"smithy.api#enumValue" => "scn.data.inventorylevel"}))
    DataIntegrationEventType.add_member(:inbound_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INBOUND_ORDER", traits: {"smithy.api#enumValue" => "scn.data.inboundorder"}))
    DataIntegrationEventType.add_member(:inbound_order_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INBOUND_ORDER_LINE", traits: {"smithy.api#enumValue" => "scn.data.inboundorderline"}))
    DataIntegrationEventType.add_member(:inbound_order_line_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INBOUND_ORDER_LINE_SCHEDULE", traits: {"smithy.api#enumValue" => "scn.data.inboundorderlineschedule"}))
    DataIntegrationEventType.add_member(:outbound_order_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTBOUND_ORDER_LINE", traits: {"smithy.api#enumValue" => "scn.data.outboundorderline"}))
    DataIntegrationEventType.add_member(:outbound_shipment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTBOUND_SHIPMENT", traits: {"smithy.api#enumValue" => "scn.data.outboundshipment"}))
    DataIntegrationEventType.add_member(:process_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESS_HEADER", traits: {"smithy.api#enumValue" => "scn.data.processheader"}))
    DataIntegrationEventType.add_member(:process_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESS_OPERATION", traits: {"smithy.api#enumValue" => "scn.data.processoperation"}))
    DataIntegrationEventType.add_member(:process_product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESS_PRODUCT", traits: {"smithy.api#enumValue" => "scn.data.processproduct"}))
    DataIntegrationEventType.add_member(:reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESERVATION", traits: {"smithy.api#enumValue" => "scn.data.reservation"}))
    DataIntegrationEventType.add_member(:shipment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIPMENT", traits: {"smithy.api#enumValue" => "scn.data.shipment"}))
    DataIntegrationEventType.add_member(:shipment_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIPMENT_STOP", traits: {"smithy.api#enumValue" => "scn.data.shipmentstop"}))
    DataIntegrationEventType.add_member(:shipment_stop_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIPMENT_STOP_ORDER", traits: {"smithy.api#enumValue" => "scn.data.shipmentstoporder"}))
    DataIntegrationEventType.add_member(:supply_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPPLY_PLAN", traits: {"smithy.api#enumValue" => "scn.data.supplyplan"}))
    DataIntegrationEventType.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATASET", traits: {"smithy.api#enumValue" => "scn.data.dataset"}))
    DataIntegrationFlow.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    DataIntegrationFlow.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DataIntegrationFlow.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSourceList, name: "sources", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlow.add_member(:transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowTransformation, name: "transformation", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlow.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowTarget, name: "target", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlow.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlow.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlow.type = Types::DataIntegrationFlow
    DataIntegrationFlowDatasetOptions.add_member(:load_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowLoadType, name: "loadType"))
    DataIntegrationFlowDatasetOptions.add_member(:dedupe_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dedupeRecords"))
    DataIntegrationFlowDatasetOptions.add_member(:dedupe_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowDedupeStrategy, name: "dedupeStrategy"))
    DataIntegrationFlowDatasetOptions.type = Types::DataIntegrationFlowDatasetOptions
    DataIntegrationFlowDatasetSource.add_member(:dataset_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationDatasetArn, name: "datasetIdentifier", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowDatasetSource.type = Types::DataIntegrationFlowDatasetSource
    DataIntegrationFlowDatasetSourceConfiguration.add_member(:dataset_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIdentifier, name: "datasetIdentifier", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowDatasetSourceConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowDatasetOptions, name: "options"))
    DataIntegrationFlowDatasetSourceConfiguration.type = Types::DataIntegrationFlowDatasetSourceConfiguration
    DataIntegrationFlowDatasetTargetConfiguration.add_member(:dataset_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIdentifier, name: "datasetIdentifier", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowDatasetTargetConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowDatasetOptions, name: "options"))
    DataIntegrationFlowDatasetTargetConfiguration.type = Types::DataIntegrationFlowDatasetTargetConfiguration
    DataIntegrationFlowDedupeStrategy.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowDedupeStrategyType, name: "type", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowDedupeStrategy.add_member(:field_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration, name: "fieldPriority"))
    DataIntegrationFlowDedupeStrategy.type = Types::DataIntegrationFlowDedupeStrategy
    DataIntegrationFlowDedupeStrategyType.add_member(:field_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_PRIORITY", traits: {"smithy.api#enumValue" => "FIELD_PRIORITY"}))
    DataIntegrationFlowExecution.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    DataIntegrationFlowExecution.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "flowName", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "flowName"}))
    DataIntegrationFlowExecution.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "executionId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "executionId"}))
    DataIntegrationFlowExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecutionStatus, name: "status"))
    DataIntegrationFlowExecution.add_member(:source_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecutionSourceInfo, name: "sourceInfo"))
    DataIntegrationFlowExecution.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    DataIntegrationFlowExecution.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    DataIntegrationFlowExecution.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    DataIntegrationFlowExecution.add_member(:output_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecutionOutputMetadata, name: "outputMetadata"))
    DataIntegrationFlowExecution.type = Types::DataIntegrationFlowExecution
    DataIntegrationFlowExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecution, name: "member"))
    DataIntegrationFlowExecutionOutputMetadata.add_member(:diagnostic_reports_root_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecutionDiagnosticReportsRootS3URI, name: "diagnosticReportsRootS3URI"))
    DataIntegrationFlowExecutionOutputMetadata.type = Types::DataIntegrationFlowExecutionOutputMetadata
    DataIntegrationFlowExecutionSourceInfo.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSourceType, name: "sourceType", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowExecutionSourceInfo.add_member(:s3_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowS3Source, name: "s3Source"))
    DataIntegrationFlowExecutionSourceInfo.add_member(:dataset_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowDatasetSource, name: "datasetSource"))
    DataIntegrationFlowExecutionSourceInfo.type = Types::DataIntegrationFlowExecutionSourceInfo
    DataIntegrationFlowExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DataIntegrationFlowExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DataIntegrationFlowExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataIntegrationFlowFieldPriorityDedupeField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowFieldPriorityDedupeFieldName, name: "name", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowFieldPriorityDedupeField.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowFieldPriorityDedupeSortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowFieldPriorityDedupeField.type = Types::DataIntegrationFlowFieldPriorityDedupeField
    DataIntegrationFlowFieldPriorityDedupeFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowFieldPriorityDedupeField, name: "member"))
    DataIntegrationFlowFieldPriorityDedupeSortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    DataIntegrationFlowFieldPriorityDedupeSortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowFieldPriorityDedupeFieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration.type = Types::DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration
    DataIntegrationFlowFileType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    DataIntegrationFlowFileType.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARQUET", traits: {"smithy.api#enumValue" => "PARQUET"}))
    DataIntegrationFlowFileType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    DataIntegrationFlowList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlow, name: "member"))
    DataIntegrationFlowLoadType.add_member(:incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL", traits: {"smithy.api#enumValue" => "INCREMENTAL"}))
    DataIntegrationFlowLoadType.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    DataIntegrationFlowS3Options.add_member(:file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowFileType, name: "fileType"))
    DataIntegrationFlowS3Options.type = Types::DataIntegrationFlowS3Options
    DataIntegrationFlowS3Source.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowS3Source.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationS3ObjectKey, name: "key", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowS3Source.type = Types::DataIntegrationFlowS3Source
    DataIntegrationFlowS3SourceConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowS3SourceConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowS3Prefix, name: "prefix", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowS3SourceConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowS3Options, name: "options"))
    DataIntegrationFlowS3SourceConfiguration.type = Types::DataIntegrationFlowS3SourceConfiguration
    DataIntegrationFlowS3TargetConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowS3TargetConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowS3Prefix, name: "prefix", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowS3TargetConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowS3Options, name: "options"))
    DataIntegrationFlowS3TargetConfiguration.type = Types::DataIntegrationFlowS3TargetConfiguration
    DataIntegrationFlowSQLTransformationConfiguration.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSQLQuery, name: "query", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowSQLTransformationConfiguration.type = Types::DataIntegrationFlowSQLTransformationConfiguration
    DataIntegrationFlowSource.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSourceType, name: "sourceType", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowSource.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSourceName, name: "sourceName", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowSource.add_member(:s3_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowS3SourceConfiguration, name: "s3Source"))
    DataIntegrationFlowSource.add_member(:dataset_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowDatasetSourceConfiguration, name: "datasetSource"))
    DataIntegrationFlowSource.type = Types::DataIntegrationFlowSource
    DataIntegrationFlowSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSource, name: "member"))
    DataIntegrationFlowSourceType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    DataIntegrationFlowSourceType.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATASET", traits: {"smithy.api#enumValue" => "DATASET"}))
    DataIntegrationFlowTarget.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowTargetType, name: "targetType", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowTarget.add_member(:s3_target, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowS3TargetConfiguration, name: "s3Target"))
    DataIntegrationFlowTarget.add_member(:dataset_target, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowDatasetTargetConfiguration, name: "datasetTarget"))
    DataIntegrationFlowTarget.type = Types::DataIntegrationFlowTarget
    DataIntegrationFlowTargetType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    DataIntegrationFlowTargetType.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATASET", traits: {"smithy.api#enumValue" => "DATASET"}))
    DataIntegrationFlowTransformation.add_member(:transformation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowTransformationType, name: "transformationType", traits: {"smithy.api#required" => {}}))
    DataIntegrationFlowTransformation.add_member(:sql_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSQLTransformationConfiguration, name: "sqlTransformation"))
    DataIntegrationFlowTransformation.type = Types::DataIntegrationFlowTransformation
    DataIntegrationFlowTransformationType.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    DataIntegrationFlowTransformationType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DataLakeDataset.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    DataLakeDataset.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "namespace", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "namespace"}))
    DataLakeDataset.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetName, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DataLakeDataset.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AscResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DataLakeDataset.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchema, name: "schema", traits: {"smithy.api#required" => {}}))
    DataLakeDataset.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetDescription, name: "description"))
    DataLakeDataset.add_member(:partition_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetPartitionSpec, name: "partitionSpec"))
    DataLakeDataset.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}}))
    DataLakeDataset.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    DataLakeDataset.type = Types::DataLakeDataset
    DataLakeDatasetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDataset, name: "member"))
    DataLakeDatasetPartitionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchemaFieldName, name: "name", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetPartitionField.add_member(:transform, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetPartitionFieldTransform, name: "transform", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetPartitionField.type = Types::DataLakeDatasetPartitionField
    DataLakeDatasetPartitionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetPartitionField, name: "member"))
    DataLakeDatasetPartitionFieldTransform.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetPartitionTransformType, name: "type", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetPartitionFieldTransform.type = Types::DataLakeDatasetPartitionFieldTransform
    DataLakeDatasetPartitionSpec.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetPartitionFieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetPartitionSpec.type = Types::DataLakeDatasetPartitionSpec
    DataLakeDatasetPartitionTransformType.add_member(:year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEAR", traits: {"smithy.api#enumValue" => "YEAR"}))
    DataLakeDatasetPartitionTransformType.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTH", traits: {"smithy.api#enumValue" => "MONTH"}))
    DataLakeDatasetPartitionTransformType.add_member(:day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAY", traits: {"smithy.api#enumValue" => "DAY"}))
    DataLakeDatasetPartitionTransformType.add_member(:hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOUR", traits: {"smithy.api#enumValue" => "HOUR"}))
    DataLakeDatasetPartitionTransformType.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY", traits: {"smithy.api#enumValue" => "IDENTITY"}))
    DataLakeDatasetPrimaryKeyField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchemaFieldName, name: "name", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetPrimaryKeyField.type = Types::DataLakeDatasetPrimaryKeyField
    DataLakeDatasetPrimaryKeyFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetPrimaryKeyField, name: "member"))
    DataLakeDatasetSchema.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchemaName, name: "name", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetSchema.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchemaFieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetSchema.add_member(:primary_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetPrimaryKeyFieldList, name: "primaryKeys"))
    DataLakeDatasetSchema.type = Types::DataLakeDatasetSchema
    DataLakeDatasetSchemaField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchemaFieldName, name: "name", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetSchemaField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchemaFieldType, name: "type", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetSchemaField.add_member(:is_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isRequired", traits: {"smithy.api#required" => {}}))
    DataLakeDatasetSchemaField.type = Types::DataLakeDatasetSchemaField
    DataLakeDatasetSchemaFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetSchemaField, name: "member"))
    DataLakeDatasetSchemaFieldType.add_member(:int, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INT", traits: {"smithy.api#enumValue" => "INT"}))
    DataLakeDatasetSchemaFieldType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    DataLakeDatasetSchemaFieldType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    DataLakeDatasetSchemaFieldType.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    DataLakeDatasetSchemaFieldType.add_member(:long, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LONG", traits: {"smithy.api#enumValue" => "LONG"}))
    DataLakeNamespace.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    DataLakeNamespace.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DataLakeNamespace.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AscResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DataLakeNamespace.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceDescription, name: "description"))
    DataLakeNamespace.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime", traits: {"smithy.api#required" => {}}))
    DataLakeNamespace.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    DataLakeNamespace.type = Types::DataLakeNamespace
    DataLakeNamespaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespace, name: "member"))
    DeleteDataIntegrationFlowRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataIntegrationFlowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataIntegrationFlowRequest.type = Types::DeleteDataIntegrationFlowRequest
    DeleteDataIntegrationFlowResponse.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}}))
    DeleteDataIntegrationFlowResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteDataIntegrationFlowResponse.type = Types::DeleteDataIntegrationFlowResponse
    DeleteDataLakeDatasetRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeDatasetRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeDatasetRequest.type = Types::DeleteDataLakeDatasetRequest
    DeleteDataLakeDatasetResponse.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}}))
    DeleteDataLakeDatasetResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "namespace", traits: {"smithy.api#required" => {}}))
    DeleteDataLakeDatasetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteDataLakeDatasetResponse.type = Types::DeleteDataLakeDatasetResponse
    DeleteDataLakeNamespaceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeNamespaceRequest.type = Types::DeleteDataLakeNamespaceRequest
    DeleteDataLakeNamespaceResponse.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}}))
    DeleteDataLakeNamespaceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteDataLakeNamespaceResponse.type = Types::DeleteDataLakeNamespaceResponse
    DeleteInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInstanceRequest.type = Types::DeleteInstanceRequest
    DeleteInstanceResponse.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "instance", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    DeleteInstanceResponse.type = Types::DeleteInstanceResponse
    GetBillOfMaterialsImportJobRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBillOfMaterialsImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBillOfMaterialsImportJobRequest.type = Types::GetBillOfMaterialsImportJobRequest
    GetBillOfMaterialsImportJobResponse.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: BillOfMaterialsImportJob, name: "job", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetBillOfMaterialsImportJobResponse.type = Types::GetBillOfMaterialsImportJobResponse
    GetDataIntegrationEventRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationEventRequest.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "eventId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationEventRequest.type = Types::GetDataIntegrationEventRequest
    GetDataIntegrationEventResponse.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEvent, name: "event", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationEventResponse.type = Types::GetDataIntegrationEventResponse
    GetDataIntegrationFlowExecutionRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowExecutionRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "flowName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowExecutionRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "executionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowExecutionRequest.type = Types::GetDataIntegrationFlowExecutionRequest
    GetDataIntegrationFlowExecutionResponse.add_member(:flow_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecution, name: "flowExecution", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowExecutionResponse.type = Types::GetDataIntegrationFlowExecutionResponse
    GetDataIntegrationFlowRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowRequest.type = Types::GetDataIntegrationFlowRequest
    GetDataIntegrationFlowResponse.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlow, name: "flow", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowResponse.type = Types::GetDataIntegrationFlowResponse
    GetDataLakeDatasetRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeDatasetRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeDatasetRequest.type = Types::GetDataLakeDatasetRequest
    GetDataLakeDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDataset, name: "dataset", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataLakeDatasetResponse.type = Types::GetDataLakeDatasetResponse
    GetDataLakeNamespaceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeNamespaceRequest.type = Types::GetDataLakeNamespaceRequest
    GetDataLakeNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespace, name: "namespace", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataLakeNamespaceResponse.type = Types::GetDataLakeNamespaceResponse
    GetInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInstanceRequest.type = Types::GetInstanceRequest
    GetInstanceResponse.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "instance", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetInstanceResponse.type = Types::GetInstanceResponse
    Instance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    Instance.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "awsAccountId", traits: {"smithy.api#required" => {}}))
    Instance.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "state", traits: {"smithy.api#required" => {}}))
    Instance.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    Instance.add_member(:web_app_dns_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceWebAppDnsDomain, name: "webAppDnsDomain"))
    Instance.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTime"))
    Instance.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModifiedTime"))
    Instance.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "instanceName"))
    Instance.add_member(:instance_description, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceDescription, name: "instanceDescription"))
    Instance.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    Instance.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "versionNumber"))
    Instance.type = Types::Instance
    InstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "member"))
    InstanceNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "member"))
    InstanceState.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZING", traits: {"smithy.api#enumValue" => "Initializing"}))
    InstanceState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    InstanceState.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CreateFailed"}))
    InstanceState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DeleteFailed"}))
    InstanceState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    InstanceState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    InstanceStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListDataIntegrationEventsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationEventsRequest.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventType, name: "eventType", traits: {"smithy.api#httpQuery" => "eventType"}))
    ListDataIntegrationEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventNextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventMaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationEventsRequest.type = Types::ListDataIntegrationEventsRequest
    ListDataIntegrationEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListDataIntegrationEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventNextToken, name: "nextToken"))
    ListDataIntegrationEventsResponse.type = Types::ListDataIntegrationEventsResponse
    ListDataIntegrationFlowExecutionsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationFlowExecutionsRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "flowName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationFlowExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecutionNextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationFlowExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecutionMaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationFlowExecutionsRequest.type = Types::ListDataIntegrationFlowExecutionsRequest
    ListDataIntegrationFlowExecutionsResponse.add_member(:flow_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecutionList, name: "flowExecutions", traits: {"smithy.api#required" => {}}))
    ListDataIntegrationFlowExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowExecutionNextToken, name: "nextToken"))
    ListDataIntegrationFlowExecutionsResponse.type = Types::ListDataIntegrationFlowExecutionsResponse
    ListDataIntegrationFlowsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationFlowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowNextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationFlowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowMaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationFlowsRequest.type = Types::ListDataIntegrationFlowsRequest
    ListDataIntegrationFlowsResponse.add_member(:flows, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowList, name: "flows", traits: {"smithy.api#required" => {}}))
    ListDataIntegrationFlowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowNextToken, name: "nextToken"))
    ListDataIntegrationFlowsResponse.type = Types::ListDataIntegrationFlowsResponse
    ListDataLakeDatasetsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataLakeDatasetsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataLakeDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetNextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataLakeDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetMaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListDataLakeDatasetsRequest.type = Types::ListDataLakeDatasetsRequest
    ListDataLakeDatasetsResponse.add_member(:datasets, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetList, name: "datasets", traits: {"smithy.api#required" => {}}))
    ListDataLakeDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetNextToken, name: "nextToken"))
    ListDataLakeDatasetsResponse.type = Types::ListDataLakeDatasetsResponse
    ListDataLakeNamespacesRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataLakeNamespacesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceNextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataLakeNamespacesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceMaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListDataLakeNamespacesRequest.type = Types::ListDataLakeNamespacesRequest
    ListDataLakeNamespacesResponse.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceList, name: "namespaces", traits: {"smithy.api#required" => {}}))
    ListDataLakeNamespacesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceNextToken, name: "nextToken"))
    ListDataLakeNamespacesResponse.type = Types::ListDataLakeNamespacesResponse
    ListInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListInstancesRequest.add_member(:instance_name_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNameList, name: "instanceNameFilter", traits: {"smithy.api#httpQuery" => "instanceNameFilter"}))
    ListInstancesRequest.add_member(:instance_state_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStateList, name: "instanceStateFilter", traits: {"smithy.api#httpQuery" => "instanceStateFilter"}))
    ListInstancesRequest.type = Types::ListInstancesRequest
    ListInstancesResponse.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, name: "instances", traits: {"smithy.api#required" => {}}))
    ListInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNextToken, name: "nextToken"))
    ListInstancesResponse.type = Types::ListInstancesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AscResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SendDataIntegrationEventRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendDataIntegrationEventRequest.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    SendDataIntegrationEventRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventData, name: "data", traits: {"smithy.api#required" => {}}))
    SendDataIntegrationEventRequest.add_member(:event_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventGroupId, name: "eventGroupId", traits: {"smithy.api#required" => {}}))
    SendDataIntegrationEventRequest.add_member(:event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "eventTimestamp", traits: {"smithy.api#timestampFormat" => "epoch-seconds"}))
    SendDataIntegrationEventRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendDataIntegrationEventRequest.add_member(:dataset_target, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationEventDatasetTargetConfiguration, name: "datasetTarget"))
    SendDataIntegrationEventRequest.type = Types::SendDataIntegrationEventRequest
    SendDataIntegrationEventResponse.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "eventId", traits: {"smithy.api#required" => {}}))
    SendDataIntegrationEventResponse.type = Types::SendDataIntegrationEventResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AscResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AscResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDataIntegrationFlowRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationFlowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationFlowRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowSourceList, name: "sources"))
    UpdateDataIntegrationFlowRequest.add_member(:transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowTransformation, name: "transformation"))
    UpdateDataIntegrationFlowRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlowTarget, name: "target"))
    UpdateDataIntegrationFlowRequest.type = Types::UpdateDataIntegrationFlowRequest
    UpdateDataIntegrationFlowResponse.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: DataIntegrationFlow, name: "flow", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationFlowResponse.type = Types::UpdateDataIntegrationFlowResponse
    UpdateDataLakeDatasetRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeDatasetRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "namespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeDatasetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeDatasetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDatasetDescription, name: "description"))
    UpdateDataLakeDatasetRequest.type = Types::UpdateDataLakeDatasetRequest
    UpdateDataLakeDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeDataset, name: "dataset", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeDatasetResponse.type = Types::UpdateDataLakeDatasetResponse
    UpdateDataLakeNamespaceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeNamespaceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespaceDescription, name: "description"))
    UpdateDataLakeNamespaceRequest.type = Types::UpdateDataLakeNamespaceRequest
    UpdateDataLakeNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLakeNamespace, name: "namespace", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeNamespaceResponse.type = Types::UpdateDataLakeNamespaceResponse
    UpdateInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "instanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateInstanceRequest.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "instanceName"))
    UpdateInstanceRequest.add_member(:instance_description, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceDescription, name: "instanceDescription"))
    UpdateInstanceRequest.type = Types::UpdateInstanceRequest
    UpdateInstanceResponse.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "instance", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateInstanceResponse.type = Types::UpdateInstanceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    GalaxyPublicAPIGateway = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.supplychain#GalaxyPublicAPIGateway"
      service.name = "GalaxyPublicAPIGateway"
      service.version = "2024-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SupplyChain", "arnNamespace" => "scn", "endpointPrefix" => "scn"}, "aws.auth#sigv4" => {"name" => "scn"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Supply Chain", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://scn-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://scn-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://scn.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://scn.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_bill_of_materials_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateBillOfMaterialsImportJob"
        operation.name = "CreateBillOfMaterialsImportJob"
        operation.input = CreateBillOfMaterialsImportJobRequest
        operation.output = CreateBillOfMaterialsImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_integration_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateDataIntegrationFlow"
        operation.name = "CreateDataIntegrationFlow"
        operation.input = CreateDataIntegrationFlowRequest
        operation.output = CreateDataIntegrationFlowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_lake_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateDataLakeDataset"
        operation.name = "CreateDataLakeDataset"
        operation.input = CreateDataLakeDatasetRequest
        operation.output = CreateDataLakeDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_lake_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateDataLakeNamespace"
        operation.name = "CreateDataLakeNamespace"
        operation.input = CreateDataLakeNamespaceRequest
        operation.output = CreateDataLakeNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateInstance"
        operation.name = "CreateInstance"
        operation.input = CreateInstanceRequest
        operation.output = CreateInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/api/instance"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_integration_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#DeleteDataIntegrationFlow"
        operation.name = "DeleteDataIntegrationFlow"
        operation.input = DeleteDataIntegrationFlowRequest
        operation.output = DeleteDataIntegrationFlowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_lake_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#DeleteDataLakeDataset"
        operation.name = "DeleteDataLakeDataset"
        operation.input = DeleteDataLakeDatasetRequest
        operation.output = DeleteDataLakeDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_lake_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#DeleteDataLakeNamespace"
        operation.name = "DeleteDataLakeNamespace"
        operation.input = DeleteDataLakeNamespaceRequest
        operation.output = DeleteDataLakeNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#DeleteInstance"
        operation.name = "DeleteInstance"
        operation.input = DeleteInstanceRequest
        operation.output = DeleteInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/instance/{instanceId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_bill_of_materials_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetBillOfMaterialsImportJob"
        operation.name = "GetBillOfMaterialsImportJob"
        operation.input = GetBillOfMaterialsImportJobRequest
        operation.output = GetBillOfMaterialsImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_integration_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataIntegrationEvent"
        operation.name = "GetDataIntegrationEvent"
        operation.input = GetDataIntegrationEventRequest
        operation.output = GetDataIntegrationEventResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-events/{eventId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_integration_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataIntegrationFlow"
        operation.name = "GetDataIntegrationFlow"
        operation.input = GetDataIntegrationFlowRequest
        operation.output = GetDataIntegrationFlowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_integration_flow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataIntegrationFlowExecution"
        operation.name = "GetDataIntegrationFlowExecution"
        operation.input = GetDataIntegrationFlowExecutionRequest
        operation.output = GetDataIntegrationFlowExecutionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions/{executionId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_lake_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataLakeDataset"
        operation.name = "GetDataLakeDataset"
        operation.input = GetDataLakeDatasetRequest
        operation.output = GetDataLakeDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_lake_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataLakeNamespace"
        operation.name = "GetDataLakeNamespace"
        operation.input = GetDataLakeNamespaceRequest
        operation.output = GetDataLakeNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetInstance"
        operation.name = "GetInstance"
        operation.input = GetInstanceRequest
        operation.output = GetInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/instance/{instanceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_data_integration_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataIntegrationEvents"
        operation.name = "ListDataIntegrationEvents"
        operation.input = ListDataIntegrationEventsRequest
        operation.output = ListDataIntegrationEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataIntegrationEvents.new
      end)
      service.add_operation(:list_data_integration_flow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataIntegrationFlowExecutions"
        operation.name = "ListDataIntegrationFlowExecutions"
        operation.input = ListDataIntegrationFlowExecutionsRequest
        operation.output = ListDataIntegrationFlowExecutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataIntegrationFlowExecutions.new
      end)
      service.add_operation(:list_data_integration_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataIntegrationFlows"
        operation.name = "ListDataIntegrationFlows"
        operation.input = ListDataIntegrationFlowsRequest
        operation.output = ListDataIntegrationFlowsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataIntegrationFlows.new
      end)
      service.add_operation(:list_data_lake_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataLakeDatasets"
        operation.name = "ListDataLakeDatasets"
        operation.input = ListDataLakeDatasetsRequest
        operation.output = ListDataLakeDatasetsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataLakeDatasets.new
      end)
      service.add_operation(:list_data_lake_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataLakeNamespaces"
        operation.name = "ListDataLakeNamespaces"
        operation.input = ListDataLakeNamespacesRequest
        operation.output = ListDataLakeNamespacesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/datalake/instance/{instanceId}/namespaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataLakeNamespaces.new
      end)
      service.add_operation(:list_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListInstances"
        operation.name = "ListInstances"
        operation.input = ListInstancesRequest
        operation.output = ListInstancesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/instance"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:send_data_integration_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#SendDataIntegrationEvent"
        operation.name = "SendDataIntegrationEvent"
        operation.input = SendDataIntegrationEventRequest
        operation.output = SendDataIntegrationEventResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-events"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/api/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_integration_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UpdateDataIntegrationFlow"
        operation.name = "UpdateDataIntegrationFlow"
        operation.input = UpdateDataIntegrationFlowRequest
        operation.output = UpdateDataIntegrationFlowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"}}
      end)
      service.add_operation(:update_data_lake_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UpdateDataLakeDataset"
        operation.name = "UpdateDataLakeDataset"
        operation.input = UpdateDataLakeDatasetRequest
        operation.output = UpdateDataLakeDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"}}
      end)
      service.add_operation(:update_data_lake_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UpdateDataLakeNamespace"
        operation.name = "UpdateDataLakeNamespace"
        operation.input = UpdateDataLakeNamespaceRequest
        operation.output = UpdateDataLakeNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{name}"}}
      end)
      service.add_operation(:update_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UpdateInstance"
        operation.name = "UpdateInstance"
        operation.input = UpdateInstanceRequest
        operation.output = UpdateInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/api/instance/{instanceId}"}}
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
