# frozen_string_literal: true

# This is generated code!

module Aws::SupplyChain
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AscResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#AscResourceArn', name: 'AscResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:scn(?::([a-z0-9-]+):([0-9]+):instance)?/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})[-_./A-Za-z0-9]*$"})
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    BillOfMaterialsImportJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#BillOfMaterialsImportJob', name: 'BillOfMaterialsImportJob')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 33, "max" => 126}})
    ConfigurationJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#ConfigurationJobStatus', name: 'ConfigurationJobStatus')
    ConfigurationS3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#ConfigurationS3Uri', name: 'ConfigurationS3Uri', traits: {"smithy.api#length" => {"min" => 10}, "smithy.api#pattern" => "^[sS]3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBillOfMaterialsImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateBillOfMaterialsImportJobRequest', name: 'CreateBillOfMaterialsImportJobRequest')
    CreateBillOfMaterialsImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateBillOfMaterialsImportJobResponse', name: 'CreateBillOfMaterialsImportJobResponse')
    CreateDataIntegrationFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateDataIntegrationFlowRequest', name: 'CreateDataIntegrationFlowRequest')
    CreateDataIntegrationFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateDataIntegrationFlowResponse', name: 'CreateDataIntegrationFlowResponse')
    CreateDataLakeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateDataLakeDatasetRequest', name: 'CreateDataLakeDatasetRequest')
    CreateDataLakeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateDataLakeDatasetResponse', name: 'CreateDataLakeDatasetResponse')
    CreateDataLakeNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateDataLakeNamespaceRequest', name: 'CreateDataLakeNamespaceRequest')
    CreateDataLakeNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateDataLakeNamespaceResponse', name: 'CreateDataLakeNamespaceResponse')
    CreateInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateInstanceRequest', name: 'CreateInstanceRequest')
    CreateInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#CreateInstanceResponse', name: 'CreateInstanceResponse')
    DataIntegrationDatasetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationDatasetArn', name: 'DataIntegrationDatasetArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:scn:([a-z0-9-]+):([0-9]+):instance/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})/namespaces/[^/]+/datasets/[^/]+$"})
    DataIntegrationEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEvent', name: 'DataIntegrationEvent')
    DataIntegrationEventData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventData', name: 'DataIntegrationEventData', traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}, "smithy.api#sensitive" => {}})
    DataIntegrationEventDatasetLoadExecutionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventDatasetLoadExecutionDetails', name: 'DataIntegrationEventDatasetLoadExecutionDetails')
    DataIntegrationEventDatasetLoadStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventDatasetLoadStatus', name: 'DataIntegrationEventDatasetLoadStatus')
    DataIntegrationEventDatasetOperationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventDatasetOperationType', name: 'DataIntegrationEventDatasetOperationType')
    DataIntegrationEventDatasetTargetConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventDatasetTargetConfiguration', name: 'DataIntegrationEventDatasetTargetConfiguration')
    DataIntegrationEventDatasetTargetDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventDatasetTargetDetails', name: 'DataIntegrationEventDatasetTargetDetails')
    DataIntegrationEventGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventGroupId', name: 'DataIntegrationEventGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DataIntegrationEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventList', name: 'DataIntegrationEventList')
    DataIntegrationEventMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventMaxResults', name: 'DataIntegrationEventMaxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}})
    DataIntegrationEventNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventNextToken', name: 'DataIntegrationEventNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DataIntegrationEventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationEventType', name: 'DataIntegrationEventType')
    DataIntegrationFlow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlow', name: 'DataIntegrationFlow')
    DataIntegrationFlowDatasetOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowDatasetOptions', name: 'DataIntegrationFlowDatasetOptions')
    DataIntegrationFlowDatasetSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowDatasetSource', name: 'DataIntegrationFlowDatasetSource')
    DataIntegrationFlowDatasetSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowDatasetSourceConfiguration', name: 'DataIntegrationFlowDatasetSourceConfiguration')
    DataIntegrationFlowDatasetTargetConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowDatasetTargetConfiguration', name: 'DataIntegrationFlowDatasetTargetConfiguration')
    DataIntegrationFlowDedupeStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowDedupeStrategy', name: 'DataIntegrationFlowDedupeStrategy')
    DataIntegrationFlowDedupeStrategyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowDedupeStrategyType', name: 'DataIntegrationFlowDedupeStrategyType')
    DataIntegrationFlowExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowExecution', name: 'DataIntegrationFlowExecution')
    DataIntegrationFlowExecutionDiagnosticReportsRootS3URI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowExecutionDiagnosticReportsRootS3URI', name: 'DataIntegrationFlowExecutionDiagnosticReportsRootS3URI', traits: {"smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.{1,1024}$"})
    DataIntegrationFlowExecutionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowExecutionList', name: 'DataIntegrationFlowExecutionList')
    DataIntegrationFlowExecutionMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowExecutionMaxResults', name: 'DataIntegrationFlowExecutionMaxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}})
    DataIntegrationFlowExecutionNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowExecutionNextToken', name: 'DataIntegrationFlowExecutionNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DataIntegrationFlowExecutionOutputMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowExecutionOutputMetadata', name: 'DataIntegrationFlowExecutionOutputMetadata')
    DataIntegrationFlowExecutionSourceInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowExecutionSourceInfo', name: 'DataIntegrationFlowExecutionSourceInfo')
    DataIntegrationFlowExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowExecutionStatus', name: 'DataIntegrationFlowExecutionStatus')
    DataIntegrationFlowFieldPriorityDedupeField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeField', name: 'DataIntegrationFlowFieldPriorityDedupeField')
    DataIntegrationFlowFieldPriorityDedupeFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeFieldList', name: 'DataIntegrationFlowFieldPriorityDedupeFieldList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataIntegrationFlowFieldPriorityDedupeFieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeFieldName', name: 'DataIntegrationFlowFieldPriorityDedupeFieldName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-z0-9_]+$"})
    DataIntegrationFlowFieldPriorityDedupeSortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeSortOrder', name: 'DataIntegrationFlowFieldPriorityDedupeSortOrder')
    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration', name: 'DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration')
    DataIntegrationFlowFileType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowFileType', name: 'DataIntegrationFlowFileType')
    DataIntegrationFlowList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowList', name: 'DataIntegrationFlowList')
    DataIntegrationFlowLoadType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowLoadType', name: 'DataIntegrationFlowLoadType')
    DataIntegrationFlowMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowMaxResults', name: 'DataIntegrationFlowMaxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 0, "max" => 20}})
    DataIntegrationFlowName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowName', name: 'DataIntegrationFlowName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    DataIntegrationFlowNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowNextToken', name: 'DataIntegrationFlowNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DataIntegrationFlowS3Options = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowS3Options', name: 'DataIntegrationFlowS3Options')
    DataIntegrationFlowS3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowS3Prefix', name: 'DataIntegrationFlowS3Prefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 700}, "smithy.api#pattern" => "^[/A-Za-z0-9._-]+$"})
    DataIntegrationFlowS3Source = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowS3Source', name: 'DataIntegrationFlowS3Source')
    DataIntegrationFlowS3SourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowS3SourceConfiguration', name: 'DataIntegrationFlowS3SourceConfiguration')
    DataIntegrationFlowS3TargetConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowS3TargetConfiguration', name: 'DataIntegrationFlowS3TargetConfiguration')
    DataIntegrationFlowSQLQuery = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowSQLQuery', name: 'DataIntegrationFlowSQLQuery', traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#sensitive" => {}})
    DataIntegrationFlowSQLTransformationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowSQLTransformationConfiguration', name: 'DataIntegrationFlowSQLTransformationConfiguration')
    DataIntegrationFlowSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowSource', name: 'DataIntegrationFlowSource')
    DataIntegrationFlowSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowSourceList', name: 'DataIntegrationFlowSourceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    DataIntegrationFlowSourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowSourceName', name: 'DataIntegrationFlowSourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    DataIntegrationFlowSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowSourceType', name: 'DataIntegrationFlowSourceType')
    DataIntegrationFlowTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowTarget', name: 'DataIntegrationFlowTarget')
    DataIntegrationFlowTargetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowTargetType', name: 'DataIntegrationFlowTargetType')
    DataIntegrationFlowTransformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowTransformation', name: 'DataIntegrationFlowTransformation')
    DataIntegrationFlowTransformationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataIntegrationFlowTransformationType', name: 'DataIntegrationFlowTransformationType')
    DataIntegrationS3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataIntegrationS3ObjectKey', name: 'DataIntegrationS3ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[/A-Za-z0-9._:*()'!=?&+;@-]+$"})
    DataLakeDataset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataLakeDataset', name: 'DataLakeDataset')
    DataLakeDatasetDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetDescription', name: 'DataLakeDatasetDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DataLakeDatasetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetList', name: 'DataLakeDatasetList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    DataLakeDatasetMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetMaxResults', name: 'DataLakeDatasetMaxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 0, "max" => 20}})
    DataLakeDatasetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetName', name: 'DataLakeDatasetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 75}, "smithy.api#pattern" => "^[a-z0-9_]+$"})
    DataLakeDatasetNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetNextToken', name: 'DataLakeDatasetNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DataLakeDatasetPartitionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetPartitionField', name: 'DataLakeDatasetPartitionField')
    DataLakeDatasetPartitionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetPartitionFieldList', name: 'DataLakeDatasetPartitionFieldList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DataLakeDatasetPartitionFieldTransform = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetPartitionFieldTransform', name: 'DataLakeDatasetPartitionFieldTransform')
    DataLakeDatasetPartitionSpec = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetPartitionSpec', name: 'DataLakeDatasetPartitionSpec')
    DataLakeDatasetPartitionTransformType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetPartitionTransformType', name: 'DataLakeDatasetPartitionTransformType')
    DataLakeDatasetPrimaryKeyField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetPrimaryKeyField', name: 'DataLakeDatasetPrimaryKeyField')
    DataLakeDatasetPrimaryKeyFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetPrimaryKeyFieldList', name: 'DataLakeDatasetPrimaryKeyFieldList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    DataLakeDatasetSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetSchema', name: 'DataLakeDatasetSchema')
    DataLakeDatasetSchemaField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetSchemaField', name: 'DataLakeDatasetSchemaField')
    DataLakeDatasetSchemaFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetSchemaFieldList', name: 'DataLakeDatasetSchemaFieldList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DataLakeDatasetSchemaFieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetSchemaFieldName', name: 'DataLakeDatasetSchemaFieldName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-z0-9_]+$"})
    DataLakeDatasetSchemaFieldType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetSchemaFieldType', name: 'DataLakeDatasetSchemaFieldType')
    DataLakeDatasetSchemaName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataLakeDatasetSchemaName', name: 'DataLakeDatasetSchemaName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    DataLakeNamespace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DataLakeNamespace', name: 'DataLakeNamespace')
    DataLakeNamespaceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataLakeNamespaceDescription', name: 'DataLakeNamespaceDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DataLakeNamespaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#DataLakeNamespaceList', name: 'DataLakeNamespaceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    DataLakeNamespaceMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.supplychain#DataLakeNamespaceMaxResults', name: 'DataLakeNamespaceMaxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}})
    DataLakeNamespaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataLakeNamespaceName', name: 'DataLakeNamespaceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-z0-9_]+$"})
    DataLakeNamespaceNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DataLakeNamespaceNextToken', name: 'DataLakeNamespaceNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    DatasetIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#DatasetIdentifier', name: 'DatasetIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[-_/A-Za-z0-9:]+$"})
    DeleteDataIntegrationFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DeleteDataIntegrationFlowRequest', name: 'DeleteDataIntegrationFlowRequest')
    DeleteDataIntegrationFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DeleteDataIntegrationFlowResponse', name: 'DeleteDataIntegrationFlowResponse')
    DeleteDataLakeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DeleteDataLakeDatasetRequest', name: 'DeleteDataLakeDatasetRequest')
    DeleteDataLakeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DeleteDataLakeDatasetResponse', name: 'DeleteDataLakeDatasetResponse')
    DeleteDataLakeNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DeleteDataLakeNamespaceRequest', name: 'DeleteDataLakeNamespaceRequest')
    DeleteDataLakeNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DeleteDataLakeNamespaceResponse', name: 'DeleteDataLakeNamespaceResponse')
    DeleteInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DeleteInstanceRequest', name: 'DeleteInstanceRequest')
    DeleteInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#DeleteInstanceResponse', name: 'DeleteInstanceResponse')
    GetBillOfMaterialsImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetBillOfMaterialsImportJobRequest', name: 'GetBillOfMaterialsImportJobRequest')
    GetBillOfMaterialsImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetBillOfMaterialsImportJobResponse', name: 'GetBillOfMaterialsImportJobResponse')
    GetDataIntegrationEventRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataIntegrationEventRequest', name: 'GetDataIntegrationEventRequest')
    GetDataIntegrationEventResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataIntegrationEventResponse', name: 'GetDataIntegrationEventResponse')
    GetDataIntegrationFlowExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataIntegrationFlowExecutionRequest', name: 'GetDataIntegrationFlowExecutionRequest')
    GetDataIntegrationFlowExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataIntegrationFlowExecutionResponse', name: 'GetDataIntegrationFlowExecutionResponse')
    GetDataIntegrationFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataIntegrationFlowRequest', name: 'GetDataIntegrationFlowRequest')
    GetDataIntegrationFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataIntegrationFlowResponse', name: 'GetDataIntegrationFlowResponse')
    GetDataLakeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataLakeDatasetRequest', name: 'GetDataLakeDatasetRequest')
    GetDataLakeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataLakeDatasetResponse', name: 'GetDataLakeDatasetResponse')
    GetDataLakeNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataLakeNamespaceRequest', name: 'GetDataLakeNamespaceRequest')
    GetDataLakeNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetDataLakeNamespaceResponse', name: 'GetDataLakeNamespaceResponse')
    GetInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetInstanceRequest', name: 'GetInstanceRequest')
    GetInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#GetInstanceResponse', name: 'GetInstanceResponse')
    Instance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#Instance', name: 'Instance')
    InstanceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#InstanceDescription', name: 'InstanceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 501}, "smithy.api#pattern" => "^([a-zA-Z0-9., _ʼ'%-]){0,500}$"})
    InstanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#InstanceList', name: 'InstanceList')
    InstanceMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.supplychain#InstanceMaxResults', name: 'InstanceMaxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 0, "max" => 20}})
    InstanceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#InstanceName', name: 'InstanceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^(?![ _ʼ'%-])[a-zA-Z0-9 _ʼ'%-]{0,62}[a-zA-Z0-9]$"})
    InstanceNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#InstanceNameList', name: 'InstanceNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    InstanceNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#InstanceNextToken', name: 'InstanceNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    InstanceState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.supplychain#InstanceState', name: 'InstanceState')
    InstanceStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#InstanceStateList', name: 'InstanceStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    InstanceWebAppDnsDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#InstanceWebAppDnsDomain', name: 'InstanceWebAppDnsDomain', traits: {"smithy.api#pattern" => "^(?![-])[a-zA-Z0-9-]{1,62}[a-zA-Z0-9]$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:kms:([a-z0-9][-.a-z0-9]{0,62})?:([a-z0-9][-.a-z0-9]{0,62})?:key/.{0,1019}$"})
    ListDataIntegrationEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataIntegrationEventsRequest', name: 'ListDataIntegrationEventsRequest')
    ListDataIntegrationEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataIntegrationEventsResponse', name: 'ListDataIntegrationEventsResponse')
    ListDataIntegrationFlowExecutionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataIntegrationFlowExecutionsRequest', name: 'ListDataIntegrationFlowExecutionsRequest')
    ListDataIntegrationFlowExecutionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataIntegrationFlowExecutionsResponse', name: 'ListDataIntegrationFlowExecutionsResponse')
    ListDataIntegrationFlowsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataIntegrationFlowsRequest', name: 'ListDataIntegrationFlowsRequest')
    ListDataIntegrationFlowsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataIntegrationFlowsResponse', name: 'ListDataIntegrationFlowsResponse')
    ListDataLakeDatasetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataLakeDatasetsRequest', name: 'ListDataLakeDatasetsRequest')
    ListDataLakeDatasetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataLakeDatasetsResponse', name: 'ListDataLakeDatasetsResponse')
    ListDataLakeNamespacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataLakeNamespacesRequest', name: 'ListDataLakeNamespacesRequest')
    ListDataLakeNamespacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListDataLakeNamespacesResponse', name: 'ListDataLakeNamespacesResponse')
    ListInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListInstancesRequest', name: 'ListInstancesRequest')
    ListInstancesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListInstancesResponse', name: 'ListInstancesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]*[a-z0-9]$"})
    SendDataIntegrationEventRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#SendDataIntegrationEventRequest', name: 'SendDataIntegrationEventRequest')
    SendDataIntegrationEventResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#SendDataIntegrationEventResponse', name: 'SendDataIntegrationEventResponse')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supplychain#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.supplychain#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supplychain#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDataIntegrationFlowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UpdateDataIntegrationFlowRequest', name: 'UpdateDataIntegrationFlowRequest')
    UpdateDataIntegrationFlowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UpdateDataIntegrationFlowResponse', name: 'UpdateDataIntegrationFlowResponse')
    UpdateDataLakeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UpdateDataLakeDatasetRequest', name: 'UpdateDataLakeDatasetRequest')
    UpdateDataLakeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UpdateDataLakeDatasetResponse', name: 'UpdateDataLakeDatasetResponse')
    UpdateDataLakeNamespaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UpdateDataLakeNamespaceRequest', name: 'UpdateDataLakeNamespaceRequest')
    UpdateDataLakeNamespaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UpdateDataLakeNamespaceResponse', name: 'UpdateDataLakeNamespaceResponse')
    UpdateInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UpdateInstanceRequest', name: 'UpdateInstanceRequest')
    UpdateInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#UpdateInstanceResponse', name: 'UpdateInstanceResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supplychain#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    BillOfMaterialsImportJob.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The BillOfMaterialsImportJob instanceId.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    BillOfMaterialsImportJob.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The BillOfMaterialsImportJob jobId.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobId"}))
    BillOfMaterialsImportJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The BillOfMaterialsImportJob ConfigurationJobStatus.</p>", "smithy.api#required" => {}}))
    BillOfMaterialsImportJob.add_member(:s3uri, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationS3Uri, location_name: 's3uri', traits: {"smithy.api#documentation" => "<p>The S3 URI from which the CSV is read.</p>", "smithy.api#required" => {}}))
    BillOfMaterialsImportJob.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>When the BillOfMaterialsImportJob has reached a terminal state, there will be a message.</p>"}))
    BillOfMaterialsImportJob.type = Types::BillOfMaterialsImportJob
    ConfigurationJobStatus.add_member(:new, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW', traits: {"smithy.api#enumValue" => "NEW"}))
    ConfigurationJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ConfigurationJobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ConfigurationJobStatus.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    ConfigurationJobStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateBillOfMaterialsImportJobRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBillOfMaterialsImportJobRequest.add_member(:s3uri, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationS3Uri, location_name: 's3uri', traits: {"smithy.api#documentation" => "<p>The S3 URI of the CSV file to be imported. The bucket must grant permissions for AWS Supply Chain to read the file.</p>", "smithy.api#required" => {}}))
    CreateBillOfMaterialsImportJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>An idempotency token ensures the API request is only completed no more than once. This way, retrying the request will not trigger the operation multiple times. A client token is a unique, case-sensitive string of 33 to 128 ASCII characters. To make an idempotent API request, specify a client token in the request. You should not reuse the same client token for other requests. If you retry a successful request with the same client token, the request will succeed with no further actions being taken, and you will receive the same API response as the original successful request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateBillOfMaterialsImportJobRequest.type = Types::CreateBillOfMaterialsImportJobRequest
    CreateBillOfMaterialsImportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The new BillOfMaterialsImportJob identifier.</p>", "smithy.api#required" => {}}))
    CreateBillOfMaterialsImportJobResponse.type = Types::CreateBillOfMaterialsImportJobResponse
    CreateDataIntegrationFlowRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of the DataIntegrationFlow.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The source configurations for DataIntegrationFlow.</p>", "smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowTransformation, location_name: 'transformation', traits: {"smithy.api#documentation" => "<p>The transformation configurations for DataIntegrationFlow.</p>", "smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowTarget, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The target configurations for DataIntegrationFlow.</p>", "smithy.api#required" => {}}))
    CreateDataIntegrationFlowRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the DataIntegrationFlow to be created</p>", "smithy.api#notProperty" => {}}))
    CreateDataIntegrationFlowRequest.type = Types::CreateDataIntegrationFlowRequest
    CreateDataIntegrationFlowResponse.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#required" => {}}))
    CreateDataIntegrationFlowResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegrationFlow created.</p>", "smithy.api#required" => {}}))
    CreateDataIntegrationFlowResponse.type = Types::CreateDataIntegrationFlowResponse
    CreateDataLakeDatasetRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeDatasetRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <b>default</b> - For datasets with custom user-defined schemas.</p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset. For <b>asc</b> name space, the name must be one of the supported data entities under <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeDatasetRequest.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The custom schema of the data lake dataset and required for dataset in <b>default</b> and custom namespaces.</p>"}))
    CreateDataLakeDatasetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the dataset.</p>"}))
    CreateDataLakeDatasetRequest.add_member(:partition_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionSpec, location_name: 'partitionSpec', traits: {"smithy.api#documentation" => "<p>The partition specification of the dataset. Partitioning can effectively improve the dataset query performance by reducing the amount of data scanned during query execution. But partitioning or not will affect how data get ingested by data ingestion methods, such as SendDataIntegrationEvent's dataset UPSERT will upsert records within partition (instead of within whole dataset). For more details, refer to those data ingestion documentations.</p>"}))
    CreateDataLakeDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the dataset.</p>", "smithy.api#notProperty" => {}}))
    CreateDataLakeDatasetRequest.type = Types::CreateDataLakeDatasetRequest
    CreateDataLakeDatasetResponse.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDataset, location_name: 'dataset', traits: {"smithy.api#documentation" => "<p>The detail of created dataset.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    CreateDataLakeDatasetResponse.type = Types::CreateDataLakeDatasetResponse
    CreateDataLakeNamespaceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeNamespaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the namespace. Noted you cannot create namespace with name starting with <b>asc</b>, <b>default</b>, <b>scn</b>, <b>aws</b>, <b>amazon</b>, <b>amzn</b>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataLakeNamespaceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the namespace.</p>"}))
    CreateDataLakeNamespaceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the namespace.</p>", "smithy.api#notProperty" => {}}))
    CreateDataLakeNamespaceRequest.type = Types::CreateDataLakeNamespaceRequest
    CreateDataLakeNamespaceResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The detail of created namespace.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    CreateDataLakeNamespaceResponse.type = Types::CreateDataLakeNamespaceResponse
    CreateInstanceRequest.add_member(:instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName, location_name: 'instanceName', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance name.</p>"}))
    CreateInstanceRequest.add_member(:instance_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceDescription, location_name: 'instanceDescription', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance description.</p>"}))
    CreateInstanceRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon Web Services owned KMS key. If you don't provide anything here, AWS Supply Chain uses the Amazon Web Services owned KMS key.</p>"}))
    CreateInstanceRequest.add_member(:web_app_dns_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceWebAppDnsDomain, location_name: 'webAppDnsDomain', traits: {"smithy.api#documentation" => "<p>The DNS subdomain of the web app. This would be \"example\" in the URL \"example.scn.global.on.aws\". You can set this to a custom value, as long as the domain isn't already being used by someone else. The name may only include alphanumeric characters and hyphens.</p>"}))
    CreateInstanceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services tags of an instance to be created.</p>", "smithy.api#notProperty" => {}}))
    CreateInstanceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token for idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateInstanceRequest.type = Types::CreateInstanceRequest
    CreateInstanceResponse.add_member(:instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Instance, location_name: 'instance', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance resource data details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    CreateInstanceResponse.type = Types::CreateInstanceResponse
    DataIntegrationEvent.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'eventId', traits: {"smithy.api#documentation" => "<p>The unique event identifier.</p>", "smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The data event type.</p>", "smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:event_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventGroupId, location_name: 'eventGroupId', traits: {"smithy.api#documentation" => "<p>Event identifier (for example, orderId for InboundOrder) used for data sharding or partitioning.</p>", "smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:event_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'eventTimestamp', traits: {"smithy.api#documentation" => "<p>The event timestamp (in epoch seconds).</p>", "smithy.api#required" => {}}))
    DataIntegrationEvent.add_member(:dataset_target_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetTargetDetails, location_name: 'datasetTargetDetails', traits: {"smithy.api#documentation" => "<p>The target dataset details for a DATASET event type.</p>"}))
    DataIntegrationEvent.type = Types::DataIntegrationEvent
    DataIntegrationEventDatasetLoadExecutionDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetLoadStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The event load execution status to target dataset.</p>", "smithy.api#required" => {}}))
    DataIntegrationEventDatasetLoadExecutionDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The failure message (if any) of failed event load execution to dataset.</p>"}))
    DataIntegrationEventDatasetLoadExecutionDetails.type = Types::DataIntegrationEventDatasetLoadExecutionDetails
    DataIntegrationEventDatasetLoadStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DataIntegrationEventDatasetLoadStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DataIntegrationEventDatasetLoadStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DataIntegrationEventDatasetOperationType.add_member(:append, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPEND', traits: {"smithy.api#enumValue" => "APPEND"}))
    DataIntegrationEventDatasetOperationType.add_member(:upsert, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPSERT', traits: {"smithy.api#enumValue" => "UPSERT"}))
    DataIntegrationEventDatasetOperationType.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    DataIntegrationEventDatasetTargetConfiguration.add_member(:dataset_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationDatasetArn, location_name: 'datasetIdentifier', traits: {"smithy.api#documentation" => "<p>The datalake dataset ARN identifier.</p>", "smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetConfiguration.add_member(:operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetOperationType, location_name: 'operationType', traits: {"smithy.api#documentation" => "<p>The target dataset load operation type.</p>", "smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetConfiguration.type = Types::DataIntegrationEventDatasetTargetConfiguration
    DataIntegrationEventDatasetTargetDetails.add_member(:dataset_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationDatasetArn, location_name: 'datasetIdentifier', traits: {"smithy.api#documentation" => "<p>The datalake dataset ARN identifier.</p>", "smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetDetails.add_member(:operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetOperationType, location_name: 'operationType', traits: {"smithy.api#documentation" => "<p>The target dataset load operation type. The available options are:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>APPEND</b> - Add new records to the dataset. Noted that this operation type will just try to append records as-is without any primary key or partition constraints.</p>\n            </li>\n            <li>\n               <p>\n                  <b>UPSERT</b> - Modify existing records in the dataset with primary key configured, events for datasets without primary keys are not allowed. If event data contains primary keys that match records in the dataset within same partition, then those existing records (in that partition) will be updated. If primary keys do not match, new records will be added. Note that if dataset contain records with duplicate primary key values in the same partition, those duplicate records will be deduped into one updated record.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DELETE</b> - Remove existing records in the dataset with primary key configured, events for datasets without primary keys are not allowed. If event data contains primary keys that match records in the dataset within same partition, then those existing records (in that partition) will be deleted. If primary keys do not match, no actions will be done. Note that if dataset contain records with duplicate primary key values in the same partition, all those duplicates will be removed.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetDetails.add_member(:dataset_load_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetLoadExecutionDetails, location_name: 'datasetLoadExecution', traits: {"smithy.api#documentation" => "<p>The target dataset load execution.</p>", "smithy.api#required" => {}}))
    DataIntegrationEventDatasetTargetDetails.type = Types::DataIntegrationEventDatasetTargetDetails
    DataIntegrationEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEvent)
    DataIntegrationEventType.add_member(:forecast, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORECAST', traits: {"smithy.api#enumValue" => "scn.data.forecast"}))
    DataIntegrationEventType.add_member(:inventory_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVENTORY_LEVEL', traits: {"smithy.api#enumValue" => "scn.data.inventorylevel"}))
    DataIntegrationEventType.add_member(:inbound_order, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INBOUND_ORDER', traits: {"smithy.api#enumValue" => "scn.data.inboundorder"}))
    DataIntegrationEventType.add_member(:inbound_order_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INBOUND_ORDER_LINE', traits: {"smithy.api#enumValue" => "scn.data.inboundorderline"}))
    DataIntegrationEventType.add_member(:inbound_order_line_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INBOUND_ORDER_LINE_SCHEDULE', traits: {"smithy.api#enumValue" => "scn.data.inboundorderlineschedule"}))
    DataIntegrationEventType.add_member(:outbound_order_line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTBOUND_ORDER_LINE', traits: {"smithy.api#enumValue" => "scn.data.outboundorderline"}))
    DataIntegrationEventType.add_member(:outbound_shipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTBOUND_SHIPMENT', traits: {"smithy.api#enumValue" => "scn.data.outboundshipment"}))
    DataIntegrationEventType.add_member(:process_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESS_HEADER', traits: {"smithy.api#enumValue" => "scn.data.processheader"}))
    DataIntegrationEventType.add_member(:process_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESS_OPERATION', traits: {"smithy.api#enumValue" => "scn.data.processoperation"}))
    DataIntegrationEventType.add_member(:process_product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESS_PRODUCT', traits: {"smithy.api#enumValue" => "scn.data.processproduct"}))
    DataIntegrationEventType.add_member(:reservation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESERVATION', traits: {"smithy.api#enumValue" => "scn.data.reservation"}))
    DataIntegrationEventType.add_member(:shipment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHIPMENT', traits: {"smithy.api#enumValue" => "scn.data.shipment"}))
    DataIntegrationEventType.add_member(:shipment_stop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHIPMENT_STOP', traits: {"smithy.api#enumValue" => "scn.data.shipmentstop"}))
    DataIntegrationEventType.add_member(:shipment_stop_order, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHIPMENT_STOP_ORDER', traits: {"smithy.api#enumValue" => "scn.data.shipmentstoporder"}))
    DataIntegrationEventType.add_member(:supply_plan, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPPLY_PLAN', traits: {"smithy.api#enumValue" => "scn.data.supplyplan"}))
    DataIntegrationEventType.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATASET', traits: {"smithy.api#enumValue" => "scn.data.dataset"}))
    DataIntegrationFlow.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow instance ID.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    DataIntegrationFlow.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow name.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DataIntegrationFlow.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow source configurations.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlow.add_member(:transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowTransformation, location_name: 'transformation', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow transformation configurations.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlow.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowTarget, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow target configuration.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlow.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow creation timestamp.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlow.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow last modified timestamp.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlow.type = Types::DataIntegrationFlow
    DataIntegrationFlowDatasetOptions.add_member(:load_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowLoadType, location_name: 'loadType', traits: {"smithy.api#documentation" => "<p>The target dataset's data load type. This only affects how source S3 files are selected in the S3-to-dataset flow.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>REPLACE</b> - Target dataset will get replaced with the new file added under the source s3 prefix.</p>\n            </li>\n            <li>\n               <p>\n                  <b>INCREMENTAL</b> - Target dataset will get updated with the up-to-date content under S3 prefix incorporating any file additions or removals there.</p>\n            </li>\n         </ul>"}))
    DataIntegrationFlowDatasetOptions.add_member(:dedupe_records, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'dedupeRecords', traits: {"smithy.api#documentation" => "<p>The option to perform deduplication on data records sharing same primary key values. If disabled, transformed data with duplicate primary key values will ingest into dataset, for datasets within <b>asc</b> namespace, such duplicates will cause ingestion fail. If enabled without dedupeStrategy, deduplication is done by retaining a random data record among those sharing the same primary key values. If enabled with dedupeStragtegy, the deduplication is done following the strategy.</p>\n         <p>Note that target dataset may have partition configured, when dedupe is enabled, it only dedupe against primary keys and retain only one record out of those duplicates regardless of its partition status.</p>"}))
    DataIntegrationFlowDatasetOptions.add_member(:dedupe_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowDedupeStrategy, location_name: 'dedupeStrategy', traits: {"smithy.api#documentation" => "<p>The deduplication strategy to dedupe the data records sharing same primary key values of the target dataset. This strategy only applies to target dataset with primary keys and with dedupeRecords option enabled. If transformed data still got duplicates after the dedupeStrategy evaluation, a random data record is chosen to be retained.</p>"}))
    DataIntegrationFlowDatasetOptions.type = Types::DataIntegrationFlowDatasetOptions
    DataIntegrationFlowDatasetSource.add_member(:dataset_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationDatasetArn, location_name: 'datasetIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset source.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowDatasetSource.type = Types::DataIntegrationFlowDatasetSource
    DataIntegrationFlowDatasetSourceConfiguration.add_member(:dataset_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetIdentifier, location_name: 'datasetIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowDatasetSourceConfiguration.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetOptions, location_name: 'options', traits: {"smithy.api#documentation" => "<p>The dataset DataIntegrationFlow source options.</p>"}))
    DataIntegrationFlowDatasetSourceConfiguration.type = Types::DataIntegrationFlowDatasetSourceConfiguration
    DataIntegrationFlowDatasetTargetConfiguration.add_member(:dataset_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetIdentifier, location_name: 'datasetIdentifier', traits: {"smithy.api#documentation" => "<p>The dataset ARN.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowDatasetTargetConfiguration.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetOptions, location_name: 'options', traits: {"smithy.api#documentation" => "<p>The dataset DataIntegrationFlow target options.</p>"}))
    DataIntegrationFlowDatasetTargetConfiguration.type = Types::DataIntegrationFlowDatasetTargetConfiguration
    DataIntegrationFlowDedupeStrategy.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowDedupeStrategyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the deduplication strategy.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>FIELD_PRIORITY</b> - Field priority configuration for the deduplication strategy specifies an ordered list of fields used to tie-break the data records sharing the same primary key values. Fields earlier in the list have higher priority for evaluation. For each field, the sort order determines whether to retain data record with larger or smaller field value.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DataIntegrationFlowDedupeStrategy.add_member(:field_priority, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration, location_name: 'fieldPriority', traits: {"smithy.api#documentation" => "<p>The field priority deduplication strategy.</p>"}))
    DataIntegrationFlowDedupeStrategy.type = Types::DataIntegrationFlowDedupeStrategy
    DataIntegrationFlowDedupeStrategyType.add_member(:field_priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_PRIORITY', traits: {"smithy.api#enumValue" => "FIELD_PRIORITY"}))
    DataIntegrationFlowExecution.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The flow execution's instanceId.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    DataIntegrationFlowExecution.add_member(:flow_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'flowName', traits: {"smithy.api#documentation" => "<p>The flow execution's flowName.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "flowName"}))
    DataIntegrationFlowExecution.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The flow executionId.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "executionId"}))
    DataIntegrationFlowExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of flow execution.</p>"}))
    DataIntegrationFlowExecution.add_member(:source_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionSourceInfo, location_name: 'sourceInfo', traits: {"smithy.api#documentation" => "<p>The source information for a flow execution.</p>"}))
    DataIntegrationFlowExecution.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The failure message (if any) of failed flow execution.</p>"}))
    DataIntegrationFlowExecution.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The flow execution start timestamp.</p>"}))
    DataIntegrationFlowExecution.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The flow execution end timestamp.</p>"}))
    DataIntegrationFlowExecution.add_member(:output_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionOutputMetadata, location_name: 'outputMetadata', traits: {"smithy.api#documentation" => "<p>The flow execution output metadata.</p>"}))
    DataIntegrationFlowExecution.type = Types::DataIntegrationFlowExecution
    DataIntegrationFlowExecutionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecution)
    DataIntegrationFlowExecutionOutputMetadata.add_member(:diagnostic_reports_root_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionDiagnosticReportsRootS3URI, location_name: 'diagnosticReportsRootS3URI', traits: {"smithy.api#documentation" => "<p>The S3 URI under which all diagnostic files (such as deduped records if any) are stored.</p>"}))
    DataIntegrationFlowExecutionOutputMetadata.type = Types::DataIntegrationFlowExecutionOutputMetadata
    DataIntegrationFlowExecutionSourceInfo.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceType, location_name: 'sourceType', traits: {"smithy.api#documentation" => "<p>The data integration flow execution source type.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowExecutionSourceInfo.add_member(:s3_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Source, location_name: 's3Source', traits: {"smithy.api#documentation" => "<p>The source details of a flow execution with S3 source.</p>"}))
    DataIntegrationFlowExecutionSourceInfo.add_member(:dataset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetSource, location_name: 'datasetSource', traits: {"smithy.api#documentation" => "<p>The source details of a flow execution with dataset source.</p>"}))
    DataIntegrationFlowExecutionSourceInfo.type = Types::DataIntegrationFlowExecutionSourceInfo
    DataIntegrationFlowExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DataIntegrationFlowExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DataIntegrationFlowExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DataIntegrationFlowFieldPriorityDedupeField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeFieldName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the deduplication field. Must exist in the dataset and not be a primary key.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowFieldPriorityDedupeField.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeSortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The sort order for the deduplication field.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowFieldPriorityDedupeField.type = Types::DataIntegrationFlowFieldPriorityDedupeField
    DataIntegrationFlowFieldPriorityDedupeFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeField)
    DataIntegrationFlowFieldPriorityDedupeSortOrder.add_member(:asc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    DataIntegrationFlowFieldPriorityDedupeSortOrder.add_member(:desc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))
    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowFieldPriorityDedupeFieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The list of field names and their sort order for deduplication, arranged in descending priority from highest to lowest.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration.type = Types::DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration
    DataIntegrationFlowFileType.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    DataIntegrationFlowFileType.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    DataIntegrationFlowFileType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    DataIntegrationFlowList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlow)
    DataIntegrationFlowLoadType.add_member(:incremental, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCREMENTAL', traits: {"smithy.api#enumValue" => "INCREMENTAL"}))
    DataIntegrationFlowLoadType.add_member(:replace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    DataIntegrationFlowS3Options.add_member(:file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowFileType, location_name: 'fileType', traits: {"smithy.api#documentation" => "<p>The Amazon S3 file type in S3 options.</p>"}))
    DataIntegrationFlowS3Options.type = Types::DataIntegrationFlowS3Options
    DataIntegrationFlowS3Source.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The S3 bucket name of the S3 source.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowS3Source.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationS3ObjectKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The S3 object key of the S3 source.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowS3Source.type = Types::DataIntegrationFlowS3Source
    DataIntegrationFlowS3SourceConfiguration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The bucketName of the S3 source objects.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowS3SourceConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The prefix of the S3 source objects. To trigger data ingestion, S3 files need to be put under <code>s3://<i>bucketName</i>/<i>prefix</i>/</code>.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowS3SourceConfiguration.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Options, location_name: 'options', traits: {"smithy.api#documentation" => "<p>The other options of the S3 DataIntegrationFlow source.</p>"}))
    DataIntegrationFlowS3SourceConfiguration.type = Types::DataIntegrationFlowS3SourceConfiguration
    DataIntegrationFlowS3TargetConfiguration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The bucketName of the S3 target objects.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowS3TargetConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The prefix of the S3 target objects.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowS3TargetConfiguration.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowS3Options, location_name: 'options', traits: {"smithy.api#documentation" => "<p>The S3 DataIntegrationFlow target options.</p>"}))
    DataIntegrationFlowS3TargetConfiguration.type = Types::DataIntegrationFlowS3TargetConfiguration
    DataIntegrationFlowSQLTransformationConfiguration.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSQLQuery, location_name: 'query', traits: {"smithy.api#documentation" => "<p>The transformation SQL query body based on SparkSQL.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowSQLTransformationConfiguration.type = Types::DataIntegrationFlowSQLTransformationConfiguration
    DataIntegrationFlowSource.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceType, location_name: 'sourceType', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow source type.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowSource.add_member(:source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceName, location_name: 'sourceName', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow source name that can be used as table alias in SQL transformation query.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowSource.add_member(:s3_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowS3SourceConfiguration, location_name: 's3Source', traits: {"smithy.api#documentation" => "<p>The S3 DataIntegrationFlow source.</p>"}))
    DataIntegrationFlowSource.add_member(:dataset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetSourceConfiguration, location_name: 'datasetSource', traits: {"smithy.api#documentation" => "<p>The dataset DataIntegrationFlow source.</p>"}))
    DataIntegrationFlowSource.type = Types::DataIntegrationFlowSource
    DataIntegrationFlowSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSource)
    DataIntegrationFlowSourceType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    DataIntegrationFlowSourceType.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATASET', traits: {"smithy.api#enumValue" => "DATASET"}))
    DataIntegrationFlowTarget.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowTargetType, location_name: 'targetType', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow target type.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowTarget.add_member(:s3_target, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowS3TargetConfiguration, location_name: 's3Target', traits: {"smithy.api#documentation" => "<p>The S3 DataIntegrationFlow target.</p>"}))
    DataIntegrationFlowTarget.add_member(:dataset_target, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowDatasetTargetConfiguration, location_name: 'datasetTarget', traits: {"smithy.api#documentation" => "<p>The dataset DataIntegrationFlow target. Note that for AWS Supply Chain dataset under <b>asc</b> namespace, it has a connection_id internal field that is not allowed to be provided by client directly, they will be auto populated.</p>"}))
    DataIntegrationFlowTarget.type = Types::DataIntegrationFlowTarget
    DataIntegrationFlowTargetType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    DataIntegrationFlowTargetType.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATASET', traits: {"smithy.api#enumValue" => "DATASET"}))
    DataIntegrationFlowTransformation.add_member(:transformation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowTransformationType, location_name: 'transformationType', traits: {"smithy.api#documentation" => "<p>The DataIntegrationFlow transformation type.</p>", "smithy.api#required" => {}}))
    DataIntegrationFlowTransformation.add_member(:sql_transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSQLTransformationConfiguration, location_name: 'sqlTransformation', traits: {"smithy.api#documentation" => "<p>The SQL DataIntegrationFlow transformation configuration.</p>"}))
    DataIntegrationFlowTransformation.type = Types::DataIntegrationFlowTransformation
    DataIntegrationFlowTransformationType.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL', traits: {"smithy.api#enumValue" => "SQL"}))
    DataIntegrationFlowTransformationType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DataLakeDataset.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    DataLakeDataset.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <b>default</b> - For datasets with custom user-defined schemas.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "namespace"}))
    DataLakeDataset.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DataLakeDataset.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AscResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The arn of the dataset.</p>", "smithy.api#required" => {}}))
    DataLakeDataset.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The schema of the dataset.</p>", "smithy.api#required" => {}}))
    DataLakeDataset.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the dataset.</p>"}))
    DataLakeDataset.add_member(:partition_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionSpec, location_name: 'partitionSpec'))
    DataLakeDataset.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The creation time of the dataset.</p>", "smithy.api#required" => {}}))
    DataLakeDataset.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last modified time of the dataset.</p>", "smithy.api#required" => {}}))
    DataLakeDataset.type = Types::DataLakeDataset
    DataLakeDatasetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDataset)
    DataLakeDatasetPartitionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the partition field.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetPartitionField.add_member(:transform, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionFieldTransform, location_name: 'transform', traits: {"smithy.api#documentation" => "<p>The transformation of the partition field. A transformation specifies how to partition on a given field. For example, with timestamp you can specify that you'd like to partition fields by day, e.g. data record with value 2025-01-03T00:00:00Z in partition field is in 2025-01-03 partition. Also noted that data record without any value in optional partition field is in NULL partition.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetPartitionField.type = Types::DataLakeDatasetPartitionField
    DataLakeDatasetPartitionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionField)
    DataLakeDatasetPartitionFieldTransform.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionTransformType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of partitioning transformation for this field. The available options are:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>IDENTITY</b> - Partitions data on a given field by its exact values.</p>\n            </li>\n            <li>\n               <p>\n                  <b>YEAR</b> - Partitions data on a timestamp field using year granularity.</p>\n            </li>\n            <li>\n               <p>\n                  <b>MONTH</b> - Partitions data on a timestamp field using month granularity.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DAY</b> - Partitions data on a timestamp field using day granularity.</p>\n            </li>\n            <li>\n               <p>\n                  <b>HOUR</b> - Partitions data on a timestamp field using hour granularity.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DataLakeDatasetPartitionFieldTransform.type = Types::DataLakeDatasetPartitionFieldTransform
    DataLakeDatasetPartitionSpec.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetPartitionFieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The fields on which to partition a dataset. The partitions will be applied hierarchically based on the order of this list.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetPartitionSpec.type = Types::DataLakeDatasetPartitionSpec
    DataLakeDatasetPartitionTransformType.add_member(:year, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YEAR', traits: {"smithy.api#enumValue" => "YEAR"}))
    DataLakeDatasetPartitionTransformType.add_member(:month, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTH', traits: {"smithy.api#enumValue" => "MONTH"}))
    DataLakeDatasetPartitionTransformType.add_member(:day, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY', traits: {"smithy.api#enumValue" => "DAY"}))
    DataLakeDatasetPartitionTransformType.add_member(:hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOUR', traits: {"smithy.api#enumValue" => "HOUR"}))
    DataLakeDatasetPartitionTransformType.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTITY', traits: {"smithy.api#enumValue" => "IDENTITY"}))
    DataLakeDatasetPrimaryKeyField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the primary key field.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetPrimaryKeyField.type = Types::DataLakeDatasetPrimaryKeyField
    DataLakeDatasetPrimaryKeyFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetPrimaryKeyField)
    DataLakeDatasetSchema.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset schema.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetSchema.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The list of field details of the dataset schema.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetSchema.add_member(:primary_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetPrimaryKeyFieldList, location_name: 'primaryKeys', traits: {"smithy.api#documentation" => "<p>The list of primary key fields for the dataset. Primary keys defined can help data ingestion methods to ensure data uniqueness: CreateDataIntegrationFlow's dedupe strategy will leverage primary keys to perform records deduplication before write to dataset; SendDataIntegrationEvent's UPSERT and DELETE can only work with dataset with primary keys. For more details, refer to those data ingestion documentations.</p>\n         <p>Note that defining primary keys does not necessarily mean the dataset cannot have duplicate records, duplicate records can still be ingested if CreateDataIntegrationFlow's dedupe disabled or through SendDataIntegrationEvent's APPEND operation.</p>"}))
    DataLakeDatasetSchema.type = Types::DataLakeDatasetSchema
    DataLakeDatasetSchemaField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The dataset field name.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetSchemaField.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaFieldType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The dataset field type.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetSchemaField.add_member(:is_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isRequired', traits: {"smithy.api#documentation" => "<p>Indicate if the field is required or not.</p>", "smithy.api#required" => {}}))
    DataLakeDatasetSchemaField.type = Types::DataLakeDatasetSchemaField
    DataLakeDatasetSchemaFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetSchemaField)
    DataLakeDatasetSchemaFieldType.add_member(:int, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT', traits: {"smithy.api#enumValue" => "INT"}))
    DataLakeDatasetSchemaFieldType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    DataLakeDatasetSchemaFieldType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    DataLakeDatasetSchemaFieldType.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    DataLakeDatasetSchemaFieldType.add_member(:long, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LONG', traits: {"smithy.api#enumValue" => "LONG"}))
    DataLakeNamespace.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    DataLakeNamespace.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the namespace.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DataLakeNamespace.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AscResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The arn of the namespace.</p>", "smithy.api#required" => {}}))
    DataLakeNamespace.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the namespace.</p>"}))
    DataLakeNamespace.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The creation time of the namespace.</p>", "smithy.api#required" => {}}))
    DataLakeNamespace.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last modified time of the namespace.</p>", "smithy.api#required" => {}}))
    DataLakeNamespace.type = Types::DataLakeNamespace
    DataLakeNamespaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespace)
    DeleteDataIntegrationFlowRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataIntegrationFlowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegrationFlow to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataIntegrationFlowRequest.type = Types::DeleteDataIntegrationFlowRequest
    DeleteDataIntegrationFlowResponse.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#required" => {}}))
    DeleteDataIntegrationFlowResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegrationFlow deleted.</p>", "smithy.api#required" => {}}))
    DeleteDataIntegrationFlowResponse.type = Types::DeleteDataIntegrationFlowResponse
    DeleteDataLakeDatasetRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeDatasetRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <b>default</b> - For datasets with custom user-defined schemas.</p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeDatasetRequest.type = Types::DeleteDataLakeDatasetRequest
    DeleteDataLakeDatasetResponse.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#required" => {}}))
    DeleteDataLakeDatasetResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of deleted dataset.</p>", "smithy.api#required" => {}}))
    DeleteDataLakeDatasetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of deleted dataset.</p>", "smithy.api#required" => {}}))
    DeleteDataLakeDatasetResponse.type = Types::DeleteDataLakeDatasetResponse
    DeleteDataLakeNamespaceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeNamespaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the namespace. Noted you cannot delete pre-defined namespace like <b>asc</b>, <b>default</b> which are only deleted through instance deletion.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataLakeNamespaceRequest.type = Types::DeleteDataLakeNamespaceRequest
    DeleteDataLakeNamespaceResponse.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#required" => {}}))
    DeleteDataLakeNamespaceResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of deleted namespace.</p>", "smithy.api#required" => {}}))
    DeleteDataLakeNamespaceResponse.type = Types::DeleteDataLakeNamespaceResponse
    DeleteInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInstanceRequest.type = Types::DeleteInstanceRequest
    DeleteInstanceResponse.add_member(:instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Instance, location_name: 'instance', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance resource data details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    DeleteInstanceResponse.type = Types::DeleteInstanceResponse
    GetBillOfMaterialsImportJobRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBillOfMaterialsImportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The BillOfMaterialsImportJob identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBillOfMaterialsImportJobRequest.type = Types::GetBillOfMaterialsImportJobRequest
    GetBillOfMaterialsImportJobResponse.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: BillOfMaterialsImportJob, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The BillOfMaterialsImportJob.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetBillOfMaterialsImportJobResponse.type = Types::GetBillOfMaterialsImportJobResponse
    GetDataIntegrationEventRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationEventRequest.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'eventId', traits: {"smithy.api#documentation" => "<p>The unique event identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationEventRequest.type = Types::GetDataIntegrationEventRequest
    GetDataIntegrationEventResponse.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The details of the DataIntegrationEvent returned.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationEventResponse.type = Types::GetDataIntegrationEventResponse
    GetDataIntegrationFlowExecutionRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowExecutionRequest.add_member(:flow_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'flowName', traits: {"smithy.api#documentation" => "<p>The flow name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowExecutionRequest.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The flow execution identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowExecutionRequest.type = Types::GetDataIntegrationFlowExecutionRequest
    GetDataIntegrationFlowExecutionResponse.add_member(:flow_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecution, location_name: 'flowExecution', traits: {"smithy.api#documentation" => "<p>The flow execution details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowExecutionResponse.type = Types::GetDataIntegrationFlowExecutionResponse
    GetDataIntegrationFlowRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegrationFlow created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowRequest.type = Types::GetDataIntegrationFlowRequest
    GetDataIntegrationFlowResponse.add_member(:flow, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlow, location_name: 'flow', traits: {"smithy.api#documentation" => "<p>The details of the DataIntegrationFlow returned.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataIntegrationFlowResponse.type = Types::GetDataIntegrationFlowResponse
    GetDataLakeDatasetRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeDatasetRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <b>default</b> - For datasets with custom user-defined schemas.</p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeDatasetRequest.type = Types::GetDataLakeDatasetRequest
    GetDataLakeDatasetResponse.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDataset, location_name: 'dataset', traits: {"smithy.api#documentation" => "<p>The fetched dataset details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataLakeDatasetResponse.type = Types::GetDataLakeDatasetResponse
    GetDataLakeNamespaceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeNamespaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the namespace. Besides the namespaces user created, you can also specify the pre-defined namespaces:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>asc</b> - Pre-defined namespace containing Amazon Web Services Supply Chain supported datasets, see <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <b>default</b> - Pre-defined namespace containing datasets with custom user-defined schemas.</p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataLakeNamespaceRequest.type = Types::GetDataLakeNamespaceRequest
    GetDataLakeNamespaceResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The fetched namespace details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataLakeNamespaceResponse.type = Types::GetDataLakeNamespaceResponse
    GetInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInstanceRequest.type = Types::GetInstanceRequest
    GetInstanceResponse.add_member(:instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Instance, location_name: 'instance', traits: {"smithy.api#documentation" => "<p>The instance resource data details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetInstanceResponse.type = Types::GetInstanceResponse
    Instance.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "instanceId"}))
    Instance.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'awsAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the instance.</p>", "smithy.api#required" => {}}))
    Instance.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the instance.</p>", "smithy.api#required" => {}}))
    Instance.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance error message. If the instance results in an unhealthy state, customers need to check the error message, delete the current instance, and recreate a new one based on the mitigation from the error message.</p>"}))
    Instance.add_member(:web_app_dns_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceWebAppDnsDomain, location_name: 'webAppDnsDomain', traits: {"smithy.api#documentation" => "<p>The WebApp DNS domain name of the instance.</p>"}))
    Instance.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The instance creation timestamp.</p>"}))
    Instance.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedTime', traits: {"smithy.api#documentation" => "<p>The instance last modified timestamp.</p>"}))
    Instance.add_member(:instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName, location_name: 'instanceName', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance name.</p>"}))
    Instance.add_member(:instance_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceDescription, location_name: 'instanceDescription', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance description.</p>"}))
    Instance.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you optionally provided for encryption. If you did not provide anything here, AWS Supply Chain uses the Amazon Web Services owned KMS key and nothing is returned.</p>"}))
    Instance.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'versionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the instance.</p>"}))
    Instance.type = Types::Instance
    InstanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InstanceNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName)
    InstanceState.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "Initializing"}))
    InstanceState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    InstanceState.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CreateFailed"}))
    InstanceState.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DeleteFailed"}))
    InstanceState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "Deleting"}))
    InstanceState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    InstanceStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceState)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    ListDataIntegrationEventsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationEventsRequest.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>List data integration events for the specified eventType.</p>", "smithy.api#httpQuery" => "eventType"}))
    ListDataIntegrationEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch the next page of the data integration events.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>Specify the maximum number of data integration events to fetch in one paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationEventsRequest.type = Types::ListDataIntegrationEventsRequest
    ListDataIntegrationEventsResponse.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The list of data integration events.</p>", "smithy.api#required" => {}}))
    ListDataIntegrationEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch the next page of the ListDataIntegrationEvents.</p>"}))
    ListDataIntegrationEventsResponse.type = Types::ListDataIntegrationEventsResponse
    ListDataIntegrationFlowExecutionsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationFlowExecutionsRequest.add_member(:flow_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'flowName', traits: {"smithy.api#documentation" => "<p>The flow name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationFlowExecutionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch next page of flow executions.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationFlowExecutionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>The number to specify the max number of flow executions to fetch in this paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationFlowExecutionsRequest.type = Types::ListDataIntegrationFlowExecutionsRequest
    ListDataIntegrationFlowExecutionsResponse.add_member(:flow_executions, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionList, location_name: 'flowExecutions', traits: {"smithy.api#documentation" => "<p>The list of flow executions.</p>", "smithy.api#required" => {}}))
    ListDataIntegrationFlowExecutionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowExecutionNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch next page of flow executions.</p>"}))
    ListDataIntegrationFlowExecutionsResponse.type = Types::ListDataIntegrationFlowExecutionsResponse
    ListDataIntegrationFlowsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataIntegrationFlowsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch the next page of the DataIntegrationFlows.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataIntegrationFlowsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>Specify the maximum number of DataIntegrationFlows to fetch in one paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataIntegrationFlowsRequest.type = Types::ListDataIntegrationFlowsRequest
    ListDataIntegrationFlowsResponse.add_member(:flows, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowList, location_name: 'flows', traits: {"smithy.api#documentation" => "<p>The response parameters for ListDataIntegrationFlows.</p>", "smithy.api#required" => {}}))
    ListDataIntegrationFlowsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch the next page of the DataIntegrationFlows.</p>"}))
    ListDataIntegrationFlowsResponse.type = Types::ListDataIntegrationFlowsResponse
    ListDataLakeDatasetsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataLakeDatasetsRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <b>default</b> - For datasets with custom user-defined schemas.</p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataLakeDatasetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch next page of datasets.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataLakeDatasetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>The max number of datasets to fetch in this paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataLakeDatasetsRequest.type = Types::ListDataLakeDatasetsRequest
    ListDataLakeDatasetsResponse.add_member(:datasets, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetList, location_name: 'datasets', traits: {"smithy.api#documentation" => "<p>The list of fetched dataset details.</p>", "smithy.api#required" => {}}))
    ListDataLakeDatasetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch next page of datasets.</p>"}))
    ListDataLakeDatasetsResponse.type = Types::ListDataLakeDatasetsResponse
    ListDataLakeNamespacesRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataLakeNamespacesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch next page of namespaces.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataLakeNamespacesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>The max number of namespaces to fetch in this paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataLakeNamespacesRequest.type = Types::ListDataLakeNamespacesRequest
    ListDataLakeNamespacesResponse.add_member(:namespaces, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceList, location_name: 'namespaces', traits: {"smithy.api#documentation" => "<p>The list of fetched namespace details. Noted it only contains custom namespaces, pre-defined namespaces are not included.</p>", "smithy.api#required" => {}}))
    ListDataLakeNamespacesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch next page of namespaces.</p>"}))
    ListDataLakeNamespacesResponse.type = Types::ListDataLakeNamespacesResponse
    ListInstancesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch the next page of instances.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListInstancesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>Specify the maximum number of instances to fetch in this paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListInstancesRequest.add_member(:instance_name_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameList, location_name: 'instanceNameFilter', traits: {"smithy.api#documentation" => "<p>The filter to ListInstances based on their names.</p>", "smithy.api#httpQuery" => "instanceNameFilter"}))
    ListInstancesRequest.add_member(:instance_state_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStateList, location_name: 'instanceStateFilter', traits: {"smithy.api#documentation" => "<p>The filter to ListInstances based on their state.</p>", "smithy.api#httpQuery" => "instanceStateFilter"}))
    ListInstancesRequest.type = Types::ListInstancesRequest
    ListInstancesResponse.add_member(:instances, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'instances', traits: {"smithy.api#documentation" => "<p>The list of instances resource data details.</p>", "smithy.api#required" => {}}))
    ListInstancesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to fetch the next page of instances.</p>"}))
    ListInstancesResponse.type = Types::ListInstancesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AscResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply chain resource ARN that needs tags to be listed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags added to an Amazon Web Services Supply Chain resource.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SendDataIntegrationEventRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendDataIntegrationEventRequest.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The data event type.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>scn.data.dataset</b> - Send data directly to any specified dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.supplyplan</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/supply-plan-entity.html\">supply_plan</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.shipmentstoporder</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-order-entity.html\">shipment_stop_order</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.shipmentstop</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-entity.html\">shipment_stop</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.shipment</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-entity.html\">shipment</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.reservation</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/planning-reservation-entity.html\">reservation</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.processproduct</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-product-entity.html\">process_product</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.processoperation</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-operation-entity.html\">process_operation</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.processheader</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-header-entity.html\">process_header</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.forecast</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/forecast-forecast-entity.html\">forecast</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.inventorylevel</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/inventory_mgmnt-inv-level-entity.html\">inv_level</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.inboundorder</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-entity.html\">inbound_order</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.inboundorderline</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-entity.html\">inbound_order_line</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.inboundorderlineschedule</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-schedule-entity.html\">inbound_order_line_schedule</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.outboundorderline</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-order-line-entity.html\">outbound_order_line</a> dataset.</p>\n            </li>\n            <li>\n               <p>\n                  <b>scn.data.outboundshipment</b> - Send data to <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-shipment-entity.html\">outbound_shipment</a> dataset.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    SendDataIntegrationEventRequest.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The data payload of the event, should follow the data schema of the target dataset, or see <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">Data entities supported in AWS Supply Chain</a>. To send single data record, use JsonObject format; to send multiple data records, use JsonArray format.</p>\n         <p>Note that for AWS Supply Chain dataset under <b>asc</b> namespace, it has a connection_id internal field that is not allowed to be provided by client directly, they will be auto populated.</p>", "smithy.api#required" => {}}))
    SendDataIntegrationEventRequest.add_member(:event_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventGroupId, location_name: 'eventGroupId', traits: {"smithy.api#documentation" => "<p>Event identifier (for example, orderId for InboundOrder) used for data sharding or partitioning. Noted under one eventGroupId of same eventType and instanceId, events are processed sequentially in the order they are received by the server.</p>", "smithy.api#required" => {}}))
    SendDataIntegrationEventRequest.add_member(:event_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'eventTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp (in epoch seconds) associated with the event. If not provided, it will be assigned with current timestamp.</p>", "smithy.api#timestampFormat" => "epoch-seconds"}))
    SendDataIntegrationEventRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The idempotent client token. The token is active for 8 hours, and within its lifetime, it ensures the request completes only once upon retry with same client token. If omitted, the AWS SDK generates a unique value so that AWS SDK can safely retry the request upon network errors.</p>", "smithy.api#idempotencyToken" => {}}))
    SendDataIntegrationEventRequest.add_member(:dataset_target, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationEventDatasetTargetConfiguration, location_name: 'datasetTarget', traits: {"smithy.api#documentation" => "<p>The target dataset configuration for <b>scn.data.dataset</b> event type.</p>"}))
    SendDataIntegrationEventRequest.type = Types::SendDataIntegrationEventRequest
    SendDataIntegrationEventResponse.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'eventId', traits: {"smithy.api#documentation" => "<p>The unique event identifier.</p>", "smithy.api#required" => {}}))
    SendDataIntegrationEventResponse.type = Types::SendDataIntegrationEventResponse
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AscResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply chain resource ARN that needs to be tagged.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the Amazon Web Services Supply chain resource to be created.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AscResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply chain resource ARN that needs to be untagged.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to be deleted for an Amazon Web Services Supply Chain resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDataIntegrationFlowRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationFlowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the DataIntegrationFlow to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationFlowRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The new source configurations for the DataIntegrationFlow.</p>"}))
    UpdateDataIntegrationFlowRequest.add_member(:transformation, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowTransformation, location_name: 'transformation', traits: {"smithy.api#documentation" => "<p>The new transformation configurations for the DataIntegrationFlow.</p>"}))
    UpdateDataIntegrationFlowRequest.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlowTarget, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The new target configurations for the DataIntegrationFlow.</p>"}))
    UpdateDataIntegrationFlowRequest.type = Types::UpdateDataIntegrationFlowRequest
    UpdateDataIntegrationFlowResponse.add_member(:flow, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIntegrationFlow, location_name: 'flow', traits: {"smithy.api#documentation" => "<p>The details of the updated DataIntegrationFlow.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateDataIntegrationFlowResponse.type = Types::UpdateDataIntegrationFlowResponse
    UpdateDataLakeDatasetRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeDatasetRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <b>default</b> - For datasets with custom user-defined schemas.</p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeDatasetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href=\"https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html\">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeDatasetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDatasetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The updated description of the data lake dataset.</p>"}))
    UpdateDataLakeDatasetRequest.type = Types::UpdateDataLakeDatasetRequest
    UpdateDataLakeDatasetResponse.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeDataset, location_name: 'dataset', traits: {"smithy.api#documentation" => "<p>The updated dataset details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeDatasetResponse.type = Types::UpdateDataLakeDatasetResponse
    UpdateDataLakeNamespaceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeNamespaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the namespace. Noted you cannot update namespace with name starting with <b>asc</b>, <b>default</b>, <b>scn</b>, <b>aws</b>, <b>amazon</b>, <b>amzn</b>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeNamespaceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespaceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The updated description of the data lake namespace.</p>"}))
    UpdateDataLakeNamespaceRequest.type = Types::UpdateDataLakeNamespaceRequest
    UpdateDataLakeNamespaceResponse.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The updated namespace details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateDataLakeNamespaceResponse.type = Types::UpdateDataLakeNamespaceResponse
    UpdateInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance identifier.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateInstanceRequest.add_member(:instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName, location_name: 'instanceName', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance name.</p>"}))
    UpdateInstanceRequest.add_member(:instance_description, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceDescription, location_name: 'instanceDescription', traits: {"smithy.api#documentation" => "<p>The AWS Supply Chain instance description.</p>"}))
    UpdateInstanceRequest.type = Types::UpdateInstanceRequest
    UpdateInstanceResponse.add_member(:instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Instance, location_name: 'instance', traits: {"smithy.api#documentation" => "<p>The instance resource data details.</p>", "smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateInstanceResponse.type = Types::UpdateInstanceResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    GalaxyPublicAPIGateway = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.supplychain#GalaxyPublicAPIGateway"
      service.name = "GalaxyPublicAPIGateway"
      service.version = "2024-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SupplyChain", "arnNamespace" => "scn", "endpointPrefix" => "scn"}, "aws.auth#sigv4" => {"name" => "scn"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Supply Chain"}
      service.add_operation(:create_bill_of_materials_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateBillOfMaterialsImportJob"
        operation.name = "CreateBillOfMaterialsImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillOfMaterialsImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillOfMaterialsImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_integration_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateDataIntegrationFlow"
        operation.name = "CreateDataIntegrationFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataIntegrationFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataIntegrationFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_lake_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateDataLakeDataset"
        operation.name = "CreateDataLakeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_lake_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateDataLakeNamespace"
        operation.name = "CreateDataLakeNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#CreateInstance"
        operation.name = "CreateInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/api/instance"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_integration_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#DeleteDataIntegrationFlow"
        operation.name = "DeleteDataIntegrationFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataIntegrationFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataIntegrationFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_lake_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#DeleteDataLakeDataset"
        operation.name = "DeleteDataLakeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_lake_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#DeleteDataLakeNamespace"
        operation.name = "DeleteDataLakeNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#DeleteInstance"
        operation.name = "DeleteInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/instance/{instanceId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_bill_of_materials_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetBillOfMaterialsImportJob"
        operation.name = "GetBillOfMaterialsImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillOfMaterialsImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillOfMaterialsImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_integration_event, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataIntegrationEvent"
        operation.name = "GetDataIntegrationEvent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataIntegrationEventRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataIntegrationEventResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-events/{eventId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_integration_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataIntegrationFlow"
        operation.name = "GetDataIntegrationFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataIntegrationFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataIntegrationFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_integration_flow_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataIntegrationFlowExecution"
        operation.name = "GetDataIntegrationFlowExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataIntegrationFlowExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataIntegrationFlowExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions/{executionId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_lake_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataLakeDataset"
        operation.name = "GetDataLakeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_lake_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetDataLakeNamespace"
        operation.name = "GetDataLakeNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#GetInstance"
        operation.name = "GetInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/instance/{instanceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_data_integration_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataIntegrationEvents"
        operation.name = "ListDataIntegrationEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataIntegrationEvents.new
      end)
      service.add_operation(:list_data_integration_flow_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataIntegrationFlowExecutions"
        operation.name = "ListDataIntegrationFlowExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationFlowExecutionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationFlowExecutionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataIntegrationFlowExecutions.new
      end)
      service.add_operation(:list_data_integration_flows, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataIntegrationFlows"
        operation.name = "ListDataIntegrationFlows"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationFlowsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataIntegrationFlowsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataIntegrationFlows.new
      end)
      service.add_operation(:list_data_lake_datasets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataLakeDatasets"
        operation.name = "ListDataLakeDatasets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataLakeDatasetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataLakeDatasetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataLakeDatasets.new
      end)
      service.add_operation(:list_data_lake_namespaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListDataLakeNamespaces"
        operation.name = "ListDataLakeNamespaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataLakeNamespacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataLakeNamespacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/datalake/instance/{instanceId}/namespaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataLakeNamespaces.new
      end)
      service.add_operation(:list_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListInstances"
        operation.name = "ListInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstancesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/instance"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/api/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:send_data_integration_event, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#SendDataIntegrationEvent"
        operation.name = "SendDataIntegrationEvent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendDataIntegrationEventRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendDataIntegrationEventResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/api-data/data-integration/instance/{instanceId}/data-integration-events"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/api/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/api/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_integration_flow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UpdateDataIntegrationFlow"
        operation.name = "UpdateDataIntegrationFlow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataIntegrationFlowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataIntegrationFlowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"}}
      end)
      service.add_operation(:update_data_lake_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UpdateDataLakeDataset"
        operation.name = "UpdateDataLakeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataLakeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataLakeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"}}
      end)
      service.add_operation(:update_data_lake_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UpdateDataLakeNamespace"
        operation.name = "UpdateDataLakeNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataLakeNamespaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataLakeNamespaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/api/datalake/instance/{instanceId}/namespaces/{name}"}}
      end)
      service.add_operation(:update_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supplychain#UpdateInstance"
        operation.name = "UpdateInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/api/instance/{instanceId}"}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
