# frozen_string_literal: true

# This is generated code!

module Aws::IoTAnalytics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivityBatchSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotanalytics#ActivityBatchSize", name: "ActivityBatchSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ActivityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ActivityName", name: "ActivityName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AddAttributesActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#AddAttributesActivity", name: "AddAttributesActivity")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AttributeNameMapping = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotanalytics#AttributeNameMapping", name: "AttributeNameMapping", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AttributeNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#AttributeNames", name: "AttributeNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    BatchPutMessageErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#BatchPutMessageErrorEntries", name: "BatchPutMessageErrorEntries")
    BatchPutMessageErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#BatchPutMessageErrorEntry", name: "BatchPutMessageErrorEntry")
    BatchPutMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#BatchPutMessageRequest", name: "BatchPutMessageRequest")
    BatchPutMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#BatchPutMessageResponse", name: "BatchPutMessageResponse")
    BucketKeyExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#BucketKeyExpression", name: "BucketKeyExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9!_.*'()/{}:-]*$"})
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9.\\-_]*$"})
    CancelPipelineReprocessingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CancelPipelineReprocessingRequest", name: "CancelPipelineReprocessingRequest")
    CancelPipelineReprocessingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CancelPipelineReprocessingResponse", name: "CancelPipelineReprocessingResponse")
    Channel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Channel", name: "Channel")
    ChannelActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ChannelActivity", name: "ChannelActivity")
    ChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ChannelArn", name: "ChannelArn")
    ChannelMessages = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ChannelMessages", name: "ChannelMessages")
    ChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ChannelName", name: "ChannelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!_{2}))(^[a-zA-Z0-9_]+$)$"})
    ChannelStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ChannelStatistics", name: "ChannelStatistics")
    ChannelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#ChannelStatus", name: "ChannelStatus")
    ChannelStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ChannelStorage", name: "ChannelStorage")
    ChannelStorageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ChannelStorageSummary", name: "ChannelStorageSummary")
    ChannelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#ChannelSummaries", name: "ChannelSummaries")
    ChannelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ChannelSummary", name: "ChannelSummary")
    Column = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Column", name: "Column")
    ColumnDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ColumnDataType", name: "ColumnDataType", traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ColumnName", name: "ColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z_]([A-Za-z0-9]*|[A-Za-z0-9][A-Za-z0-9_]*)$"})
    Columns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#Columns", name: "Columns")
    ComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#ComputeType", name: "ComputeType")
    ContainerDatasetAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ContainerDatasetAction", name: "ContainerDatasetAction")
    CreateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreateChannelRequest", name: "CreateChannelRequest")
    CreateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreateChannelResponse", name: "CreateChannelResponse")
    CreateDatasetContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreateDatasetContentRequest", name: "CreateDatasetContentRequest")
    CreateDatasetContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreateDatasetContentResponse", name: "CreateDatasetContentResponse")
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreateDatastoreRequest", name: "CreateDatastoreRequest")
    CreateDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreateDatastoreResponse", name: "CreateDatastoreResponse")
    CreatePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreatePipelineRequest", name: "CreatePipelineRequest")
    CreatePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CreatePipelineResponse", name: "CreatePipelineResponse")
    CustomerManagedChannelS3Storage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CustomerManagedChannelS3Storage", name: "CustomerManagedChannelS3Storage")
    CustomerManagedChannelS3StorageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CustomerManagedChannelS3StorageSummary", name: "CustomerManagedChannelS3StorageSummary")
    CustomerManagedDatastoreS3Storage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CustomerManagedDatastoreS3Storage", name: "CustomerManagedDatastoreS3Storage")
    CustomerManagedDatastoreS3StorageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#CustomerManagedDatastoreS3StorageSummary", name: "CustomerManagedDatastoreS3StorageSummary")
    Dataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Dataset", name: "Dataset")
    DatasetAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetAction", name: "DatasetAction")
    DatasetActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#DatasetActionName", name: "DatasetActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    DatasetActionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#DatasetActionSummaries", name: "DatasetActionSummaries", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DatasetActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetActionSummary", name: "DatasetActionSummary")
    DatasetActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#DatasetActionType", name: "DatasetActionType")
    DatasetActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#DatasetActions", name: "DatasetActions", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DatasetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#DatasetArn", name: "DatasetArn")
    DatasetContentDeliveryDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetContentDeliveryDestination", name: "DatasetContentDeliveryDestination")
    DatasetContentDeliveryRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetContentDeliveryRule", name: "DatasetContentDeliveryRule")
    DatasetContentDeliveryRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#DatasetContentDeliveryRules", name: "DatasetContentDeliveryRules", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    DatasetContentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#DatasetContentState", name: "DatasetContentState")
    DatasetContentStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetContentStatus", name: "DatasetContentStatus")
    DatasetContentSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#DatasetContentSummaries", name: "DatasetContentSummaries")
    DatasetContentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetContentSummary", name: "DatasetContentSummary")
    DatasetContentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#DatasetContentVersion", name: "DatasetContentVersion", traits: {"smithy.api#length" => {"min" => 7, "max" => 36}})
    DatasetContentVersionValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetContentVersionValue", name: "DatasetContentVersionValue")
    DatasetEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#DatasetEntries", name: "DatasetEntries")
    DatasetEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetEntry", name: "DatasetEntry")
    DatasetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#DatasetName", name: "DatasetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!_{2}))(^[a-zA-Z0-9_]+$)$"})
    DatasetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#DatasetStatus", name: "DatasetStatus")
    DatasetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#DatasetSummaries", name: "DatasetSummaries")
    DatasetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetSummary", name: "DatasetSummary")
    DatasetTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatasetTrigger", name: "DatasetTrigger")
    DatasetTriggers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#DatasetTriggers", name: "DatasetTriggers", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    Datastore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Datastore", name: "Datastore")
    DatastoreActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatastoreActivity", name: "DatastoreActivity")
    DatastoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#DatastoreArn", name: "DatastoreArn")
    DatastoreIotSiteWiseMultiLayerStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatastoreIotSiteWiseMultiLayerStorage", name: "DatastoreIotSiteWiseMultiLayerStorage")
    DatastoreIotSiteWiseMultiLayerStorageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatastoreIotSiteWiseMultiLayerStorageSummary", name: "DatastoreIotSiteWiseMultiLayerStorageSummary")
    DatastoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#DatastoreName", name: "DatastoreName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!_{2}))(^[a-zA-Z0-9_]+$)$"})
    DatastorePartition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatastorePartition", name: "DatastorePartition")
    DatastorePartitions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatastorePartitions", name: "DatastorePartitions")
    DatastoreStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatastoreStatistics", name: "DatastoreStatistics")
    DatastoreStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#DatastoreStatus", name: "DatastoreStatus")
    DatastoreStorage = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.iotanalytics#DatastoreStorage", name: "DatastoreStorage")
    DatastoreStorageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatastoreStorageSummary", name: "DatastoreStorageSummary")
    DatastoreSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#DatastoreSummaries", name: "DatastoreSummaries")
    DatastoreSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DatastoreSummary", name: "DatastoreSummary")
    DeleteChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeleteChannelRequest", name: "DeleteChannelRequest")
    DeleteDatasetContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeleteDatasetContentRequest", name: "DeleteDatasetContentRequest")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeleteDatastoreRequest", name: "DeleteDatastoreRequest")
    DeletePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeletePipelineRequest", name: "DeletePipelineRequest")
    DeltaTime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeltaTime", name: "DeltaTime")
    DeltaTimeSessionWindowConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeltaTimeSessionWindowConfiguration", name: "DeltaTimeSessionWindowConfiguration")
    DescribeChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribeChannelRequest", name: "DescribeChannelRequest")
    DescribeChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribeChannelResponse", name: "DescribeChannelResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribeDatastoreRequest", name: "DescribeDatastoreRequest")
    DescribeDatastoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribeDatastoreResponse", name: "DescribeDatastoreResponse")
    DescribeLoggingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribeLoggingOptionsRequest", name: "DescribeLoggingOptionsRequest")
    DescribeLoggingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribeLoggingOptionsResponse", name: "DescribeLoggingOptionsResponse")
    DescribePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribePipelineRequest", name: "DescribePipelineRequest")
    DescribePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DescribePipelineResponse", name: "DescribePipelineResponse")
    DeviceRegistryEnrichActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeviceRegistryEnrichActivity", name: "DeviceRegistryEnrichActivity")
    DeviceShadowEnrichActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#DeviceShadowEnrichActivity", name: "DeviceShadowEnrichActivity")
    DoubleValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotanalytics#DoubleValue", name: "DoubleValue", traits: {"smithy.api#default" => 0})
    EndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotanalytics#EndTime", name: "EndTime")
    EntryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#EntryName", name: "EntryName")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ErrorMessage", name: "ErrorMessage")
    EstimatedResourceSize = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#EstimatedResourceSize", name: "EstimatedResourceSize")
    FileFormatConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#FileFormatConfiguration", name: "FileFormatConfiguration")
    FileFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#FileFormatType", name: "FileFormatType")
    FilterActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#FilterActivity", name: "FilterActivity")
    FilterExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#FilterExpression", name: "FilterExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    GetDatasetContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#GetDatasetContentRequest", name: "GetDatasetContentRequest")
    GetDatasetContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#GetDatasetContentResponse", name: "GetDatasetContentResponse")
    GlueConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#GlueConfiguration", name: "GlueConfiguration")
    GlueDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#GlueDatabaseName", name: "GlueDatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    GlueTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#GlueTableName", name: "GlueTableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    Image = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#Image", name: "Image", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    IncludeStatisticsFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotanalytics#IncludeStatisticsFlag", name: "IncludeStatisticsFlag", traits: {"smithy.api#default" => false})
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IotEventsDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#IotEventsDestinationConfiguration", name: "IotEventsDestinationConfiguration")
    IotEventsInputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#IotEventsInputName", name: "IotEventsInputName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    IotSiteWiseCustomerManagedDatastoreS3Storage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#IotSiteWiseCustomerManagedDatastoreS3Storage", name: "IotSiteWiseCustomerManagedDatastoreS3Storage")
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#IotSiteWiseCustomerManagedDatastoreS3StorageSummary", name: "IotSiteWiseCustomerManagedDatastoreS3StorageSummary")
    JsonConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#JsonConfiguration", name: "JsonConfiguration")
    LambdaActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#LambdaActivity", name: "LambdaActivity")
    LambdaName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#LambdaName", name: "LambdaName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    LateDataRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#LateDataRule", name: "LateDataRule")
    LateDataRuleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#LateDataRuleConfiguration", name: "LateDataRuleConfiguration")
    LateDataRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#LateDataRuleName", name: "LateDataRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    LateDataRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#LateDataRules", name: "LateDataRules", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListChannelsRequest", name: "ListChannelsRequest")
    ListChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListChannelsResponse", name: "ListChannelsResponse")
    ListDatasetContentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListDatasetContentsRequest", name: "ListDatasetContentsRequest")
    ListDatasetContentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListDatasetContentsResponse", name: "ListDatasetContentsResponse")
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListDatastoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListDatastoresRequest", name: "ListDatastoresRequest")
    ListDatastoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListDatastoresResponse", name: "ListDatastoresResponse")
    ListPipelinesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListPipelinesRequest", name: "ListPipelinesRequest")
    ListPipelinesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListPipelinesResponse", name: "ListPipelinesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#LogResult", name: "LogResult")
    LoggingEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotanalytics#LoggingEnabled", name: "LoggingEnabled", traits: {"smithy.api#default" => false})
    LoggingLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#LoggingLevel", name: "LoggingLevel")
    LoggingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#LoggingOptions", name: "LoggingOptions")
    MathActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#MathActivity", name: "MathActivity")
    MathExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#MathExpression", name: "MathExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MaxMessages = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotanalytics#MaxMessages", name: "MaxMessages", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotanalytics#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    MaxVersions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotanalytics#MaxVersions", name: "MaxVersions", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Message", name: "Message")
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#MessageId", name: "MessageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\p{ASCII}*$"})
    MessagePayload = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iotanalytics#MessagePayload", name: "MessagePayload")
    MessagePayloads = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#MessagePayloads", name: "MessagePayloads", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Messages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#Messages", name: "Messages")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#NextToken", name: "NextToken")
    OffsetSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotanalytics#OffsetSeconds", name: "OffsetSeconds")
    OutputFileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#OutputFileName", name: "OutputFileName", traits: {"smithy.api#pattern" => "^[\\w\\.-]{1,255}$"})
    OutputFileUriValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#OutputFileUriValue", name: "OutputFileUriValue")
    ParquetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ParquetConfiguration", name: "ParquetConfiguration")
    Partition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Partition", name: "Partition")
    PartitionAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#PartitionAttributeName", name: "PartitionAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    Partitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#Partitions", name: "Partitions", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    Pipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Pipeline", name: "Pipeline")
    PipelineActivities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#PipelineActivities", name: "PipelineActivities", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    PipelineActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#PipelineActivity", name: "PipelineActivity")
    PipelineArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#PipelineArn", name: "PipelineArn")
    PipelineName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#PipelineName", name: "PipelineName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!_{2}))(^[a-zA-Z0-9_]+$)$"})
    PipelineSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#PipelineSummaries", name: "PipelineSummaries")
    PipelineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#PipelineSummary", name: "PipelineSummary")
    PresignedURI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#PresignedURI", name: "PresignedURI")
    PutLoggingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#PutLoggingOptionsRequest", name: "PutLoggingOptionsRequest")
    QueryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#QueryFilter", name: "QueryFilter")
    QueryFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#QueryFilters", name: "QueryFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#Reason", name: "Reason")
    RemoveAttributesActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#RemoveAttributesActivity", name: "RemoveAttributesActivity")
    ReprocessingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ReprocessingId", name: "ReprocessingId")
    ReprocessingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotanalytics#ReprocessingStatus", name: "ReprocessingStatus")
    ReprocessingSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#ReprocessingSummaries", name: "ReprocessingSummaries")
    ReprocessingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ReprocessingSummary", name: "ReprocessingSummary")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    ResourceArn2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ResourceArn2", name: "ResourceArn2")
    ResourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ResourceConfiguration", name: "ResourceConfiguration")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetentionPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#RetentionPeriod", name: "RetentionPeriod")
    RetentionPeriodInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotanalytics#RetentionPeriodInDays", name: "RetentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 1}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    RunPipelineActivityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#RunPipelineActivityRequest", name: "RunPipelineActivityRequest")
    RunPipelineActivityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#RunPipelineActivityResponse", name: "RunPipelineActivityResponse")
    S3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#S3DestinationConfiguration", name: "S3DestinationConfiguration")
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#S3KeyPrefix", name: "S3KeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9!_.*'()/{}:-]*/$"})
    S3PathChannelMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#S3PathChannelMessage", name: "S3PathChannelMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9/_!'(){}\\*\\s\\.\\-\\=\\:]+$"})
    S3PathChannelMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#S3PathChannelMessages", name: "S3PathChannelMessages", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SampleChannelDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#SampleChannelDataRequest", name: "SampleChannelDataRequest")
    SampleChannelDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#SampleChannelDataResponse", name: "SampleChannelDataResponse")
    Schedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Schedule", name: "Schedule")
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#ScheduleExpression", name: "ScheduleExpression")
    SchemaDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#SchemaDefinition", name: "SchemaDefinition")
    SelectAttributesActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#SelectAttributesActivity", name: "SelectAttributesActivity")
    ServiceManagedChannelS3Storage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ServiceManagedChannelS3Storage", name: "ServiceManagedChannelS3Storage")
    ServiceManagedChannelS3StorageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ServiceManagedChannelS3StorageSummary", name: "ServiceManagedChannelS3StorageSummary")
    ServiceManagedDatastoreS3Storage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ServiceManagedDatastoreS3Storage", name: "ServiceManagedDatastoreS3Storage")
    ServiceManagedDatastoreS3StorageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ServiceManagedDatastoreS3StorageSummary", name: "ServiceManagedDatastoreS3StorageSummary")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotanalytics#SessionTimeoutInMinutes", name: "SessionTimeoutInMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    SizeInBytes = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotanalytics#SizeInBytes", name: "SizeInBytes")
    SqlQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#SqlQuery", name: "SqlQuery")
    SqlQueryDatasetAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#SqlQueryDatasetAction", name: "SqlQueryDatasetAction")
    StartPipelineReprocessingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#StartPipelineReprocessingRequest", name: "StartPipelineReprocessingRequest")
    StartPipelineReprocessingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#StartPipelineReprocessingResponse", name: "StartPipelineReprocessingResponse")
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotanalytics#StartTime", name: "StartTime")
    StringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#StringValue", name: "StringValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#TimeExpression", name: "TimeExpression")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotanalytics#Timestamp", name: "Timestamp")
    TimestampFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#TimestampFormat", name: "TimestampFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s\\[\\]_,.'/:-]*$"})
    TimestampPartition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#TimestampPartition", name: "TimestampPartition")
    TriggeringDataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#TriggeringDataset", name: "TriggeringDataset")
    UnlimitedRetentionPeriod = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotanalytics#UnlimitedRetentionPeriod", name: "UnlimitedRetentionPeriod", traits: {"smithy.api#default" => false})
    UnlimitedVersioning = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotanalytics#UnlimitedVersioning", name: "UnlimitedVersioning", traits: {"smithy.api#default" => false})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#UpdateChannelRequest", name: "UpdateChannelRequest")
    UpdateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#UpdateDatasetRequest", name: "UpdateDatasetRequest")
    UpdateDatastoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#UpdateDatastoreRequest", name: "UpdateDatastoreRequest")
    UpdatePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#UpdatePipelineRequest", name: "UpdatePipelineRequest")
    Variable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#Variable", name: "Variable")
    VariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#VariableName", name: "VariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Variables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotanalytics#Variables", name: "Variables", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    VersioningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotanalytics#VersioningConfiguration", name: "VersioningConfiguration")
    VolumeSizeInGB = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotanalytics#VolumeSizeInGB", name: "VolumeSizeInGB", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotanalytics#resourceId", name: "ResourceId")

    AddAttributesActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    AddAttributesActivity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameMapping, name: "attributes", traits: {"smithy.api#required" => {}}))
    AddAttributesActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    AddAttributesActivity.type = Types::AddAttributesActivity
    AttributeNameMapping.key = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key")
    AttributeNameMapping.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "value")
    AttributeNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "member")
    BatchPutMessageErrorEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutMessageErrorEntry, name: "member")
    BatchPutMessageErrorEntry.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId"))
    BatchPutMessageErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    BatchPutMessageErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchPutMessageErrorEntry.type = Types::BatchPutMessageErrorEntry
    BatchPutMessageRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName", traits: {"smithy.api#required" => {}}))
    BatchPutMessageRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, name: "messages", traits: {"smithy.api#required" => {}}))
    BatchPutMessageRequest.type = Types::BatchPutMessageRequest
    BatchPutMessageResponse.add_member(:batch_put_message_error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutMessageErrorEntries, name: "batchPutMessageErrorEntries"))
    BatchPutMessageResponse.type = Types::BatchPutMessageResponse
    CancelPipelineReprocessingRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelPipelineReprocessingRequest.add_member(:reprocessing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReprocessingId, name: "reprocessingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelPipelineReprocessingRequest.type = Types::CancelPipelineReprocessingRequest
    CancelPipelineReprocessingResponse.type = Types::CancelPipelineReprocessingResponse
    Channel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "name"))
    Channel.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStorage, name: "storage"))
    Channel.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, name: "arn"))
    Channel.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatus, name: "status"))
    Channel.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    Channel.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    Channel.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    Channel.add_member(:last_message_arrival_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastMessageArrivalTime"))
    Channel.type = Types::Channel
    ChannelActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    ChannelActivity.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName", traits: {"smithy.api#required" => {}}))
    ChannelActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    ChannelActivity.type = Types::ChannelActivity
    ChannelMessages.add_member(:s3_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PathChannelMessages, name: "s3Paths"))
    ChannelMessages.type = Types::ChannelMessages
    ChannelStatistics.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedResourceSize, name: "size"))
    ChannelStatistics.type = Types::ChannelStatistics
    ChannelStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ChannelStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ChannelStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ChannelStorage.add_member(:service_managed_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedChannelS3Storage, name: "serviceManagedS3"))
    ChannelStorage.add_member(:customer_managed_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedChannelS3Storage, name: "customerManagedS3"))
    ChannelStorage.type = Types::ChannelStorage
    ChannelStorageSummary.add_member(:service_managed_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedChannelS3StorageSummary, name: "serviceManagedS3"))
    ChannelStorageSummary.add_member(:customer_managed_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedChannelS3StorageSummary, name: "customerManagedS3"))
    ChannelStorageSummary.type = Types::ChannelStorageSummary
    ChannelSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummary, name: "member")
    ChannelSummary.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName"))
    ChannelSummary.add_member(:channel_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStorageSummary, name: "channelStorage"))
    ChannelSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatus, name: "status"))
    ChannelSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    ChannelSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    ChannelSummary.add_member(:last_message_arrival_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastMessageArrivalTime"))
    ChannelSummary.type = Types::ChannelSummary
    Column.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "name", traits: {"smithy.api#required" => {}}))
    Column.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDataType, name: "type", traits: {"smithy.api#required" => {}}))
    Column.type = Types::Column
    Columns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Column, name: "member")
    ComputeType.add_member(:acu_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACU_1", traits: {"smithy.api#enumValue" => "ACU_1"}))
    ComputeType.add_member(:acu_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACU_2", traits: {"smithy.api#enumValue" => "ACU_2"}))
    ContainerDatasetAction.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, name: "image", traits: {"smithy.api#required" => {}}))
    ContainerDatasetAction.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "executionRoleArn", traits: {"smithy.api#required" => {}}))
    ContainerDatasetAction.add_member(:resource_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfiguration, name: "resourceConfiguration", traits: {"smithy.api#required" => {}}))
    ContainerDatasetAction.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: Variables, name: "variables"))
    ContainerDatasetAction.type = Types::ContainerDatasetAction
    CreateChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName", traits: {"smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:channel_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStorage, name: "channelStorage"))
    CreateChannelRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    CreateChannelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName"))
    CreateChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, name: "channelArn"))
    CreateChannelResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    CreateChannelResponse.type = Types::CreateChannelResponse
    CreateDatasetContentRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDatasetContentRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentVersion, name: "versionId"))
    CreateDatasetContentRequest.type = Types::CreateDatasetContentRequest
    CreateDatasetContentResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentVersion, name: "versionId"))
    CreateDatasetContentResponse.type = Types::CreateDatasetContentResponse
    CreateDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetActions, name: "actions", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTriggers, name: "triggers"))
    CreateDatasetRequest.add_member(:content_delivery_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentDeliveryRules, name: "contentDeliveryRules"))
    CreateDatasetRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    CreateDatasetRequest.add_member(:versioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VersioningConfiguration, name: "versioningConfiguration"))
    CreateDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDatasetRequest.add_member(:late_data_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LateDataRules, name: "lateDataRules"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName"))
    CreateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, name: "datasetArn"))
    CreateDatasetResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName", traits: {"smithy.api#required" => {}}))
    CreateDatastoreRequest.add_member(:datastore_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStorage, name: "datastoreStorage"))
    CreateDatastoreRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    CreateDatastoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDatastoreRequest.add_member(:file_format_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormatConfiguration, name: "fileFormatConfiguration"))
    CreateDatastoreRequest.add_member(:datastore_partitions, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastorePartitions, name: "datastorePartitions"))
    CreateDatastoreRequest.type = Types::CreateDatastoreRequest
    CreateDatastoreResponse.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName"))
    CreateDatastoreResponse.add_member(:datastore_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "datastoreArn"))
    CreateDatastoreResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    CreateDatastoreResponse.type = Types::CreateDatastoreResponse
    CreatePipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:pipeline_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineActivities, name: "pipelineActivities", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreatePipelineRequest.type = Types::CreatePipelineRequest
    CreatePipelineResponse.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName"))
    CreatePipelineResponse.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "pipelineArn"))
    CreatePipelineResponse.type = Types::CreatePipelineResponse
    CustomerManagedChannelS3Storage.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucket", traits: {"smithy.api#required" => {}}))
    CustomerManagedChannelS3Storage.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "keyPrefix"))
    CustomerManagedChannelS3Storage.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CustomerManagedChannelS3Storage.type = Types::CustomerManagedChannelS3Storage
    CustomerManagedChannelS3StorageSummary.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucket"))
    CustomerManagedChannelS3StorageSummary.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "keyPrefix"))
    CustomerManagedChannelS3StorageSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    CustomerManagedChannelS3StorageSummary.type = Types::CustomerManagedChannelS3StorageSummary
    CustomerManagedDatastoreS3Storage.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucket", traits: {"smithy.api#required" => {}}))
    CustomerManagedDatastoreS3Storage.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "keyPrefix"))
    CustomerManagedDatastoreS3Storage.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CustomerManagedDatastoreS3Storage.type = Types::CustomerManagedDatastoreS3Storage
    CustomerManagedDatastoreS3StorageSummary.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucket"))
    CustomerManagedDatastoreS3StorageSummary.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "keyPrefix"))
    CustomerManagedDatastoreS3StorageSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    CustomerManagedDatastoreS3StorageSummary.type = Types::CustomerManagedDatastoreS3StorageSummary
    Dataset.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "name"))
    Dataset.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, name: "arn"))
    Dataset.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetActions, name: "actions"))
    Dataset.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTriggers, name: "triggers"))
    Dataset.add_member(:content_delivery_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentDeliveryRules, name: "contentDeliveryRules"))
    Dataset.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "status"))
    Dataset.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    Dataset.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    Dataset.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    Dataset.add_member(:versioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VersioningConfiguration, name: "versioningConfiguration"))
    Dataset.add_member(:late_data_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LateDataRules, name: "lateDataRules"))
    Dataset.type = Types::Dataset
    DatasetAction.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetActionName, name: "actionName"))
    DatasetAction.add_member(:query_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlQueryDatasetAction, name: "queryAction"))
    DatasetAction.add_member(:container_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDatasetAction, name: "containerAction"))
    DatasetAction.type = Types::DatasetAction
    DatasetActionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetActionSummary, name: "member")
    DatasetActionSummary.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetActionName, name: "actionName"))
    DatasetActionSummary.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetActionType, name: "actionType"))
    DatasetActionSummary.type = Types::DatasetActionSummary
    DatasetActionType.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY", traits: {"smithy.api#enumValue" => "QUERY"}))
    DatasetActionType.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER", traits: {"smithy.api#enumValue" => "CONTAINER"}))
    DatasetActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetAction, name: "member")
    DatasetContentDeliveryDestination.add_member(:iot_events_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IotEventsDestinationConfiguration, name: "iotEventsDestinationConfiguration"))
    DatasetContentDeliveryDestination.add_member(:s3_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "s3DestinationConfiguration"))
    DatasetContentDeliveryDestination.type = Types::DatasetContentDeliveryDestination
    DatasetContentDeliveryRule.add_member(:entry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryName, name: "entryName"))
    DatasetContentDeliveryRule.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentDeliveryDestination, name: "destination", traits: {"smithy.api#required" => {}}))
    DatasetContentDeliveryRule.type = Types::DatasetContentDeliveryRule
    DatasetContentDeliveryRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentDeliveryRule, name: "member")
    DatasetContentState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DatasetContentState.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DatasetContentState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DatasetContentStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentState, name: "state"))
    DatasetContentStatus.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "reason"))
    DatasetContentStatus.type = Types::DatasetContentStatus
    DatasetContentSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentSummary, name: "member")
    DatasetContentSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentVersion, name: "version"))
    DatasetContentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentStatus, name: "status"))
    DatasetContentSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    DatasetContentSummary.add_member(:schedule_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "scheduleTime"))
    DatasetContentSummary.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "completionTime"))
    DatasetContentSummary.type = Types::DatasetContentSummary
    DatasetContentVersionValue.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#required" => {}}))
    DatasetContentVersionValue.type = Types::DatasetContentVersionValue
    DatasetEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetEntry, name: "member")
    DatasetEntry.add_member(:entry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryName, name: "entryName"))
    DatasetEntry.add_member(:data_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedURI, name: "dataURI"))
    DatasetEntry.type = Types::DatasetEntry
    DatasetStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DatasetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatasetStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DatasetSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSummary, name: "member")
    DatasetSummary.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName"))
    DatasetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "status"))
    DatasetSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    DatasetSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    DatasetSummary.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTriggers, name: "triggers"))
    DatasetSummary.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetActionSummaries, name: "actions"))
    DatasetSummary.type = Types::DatasetSummary
    DatasetTrigger.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    DatasetTrigger.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggeringDataset, name: "dataset"))
    DatasetTrigger.type = Types::DatasetTrigger
    DatasetTriggers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTrigger, name: "member")
    Datastore.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "name"))
    Datastore.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStorage, name: "storage"))
    Datastore.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreArn, name: "arn"))
    Datastore.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "status"))
    Datastore.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    Datastore.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    Datastore.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    Datastore.add_member(:last_message_arrival_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastMessageArrivalTime"))
    Datastore.add_member(:file_format_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormatConfiguration, name: "fileFormatConfiguration"))
    Datastore.add_member(:datastore_partitions, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastorePartitions, name: "datastorePartitions"))
    Datastore.type = Types::Datastore
    DatastoreActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    DatastoreActivity.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName", traits: {"smithy.api#required" => {}}))
    DatastoreActivity.type = Types::DatastoreActivity
    DatastoreIotSiteWiseMultiLayerStorage.add_member(:customer_managed_s3_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IotSiteWiseCustomerManagedDatastoreS3Storage, name: "customerManagedS3Storage", traits: {"smithy.api#required" => {}}))
    DatastoreIotSiteWiseMultiLayerStorage.type = Types::DatastoreIotSiteWiseMultiLayerStorage
    DatastoreIotSiteWiseMultiLayerStorageSummary.add_member(:customer_managed_s3_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IotSiteWiseCustomerManagedDatastoreS3StorageSummary, name: "customerManagedS3Storage"))
    DatastoreIotSiteWiseMultiLayerStorageSummary.type = Types::DatastoreIotSiteWiseMultiLayerStorageSummary
    DatastorePartition.add_member(:attribute_partition, ::Smithy::Schema::Shapes::MemberShape.new(target: Partition, name: "attributePartition"))
    DatastorePartition.add_member(:timestamp_partition, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampPartition, name: "timestampPartition"))
    DatastorePartition.type = Types::DatastorePartition
    DatastorePartitions.add_member(:partitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Partitions, name: "partitions"))
    DatastorePartitions.type = Types::DatastorePartitions
    DatastoreStatistics.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedResourceSize, name: "size"))
    DatastoreStatistics.type = Types::DatastoreStatistics
    DatastoreStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DatastoreStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatastoreStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DatastoreStorage.add_member(:service_managed_s3, Types::DatastoreStorage::ServiceManagedS3, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedDatastoreS3Storage, name: "serviceManagedS3"))
    DatastoreStorage.add_member(:customer_managed_s3, Types::DatastoreStorage::CustomerManagedS3, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedDatastoreS3Storage, name: "customerManagedS3"))
    DatastoreStorage.add_member(:iot_site_wise_multi_layer_storage, Types::DatastoreStorage::IotSiteWiseMultiLayerStorage, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreIotSiteWiseMultiLayerStorage, name: "iotSiteWiseMultiLayerStorage"))
    DatastoreStorage.add_member(:unknown, Types::DatastoreStorage::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DatastoreStorage.type = Types::DatastoreStorage
    DatastoreStorageSummary.add_member(:service_managed_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedDatastoreS3StorageSummary, name: "serviceManagedS3"))
    DatastoreStorageSummary.add_member(:customer_managed_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedDatastoreS3StorageSummary, name: "customerManagedS3"))
    DatastoreStorageSummary.add_member(:iot_site_wise_multi_layer_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreIotSiteWiseMultiLayerStorageSummary, name: "iotSiteWiseMultiLayerStorage"))
    DatastoreStorageSummary.type = Types::DatastoreStorageSummary
    DatastoreSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreSummary, name: "member")
    DatastoreSummary.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName"))
    DatastoreSummary.add_member(:datastore_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStorageSummary, name: "datastoreStorage"))
    DatastoreSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatus, name: "status"))
    DatastoreSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    DatastoreSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    DatastoreSummary.add_member(:last_message_arrival_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastMessageArrivalTime"))
    DatastoreSummary.add_member(:file_format_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormatType, name: "fileFormatType"))
    DatastoreSummary.add_member(:datastore_partitions, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastorePartitions, name: "datastorePartitions"))
    DatastoreSummary.type = Types::DatastoreSummary
    DeleteChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteDatasetContentRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetContentRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentVersion, name: "versionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    DeleteDatasetContentRequest.type = Types::DeleteDatasetContentRequest
    DeleteDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatastoreRequest.type = Types::DeleteDatastoreRequest
    DeletePipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePipelineRequest.type = Types::DeletePipelineRequest
    DeltaTime.add_member(:offset_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: OffsetSeconds, name: "offsetSeconds", traits: {"smithy.api#required" => {}}))
    DeltaTime.add_member(:time_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeExpression, name: "timeExpression", traits: {"smithy.api#required" => {}}))
    DeltaTime.type = Types::DeltaTime
    DeltaTimeSessionWindowConfiguration.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTimeoutInMinutes, name: "timeoutInMinutes", traits: {"smithy.api#required" => {}}))
    DeltaTimeSessionWindowConfiguration.type = Types::DeltaTimeSessionWindowConfiguration
    DescribeChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelRequest.add_member(:include_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeStatisticsFlag, name: "includeStatistics", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeStatistics"}))
    DescribeChannelRequest.type = Types::DescribeChannelRequest
    DescribeChannelResponse.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "channel"))
    DescribeChannelResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatistics, name: "statistics"))
    DescribeChannelResponse.type = Types::DescribeChannelResponse
    DescribeDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: Dataset, name: "dataset"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatastoreRequest.add_member(:include_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeStatisticsFlag, name: "includeStatistics", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeStatistics"}))
    DescribeDatastoreRequest.type = Types::DescribeDatastoreRequest
    DescribeDatastoreResponse.add_member(:datastore, ::Smithy::Schema::Shapes::MemberShape.new(target: Datastore, name: "datastore"))
    DescribeDatastoreResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStatistics, name: "statistics"))
    DescribeDatastoreResponse.type = Types::DescribeDatastoreResponse
    DescribeLoggingOptionsRequest.type = Types::DescribeLoggingOptionsRequest
    DescribeLoggingOptionsResponse.add_member(:logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingOptions, name: "loggingOptions"))
    DescribeLoggingOptionsResponse.type = Types::DescribeLoggingOptionsResponse
    DescribePipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePipelineRequest.type = Types::DescribePipelineRequest
    DescribePipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: Pipeline, name: "pipeline"))
    DescribePipelineResponse.type = Types::DescribePipelineResponse
    DeviceRegistryEnrichActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    DeviceRegistryEnrichActivity.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "attribute", traits: {"smithy.api#required" => {}}))
    DeviceRegistryEnrichActivity.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "thingName", traits: {"smithy.api#required" => {}}))
    DeviceRegistryEnrichActivity.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    DeviceRegistryEnrichActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    DeviceRegistryEnrichActivity.type = Types::DeviceRegistryEnrichActivity
    DeviceShadowEnrichActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    DeviceShadowEnrichActivity.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "attribute", traits: {"smithy.api#required" => {}}))
    DeviceShadowEnrichActivity.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "thingName", traits: {"smithy.api#required" => {}}))
    DeviceShadowEnrichActivity.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    DeviceShadowEnrichActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    DeviceShadowEnrichActivity.type = Types::DeviceShadowEnrichActivity
    EstimatedResourceSize.add_member(:estimated_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeInBytes, name: "estimatedSizeInBytes"))
    EstimatedResourceSize.add_member(:estimated_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "estimatedOn"))
    EstimatedResourceSize.type = Types::EstimatedResourceSize
    FileFormatConfiguration.add_member(:json_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonConfiguration, name: "jsonConfiguration"))
    FileFormatConfiguration.add_member(:parquet_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParquetConfiguration, name: "parquetConfiguration"))
    FileFormatConfiguration.type = Types::FileFormatConfiguration
    FileFormatType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    FileFormatType.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARQUET", traits: {"smithy.api#enumValue" => "PARQUET"}))
    FilterActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    FilterActivity.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterExpression, name: "filter", traits: {"smithy.api#required" => {}}))
    FilterActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    FilterActivity.type = Types::FilterActivity
    GetDatasetContentRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDatasetContentRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentVersion, name: "versionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    GetDatasetContentRequest.type = Types::GetDatasetContentRequest
    GetDatasetContentResponse.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetEntries, name: "entries"))
    GetDatasetContentResponse.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timestamp"))
    GetDatasetContentResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentStatus, name: "status"))
    GetDatasetContentResponse.type = Types::GetDatasetContentResponse
    GlueConfiguration.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueTableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    GlueConfiguration.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDatabaseName, name: "databaseName", traits: {"smithy.api#required" => {}}))
    GlueConfiguration.type = Types::GlueConfiguration
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    IotEventsDestinationConfiguration.add_member(:input_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IotEventsInputName, name: "inputName", traits: {"smithy.api#required" => {}}))
    IotEventsDestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    IotEventsDestinationConfiguration.type = Types::IotEventsDestinationConfiguration
    IotSiteWiseCustomerManagedDatastoreS3Storage.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucket", traits: {"smithy.api#required" => {}}))
    IotSiteWiseCustomerManagedDatastoreS3Storage.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "keyPrefix"))
    IotSiteWiseCustomerManagedDatastoreS3Storage.type = Types::IotSiteWiseCustomerManagedDatastoreS3Storage
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucket"))
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "keyPrefix"))
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary.type = Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary
    JsonConfiguration.type = Types::JsonConfiguration
    LambdaActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    LambdaActivity.add_member(:lambda_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaName, name: "lambdaName", traits: {"smithy.api#required" => {}}))
    LambdaActivity.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityBatchSize, name: "batchSize", traits: {"smithy.api#required" => {}}))
    LambdaActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    LambdaActivity.type = Types::LambdaActivity
    LateDataRule.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LateDataRuleName, name: "ruleName"))
    LateDataRule.add_member(:rule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LateDataRuleConfiguration, name: "ruleConfiguration", traits: {"smithy.api#required" => {}}))
    LateDataRule.type = Types::LateDataRule
    LateDataRuleConfiguration.add_member(:delta_time_session_window_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeltaTimeSessionWindowConfiguration, name: "deltaTimeSessionWindowConfiguration"))
    LateDataRuleConfiguration.type = Types::LateDataRuleConfiguration
    LateDataRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LateDataRule, name: "member")
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:channel_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummaries, name: "channelSummaries"))
    ListChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListDatasetContentsRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetContentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatasetContentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatasetContentsRequest.add_member(:scheduled_on_or_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "scheduledOnOrAfter", traits: {"smithy.api#httpQuery" => "scheduledOnOrAfter"}))
    ListDatasetContentsRequest.add_member(:scheduled_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "scheduledBefore", traits: {"smithy.api#httpQuery" => "scheduledBefore"}))
    ListDatasetContentsRequest.type = Types::ListDatasetContentsRequest
    ListDatasetContentsResponse.add_member(:dataset_content_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentSummaries, name: "datasetContentSummaries"))
    ListDatasetContentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDatasetContentsResponse.type = Types::ListDatasetContentsResponse
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:dataset_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSummaries, name: "datasetSummaries"))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListDatastoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatastoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatastoresRequest.type = Types::ListDatastoresRequest
    ListDatastoresResponse.add_member(:datastore_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreSummaries, name: "datastoreSummaries"))
    ListDatastoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDatastoresResponse.type = Types::ListDatastoresResponse
    ListPipelinesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPipelinesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPipelinesRequest.type = Types::ListPipelinesRequest
    ListPipelinesResponse.add_member(:pipeline_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineSummaries, name: "pipelineSummaries"))
    ListPipelinesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPipelinesResponse.type = Types::ListPipelinesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LoggingLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggingOptions.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    LoggingOptions.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingLevel, name: "level", traits: {"smithy.api#required" => {}}))
    LoggingOptions.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingEnabled, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    LoggingOptions.type = Types::LoggingOptions
    MathActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    MathActivity.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "attribute", traits: {"smithy.api#required" => {}}))
    MathActivity.add_member(:math, ::Smithy::Schema::Shapes::MemberShape.new(target: MathExpression, name: "math", traits: {"smithy.api#required" => {}}))
    MathActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    MathActivity.type = Types::MathActivity
    Message.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId", traits: {"smithy.api#required" => {}}))
    Message.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagePayload, name: "payload", traits: {"smithy.api#required" => {}}))
    Message.type = Types::Message
    MessagePayloads.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MessagePayload, name: "member")
    Messages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "member")
    OutputFileUriValue.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFileName, name: "fileName", traits: {"smithy.api#required" => {}}))
    OutputFileUriValue.type = Types::OutputFileUriValue
    ParquetConfiguration.add_member(:schema_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaDefinition, name: "schemaDefinition"))
    ParquetConfiguration.type = Types::ParquetConfiguration
    Partition.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    Partition.type = Types::Partition
    Partitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatastorePartition, name: "member")
    Pipeline.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "name"))
    Pipeline.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "arn"))
    Pipeline.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineActivities, name: "activities"))
    Pipeline.add_member(:reprocessing_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ReprocessingSummaries, name: "reprocessingSummaries"))
    Pipeline.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    Pipeline.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    Pipeline.type = Types::Pipeline
    PipelineActivities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineActivity, name: "member")
    PipelineActivity.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelActivity, name: "channel"))
    PipelineActivity.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaActivity, name: "lambda"))
    PipelineActivity.add_member(:datastore, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreActivity, name: "datastore"))
    PipelineActivity.add_member(:add_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AddAttributesActivity, name: "addAttributes"))
    PipelineActivity.add_member(:remove_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoveAttributesActivity, name: "removeAttributes"))
    PipelineActivity.add_member(:select_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectAttributesActivity, name: "selectAttributes"))
    PipelineActivity.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterActivity, name: "filter"))
    PipelineActivity.add_member(:math, ::Smithy::Schema::Shapes::MemberShape.new(target: MathActivity, name: "math"))
    PipelineActivity.add_member(:device_registry_enrich, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceRegistryEnrichActivity, name: "deviceRegistryEnrich"))
    PipelineActivity.add_member(:device_shadow_enrich, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceShadowEnrichActivity, name: "deviceShadowEnrich"))
    PipelineActivity.type = Types::PipelineActivity
    PipelineSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineSummary, name: "member")
    PipelineSummary.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName"))
    PipelineSummary.add_member(:reprocessing_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ReprocessingSummaries, name: "reprocessingSummaries"))
    PipelineSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    PipelineSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    PipelineSummary.type = Types::PipelineSummary
    PutLoggingOptionsRequest.add_member(:logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingOptions, name: "loggingOptions", traits: {"smithy.api#required" => {}}))
    PutLoggingOptionsRequest.type = Types::PutLoggingOptionsRequest
    QueryFilter.add_member(:delta_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DeltaTime, name: "deltaTime"))
    QueryFilter.type = Types::QueryFilter
    QueryFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilter, name: "member")
    RemoveAttributesActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    RemoveAttributesActivity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNames, name: "attributes", traits: {"smithy.api#required" => {}}))
    RemoveAttributesActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    RemoveAttributesActivity.type = Types::RemoveAttributesActivity
    ReprocessingStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ReprocessingStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ReprocessingStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ReprocessingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReprocessingSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReprocessingSummary, name: "member")
    ReprocessingSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReprocessingId, name: "id"))
    ReprocessingSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReprocessingStatus, name: "status"))
    ReprocessingSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    ReprocessingSummary.type = Types::ReprocessingSummary
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceAlreadyExistsException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ResourceAlreadyExistsException.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn2, name: "resourceArn"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceConfiguration.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, name: "computeType", traits: {"smithy.api#required" => {}}))
    ResourceConfiguration.add_member(:volume_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeSizeInGB, name: "volumeSizeInGB", traits: {"smithy.api#required" => {}}))
    ResourceConfiguration.type = Types::ResourceConfiguration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetentionPeriod.add_member(:unlimited, ::Smithy::Schema::Shapes::MemberShape.new(target: UnlimitedRetentionPeriod, name: "unlimited", traits: {"smithy.api#default" => false}))
    RetentionPeriod.add_member(:number_of_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodInDays, name: "numberOfDays"))
    RetentionPeriod.type = Types::RetentionPeriod
    RunPipelineActivityRequest.add_member(:pipeline_activity, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineActivity, name: "pipelineActivity", traits: {"smithy.api#required" => {}}))
    RunPipelineActivityRequest.add_member(:payloads, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagePayloads, name: "payloads", traits: {"smithy.api#required" => {}}))
    RunPipelineActivityRequest.type = Types::RunPipelineActivityRequest
    RunPipelineActivityResponse.add_member(:payloads, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagePayloads, name: "payloads"))
    RunPipelineActivityResponse.add_member(:log_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LogResult, name: "logResult"))
    RunPipelineActivityResponse.type = Types::RunPipelineActivityResponse
    S3DestinationConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucket", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyExpression, name: "key", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:glue_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueConfiguration, name: "glueConfiguration"))
    S3DestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3PathChannelMessages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3PathChannelMessage, name: "member")
    SampleChannelDataRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SampleChannelDataRequest.add_member(:max_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxMessages, name: "maxMessages", traits: {"smithy.api#httpQuery" => "maxMessages"}))
    SampleChannelDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    SampleChannelDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    SampleChannelDataRequest.type = Types::SampleChannelDataRequest
    SampleChannelDataResponse.add_member(:payloads, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagePayloads, name: "payloads"))
    SampleChannelDataResponse.type = Types::SampleChannelDataResponse
    Schedule.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "expression"))
    Schedule.type = Types::Schedule
    SchemaDefinition.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: Columns, name: "columns"))
    SchemaDefinition.type = Types::SchemaDefinition
    SelectAttributesActivity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "name", traits: {"smithy.api#required" => {}}))
    SelectAttributesActivity.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNames, name: "attributes", traits: {"smithy.api#required" => {}}))
    SelectAttributesActivity.add_member(:next, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityName, name: "next"))
    SelectAttributesActivity.type = Types::SelectAttributesActivity
    ServiceManagedChannelS3Storage.type = Types::ServiceManagedChannelS3Storage
    ServiceManagedChannelS3StorageSummary.type = Types::ServiceManagedChannelS3StorageSummary
    ServiceManagedDatastoreS3Storage.type = Types::ServiceManagedDatastoreS3Storage
    ServiceManagedDatastoreS3StorageSummary.type = Types::ServiceManagedDatastoreS3StorageSummary
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SqlQueryDatasetAction.add_member(:sql_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlQuery, name: "sqlQuery", traits: {"smithy.api#required" => {}}))
    SqlQueryDatasetAction.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryFilters, name: "filters"))
    SqlQueryDatasetAction.type = Types::SqlQueryDatasetAction
    StartPipelineReprocessingRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartPipelineReprocessingRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime"))
    StartPipelineReprocessingRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, name: "endTime"))
    StartPipelineReprocessingRequest.add_member(:channel_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMessages, name: "channelMessages"))
    StartPipelineReprocessingRequest.type = Types::StartPipelineReprocessingRequest
    StartPipelineReprocessingResponse.add_member(:reprocessing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReprocessingId, name: "reprocessingId"))
    StartPipelineReprocessingResponse.type = Types::StartPipelineReprocessingResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TimestampPartition.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    TimestampPartition.add_member(:timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "timestampFormat"))
    TimestampPartition.type = Types::TimestampPartition
    TriggeringDataset.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "name", traits: {"smithy.api#required" => {}}))
    TriggeringDataset.type = Types::TriggeringDataset
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "channelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:channel_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStorage, name: "channelStorage"))
    UpdateChannelRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "datasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetActions, name: "actions", traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTriggers, name: "triggers"))
    UpdateDatasetRequest.add_member(:content_delivery_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentDeliveryRules, name: "contentDeliveryRules"))
    UpdateDatasetRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    UpdateDatasetRequest.add_member(:versioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VersioningConfiguration, name: "versioningConfiguration"))
    UpdateDatasetRequest.add_member(:late_data_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LateDataRules, name: "lateDataRules"))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatastoreRequest.add_member(:datastore_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreName, name: "datastoreName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatastoreRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    UpdateDatastoreRequest.add_member(:datastore_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DatastoreStorage, name: "datastoreStorage"))
    UpdateDatastoreRequest.add_member(:file_format_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormatConfiguration, name: "fileFormatConfiguration"))
    UpdateDatastoreRequest.type = Types::UpdateDatastoreRequest
    UpdatePipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePipelineRequest.add_member(:pipeline_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineActivities, name: "pipelineActivities", traits: {"smithy.api#required" => {}}))
    UpdatePipelineRequest.type = Types::UpdatePipelineRequest
    Variable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableName, name: "name", traits: {"smithy.api#required" => {}}))
    Variable.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue, name: "stringValue"))
    Variable.add_member(:double_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleValue, name: "doubleValue", traits: {"smithy.api#default" => nil}))
    Variable.add_member(:dataset_content_version_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetContentVersionValue, name: "datasetContentVersionValue"))
    Variable.add_member(:output_file_uri_value, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFileUriValue, name: "outputFileUriValue"))
    Variable.type = Types::Variable
    Variables.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Variable, name: "member")
    VersioningConfiguration.add_member(:unlimited, ::Smithy::Schema::Shapes::MemberShape.new(target: UnlimitedVersioning, name: "unlimited", traits: {"smithy.api#default" => false}))
    VersioningConfiguration.add_member(:max_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxVersions, name: "maxVersions"))
    VersioningConfiguration.type = Types::VersioningConfiguration

    AWSIoTAnalytics = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotanalytics#AWSIoTAnalytics"
      service.name = "AWSIoTAnalytics"
      service.version = "2017-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTAnalytics", "arnNamespace" => "iotanalytics", "cloudFormationName" => "IoTAnalytics", "cloudTrailEventSource" => "iotanalytics.amazonaws.com", "endpointPrefix" => "iotanalytics"}, "aws.auth#sigv4" => {"name" => "iotanalytics"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Analytics"}
      service.add_operation(:batch_put_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#BatchPutMessage"
        operation.name = "BatchPutMessage"
        operation.input = BatchPutMessageRequest
        operation.output = BatchPutMessageResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/messages/batch", "code" => 200}}
      end)
      service.add_operation(:cancel_pipeline_reprocessing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CancelPipelineReprocessing"
        operation.name = "CancelPipelineReprocessing"
        operation.input = CancelPipelineReprocessingRequest
        operation.output = CancelPipelineReprocessingResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", "code" => 200}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = CreateChannelRequest
        operation.output = CreateChannelResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels", "code" => 201}}
      end)
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasets", "code" => 201}}
      end)
      service.add_operation(:create_dataset_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreateDatasetContent"
        operation.name = "CreateDatasetContent"
        operation.input = CreateDatasetContentRequest
        operation.output = CreateDatasetContentResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasets/{datasetName}/content", "code" => 200}}
      end)
      service.add_operation(:create_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreateDatastore"
        operation.name = "CreateDatastore"
        operation.input = CreateDatastoreRequest
        operation.output = CreateDatastoreResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datastores", "code" => 201}}
      end)
      service.add_operation(:create_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = CreatePipelineRequest
        operation.output = CreatePipelineResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pipelines", "code" => 201}}
      end)
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = DeleteChannelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{channelName}", "code" => 204}}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datasets/{datasetName}", "code" => 204}}
      end)
      service.add_operation(:delete_dataset_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeleteDatasetContent"
        operation.name = "DeleteDatasetContent"
        operation.input = DeleteDatasetContentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datasets/{datasetName}/content", "code" => 204}}
      end)
      service.add_operation(:delete_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeleteDatastore"
        operation.name = "DeleteDatastore"
        operation.input = DeleteDatastoreRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datastores/{datastoreName}", "code" => 204}}
      end)
      service.add_operation(:delete_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = DeletePipelineRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/pipelines/{pipelineName}", "code" => 204}}
      end)
      service.add_operation(:describe_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = DescribeChannelRequest
        operation.output = DescribeChannelResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{channelName}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetName}", "code" => 200}}
      end)
      service.add_operation(:describe_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribeDatastore"
        operation.name = "DescribeDatastore"
        operation.input = DescribeDatastoreRequest
        operation.output = DescribeDatastoreResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datastores/{datastoreName}", "code" => 200}}
      end)
      service.add_operation(:describe_logging_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribeLoggingOptions"
        operation.name = "DescribeLoggingOptions"
        operation.input = DescribeLoggingOptionsRequest
        operation.output = DescribeLoggingOptionsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:describe_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribePipeline"
        operation.name = "DescribePipeline"
        operation.input = DescribePipelineRequest
        operation.output = DescribePipelineResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/pipelines/{pipelineName}", "code" => 200}}
      end)
      service.add_operation(:get_dataset_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#GetDatasetContent"
        operation.name = "GetDatasetContent"
        operation.input = GetDatasetContentRequest
        operation.output = GetDatasetContentResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetName}/content", "code" => 200}}
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListChannels"
        operation.name = "ListChannels"
        operation.input = ListChannelsRequest
        operation.output = ListChannelsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels", "code" => 200}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_dataset_contents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListDatasetContents"
        operation.name = "ListDatasetContents"
        operation.input = ListDatasetContentsRequest
        operation.output = ListDatasetContentsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetName}/contents", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasetContents.new
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_datastores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListDatastores"
        operation.name = "ListDatastores"
        operation.input = ListDatastoresRequest
        operation.output = ListDatastoresResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datastores", "code" => 200}}
        operation[:paginator] = Paginators::ListDatastores.new
      end)
      service.add_operation(:list_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = ListPipelinesRequest
        operation.output = ListPipelinesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/pipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:put_logging_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#PutLoggingOptions"
        operation.name = "PutLoggingOptions"
        operation.input = PutLoggingOptionsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:run_pipeline_activity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#RunPipelineActivity"
        operation.name = "RunPipelineActivity"
        operation.input = RunPipelineActivityRequest
        operation.output = RunPipelineActivityResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pipelineactivities/run", "code" => 200}}
      end)
      service.add_operation(:sample_channel_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#SampleChannelData"
        operation.name = "SampleChannelData"
        operation.input = SampleChannelDataRequest
        operation.output = SampleChannelDataResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{channelName}/sample", "code" => 200}}
      end)
      service.add_operation(:start_pipeline_reprocessing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#StartPipelineReprocessing"
        operation.name = "StartPipelineReprocessing"
        operation.input = StartPipelineReprocessingRequest
        operation.output = StartPipelineReprocessingResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pipelines/{pipelineName}/reprocessing", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 204}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = UpdateChannelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{channelName}", "code" => 200}}
      end)
      service.add_operation(:update_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = UpdateDatasetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/datasets/{datasetName}", "code" => 200}}
      end)
      service.add_operation(:update_datastore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UpdateDatastore"
        operation.name = "UpdateDatastore"
        operation.input = UpdateDatastoreRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/datastores/{datastoreName}", "code" => 200}}
      end)
      service.add_operation(:update_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UpdatePipeline"
        operation.name = "UpdatePipeline"
        operation.input = UpdatePipelineRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/pipelines/{pipelineName}", "code" => 200}}
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
