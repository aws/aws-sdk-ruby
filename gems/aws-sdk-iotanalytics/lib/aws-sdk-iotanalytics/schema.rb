# frozen_string_literal: true

# This is generated code!

module Aws::IoTAnalytics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivityBatchSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotanalytics#ActivityBatchSize', name: 'ActivityBatchSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ActivityName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ActivityName', name: 'ActivityName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AddAttributesActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#AddAttributesActivity', name: 'AddAttributesActivity')
    AttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AttributeNameMapping = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotanalytics#AttributeNameMapping', name: 'AttributeNameMapping', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AttributeNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#AttributeNames', name: 'AttributeNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    BatchPutMessageErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#BatchPutMessageErrorEntries', name: 'BatchPutMessageErrorEntries')
    BatchPutMessageErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#BatchPutMessageErrorEntry', name: 'BatchPutMessageErrorEntry')
    BatchPutMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#BatchPutMessageRequest', name: 'BatchPutMessageRequest')
    BatchPutMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#BatchPutMessageResponse', name: 'BatchPutMessageResponse')
    BucketKeyExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#BucketKeyExpression', name: 'BucketKeyExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9!_.*'()/{}:-]*$"})
    BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#BucketName', name: 'BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9.\\-_]*$"})
    CancelPipelineReprocessingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CancelPipelineReprocessingRequest', name: 'CancelPipelineReprocessingRequest')
    CancelPipelineReprocessingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CancelPipelineReprocessingResponse', name: 'CancelPipelineReprocessingResponse')
    Channel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Channel', name: 'Channel')
    ChannelActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ChannelActivity', name: 'ChannelActivity')
    ChannelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ChannelArn', name: 'ChannelArn')
    ChannelMessages = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ChannelMessages', name: 'ChannelMessages')
    ChannelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ChannelName', name: 'ChannelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!_{2}))(^[a-zA-Z0-9_]+$)$"})
    ChannelStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ChannelStatistics', name: 'ChannelStatistics')
    ChannelStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#ChannelStatus', name: 'ChannelStatus')
    ChannelStorage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ChannelStorage', name: 'ChannelStorage')
    ChannelStorageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ChannelStorageSummary', name: 'ChannelStorageSummary')
    ChannelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#ChannelSummaries', name: 'ChannelSummaries')
    ChannelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ChannelSummary', name: 'ChannelSummary')
    Column = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Column', name: 'Column')
    ColumnDataType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ColumnDataType', name: 'ColumnDataType', traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    ColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z_]([A-Za-z0-9]*|[A-Za-z0-9][A-Za-z0-9_]*)$"})
    Columns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#Columns', name: 'Columns')
    ComputeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#ComputeType', name: 'ComputeType')
    ContainerDatasetAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ContainerDatasetAction', name: 'ContainerDatasetAction')
    CreateChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreateChannelRequest', name: 'CreateChannelRequest')
    CreateChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreateChannelResponse', name: 'CreateChannelResponse')
    CreateDatasetContentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreateDatasetContentRequest', name: 'CreateDatasetContentRequest')
    CreateDatasetContentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreateDatasetContentResponse', name: 'CreateDatasetContentResponse')
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreateDatastoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreateDatastoreRequest', name: 'CreateDatastoreRequest')
    CreateDatastoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreateDatastoreResponse', name: 'CreateDatastoreResponse')
    CreatePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreatePipelineRequest', name: 'CreatePipelineRequest')
    CreatePipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CreatePipelineResponse', name: 'CreatePipelineResponse')
    CustomerManagedChannelS3Storage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CustomerManagedChannelS3Storage', name: 'CustomerManagedChannelS3Storage')
    CustomerManagedChannelS3StorageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CustomerManagedChannelS3StorageSummary', name: 'CustomerManagedChannelS3StorageSummary')
    CustomerManagedDatastoreS3Storage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CustomerManagedDatastoreS3Storage', name: 'CustomerManagedDatastoreS3Storage')
    CustomerManagedDatastoreS3StorageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#CustomerManagedDatastoreS3StorageSummary', name: 'CustomerManagedDatastoreS3StorageSummary')
    Dataset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Dataset', name: 'Dataset')
    DatasetAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetAction', name: 'DatasetAction')
    DatasetActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#DatasetActionName', name: 'DatasetActionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    DatasetActionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#DatasetActionSummaries', name: 'DatasetActionSummaries', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DatasetActionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetActionSummary', name: 'DatasetActionSummary')
    DatasetActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#DatasetActionType', name: 'DatasetActionType')
    DatasetActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#DatasetActions', name: 'DatasetActions', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DatasetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#DatasetArn', name: 'DatasetArn')
    DatasetContentDeliveryDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentDeliveryDestination', name: 'DatasetContentDeliveryDestination')
    DatasetContentDeliveryRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentDeliveryRule', name: 'DatasetContentDeliveryRule')
    DatasetContentDeliveryRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentDeliveryRules', name: 'DatasetContentDeliveryRules', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    DatasetContentState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentState', name: 'DatasetContentState')
    DatasetContentStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentStatus', name: 'DatasetContentStatus')
    DatasetContentSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentSummaries', name: 'DatasetContentSummaries')
    DatasetContentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentSummary', name: 'DatasetContentSummary')
    DatasetContentVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentVersion', name: 'DatasetContentVersion', traits: {"smithy.api#length" => {"min" => 7, "max" => 36}})
    DatasetContentVersionValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetContentVersionValue', name: 'DatasetContentVersionValue')
    DatasetEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#DatasetEntries', name: 'DatasetEntries')
    DatasetEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetEntry', name: 'DatasetEntry')
    DatasetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#DatasetName', name: 'DatasetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!_{2}))(^[a-zA-Z0-9_]+$)$"})
    DatasetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#DatasetStatus', name: 'DatasetStatus')
    DatasetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#DatasetSummaries', name: 'DatasetSummaries')
    DatasetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetSummary', name: 'DatasetSummary')
    DatasetTrigger = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatasetTrigger', name: 'DatasetTrigger')
    DatasetTriggers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#DatasetTriggers', name: 'DatasetTriggers', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    Datastore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Datastore', name: 'Datastore')
    DatastoreActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatastoreActivity', name: 'DatastoreActivity')
    DatastoreArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#DatastoreArn', name: 'DatastoreArn')
    DatastoreIotSiteWiseMultiLayerStorage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatastoreIotSiteWiseMultiLayerStorage', name: 'DatastoreIotSiteWiseMultiLayerStorage')
    DatastoreIotSiteWiseMultiLayerStorageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatastoreIotSiteWiseMultiLayerStorageSummary', name: 'DatastoreIotSiteWiseMultiLayerStorageSummary')
    DatastoreName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#DatastoreName', name: 'DatastoreName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!_{2}))(^[a-zA-Z0-9_]+$)$"})
    DatastorePartition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatastorePartition', name: 'DatastorePartition')
    DatastorePartitions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatastorePartitions', name: 'DatastorePartitions')
    DatastoreStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatastoreStatistics', name: 'DatastoreStatistics')
    DatastoreStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#DatastoreStatus', name: 'DatastoreStatus')
    DatastoreStorage = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotanalytics#DatastoreStorage', name: 'DatastoreStorage')
    DatastoreStorageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatastoreStorageSummary', name: 'DatastoreStorageSummary')
    DatastoreSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#DatastoreSummaries', name: 'DatastoreSummaries')
    DatastoreSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DatastoreSummary', name: 'DatastoreSummary')
    DeleteChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeleteChannelRequest', name: 'DeleteChannelRequest')
    DeleteDatasetContentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeleteDatasetContentRequest', name: 'DeleteDatasetContentRequest')
    DeleteDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeleteDatasetRequest', name: 'DeleteDatasetRequest')
    DeleteDatastoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeleteDatastoreRequest', name: 'DeleteDatastoreRequest')
    DeletePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeletePipelineRequest', name: 'DeletePipelineRequest')
    DeltaTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeltaTime', name: 'DeltaTime')
    DeltaTimeSessionWindowConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeltaTimeSessionWindowConfiguration', name: 'DeltaTimeSessionWindowConfiguration')
    DescribeChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribeChannelRequest', name: 'DescribeChannelRequest')
    DescribeChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribeChannelResponse', name: 'DescribeChannelResponse')
    DescribeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribeDatasetRequest', name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribeDatasetResponse', name: 'DescribeDatasetResponse')
    DescribeDatastoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribeDatastoreRequest', name: 'DescribeDatastoreRequest')
    DescribeDatastoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribeDatastoreResponse', name: 'DescribeDatastoreResponse')
    DescribeLoggingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribeLoggingOptionsRequest', name: 'DescribeLoggingOptionsRequest')
    DescribeLoggingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribeLoggingOptionsResponse', name: 'DescribeLoggingOptionsResponse')
    DescribePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribePipelineRequest', name: 'DescribePipelineRequest')
    DescribePipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DescribePipelineResponse', name: 'DescribePipelineResponse')
    DeviceRegistryEnrichActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeviceRegistryEnrichActivity', name: 'DeviceRegistryEnrichActivity')
    DeviceShadowEnrichActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#DeviceShadowEnrichActivity', name: 'DeviceShadowEnrichActivity')
    DoubleValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.iotanalytics#DoubleValue', name: 'DoubleValue', traits: {"smithy.api#default" => 0})
    EndTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotanalytics#EndTime', name: 'EndTime')
    EntryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#EntryName', name: 'EntryName')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ErrorMessage', name: 'ErrorMessage')
    EstimatedResourceSize = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#EstimatedResourceSize', name: 'EstimatedResourceSize')
    FileFormatConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#FileFormatConfiguration', name: 'FileFormatConfiguration')
    FileFormatType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#FileFormatType', name: 'FileFormatType')
    FilterActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#FilterActivity', name: 'FilterActivity')
    FilterExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#FilterExpression', name: 'FilterExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    GetDatasetContentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#GetDatasetContentRequest', name: 'GetDatasetContentRequest')
    GetDatasetContentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#GetDatasetContentResponse', name: 'GetDatasetContentResponse')
    GlueConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#GlueConfiguration', name: 'GlueConfiguration')
    GlueDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#GlueDatabaseName', name: 'GlueDatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    GlueTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#GlueTableName', name: 'GlueTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    Image = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#Image', name: 'Image', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    IncludeStatisticsFlag = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotanalytics#IncludeStatisticsFlag', name: 'IncludeStatisticsFlag', traits: {"smithy.api#default" => false})
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IotEventsDestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#IotEventsDestinationConfiguration', name: 'IotEventsDestinationConfiguration')
    IotEventsInputName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#IotEventsInputName', name: 'IotEventsInputName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    IotSiteWiseCustomerManagedDatastoreS3Storage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#IotSiteWiseCustomerManagedDatastoreS3Storage', name: 'IotSiteWiseCustomerManagedDatastoreS3Storage')
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#IotSiteWiseCustomerManagedDatastoreS3StorageSummary', name: 'IotSiteWiseCustomerManagedDatastoreS3StorageSummary')
    JsonConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#JsonConfiguration', name: 'JsonConfiguration')
    LambdaActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#LambdaActivity', name: 'LambdaActivity')
    LambdaName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#LambdaName', name: 'LambdaName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    LateDataRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#LateDataRule', name: 'LateDataRule')
    LateDataRuleConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#LateDataRuleConfiguration', name: 'LateDataRuleConfiguration')
    LateDataRuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#LateDataRuleName', name: 'LateDataRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    LateDataRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#LateDataRules', name: 'LateDataRules', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListChannelsRequest', name: 'ListChannelsRequest')
    ListChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListChannelsResponse', name: 'ListChannelsResponse')
    ListDatasetContentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListDatasetContentsRequest', name: 'ListDatasetContentsRequest')
    ListDatasetContentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListDatasetContentsResponse', name: 'ListDatasetContentsResponse')
    ListDatasetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListDatasetsRequest', name: 'ListDatasetsRequest')
    ListDatasetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListDatasetsResponse', name: 'ListDatasetsResponse')
    ListDatastoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListDatastoresRequest', name: 'ListDatastoresRequest')
    ListDatastoresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListDatastoresResponse', name: 'ListDatastoresResponse')
    ListPipelinesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListPipelinesRequest', name: 'ListPipelinesRequest')
    ListPipelinesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListPipelinesResponse', name: 'ListPipelinesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LogResult = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#LogResult', name: 'LogResult')
    LoggingEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotanalytics#LoggingEnabled', name: 'LoggingEnabled', traits: {"smithy.api#default" => false})
    LoggingLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#LoggingLevel', name: 'LoggingLevel')
    LoggingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#LoggingOptions', name: 'LoggingOptions')
    MathActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#MathActivity', name: 'MathActivity')
    MathExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#MathExpression', name: 'MathExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MaxMessages = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotanalytics#MaxMessages', name: 'MaxMessages', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotanalytics#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    MaxVersions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotanalytics#MaxVersions', name: 'MaxVersions', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Message', name: 'Message')
    MessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#MessageId', name: 'MessageId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\p{ASCII}*$"})
    MessagePayload = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotanalytics#MessagePayload', name: 'MessagePayload')
    MessagePayloads = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#MessagePayloads', name: 'MessagePayloads', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Messages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#Messages', name: 'Messages')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#NextToken', name: 'NextToken')
    OffsetSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotanalytics#OffsetSeconds', name: 'OffsetSeconds')
    OutputFileName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#OutputFileName', name: 'OutputFileName', traits: {"smithy.api#pattern" => "^[\\w\\.-]{1,255}$"})
    OutputFileUriValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#OutputFileUriValue', name: 'OutputFileUriValue')
    ParquetConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ParquetConfiguration', name: 'ParquetConfiguration')
    Partition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Partition', name: 'Partition')
    PartitionAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#PartitionAttributeName', name: 'PartitionAttributeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    Partitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#Partitions', name: 'Partitions', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    Pipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Pipeline', name: 'Pipeline')
    PipelineActivities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#PipelineActivities', name: 'PipelineActivities', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    PipelineActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#PipelineActivity', name: 'PipelineActivity')
    PipelineArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#PipelineArn', name: 'PipelineArn')
    PipelineName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#PipelineName', name: 'PipelineName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!_{2}))(^[a-zA-Z0-9_]+$)$"})
    PipelineSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#PipelineSummaries', name: 'PipelineSummaries')
    PipelineSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#PipelineSummary', name: 'PipelineSummary')
    PresignedURI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#PresignedURI', name: 'PresignedURI')
    PutLoggingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#PutLoggingOptionsRequest', name: 'PutLoggingOptionsRequest')
    QueryFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#QueryFilter', name: 'QueryFilter')
    QueryFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#QueryFilters', name: 'QueryFilters', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Reason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#Reason', name: 'Reason')
    RemoveAttributesActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#RemoveAttributesActivity', name: 'RemoveAttributesActivity')
    ReprocessingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ReprocessingId', name: 'ReprocessingId')
    ReprocessingStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotanalytics#ReprocessingStatus', name: 'ReprocessingStatus')
    ReprocessingSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#ReprocessingSummaries', name: 'ReprocessingSummaries')
    ReprocessingSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ReprocessingSummary', name: 'ReprocessingSummary')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    ResourceArn2 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ResourceArn2', name: 'ResourceArn2')
    ResourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ResourceConfiguration', name: 'ResourceConfiguration')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetentionPeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#RetentionPeriod', name: 'RetentionPeriod')
    RetentionPeriodInDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotanalytics#RetentionPeriodInDays', name: 'RetentionPeriodInDays', traits: {"smithy.api#range" => {"min" => 1}})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    RunPipelineActivityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#RunPipelineActivityRequest', name: 'RunPipelineActivityRequest')
    RunPipelineActivityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#RunPipelineActivityResponse', name: 'RunPipelineActivityResponse')
    S3DestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#S3DestinationConfiguration', name: 'S3DestinationConfiguration')
    S3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#S3KeyPrefix', name: 'S3KeyPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9!_.*'()/{}:-]*/$"})
    S3PathChannelMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#S3PathChannelMessage', name: 'S3PathChannelMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9/_!'(){}\\*\\s\\.\\-\\=\\:]+$"})
    S3PathChannelMessages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#S3PathChannelMessages', name: 'S3PathChannelMessages', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SampleChannelDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#SampleChannelDataRequest', name: 'SampleChannelDataRequest')
    SampleChannelDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#SampleChannelDataResponse', name: 'SampleChannelDataResponse')
    Schedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Schedule', name: 'Schedule')
    ScheduleExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#ScheduleExpression', name: 'ScheduleExpression')
    SchemaDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#SchemaDefinition', name: 'SchemaDefinition')
    SelectAttributesActivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#SelectAttributesActivity', name: 'SelectAttributesActivity')
    ServiceManagedChannelS3Storage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ServiceManagedChannelS3Storage', name: 'ServiceManagedChannelS3Storage')
    ServiceManagedChannelS3StorageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ServiceManagedChannelS3StorageSummary', name: 'ServiceManagedChannelS3StorageSummary')
    ServiceManagedDatastoreS3Storage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ServiceManagedDatastoreS3Storage', name: 'ServiceManagedDatastoreS3Storage')
    ServiceManagedDatastoreS3StorageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ServiceManagedDatastoreS3StorageSummary', name: 'ServiceManagedDatastoreS3StorageSummary')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionTimeoutInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotanalytics#SessionTimeoutInMinutes', name: 'SessionTimeoutInMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    SizeInBytes = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.iotanalytics#SizeInBytes', name: 'SizeInBytes')
    SqlQuery = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#SqlQuery', name: 'SqlQuery')
    SqlQueryDatasetAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#SqlQueryDatasetAction', name: 'SqlQueryDatasetAction')
    StartPipelineReprocessingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#StartPipelineReprocessingRequest', name: 'StartPipelineReprocessingRequest')
    StartPipelineReprocessingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#StartPipelineReprocessingResponse', name: 'StartPipelineReprocessingResponse')
    StartTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotanalytics#StartTime', name: 'StartTime')
    StringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#StringValue', name: 'StringValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#TimeExpression', name: 'TimeExpression')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotanalytics#Timestamp', name: 'Timestamp')
    TimestampFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#TimestampFormat', name: 'TimestampFormat', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s\\[\\]_,.'/:-]*$"})
    TimestampPartition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#TimestampPartition', name: 'TimestampPartition')
    TriggeringDataset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#TriggeringDataset', name: 'TriggeringDataset')
    UnlimitedRetentionPeriod = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotanalytics#UnlimitedRetentionPeriod', name: 'UnlimitedRetentionPeriod', traits: {"smithy.api#default" => false})
    UnlimitedVersioning = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotanalytics#UnlimitedVersioning', name: 'UnlimitedVersioning', traits: {"smithy.api#default" => false})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#UpdateChannelRequest', name: 'UpdateChannelRequest')
    UpdateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#UpdateDatasetRequest', name: 'UpdateDatasetRequest')
    UpdateDatastoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#UpdateDatastoreRequest', name: 'UpdateDatastoreRequest')
    UpdatePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#UpdatePipelineRequest', name: 'UpdatePipelineRequest')
    Variable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#Variable', name: 'Variable')
    VariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#VariableName', name: 'VariableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Variables = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotanalytics#Variables', name: 'Variables', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    VersioningConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotanalytics#VersioningConfiguration', name: 'VersioningConfiguration')
    VolumeSizeInGB = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotanalytics#VolumeSizeInGB', name: 'VolumeSizeInGB', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotanalytics#resourceId', name: 'ResourceId')

    AddAttributesActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the addAttributes activity.</p>", "smithy.api#required" => {}}))
    AddAttributesActivity.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameMapping, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>A list of 1-50 <code>AttributeNameMapping</code> objects that map an existing attribute to\n      a new attribute.</p>\n         <note>\n            <p>The existing attributes remain in the message, so if you want to remove the originals,\n        use <code>RemoveAttributeActivity</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    AddAttributesActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    AddAttributesActivity.type = Types::AddAttributesActivity
    AttributeNameMapping.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    AttributeNameMapping.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    AttributeNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    BatchPutMessageErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntry)
    BatchPutMessageErrorEntry.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The ID of the message that caused the error. See the value corresponding to the\n            <code>messageId</code> key in the message object.</p>"}))
    BatchPutMessageErrorEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The code associated with the error.</p>"}))
    BatchPutMessageErrorEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the error.</p>"}))
    BatchPutMessageErrorEntry.type = Types::BatchPutMessageErrorEntry
    BatchPutMessageRequest.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel where the messages are sent.</p>", "smithy.api#required" => {}}))
    BatchPutMessageRequest.add_member(:messages, Smithy::Schema::Shapes::ShapeRef.new(shape: Messages, location_name: 'messages', traits: {"smithy.api#documentation" => "<p>The list of messages to be sent. Each message has the format: { \"messageId\": \"string\",\n         \"payload\": \"string\"}.</p>\n         <p>The field names of message payloads (data) that you send to IoT Analytics:</p>\n         <ul>\n            <li>\n               <p>Must contain only alphanumeric characters and undescores (_). No other special characters are\n               allowed.</p>\n            </li>\n            <li>\n               <p>Must begin with an alphabetic character or single underscore (_).</p>\n            </li>\n            <li>\n               <p>Cannot contain hyphens (-).</p>\n            </li>\n            <li>\n               <p>In regular expression terms: \"^[A-Za-z_]([A-Za-z0-9]*|[A-Za-z0-9][A-Za-z0-9_]*)$\".\n            </p>\n            </li>\n            <li>\n               <p>Cannot be more than 255 characters.</p>\n            </li>\n            <li>\n               <p>Are case insensitive. (Fields named foo and FOO in the same payload are considered\n               duplicates.)</p>\n            </li>\n         </ul>\n         <p>For example, {\"temp_01\": 29} or {\"_temp_01\": 29} are valid, but {\"temp-01\": 29},\n {\"01_temp\": 29} or {\"__temp_01\": 29} are invalid in message payloads.  </p>", "smithy.api#required" => {}}))
    BatchPutMessageRequest.type = Types::BatchPutMessageRequest
    BatchPutMessageResponse.add_member(:batch_put_message_error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntries, location_name: 'batchPutMessageErrorEntries', traits: {"smithy.api#documentation" => "<p>A list of any errors encountered when sending the messages to the channel.</p>"}))
    BatchPutMessageResponse.type = Types::BatchPutMessageResponse
    CancelPipelineReprocessingRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of pipeline for which data reprocessing is canceled.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelPipelineReprocessingRequest.add_member(:reprocessing_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReprocessingId, location_name: 'reprocessingId', traits: {"smithy.api#documentation" => "<p>The ID of the reprocessing task (returned by\n      <code>StartPipelineReprocessing</code>).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelPipelineReprocessingRequest.type = Types::CancelPipelineReprocessingRequest
    CancelPipelineReprocessingResponse.type = Types::CancelPipelineReprocessingResponse
    Channel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>"}))
    Channel.add_member(:storage, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStorage, location_name: 'storage', traits: {"smithy.api#documentation" => "<p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or\n        <code>customerManagedS3</code> storage. If not specified, the default is\n        <code>serviceManagedS3</code>. You can't change this storage option after the channel is\n      created.</p>"}))
    Channel.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    Channel.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the channel.</p>"}))
    Channel.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, message data is kept for the channel.</p>"}))
    Channel.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the channel was created.</p>"}))
    Channel.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>When the channel was last updated.</p>"}))
    Channel.add_member(:last_message_arrival_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastMessageArrivalTime', traits: {"smithy.api#documentation" => "<p>The last time when a new message arrived in the channel.</p>\n         <p>IoT Analytics updates this value at most once per minute for one channel. Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p>\n         <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>"}))
    Channel.type = Types::Channel
    ChannelActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the channel activity.</p>", "smithy.api#required" => {}}))
    ChannelActivity.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel from which the messages are processed.</p>", "smithy.api#required" => {}}))
    ChannelActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    ChannelActivity.type = Types::ChannelActivity
    ChannelMessages.add_member(:s3_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PathChannelMessages, location_name: 's3Paths', traits: {"smithy.api#documentation" => "<p>Specifies one or more keys that identify the Amazon Simple Storage Service (Amazon S3) objects that save your\n      channel messages.</p>\n         <p>You must use the full path for the key.</p>\n         <p>Example path: <code>channel/mychannel/__dt=2020-02-29\n        00:00:00/1582940490000_1582940520000_123456789012_mychannel_0_2118.0.json.gz</code>\n         </p>"}))
    ChannelMessages.type = Types::ChannelMessages
    ChannelStatistics.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: EstimatedResourceSize, location_name: 'size', traits: {"smithy.api#documentation" => "<p>The estimated size of the channel.</p>"}))
    ChannelStatistics.type = Types::ChannelStatistics
    ChannelStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ChannelStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ChannelStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ChannelStorage.add_member(:service_managed_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedChannelS3Storage, location_name: 'serviceManagedS3', traits: {"smithy.api#documentation" => "<p>Used to store channel data in an S3 bucket managed by IoT Analytics. You can't change the choice\n      of S3 storage after the data store is created.</p>"}))
    ChannelStorage.add_member(:customer_managed_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedChannelS3Storage, location_name: 'customerManagedS3', traits: {"smithy.api#documentation" => "<p>Used to store channel data in an S3 bucket that you manage. If customer managed storage is\n      selected, the <code>retentionPeriod</code> parameter is ignored. You can't change the choice\n      of S3 storage after the data store is created.</p>"}))
    ChannelStorage.type = Types::ChannelStorage
    ChannelStorageSummary.add_member(:service_managed_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedChannelS3StorageSummary, location_name: 'serviceManagedS3', traits: {"smithy.api#documentation" => "<p>Used to store channel data in an S3 bucket managed by IoT Analytics.</p>"}))
    ChannelStorageSummary.add_member(:customer_managed_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedChannelS3StorageSummary, location_name: 'customerManagedS3', traits: {"smithy.api#documentation" => "<p>Used to store channel data in an S3 bucket that you manage.</p>"}))
    ChannelStorageSummary.type = Types::ChannelStorageSummary
    ChannelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummary)
    ChannelSummary.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>"}))
    ChannelSummary.add_member(:channel_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStorageSummary, location_name: 'channelStorage', traits: {"smithy.api#documentation" => "<p>Where channel data is stored.</p>"}))
    ChannelSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the channel.</p>"}))
    ChannelSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the channel was created.</p>"}))
    ChannelSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the channel was updated.</p>"}))
    ChannelSummary.add_member(:last_message_arrival_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastMessageArrivalTime', traits: {"smithy.api#documentation" => "<p>The last time when a new message arrived in the channel.</p>\n         <p>IoT Analytics updates this value at most once per minute for one channel. Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p>\n         <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>"}))
    ChannelSummary.type = Types::ChannelSummary
    Column.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the column.</p>", "smithy.api#required" => {}}))
    Column.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDataType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of data. For more information about the supported data types, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html\">Common data types</a>\n      in the <i>Glue Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    Column.type = Types::Column
    Columns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Column)
    ComputeType.add_member(:acu_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACU_1', traits: {"smithy.api#enumValue" => "ACU_1"}))
    ComputeType.add_member(:acu_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACU_2', traits: {"smithy.api#enumValue" => "ACU_2"}))
    ContainerDatasetAction.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'image', traits: {"smithy.api#documentation" => "<p>The ARN of the Docker container stored in your account. The Docker container contains an\n      application and required support libraries and is used to generate dataset contents.</p>", "smithy.api#required" => {}}))
    ContainerDatasetAction.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that gives permission to the system to access required resources to\n      run the <code>containerAction</code>. This includes, at minimum, permission to retrieve the\n      dataset contents that are the input to the containerized application.</p>", "smithy.api#required" => {}}))
    ContainerDatasetAction.add_member(:resource_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfiguration, location_name: 'resourceConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of the resource that executes the <code>containerAction</code>.</p>", "smithy.api#required" => {}}))
    ContainerDatasetAction.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: Variables, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>The values of variables used in the context of the execution of the containerized\n      application (basically, parameters passed to the application). Each variable must have a name\n      and a value given by one of <code>stringValue</code>, <code>datasetContentVersionValue</code>,\n      or <code>outputFileUriValue</code>.</p>"}))
    ContainerDatasetAction.type = Types::ContainerDatasetAction
    CreateChannelRequest.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:channel_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStorage, location_name: 'channelStorage', traits: {"smithy.api#documentation" => "<p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or\n        <code>customerManagedS3</code> storage. If not specified, the default is\n        <code>serviceManagedS3</code>. You can't change this storage option after the channel is\n      created.</p>"}))
    CreateChannelRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, message data is kept for the channel. When\n        <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>"}))
    CreateChannelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata which can be used to manage the channel.</p>"}))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>"}))
    CreateChannelResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel.</p>"}))
    CreateChannelResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, message data is kept for the channel.</p>"}))
    CreateChannelResponse.type = Types::CreateChannelResponse
    CreateDatasetContentRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDatasetContentRequest.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentVersion, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The version ID of the dataset content. To specify <code>versionId</code> for a dataset\n      content, the dataset must use a <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">DeltaTimer</a> filter.</p>"}))
    CreateDatasetContentRequest.type = Types::CreateDatasetContentRequest
    CreateDatasetContentResponse.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentVersion, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The version ID of the dataset contents that are being created.</p>"}))
    CreateDatasetContentResponse.type = Types::CreateDatasetContentResponse
    CreateDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetActions, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>A list of actions that create the dataset contents.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTriggers, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>A list of triggers. A trigger causes dataset contents to be populated at a specified time\n      interval or when another dataset's contents are created. The list of triggers can be empty or\n      contain up to five <code>DataSetTrigger</code> objects.</p>"}))
    CreateDatasetRequest.add_member(:content_delivery_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentDeliveryRules, location_name: 'contentDeliveryRules', traits: {"smithy.api#documentation" => "<p>When dataset contents are created, they are delivered to destinations specified\n      here.</p>"}))
    CreateDatasetRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>Optional. How long, in days, versions of dataset contents are kept for the dataset. If not\n      specified or set to <code>null</code>, versions of dataset contents are retained for at most\n      90 days. The number of versions of dataset contents retained is determined by the\n        <code>versioningConfiguration</code> parameter. For more information, see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions\">\n        Keeping Multiple Versions of IoT Analytics datasets</a> in the\n        <i>IoT Analytics User Guide</i>.</p>"}))
    CreateDatasetRequest.add_member(:versioning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VersioningConfiguration, location_name: 'versioningConfiguration', traits: {"smithy.api#documentation" => "<p>Optional. How many versions of dataset contents are kept. If not specified or set to null,\n      only the latest version plus the latest succeeded version (if they are different) are kept for\n      the time period specified by the <code>retentionPeriod</code> parameter. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions\">Keeping Multiple Versions of IoT Analytics datasets</a> in the\n        <i>IoT Analytics User Guide</i>.</p>"}))
    CreateDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata which can be used to manage the dataset.</p>"}))
    CreateDatasetRequest.add_member(:late_data_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: LateDataRules, location_name: 'lateDataRules', traits: {"smithy.api#documentation" => "<p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">DeltaTimer</a> filter.</p>"}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>"}))
    CreateDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    CreateDatasetResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, dataset contents are kept for the dataset.</p>"}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateDatastoreRequest.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The name of the data store.</p>", "smithy.api#required" => {}}))
    CreateDatastoreRequest.add_member(:datastore_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStorage, location_name: 'datastoreStorage', traits: {"smithy.api#documentation" => "<p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>"}))
    CreateDatastoreRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, message data is kept for the data store. When\n        <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>"}))
    CreateDatastoreRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata which can be used to manage the data store.</p>"}))
    CreateDatastoreRequest.add_member(:file_format_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormatConfiguration, location_name: 'fileFormatConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href=\"https://parquet.apache.org/\">Parquet</a>.</p>\n         <p>The default file format is JSON. You can specify only one format.</p>\n         <p>You can't change the file format after you create the data store.</p>"}))
    CreateDatastoreRequest.add_member(:datastore_partitions, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastorePartitions, location_name: 'datastorePartitions', traits: {"smithy.api#documentation" => "<p> Contains information about the partition dimensions in a data store. </p>"}))
    CreateDatastoreRequest.type = Types::CreateDatastoreRequest
    CreateDatastoreResponse.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The name of the data store.</p>"}))
    CreateDatastoreResponse.add_member(:datastore_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreArn, location_name: 'datastoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the data store.</p>"}))
    CreateDatastoreResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, message data is kept for the data store.</p>"}))
    CreateDatastoreResponse.type = Types::CreateDatastoreResponse
    CreatePipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>", "smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:pipeline_activities, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineActivities, location_name: 'pipelineActivities', traits: {"smithy.api#documentation" => "<p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on\n      your messages, such as removing, renaming or adding message attributes; filtering messages\n      based on attribute values; invoking your Lambda unctions on messages for advanced processing;\n      or performing mathematical transformations to normalize device data.</p>\n         <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a\n        <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must\n      contain only one activity. For example:</p>\n         <p>\n            <code>pipelineActivities = [ { \"channel\": { ... } }, { \"lambda\": { ... } }, ...\n      ]</code>\n         </p>", "smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata which can be used to manage the pipeline.</p>"}))
    CreatePipelineRequest.type = Types::CreatePipelineRequest
    CreatePipelineResponse.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>"}))
    CreatePipelineResponse.add_member(:pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineArn, location_name: 'pipelineArn', traits: {"smithy.api#documentation" => "<p>The ARN of the pipeline.</p>"}))
    CreatePipelineResponse.type = Types::CreatePipelineResponse
    CustomerManagedChannelS3Storage.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket in which channel data is stored.</p>", "smithy.api#required" => {}}))
    CustomerManagedChannelS3Storage.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>(Optional) The prefix used to create the keys of the channel data objects. Each object in\n      an S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket\n      has exactly one key. The prefix must end with a forward slash (/).</p>"}))
    CustomerManagedChannelS3Storage.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3\n      resources.</p>", "smithy.api#required" => {}}))
    CustomerManagedChannelS3Storage.type = Types::CustomerManagedChannelS3Storage
    CustomerManagedChannelS3StorageSummary.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket in which channel data is stored.</p>"}))
    CustomerManagedChannelS3StorageSummary.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>(Optional) The prefix used to create the keys of the channel data objects. Each object in\n      an S3 bucket has a key that is its unique identifier within the bucket (each object in a\n      bucket has exactly one key). The prefix must end with a forward slash (/).</p>"}))
    CustomerManagedChannelS3StorageSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3\n      resources.</p>"}))
    CustomerManagedChannelS3StorageSummary.type = Types::CustomerManagedChannelS3StorageSummary
    CustomerManagedDatastoreS3Storage.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket where your data is stored.</p>", "smithy.api#required" => {}}))
    CustomerManagedDatastoreS3Storage.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>(Optional) The prefix used to create the keys of the data store data objects. Each object in an Amazon S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. The prefix must end with a forward slash (/).</p>"}))
    CustomerManagedDatastoreS3Storage.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3 resources.</p>", "smithy.api#required" => {}}))
    CustomerManagedDatastoreS3Storage.type = Types::CustomerManagedDatastoreS3Storage
    CustomerManagedDatastoreS3StorageSummary.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket where your data is stored.</p>"}))
    CustomerManagedDatastoreS3StorageSummary.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>(Optional) The prefix used to create the keys of the data store data objects. Each object in an Amazon S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. The prefix must end with a forward slash (/).</p>"}))
    CustomerManagedDatastoreS3StorageSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3 resources.</p>"}))
    CustomerManagedDatastoreS3StorageSummary.type = Types::CustomerManagedDatastoreS3StorageSummary
    Dataset.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>"}))
    Dataset.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the dataset.</p>"}))
    Dataset.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetActions, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The <code>DatasetAction</code> objects that automatically create the dataset\n      contents.</p>"}))
    Dataset.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTriggers, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>The <code>DatasetTrigger</code> objects that specify when the dataset is automatically\n      updated.</p>"}))
    Dataset.add_member(:content_delivery_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentDeliveryRules, location_name: 'contentDeliveryRules', traits: {"smithy.api#documentation" => "<p>When dataset contents are created they are delivered to destinations specified\n      here.</p>"}))
    Dataset.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset.</p>"}))
    Dataset.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the dataset was created.</p>"}))
    Dataset.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the dataset was updated.</p>"}))
    Dataset.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>Optional. How long, in days, message data is kept for the dataset.</p>"}))
    Dataset.add_member(:versioning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VersioningConfiguration, location_name: 'versioningConfiguration', traits: {"smithy.api#documentation" => "<p>Optional. How many versions of dataset contents are kept. If not specified or set to null,\n      only the latest version plus the latest succeeded version (if they are different) are kept for\n      the time period specified by the <code>retentionPeriod</code> parameter. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions\">\n        Keeping Multiple Versions of IoT Analytics datasets</a> in the\n        <i>IoT Analytics User Guide</i>.</p>"}))
    Dataset.add_member(:late_data_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: LateDataRules, location_name: 'lateDataRules', traits: {"smithy.api#documentation" => "<p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">DeltaTimer</a> filter.</p>"}))
    Dataset.type = Types::Dataset
    DatasetAction.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the dataset action by which dataset contents are automatically created.</p>"}))
    DatasetAction.add_member(:query_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlQueryDatasetAction, location_name: 'queryAction', traits: {"smithy.api#documentation" => "<p>An <code>SqlQueryDatasetAction</code> object that uses an SQL query to automatically\n      create dataset contents.</p>"}))
    DatasetAction.add_member(:container_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerDatasetAction, location_name: 'containerAction', traits: {"smithy.api#documentation" => "<p>Information that allows the system to run a containerized application to create the\n      dataset contents. The application must be in a Docker container along with any required\n      support libraries.</p>"}))
    DatasetAction.type = Types::DatasetAction
    DatasetActionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetActionSummary)
    DatasetActionSummary.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action that automatically creates the dataset's contents.</p>"}))
    DatasetActionSummary.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetActionType, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>The type of action by which the dataset's contents are automatically created.</p>"}))
    DatasetActionSummary.type = Types::DatasetActionSummary
    DatasetActionType.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY', traits: {"smithy.api#enumValue" => "QUERY"}))
    DatasetActionType.add_member(:container, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINER', traits: {"smithy.api#enumValue" => "CONTAINER"}))
    DatasetActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetAction)
    DatasetContentDeliveryDestination.add_member(:iot_events_destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IotEventsDestinationConfiguration, location_name: 'iotEventsDestinationConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for delivery of dataset contents to IoT Events.</p>"}))
    DatasetContentDeliveryDestination.add_member(:s3_destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: 's3DestinationConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for delivery of dataset contents to Amazon S3.</p>"}))
    DatasetContentDeliveryDestination.type = Types::DatasetContentDeliveryDestination
    DatasetContentDeliveryRule.add_member(:entry_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryName, location_name: 'entryName', traits: {"smithy.api#documentation" => "<p>The name of the dataset content delivery rules entry.</p>"}))
    DatasetContentDeliveryRule.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentDeliveryDestination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The destination to which dataset contents are delivered.</p>", "smithy.api#required" => {}}))
    DatasetContentDeliveryRule.type = Types::DatasetContentDeliveryRule
    DatasetContentDeliveryRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentDeliveryRule)
    DatasetContentState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DatasetContentState.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DatasetContentState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DatasetContentStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the dataset contents. Can be one of READY, CREATING, SUCCEEDED, or\n      FAILED.</p>"}))
    DatasetContentStatus.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason the dataset contents are in this state.</p>"}))
    DatasetContentStatus.type = Types::DatasetContentStatus
    DatasetContentSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentSummary)
    DatasetContentSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the dataset contents.</p>"}))
    DatasetContentSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset contents.</p>"}))
    DatasetContentSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The actual time the creation of the dataset contents was started.</p>"}))
    DatasetContentSummary.add_member(:schedule_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'scheduleTime', traits: {"smithy.api#documentation" => "<p>The time the creation of the dataset contents was scheduled to start.</p>"}))
    DatasetContentSummary.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>The time the dataset content status was updated to SUCCEEDED or FAILED.</p>"}))
    DatasetContentSummary.type = Types::DatasetContentSummary
    DatasetContentVersionValue.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset whose latest contents are used as input to the notebook or\n      application.</p>", "smithy.api#required" => {}}))
    DatasetContentVersionValue.type = Types::DatasetContentVersionValue
    DatasetEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntry)
    DatasetEntry.add_member(:entry_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryName, location_name: 'entryName', traits: {"smithy.api#documentation" => "<p>The name of the dataset item.</p>"}))
    DatasetEntry.add_member(:data_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: PresignedURI, location_name: 'dataURI', traits: {"smithy.api#documentation" => "<p>The presigned URI of the dataset item.</p>"}))
    DatasetEntry.type = Types::DatasetEntry
    DatasetStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DatasetStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatasetStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DatasetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSummary)
    DatasetSummary.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>"}))
    DatasetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset.</p>"}))
    DatasetSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the dataset was created.</p>"}))
    DatasetSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the dataset was updated.</p>"}))
    DatasetSummary.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTriggers, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>A list of triggers. A trigger causes dataset content to be populated at a specified time\n      interval or when another dataset is populated. The list of triggers can be empty or contain up\n      to five <code>DataSetTrigger</code> objects</p>"}))
    DatasetSummary.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetActionSummaries, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>A list of <code>DataActionSummary</code> objects.</p>"}))
    DatasetSummary.type = Types::DatasetSummary
    DatasetTrigger.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule', traits: {"smithy.api#documentation" => "<p>The Schedule when the trigger is initiated.</p>"}))
    DatasetTrigger.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggeringDataset, location_name: 'dataset', traits: {"smithy.api#documentation" => "<p>The dataset whose content creation triggers the creation of this dataset's\n      contents.</p>"}))
    DatasetTrigger.type = Types::DatasetTrigger
    DatasetTriggers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTrigger)
    Datastore.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data store.</p>"}))
    Datastore.add_member(:storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStorage, location_name: 'storage', traits: {"smithy.api#documentation" => "<p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>"}))
    Datastore.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the data store.</p>"}))
    Datastore.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a data store:</p>\n         <dl>\n            <dt>CREATING</dt>\n            <dd>\n               <p>The data store is being created.</p>\n            </dd>\n            <dt>ACTIVE</dt>\n            <dd>\n               <p>The data store has been created and can be used.</p>\n            </dd>\n            <dt>DELETING</dt>\n            <dd>\n               <p>The data store is being deleted.</p>\n            </dd>\n         </dl>"}))
    Datastore.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, message data is kept for the data store. When\n        <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>"}))
    Datastore.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the data store was created.</p>"}))
    Datastore.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the data store was updated.</p>"}))
    Datastore.add_member(:last_message_arrival_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastMessageArrivalTime', traits: {"smithy.api#documentation" => "<p>The last time when a new message arrived in the data store.</p>\n         <p>IoT Analytics updates this value at most once per minute for Amazon Simple Storage Service one data store. Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p>\n         <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>"}))
    Datastore.add_member(:file_format_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormatConfiguration, location_name: 'fileFormatConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href=\"https://parquet.apache.org/\">Parquet</a>.</p>\n         <p>The default file format is JSON. You can specify only one format.</p>\n         <p>You can't change the file format after you create the data store.</p>"}))
    Datastore.add_member(:datastore_partitions, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastorePartitions, location_name: 'datastorePartitions', traits: {"smithy.api#documentation" => "<p> Contains information about the partition dimensions in a data store. </p>"}))
    Datastore.type = Types::Datastore
    DatastoreActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the datastore activity.</p>", "smithy.api#required" => {}}))
    DatastoreActivity.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The name of the data store where processed messages are stored.</p>", "smithy.api#required" => {}}))
    DatastoreActivity.type = Types::DatastoreActivity
    DatastoreIotSiteWiseMultiLayerStorage.add_member(:customer_managed_s3_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseCustomerManagedDatastoreS3Storage, location_name: 'customerManagedS3Storage', traits: {"smithy.api#documentation" => "<p> Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage. </p>", "smithy.api#required" => {}}))
    DatastoreIotSiteWiseMultiLayerStorage.type = Types::DatastoreIotSiteWiseMultiLayerStorage
    DatastoreIotSiteWiseMultiLayerStorageSummary.add_member(:customer_managed_s3_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseCustomerManagedDatastoreS3StorageSummary, location_name: 'customerManagedS3Storage', traits: {"smithy.api#documentation" => "<p>Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage.</p>"}))
    DatastoreIotSiteWiseMultiLayerStorageSummary.type = Types::DatastoreIotSiteWiseMultiLayerStorageSummary
    DatastorePartition.add_member(:attribute_partition, Smithy::Schema::Shapes::ShapeRef.new(shape: Partition, location_name: 'attributePartition', traits: {"smithy.api#documentation" => "<p> A partition dimension defined by an <code>attributeName</code>. </p>"}))
    DatastorePartition.add_member(:timestamp_partition, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampPartition, location_name: 'timestampPartition', traits: {"smithy.api#documentation" => "<p> A partition dimension defined by a timestamp attribute. </p>"}))
    DatastorePartition.type = Types::DatastorePartition
    DatastorePartitions.add_member(:partitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Partitions, location_name: 'partitions', traits: {"smithy.api#documentation" => "<p> A list of partition dimensions in a data store. </p>"}))
    DatastorePartitions.type = Types::DatastorePartitions
    DatastoreStatistics.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: EstimatedResourceSize, location_name: 'size', traits: {"smithy.api#documentation" => "<p>The estimated size of the data store.</p>"}))
    DatastoreStatistics.type = Types::DatastoreStatistics
    DatastoreStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DatastoreStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatastoreStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DatastoreStorage.add_member(:service_managed_s3, Types::DatastoreStorage::ServiceManagedS3, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedDatastoreS3Storage, location_name: 'serviceManagedS3', traits: {"smithy.api#documentation" => "<p>Used to store data in an Amazon S3 bucket managed by IoT Analytics. You can't change the choice of Amazon S3 storage after your data store is created.  </p>"}))
    DatastoreStorage.add_member(:customer_managed_s3, Types::DatastoreStorage::CustomerManagedS3, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedDatastoreS3Storage, location_name: 'customerManagedS3', traits: {"smithy.api#documentation" => "<p>S3-customer-managed; When you choose customer-managed storage, the <code>retentionPeriod</code> parameter is ignored. You can't change the choice of Amazon S3 storage after your data store is created.  </p>"}))
    DatastoreStorage.add_member(:iot_site_wise_multi_layer_storage, Types::DatastoreStorage::IotSiteWiseMultiLayerStorage, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreIotSiteWiseMultiLayerStorage, location_name: 'iotSiteWiseMultiLayerStorage', traits: {"smithy.api#documentation" => "<p> Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage. You can't change the choice of Amazon S3 storage after your data store is created.   </p>"}))
    DatastoreStorage.add_member(:unknown, Types::DatastoreStorage::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DatastoreStorage.type = Types::DatastoreStorage
    DatastoreStorageSummary.add_member(:service_managed_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedDatastoreS3StorageSummary, location_name: 'serviceManagedS3', traits: {"smithy.api#documentation" => "<p>Used to store data in an Amazon S3 bucket managed by IoT Analytics.</p>"}))
    DatastoreStorageSummary.add_member(:customer_managed_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedDatastoreS3StorageSummary, location_name: 'customerManagedS3', traits: {"smithy.api#documentation" => "<p>Used to store data in an Amazon S3 bucket managed by IoT Analytics.</p>"}))
    DatastoreStorageSummary.add_member(:iot_site_wise_multi_layer_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreIotSiteWiseMultiLayerStorageSummary, location_name: 'iotSiteWiseMultiLayerStorage', traits: {"smithy.api#documentation" => "<p> Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage. </p>"}))
    DatastoreStorageSummary.type = Types::DatastoreStorageSummary
    DatastoreSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreSummary)
    DatastoreSummary.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The name of the data store.</p>"}))
    DatastoreSummary.add_member(:datastore_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStorageSummary, location_name: 'datastoreStorage', traits: {"smithy.api#documentation" => "<p>Where data in a data store is stored.</p>"}))
    DatastoreSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the data store.</p>"}))
    DatastoreSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the data store was created.</p>"}))
    DatastoreSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the data store was updated.</p>"}))
    DatastoreSummary.add_member(:last_message_arrival_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastMessageArrivalTime', traits: {"smithy.api#documentation" => "<p>The last time when a new message arrived in the data store.</p>\n         <p>IoT Analytics updates this value at most once per minute for Amazon Simple Storage Service one data store. Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p>\n         <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>"}))
    DatastoreSummary.add_member(:file_format_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormatType, location_name: 'fileFormatType', traits: {"smithy.api#documentation" => "<p>The file format of the data in the data store.</p>"}))
    DatastoreSummary.add_member(:datastore_partitions, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastorePartitions, location_name: 'datastorePartitions', traits: {"smithy.api#documentation" => "<p> Contains information about the partition dimensions in a data store. </p>"}))
    DatastoreSummary.type = Types::DatastoreSummary
    DeleteChannelRequest.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteDatasetContentRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset whose content is deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetContentRequest.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentVersion, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The version of the dataset whose content is deleted. You can also use the strings\n      \"$LATEST\" or \"$LATEST_SUCCEEDED\" to delete the latest or latest successfully completed data\n      set. If not specified, \"$LATEST_SUCCEEDED\" is the default.</p>", "smithy.api#httpQuery" => "versionId"}))
    DeleteDatasetContentRequest.type = Types::DeleteDatasetContentRequest
    DeleteDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatastoreRequest.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The name of the data store to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatastoreRequest.type = Types::DeleteDatastoreRequest
    DeletePipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePipelineRequest.type = Types::DeletePipelineRequest
    DeltaTime.add_member(:offset_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetSeconds, location_name: 'offsetSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds of estimated in-flight lag time of message data. When you create\n      dataset contents using message data from a specified timeframe, some message data might still\n      be in flight when processing begins, and so do not arrive in time to be processed. Use this\n      field to make allowances for the in flight time of your message data, so that data not\n      processed from a previous timeframe is included with the next timeframe. Otherwise, missed\n      message data would be excluded from processing during the next timeframe too, because its\n      timestamp places it within the previous timeframe.</p>", "smithy.api#required" => {}}))
    DeltaTime.add_member(:time_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeExpression, location_name: 'timeExpression', traits: {"smithy.api#documentation" => "<p>An expression by which the time of the message data might be determined. This can be the\n      name of a timestamp field or a SQL expression that is used to derive the time the message data\n      was generated.</p>", "smithy.api#required" => {}}))
    DeltaTime.type = Types::DeltaTime
    DeltaTimeSessionWindowConfiguration.add_member(:timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTimeoutInMinutes, location_name: 'timeoutInMinutes', traits: {"smithy.api#documentation" => "<p>A time interval. You can use <code>timeoutInMinutes</code> so that IoT Analytics can batch up late\n      data notifications that have been generated since the last execution. IoT Analytics sends one batch of\n      notifications to Amazon CloudWatch Events at one time.</p>\n         <p>For more information about how to write a timestamp expression, see <a href=\"https://prestodb.io/docs/0.172/functions/datetime.html\">Date and Time Functions and\n        Operators</a>, in the <i>Presto 0.172 Documentation</i>.</p>", "smithy.api#required" => {}}))
    DeltaTimeSessionWindowConfiguration.type = Types::DeltaTimeSessionWindowConfiguration
    DescribeChannelRequest.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel whose information is retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelRequest.add_member(:include_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeStatisticsFlag, location_name: 'includeStatistics', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, additional statistical information about the channel is included in the response.\n      This feature can't be used with a channel whose S3 storage is customer-managed.</p>", "smithy.api#httpQuery" => "includeStatistics"}))
    DescribeChannelRequest.type = Types::DescribeChannelRequest
    DescribeChannelResponse.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: 'channel', traits: {"smithy.api#documentation" => "<p>An object that contains information about the channel.</p>"}))
    DescribeChannelResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>Statistics about the channel. Included if the <code>includeStatistics</code> parameter is\n      set to <code>true</code> in the request.</p>"}))
    DescribeChannelResponse.type = Types::DescribeChannelResponse
    DescribeDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset whose information is retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: Dataset, location_name: 'dataset', traits: {"smithy.api#documentation" => "<p>An object that contains information about the dataset.</p>"}))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeDatastoreRequest.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The name of the data store</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatastoreRequest.add_member(:include_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeStatisticsFlag, location_name: 'includeStatistics', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, additional statistical information about the data store is included in the\n      response. This feature can't be used with a data store whose S3 storage is\n      customer-managed.</p>", "smithy.api#httpQuery" => "includeStatistics"}))
    DescribeDatastoreRequest.type = Types::DescribeDatastoreRequest
    DescribeDatastoreResponse.add_member(:datastore, Smithy::Schema::Shapes::ShapeRef.new(shape: Datastore, location_name: 'datastore', traits: {"smithy.api#documentation" => "<p>Information about the data store.</p>"}))
    DescribeDatastoreResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>Additional statistical information about the data store. Included if the\n        <code>includeStatistics</code> parameter is set to <code>true</code> in the request.</p>"}))
    DescribeDatastoreResponse.type = Types::DescribeDatastoreResponse
    DescribeLoggingOptionsRequest.type = Types::DescribeLoggingOptionsRequest
    DescribeLoggingOptionsResponse.add_member(:logging_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingOptions, location_name: 'loggingOptions', traits: {"smithy.api#documentation" => "<p>The current settings of the IoT Analytics logging options.</p>"}))
    DescribeLoggingOptionsResponse.type = Types::DescribeLoggingOptionsResponse
    DescribePipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline whose information is retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePipelineRequest.type = Types::DescribePipelineRequest
    DescribePipelineResponse.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>A <code>Pipeline</code> object that contains information about the pipeline.</p>"}))
    DescribePipelineResponse.type = Types::DescribePipelineResponse
    DeviceRegistryEnrichActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>deviceRegistryEnrich</code> activity.</p>", "smithy.api#required" => {}}))
    DeviceRegistryEnrichActivity.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>The name of the attribute that is added to the message.</p>", "smithy.api#required" => {}}))
    DeviceRegistryEnrichActivity.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT device whose registry information is added to the message.</p>", "smithy.api#required" => {}}))
    DeviceRegistryEnrichActivity.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that allows access to the device's registry information.</p>", "smithy.api#required" => {}}))
    DeviceRegistryEnrichActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    DeviceRegistryEnrichActivity.type = Types::DeviceRegistryEnrichActivity
    DeviceShadowEnrichActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>deviceShadowEnrich</code> activity.</p>", "smithy.api#required" => {}}))
    DeviceShadowEnrichActivity.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>The name of the attribute that is added to the message.</p>", "smithy.api#required" => {}}))
    DeviceShadowEnrichActivity.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT device whose shadow information is added to the message.</p>", "smithy.api#required" => {}}))
    DeviceShadowEnrichActivity.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that allows access to the device's shadow.</p>", "smithy.api#required" => {}}))
    DeviceShadowEnrichActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    DeviceShadowEnrichActivity.type = Types::DeviceShadowEnrichActivity
    EstimatedResourceSize.add_member(:estimated_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: SizeInBytes, location_name: 'estimatedSizeInBytes', traits: {"smithy.api#documentation" => "<p>The estimated size of the resource, in bytes.</p>"}))
    EstimatedResourceSize.add_member(:estimated_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'estimatedOn', traits: {"smithy.api#documentation" => "<p>The time when the estimate of the size of the resource was made.</p>"}))
    EstimatedResourceSize.type = Types::EstimatedResourceSize
    FileFormatConfiguration.add_member(:json_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonConfiguration, location_name: 'jsonConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of the JSON format.</p>"}))
    FileFormatConfiguration.add_member(:parquet_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetConfiguration, location_name: 'parquetConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of the Parquet format.</p>"}))
    FileFormatConfiguration.type = Types::FileFormatConfiguration
    FileFormatType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    FileFormatType.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    FilterActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter activity.</p>", "smithy.api#required" => {}}))
    FilterActivity.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterExpression, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>An expression that looks like a SQL WHERE clause that must return a Boolean value.\n      Messages that satisfy the condition are passed to the next activity. </p>", "smithy.api#required" => {}}))
    FilterActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    FilterActivity.type = Types::FilterActivity
    GetDatasetContentRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset whose contents are retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDatasetContentRequest.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentVersion, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The version of the dataset whose contents are retrieved. You can also use the strings\n      \"$LATEST\" or \"$LATEST_SUCCEEDED\" to retrieve the contents of the latest or latest successfully\n      completed dataset. If not specified, \"$LATEST_SUCCEEDED\" is the default.</p>", "smithy.api#httpQuery" => "versionId"}))
    GetDatasetContentRequest.type = Types::GetDatasetContentRequest
    GetDatasetContentResponse.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>A list of <code>DatasetEntry</code> objects.</p>"}))
    GetDatasetContentResponse.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The time when the request was made.</p>"}))
    GetDatasetContentResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset content.</p>"}))
    GetDatasetContentResponse.type = Types::GetDatasetContentResponse
    GlueConfiguration.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueTableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table in your Glue Data Catalog that is used to perform the ETL\n      operations. An Glue Data Catalog table contains partitioned data and descriptions of data\n      sources and targets.</p>", "smithy.api#required" => {}}))
    GlueConfiguration.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueDatabaseName, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p>The name of the database in your Glue Data Catalog in which the table is located. An\n      Glue Data Catalog database contains metadata tables.</p>", "smithy.api#required" => {}}))
    GlueConfiguration.type = Types::GlueConfiguration
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    IotEventsDestinationConfiguration.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IotEventsInputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name of the IoT Events input to which dataset contents are delivered.</p>", "smithy.api#required" => {}}))
    IotEventsDestinationConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants IoT Analytics permission to deliver dataset contents to an IoT Events\n      input.</p>", "smithy.api#required" => {}}))
    IotEventsDestinationConfiguration.type = Types::IotEventsDestinationConfiguration
    IotSiteWiseCustomerManagedDatastoreS3Storage.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p> The name of the Amazon S3 bucket where your data is stored. </p>", "smithy.api#required" => {}}))
    IotSiteWiseCustomerManagedDatastoreS3Storage.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p> (Optional) The prefix used to create the keys of the data store data objects. Each object in an Amazon S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. The prefix must end with a forward slash (/). </p>"}))
    IotSiteWiseCustomerManagedDatastoreS3Storage.type = Types::IotSiteWiseCustomerManagedDatastoreS3Storage
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p> The name of the Amazon S3 bucket where your data is stored. </p>"}))
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p> (Optional) The prefix used to create the keys of the data store data objects. Each object in an Amazon S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. The prefix must end with a forward slash (/). </p>"}))
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary.type = Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary
    JsonConfiguration.type = Types::JsonConfiguration
    LambdaActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the lambda activity.</p>", "smithy.api#required" => {}}))
    LambdaActivity.add_member(:lambda_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaName, location_name: 'lambdaName', traits: {"smithy.api#documentation" => "<p>The name of the Lambda function that is run on the message.</p>", "smithy.api#required" => {}}))
    LambdaActivity.add_member(:batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityBatchSize, location_name: 'batchSize', traits: {"smithy.api#documentation" => "<p>The number of messages passed to the Lambda function for processing.</p>\n         <p>The Lambda function must be able to process all of these messages within five minutes,\n      which is the maximum timeout duration for Lambda functions.</p>", "smithy.api#required" => {}}))
    LambdaActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    LambdaActivity.type = Types::LambdaActivity
    LateDataRule.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LateDataRuleName, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the late data rule.</p>"}))
    LateDataRule.add_member(:rule_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LateDataRuleConfiguration, location_name: 'ruleConfiguration', traits: {"smithy.api#documentation" => "<p>The information needed to configure the late data rule.</p>", "smithy.api#required" => {}}))
    LateDataRule.type = Types::LateDataRule
    LateDataRuleConfiguration.add_member(:delta_time_session_window_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeltaTimeSessionWindowConfiguration, location_name: 'deltaTimeSessionWindowConfiguration', traits: {"smithy.api#documentation" => "<p>The information needed to configure a delta time session window.</p>"}))
    LateDataRuleConfiguration.type = Types::LateDataRuleConfiguration
    LateDataRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LateDataRule)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListChannelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListChannelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request.</p>\n         <p>The default value is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:channel_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummaries, location_name: 'channelSummaries', traits: {"smithy.api#documentation" => "<p>A list of <code>ChannelSummary</code> objects.</p>"}))
    ListChannelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results, or <code>null</code> if there are no more\n      results.</p>"}))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListDatasetContentsRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset whose contents information you want to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetContentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDatasetContentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDatasetContentsRequest.add_member(:scheduled_on_or_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'scheduledOnOrAfter', traits: {"smithy.api#documentation" => "<p>A filter to limit results to those dataset contents whose creation is scheduled on or\n      after the given time. See the field <code>triggers.schedule</code> in the\n        <code>CreateDataset</code> request. (timestamp)</p>", "smithy.api#httpQuery" => "scheduledOnOrAfter"}))
    ListDatasetContentsRequest.add_member(:scheduled_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'scheduledBefore', traits: {"smithy.api#documentation" => "<p>A filter to limit results to those dataset contents whose creation is scheduled before the\n      given time. See the field <code>triggers.schedule</code> in the <code>CreateDataset</code>\n      request. (timestamp)</p>", "smithy.api#httpQuery" => "scheduledBefore"}))
    ListDatasetContentsRequest.type = Types::ListDatasetContentsRequest
    ListDatasetContentsResponse.add_member(:dataset_content_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentSummaries, location_name: 'datasetContentSummaries', traits: {"smithy.api#documentation" => "<p>Summary information about dataset contents that have been created.</p>"}))
    ListDatasetContentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results, or <code>null</code> if there are no more\n      results.</p>"}))
    ListDatasetContentsResponse.type = Types::ListDatasetContentsResponse
    ListDatasetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request.</p>\n         <p>The default value is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:dataset_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSummaries, location_name: 'datasetSummaries', traits: {"smithy.api#documentation" => "<p>A list of <code>DatasetSummary</code> objects.</p>"}))
    ListDatasetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results, or <code>null</code> if there are no more\n      results.</p>"}))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListDatastoresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDatastoresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request.</p>\n         <p>The default value is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDatastoresRequest.type = Types::ListDatastoresRequest
    ListDatastoresResponse.add_member(:datastore_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreSummaries, location_name: 'datastoreSummaries', traits: {"smithy.api#documentation" => "<p>A list of <code>DatastoreSummary</code> objects.</p>"}))
    ListDatastoresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results, or <code>null</code> if there are no more\n      results.</p>"}))
    ListDatastoresResponse.type = Types::ListDatastoresResponse
    ListPipelinesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPipelinesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request.</p>\n         <p>The default value is 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPipelinesRequest.type = Types::ListPipelinesRequest
    ListPipelinesResponse.add_member(:pipeline_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineSummaries, location_name: 'pipelineSummaries', traits: {"smithy.api#documentation" => "<p>A list of <code>PipelineSummary</code> objects.</p>"}))
    ListPipelinesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results, or <code>null</code> if there are no more\n      results.</p>"}))
    ListPipelinesResponse.type = Types::ListPipelinesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource whose tags you want to list.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags (metadata) that you have assigned to the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LoggingLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggingOptions.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants permission to IoT Analytics to perform logging.</p>", "smithy.api#required" => {}}))
    LoggingOptions.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The logging level. Currently, only ERROR is supported.</p>", "smithy.api#required" => {}}))
    LoggingOptions.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingEnabled, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, logging is enabled for IoT Analytics.</p>", "smithy.api#required" => {}}))
    LoggingOptions.type = Types::LoggingOptions
    MathActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the math activity.</p>", "smithy.api#required" => {}}))
    MathActivity.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>The name of the attribute that contains the result of the math operation.</p>", "smithy.api#required" => {}}))
    MathActivity.add_member(:math, Smithy::Schema::Shapes::ShapeRef.new(shape: MathExpression, location_name: 'math', traits: {"smithy.api#documentation" => "<p>An expression that uses one or more existing attributes and must return an integer\n      value.</p>", "smithy.api#required" => {}}))
    MathActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    MathActivity.type = Types::MathActivity
    Message.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The ID you want to assign to the message. Each <code>messageId</code> must be unique\n         within each batch sent.</p>", "smithy.api#required" => {}}))
    Message.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: MessagePayload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The payload of the message. This can be a JSON string or a base64-encoded string\n         representing binary data, in which case you must decode it by means of a pipeline\n         activity.</p>", "smithy.api#required" => {}}))
    Message.type = Types::Message
    MessagePayloads.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessagePayload)
    Messages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Message)
    OutputFileUriValue.add_member(:file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFileName, location_name: 'fileName', traits: {"smithy.api#documentation" => "<p>The URI of the location where dataset contents are stored, usually the URI of a file in an\n      S3 bucket.</p>", "smithy.api#required" => {}}))
    OutputFileUriValue.type = Types::OutputFileUriValue
    ParquetConfiguration.add_member(:schema_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: 'schemaDefinition', traits: {"smithy.api#documentation" => "<p>Information needed to define a schema.</p>"}))
    ParquetConfiguration.type = Types::ParquetConfiguration
    Partition.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionAttributeName, location_name: 'attributeName', traits: {"smithy.api#documentation" => "<p> The name of the attribute that defines a partition dimension. </p>", "smithy.api#required" => {}}))
    Partition.type = Types::Partition
    Partitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatastorePartition)
    Pipeline.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>"}))
    Pipeline.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the pipeline.</p>"}))
    Pipeline.add_member(:activities, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineActivities, location_name: 'activities', traits: {"smithy.api#documentation" => "<p>The activities that perform transformations on the messages.</p>"}))
    Pipeline.add_member(:reprocessing_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ReprocessingSummaries, location_name: 'reprocessingSummaries', traits: {"smithy.api#documentation" => "<p>A summary of information about the pipeline reprocessing.</p>"}))
    Pipeline.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the pipeline was created.</p>"}))
    Pipeline.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last time the pipeline was updated.</p>"}))
    Pipeline.type = Types::Pipeline
    PipelineActivities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineActivity)
    PipelineActivity.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelActivity, location_name: 'channel', traits: {"smithy.api#documentation" => "<p>Determines the source of the messages to be processed.</p>"}))
    PipelineActivity.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaActivity, location_name: 'lambda', traits: {"smithy.api#documentation" => "<p>Runs a Lambda function to modify the message.</p>"}))
    PipelineActivity.add_member(:datastore, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreActivity, location_name: 'datastore', traits: {"smithy.api#documentation" => "<p>Specifies where to store the processed message data.</p>"}))
    PipelineActivity.add_member(:add_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttributesActivity, location_name: 'addAttributes', traits: {"smithy.api#documentation" => "<p>Adds other attributes based on existing attributes in the message.</p>"}))
    PipelineActivity.add_member(:remove_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesActivity, location_name: 'removeAttributes', traits: {"smithy.api#documentation" => "<p>Removes attributes from a message.</p>"}))
    PipelineActivity.add_member(:select_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectAttributesActivity, location_name: 'selectAttributes', traits: {"smithy.api#documentation" => "<p>Used to create a new message using only the specified attributes from the original\n      message. </p>"}))
    PipelineActivity.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterActivity, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>Filters a message based on its attributes.</p>"}))
    PipelineActivity.add_member(:math, Smithy::Schema::Shapes::ShapeRef.new(shape: MathActivity, location_name: 'math', traits: {"smithy.api#documentation" => "<p>Computes an arithmetic expression using the message's attributes and adds it to the\n      message.</p>"}))
    PipelineActivity.add_member(:device_registry_enrich, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceRegistryEnrichActivity, location_name: 'deviceRegistryEnrich', traits: {"smithy.api#documentation" => "<p>Adds data from the IoT device registry to your message.</p>"}))
    PipelineActivity.add_member(:device_shadow_enrich, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceShadowEnrichActivity, location_name: 'deviceShadowEnrich', traits: {"smithy.api#documentation" => "<p>Adds information from the IoT Device Shadow service to a message.</p>"}))
    PipelineActivity.type = Types::PipelineActivity
    PipelineSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineSummary)
    PipelineSummary.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>"}))
    PipelineSummary.add_member(:reprocessing_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ReprocessingSummaries, location_name: 'reprocessingSummaries', traits: {"smithy.api#documentation" => "<p>A summary of information about the pipeline reprocessing.</p>"}))
    PipelineSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the pipeline was created.</p>"}))
    PipelineSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>When the pipeline was last updated.</p>"}))
    PipelineSummary.type = Types::PipelineSummary
    PutLoggingOptionsRequest.add_member(:logging_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingOptions, location_name: 'loggingOptions', traits: {"smithy.api#documentation" => "<p>The new values of the IoT Analytics logging options.</p>", "smithy.api#required" => {}}))
    PutLoggingOptionsRequest.type = Types::PutLoggingOptionsRequest
    QueryFilter.add_member(:delta_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DeltaTime, location_name: 'deltaTime', traits: {"smithy.api#documentation" => "<p>Used to limit data to that which has arrived since the last execution of the\n      action.</p>"}))
    QueryFilter.type = Types::QueryFilter
    QueryFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilter)
    RemoveAttributesActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>removeAttributes</code> activity.</p>", "smithy.api#required" => {}}))
    RemoveAttributesActivity.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNames, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>A list of 1-50 attributes to remove from the message.</p>", "smithy.api#required" => {}}))
    RemoveAttributesActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    RemoveAttributesActivity.type = Types::RemoveAttributesActivity
    ReprocessingStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ReprocessingStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ReprocessingStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ReprocessingStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReprocessingSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReprocessingSummary)
    ReprocessingSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReprocessingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The <code>reprocessingId</code> returned by <code>StartPipelineReprocessing</code>.</p>"}))
    ReprocessingSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReprocessingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the pipeline reprocessing.</p>"}))
    ReprocessingSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the pipeline reprocessing was created.</p>"}))
    ReprocessingSummary.type = Types::ReprocessingSummary
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ResourceAlreadyExistsException.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn2, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceConfiguration.add_member(:compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'computeType', traits: {"smithy.api#documentation" => "<p>The type of the compute resource used to execute the <code>containerAction</code>.\n      Possible values are: <code>ACU_1</code> (vCPU=4, memory=16 GiB) or <code>ACU_2</code> (vCPU=8,\n      memory=32 GiB).</p>", "smithy.api#required" => {}}))
    ResourceConfiguration.add_member(:volume_size_in_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSizeInGB, location_name: 'volumeSizeInGB', traits: {"smithy.api#documentation" => "<p>The size, in GB, of the persistent storage available to the resource instance used to\n      execute the <code>containerAction</code> (min: 1, max: 50).</p>", "smithy.api#required" => {}}))
    ResourceConfiguration.type = Types::ResourceConfiguration
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetentionPeriod.add_member(:unlimited, Smithy::Schema::Shapes::ShapeRef.new(shape: UnlimitedRetentionPeriod, location_name: 'unlimited', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, message data is kept indefinitely.</p>"}))
    RetentionPeriod.add_member(:number_of_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriodInDays, location_name: 'numberOfDays', traits: {"smithy.api#documentation" => "<p>The number of days that message data is kept. The <code>unlimited</code> parameter must be\n      false.</p>"}))
    RetentionPeriod.type = Types::RetentionPeriod
    RunPipelineActivityRequest.add_member(:pipeline_activity, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineActivity, location_name: 'pipelineActivity', traits: {"smithy.api#documentation" => "<p>The pipeline activity that is run. This must not be a channel activity or a data store\n      activity because these activities are used in a pipeline only to load the original message and\n      to store the (possibly) transformed message. If a Lambda activity is specified, only\n      short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be\n      used.</p>", "smithy.api#required" => {}}))
    RunPipelineActivityRequest.add_member(:payloads, Smithy::Schema::Shapes::ShapeRef.new(shape: MessagePayloads, location_name: 'payloads', traits: {"smithy.api#documentation" => "<p>The sample message payloads on which the pipeline activity is run.</p>", "smithy.api#required" => {}}))
    RunPipelineActivityRequest.type = Types::RunPipelineActivityRequest
    RunPipelineActivityResponse.add_member(:payloads, Smithy::Schema::Shapes::ShapeRef.new(shape: MessagePayloads, location_name: 'payloads', traits: {"smithy.api#documentation" => "<p>The enriched or transformed sample message payloads as base64-encoded strings. (The\n      results of running the pipeline activity on each input sample message payload, encoded in\n      base64.)</p>"}))
    RunPipelineActivityResponse.add_member(:log_result, Smithy::Schema::Shapes::ShapeRef.new(shape: LogResult, location_name: 'logResult', traits: {"smithy.api#documentation" => "<p>In case the pipeline activity fails, the log message that is generated.</p>"}))
    RunPipelineActivityResponse.type = Types::RunPipelineActivityResponse
    S3DestinationConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket to which dataset contents are delivered.</p>", "smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketKeyExpression, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the dataset contents object in an S3 bucket. Each object has a key that is a\n      unique identifier. Each object has exactly one key.</p>\n         <p>You can create a unique key with the following options:</p>\n         <ul>\n            <li>\n               <p>Use <code>!{iotanalytics:scheduleTime}</code> to insert the time of a scheduled SQL\n          query run.</p>\n            </li>\n            <li>\n               <p>Use <code>!{iotanalytics:versionId}</code> to insert a unique hash that identifies a\n          dataset content.</p>\n            </li>\n            <li>\n               <p>Use <code>!{iotanalytics:creationTime}</code> to insert the creation time of a dataset\n          content.</p>\n            </li>\n         </ul>\n         <p>The following example creates a unique key for a CSV file:\n        <code>dataset/mydataset/!{iotanalytics:scheduleTime}/!{iotanalytics:versionId}.csv</code>\n         </p>\n         <note>\n            <p>If you don't use <code>!{iotanalytics:versionId}</code> to specify the key, you might\n        get duplicate keys. For example, you might have two dataset contents with the same\n          <code>scheduleTime</code> but different <code>versionId</code>s. This means that one\n        dataset content overwrites the other. </p>\n         </note>", "smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:glue_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueConfiguration, location_name: 'glueConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for coordination with Glue, a fully managed extract, transform\n      and load (ETL) service.</p>"}))
    S3DestinationConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3 and Glue\n      resources.</p>", "smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3PathChannelMessages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3PathChannelMessage)
    SampleChannelDataRequest.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel whose message samples are retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SampleChannelDataRequest.add_member(:max_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxMessages, location_name: 'maxMessages', traits: {"smithy.api#documentation" => "<p>The number of sample messages to be retrieved. The limit is 10. The default is also\n      10.</p>", "smithy.api#httpQuery" => "maxMessages"}))
    SampleChannelDataRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start of the time window from which sample messages are retrieved.</p>", "smithy.api#httpQuery" => "startTime"}))
    SampleChannelDataRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end of the time window from which sample messages are retrieved.</p>", "smithy.api#httpQuery" => "endTime"}))
    SampleChannelDataRequest.type = Types::SampleChannelDataRequest
    SampleChannelDataResponse.add_member(:payloads, Smithy::Schema::Shapes::ShapeRef.new(shape: MessagePayloads, location_name: 'payloads', traits: {"smithy.api#documentation" => "<p>The list of message samples. Each sample message is returned as a base64-encoded\n      string.</p>"}))
    SampleChannelDataResponse.type = Types::SampleChannelDataResponse
    Schedule.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>The expression that defines when to trigger an update. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html\">Schedule\n        Expressions for Rules</a> in the <i>Amazon CloudWatch Events User\n        Guide</i>.</p>"}))
    Schedule.type = Types::Schedule
    SchemaDefinition.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: Columns, location_name: 'columns', traits: {"smithy.api#documentation" => "<p>Specifies one or more columns that store your data.</p>\n         <p>Each schema can have up to 100 columns. Each column can have up to 100 nested\n      types.</p>"}))
    SchemaDefinition.type = Types::SchemaDefinition
    SelectAttributesActivity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the <code>selectAttributes</code> activity.</p>", "smithy.api#required" => {}}))
    SelectAttributesActivity.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNames, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>A list of the attributes to select from the message.</p>", "smithy.api#required" => {}}))
    SelectAttributesActivity.add_member(:next, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityName, location_name: 'next', traits: {"smithy.api#documentation" => "<p>The next activity in the pipeline.</p>"}))
    SelectAttributesActivity.type = Types::SelectAttributesActivity
    ServiceManagedChannelS3Storage.type = Types::ServiceManagedChannelS3Storage
    ServiceManagedChannelS3StorageSummary.type = Types::ServiceManagedChannelS3StorageSummary
    ServiceManagedDatastoreS3Storage.type = Types::ServiceManagedDatastoreS3Storage
    ServiceManagedDatastoreS3StorageSummary.type = Types::ServiceManagedDatastoreS3StorageSummary
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SqlQueryDatasetAction.add_member(:sql_query, Smithy::Schema::Shapes::ShapeRef.new(shape: SqlQuery, location_name: 'sqlQuery', traits: {"smithy.api#documentation" => "<p>A SQL query string.</p>", "smithy.api#required" => {}}))
    SqlQueryDatasetAction.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Prefilters applied to message data.</p>"}))
    SqlQueryDatasetAction.type = Types::SqlQueryDatasetAction
    StartPipelineReprocessingRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline on which to start reprocessing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartPipelineReprocessingRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time (inclusive) of raw message data that is reprocessed.</p>\n         <p>If you specify a value for the <code>startTime</code> parameter, you must not use the\n        <code>channelMessages</code> object.</p>"}))
    StartPipelineReprocessingRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time (exclusive) of raw message data that is reprocessed.</p>\n         <p>If you specify a value for the <code>endTime</code> parameter, you must not use the\n        <code>channelMessages</code> object.</p>"}))
    StartPipelineReprocessingRequest.add_member(:channel_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMessages, location_name: 'channelMessages', traits: {"smithy.api#documentation" => "<p>Specifies one or more sets of channel messages that you want to reprocess.</p>\n         <p>If you use the <code>channelMessages</code> object, you must not specify a value for\n        <code>startTime</code> and <code>endTime</code>.</p>"}))
    StartPipelineReprocessingRequest.type = Types::StartPipelineReprocessingRequest
    StartPipelineReprocessingResponse.add_member(:reprocessing_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReprocessingId, location_name: 'reprocessingId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline reprocessing activity that was started.</p>"}))
    StartPipelineReprocessingResponse.type = Types::StartPipelineReprocessingResponse
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag's key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag's value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource whose tags you want to modify.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The new or modified tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TimestampPartition.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionAttributeName, location_name: 'attributeName', traits: {"smithy.api#documentation" => "<p> The attribute name of the partition defined by a timestamp. </p>", "smithy.api#required" => {}}))
    TimestampPartition.add_member(:timestamp_format, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampFormat, location_name: 'timestampFormat', traits: {"smithy.api#documentation" => "<p> The timestamp format of a partition defined by a timestamp. The default format is seconds\n      since epoch (January 1, 1970 at midnight UTC time). </p>"}))
    TimestampPartition.type = Types::TimestampPartition
    TriggeringDataset.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset whose content generation triggers the new dataset content\n      generation.</p>", "smithy.api#required" => {}}))
    TriggeringDataset.type = Types::TriggeringDataset
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource whose tags you want to remove.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of those tags which you want to remove.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateChannelRequest.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the channel to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:channel_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStorage, location_name: 'channelStorage', traits: {"smithy.api#documentation" => "<p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or\n        <code>customerManagedS3</code> storage. If not specified, the default is\n        <code>serviceManagedS3</code>. You can't change this storage option after the channel is\n      created.</p>"}))
    UpdateChannelRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, message data is kept for the channel. The retention period can't be\n      updated if the channel's Amazon S3 storage is customer-managed.</p>"}))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetActions, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>A list of <code>DatasetAction</code> objects.</p>", "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTriggers, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>A list of <code>DatasetTrigger</code> objects. The list can be empty or can contain up to\n      five <code>DatasetTrigger</code> objects.</p>"}))
    UpdateDatasetRequest.add_member(:content_delivery_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentDeliveryRules, location_name: 'contentDeliveryRules', traits: {"smithy.api#documentation" => "<p>When dataset contents are created, they are delivered to destinations specified\n      here.</p>"}))
    UpdateDatasetRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, dataset contents are kept for the dataset.</p>"}))
    UpdateDatasetRequest.add_member(:versioning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VersioningConfiguration, location_name: 'versioningConfiguration', traits: {"smithy.api#documentation" => "<p>Optional. How many versions of dataset contents are kept. If not specified or set to null,\n      only the latest version plus the latest succeeded version (if they are different) are kept for\n      the time period specified by the <code>retentionPeriod</code> parameter. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions\">Keeping Multiple Versions of IoT Analytics datasets</a> in the\n        <i>IoT Analytics User Guide</i>.</p>"}))
    UpdateDatasetRequest.add_member(:late_data_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: LateDataRules, location_name: 'lateDataRules', traits: {"smithy.api#documentation" => "<p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">DeltaTimer</a> filter.</p>"}))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatastoreRequest.add_member(:datastore_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreName, location_name: 'datastoreName', traits: {"smithy.api#documentation" => "<p>The name of the data store to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatastoreRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>How long, in days, message data is kept for the data store. The retention period can't be\n      updated if the data store's Amazon S3 storage is customer-managed.</p>"}))
    UpdateDatastoreRequest.add_member(:datastore_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DatastoreStorage, location_name: 'datastoreStorage', traits: {"smithy.api#documentation" => "<p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>"}))
    UpdateDatastoreRequest.add_member(:file_format_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormatConfiguration, location_name: 'fileFormatConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href=\"https://parquet.apache.org/\">Parquet</a>.</p>\n         <p>The default file format is JSON. You can specify only one format.</p>\n         <p>You can't change the file format after you create the data store.</p>"}))
    UpdateDatastoreRequest.type = Types::UpdateDatastoreRequest
    UpdatePipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePipelineRequest.add_member(:pipeline_activities, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineActivities, location_name: 'pipelineActivities', traits: {"smithy.api#documentation" => "<p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on\n      your messages, such as removing, renaming or adding message attributes; filtering messages\n      based on attribute values; invoking your Lambda functions on messages for advanced processing;\n      or performing mathematical transformations to normalize device data.</p>\n         <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a\n        <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must\n      contain only one activity. For example:</p>\n         <p>\n            <code>pipelineActivities = [ { \"channel\": { ... } }, { \"lambda\": { ... } }, ...\n      ]</code>\n         </p>", "smithy.api#required" => {}}))
    UpdatePipelineRequest.type = Types::UpdatePipelineRequest
    Variable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the variable.</p>", "smithy.api#required" => {}}))
    Variable.add_member(:string_value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>The value of the variable as a string.</p>"}))
    Variable.add_member(:double_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleValue, location_name: 'doubleValue', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The value of the variable as a double (numeric).</p>"}))
    Variable.add_member(:dataset_content_version_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetContentVersionValue, location_name: 'datasetContentVersionValue', traits: {"smithy.api#documentation" => "<p>The value of the variable as a structure that specifies a dataset content version.</p>"}))
    Variable.add_member(:output_file_uri_value, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFileUriValue, location_name: 'outputFileUriValue', traits: {"smithy.api#documentation" => "<p>The value of the variable as a structure that specifies an output file URI.</p>"}))
    Variable.type = Types::Variable
    Variables.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Variable)
    VersioningConfiguration.add_member(:unlimited, Smithy::Schema::Shapes::ShapeRef.new(shape: UnlimitedVersioning, location_name: 'unlimited', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, unlimited versions of dataset contents are kept.</p>"}))
    VersioningConfiguration.add_member(:max_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxVersions, location_name: 'maxVersions', traits: {"smithy.api#documentation" => "<p>How many versions of dataset contents are kept. The <code>unlimited</code> parameter must\n      be <code>false</code>.</p>"}))
    VersioningConfiguration.type = Types::VersioningConfiguration

    AWSIoTAnalytics = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotanalytics#AWSIoTAnalytics"
      service.name = "AWSIoTAnalytics"
      service.version = "2017-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTAnalytics", "arnNamespace" => "iotanalytics", "cloudFormationName" => "IoTAnalytics", "cloudTrailEventSource" => "iotanalytics.amazonaws.com", "endpointPrefix" => "iotanalytics"}, "aws.auth#sigv4" => {"name" => "iotanalytics"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Analytics"}
      service.add_operation(:batch_put_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#BatchPutMessage"
        operation.name = "BatchPutMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/messages/batch", "code" => 200}}
      end)
      service.add_operation(:cancel_pipeline_reprocessing, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CancelPipelineReprocessing"
        operation.name = "CancelPipelineReprocessing"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelPipelineReprocessingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelPipelineReprocessingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", "code" => 200}}
      end)
      service.add_operation(:create_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels", "code" => 201}}
      end)
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasets", "code" => 201}}
      end)
      service.add_operation(:create_dataset_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreateDatasetContent"
        operation.name = "CreateDatasetContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetContentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetContentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasets/{datasetName}/content", "code" => 200}}
      end)
      service.add_operation(:create_datastore, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreateDatastore"
        operation.name = "CreateDatastore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatastoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatastoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datastores", "code" => 201}}
      end)
      service.add_operation(:create_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pipelines", "code" => 201}}
      end)
      service.add_operation(:delete_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{channelName}", "code" => 204}}
      end)
      service.add_operation(:delete_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datasets/{datasetName}", "code" => 204}}
      end)
      service.add_operation(:delete_dataset_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeleteDatasetContent"
        operation.name = "DeleteDatasetContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetContentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datasets/{datasetName}/content", "code" => 204}}
      end)
      service.add_operation(:delete_datastore, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeleteDatastore"
        operation.name = "DeleteDatastore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatastoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/datastores/{datastoreName}", "code" => 204}}
      end)
      service.add_operation(:delete_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/pipelines/{pipelineName}", "code" => 204}}
      end)
      service.add_operation(:describe_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{channelName}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetName}", "code" => 200}}
      end)
      service.add_operation(:describe_datastore, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribeDatastore"
        operation.name = "DescribeDatastore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatastoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatastoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datastores/{datastoreName}", "code" => 200}}
      end)
      service.add_operation(:describe_logging_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribeLoggingOptions"
        operation.name = "DescribeLoggingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:describe_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#DescribePipeline"
        operation.name = "DescribePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/pipelines/{pipelineName}", "code" => 200}}
      end)
      service.add_operation(:get_dataset_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#GetDatasetContent"
        operation.name = "GetDatasetContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatasetContentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatasetContentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetName}/content", "code" => 200}}
      end)
      service.add_operation(:list_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListChannels"
        operation.name = "ListChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels", "code" => 200}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_dataset_contents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListDatasetContents"
        operation.name = "ListDatasetContents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetContentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetContentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetName}/contents", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasetContents.new
      end)
      service.add_operation(:list_datasets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datasets", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_datastores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListDatastores"
        operation.name = "ListDatastores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatastoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatastoresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/datastores", "code" => 200}}
        operation[:paginator] = Paginators::ListDatastores.new
      end)
      service.add_operation(:list_pipelines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/pipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:put_logging_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#PutLoggingOptions"
        operation.name = "PutLoggingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:run_pipeline_activity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#RunPipelineActivity"
        operation.name = "RunPipelineActivity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RunPipelineActivityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RunPipelineActivityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pipelineactivities/run", "code" => 200}}
      end)
      service.add_operation(:sample_channel_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#SampleChannelData"
        operation.name = "SampleChannelData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SampleChannelDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SampleChannelDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{channelName}/sample", "code" => 200}}
      end)
      service.add_operation(:start_pipeline_reprocessing, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#StartPipelineReprocessing"
        operation.name = "StartPipelineReprocessing"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPipelineReprocessingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPipelineReprocessingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pipelines/{pipelineName}/reprocessing", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 204}}
      end)
      service.add_operation(:update_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{channelName}", "code" => 200}}
      end)
      service.add_operation(:update_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/datasets/{datasetName}", "code" => 200}}
      end)
      service.add_operation(:update_datastore, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UpdateDatastore"
        operation.name = "UpdateDatastore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatastoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/datastores/{datastoreName}", "code" => 200}}
      end)
      service.add_operation(:update_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotanalytics#UpdatePipeline"
        operation.name = "UpdatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/pipelines/{pipelineName}", "code" => 200}}
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
