# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTAnalytics
  # @api private
  module ClientApi

    include Seahorse::Model

    ActivityBatchSize = Shapes::IntegerShape.new(name: 'ActivityBatchSize')
    ActivityName = Shapes::StringShape.new(name: 'ActivityName')
    AddAttributesActivity = Shapes::StructureShape.new(name: 'AddAttributesActivity')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeNameMapping = Shapes::MapShape.new(name: 'AttributeNameMapping')
    AttributeNames = Shapes::ListShape.new(name: 'AttributeNames')
    BatchPutMessageErrorEntries = Shapes::ListShape.new(name: 'BatchPutMessageErrorEntries')
    BatchPutMessageErrorEntry = Shapes::StructureShape.new(name: 'BatchPutMessageErrorEntry')
    BatchPutMessageRequest = Shapes::StructureShape.new(name: 'BatchPutMessageRequest')
    BatchPutMessageResponse = Shapes::StructureShape.new(name: 'BatchPutMessageResponse')
    CancelPipelineReprocessingRequest = Shapes::StructureShape.new(name: 'CancelPipelineReprocessingRequest')
    CancelPipelineReprocessingResponse = Shapes::StructureShape.new(name: 'CancelPipelineReprocessingResponse')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelActivity = Shapes::StructureShape.new(name: 'ChannelActivity')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelStatistics = Shapes::StructureShape.new(name: 'ChannelStatistics')
    ChannelStatus = Shapes::StringShape.new(name: 'ChannelStatus')
    ChannelSummaries = Shapes::ListShape.new(name: 'ChannelSummaries')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ComputeType = Shapes::StringShape.new(name: 'ComputeType')
    ContainerDatasetAction = Shapes::StructureShape.new(name: 'ContainerDatasetAction')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateDatasetContentRequest = Shapes::StructureShape.new(name: 'CreateDatasetContentRequest')
    CreateDatasetContentResponse = Shapes::StructureShape.new(name: 'CreateDatasetContentResponse')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateDatastoreRequest = Shapes::StructureShape.new(name: 'CreateDatastoreRequest')
    CreateDatastoreResponse = Shapes::StructureShape.new(name: 'CreateDatastoreResponse')
    CreatePipelineRequest = Shapes::StructureShape.new(name: 'CreatePipelineRequest')
    CreatePipelineResponse = Shapes::StructureShape.new(name: 'CreatePipelineResponse')
    Dataset = Shapes::StructureShape.new(name: 'Dataset')
    DatasetAction = Shapes::StructureShape.new(name: 'DatasetAction')
    DatasetActionName = Shapes::StringShape.new(name: 'DatasetActionName')
    DatasetActionSummaries = Shapes::ListShape.new(name: 'DatasetActionSummaries')
    DatasetActionSummary = Shapes::StructureShape.new(name: 'DatasetActionSummary')
    DatasetActionType = Shapes::StringShape.new(name: 'DatasetActionType')
    DatasetActions = Shapes::ListShape.new(name: 'DatasetActions')
    DatasetArn = Shapes::StringShape.new(name: 'DatasetArn')
    DatasetContentState = Shapes::StringShape.new(name: 'DatasetContentState')
    DatasetContentStatus = Shapes::StructureShape.new(name: 'DatasetContentStatus')
    DatasetContentSummaries = Shapes::ListShape.new(name: 'DatasetContentSummaries')
    DatasetContentSummary = Shapes::StructureShape.new(name: 'DatasetContentSummary')
    DatasetContentVersion = Shapes::StringShape.new(name: 'DatasetContentVersion')
    DatasetContentVersionValue = Shapes::StructureShape.new(name: 'DatasetContentVersionValue')
    DatasetEntries = Shapes::ListShape.new(name: 'DatasetEntries')
    DatasetEntry = Shapes::StructureShape.new(name: 'DatasetEntry')
    DatasetName = Shapes::StringShape.new(name: 'DatasetName')
    DatasetStatus = Shapes::StringShape.new(name: 'DatasetStatus')
    DatasetSummaries = Shapes::ListShape.new(name: 'DatasetSummaries')
    DatasetSummary = Shapes::StructureShape.new(name: 'DatasetSummary')
    DatasetTrigger = Shapes::StructureShape.new(name: 'DatasetTrigger')
    DatasetTriggers = Shapes::ListShape.new(name: 'DatasetTriggers')
    Datastore = Shapes::StructureShape.new(name: 'Datastore')
    DatastoreActivity = Shapes::StructureShape.new(name: 'DatastoreActivity')
    DatastoreArn = Shapes::StringShape.new(name: 'DatastoreArn')
    DatastoreName = Shapes::StringShape.new(name: 'DatastoreName')
    DatastoreStatistics = Shapes::StructureShape.new(name: 'DatastoreStatistics')
    DatastoreStatus = Shapes::StringShape.new(name: 'DatastoreStatus')
    DatastoreSummaries = Shapes::ListShape.new(name: 'DatastoreSummaries')
    DatastoreSummary = Shapes::StructureShape.new(name: 'DatastoreSummary')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteDatasetContentRequest = Shapes::StructureShape.new(name: 'DeleteDatasetContentRequest')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatastoreRequest = Shapes::StructureShape.new(name: 'DeleteDatastoreRequest')
    DeletePipelineRequest = Shapes::StructureShape.new(name: 'DeletePipelineRequest')
    DeltaTime = Shapes::StructureShape.new(name: 'DeltaTime')
    DescribeChannelRequest = Shapes::StructureShape.new(name: 'DescribeChannelRequest')
    DescribeChannelResponse = Shapes::StructureShape.new(name: 'DescribeChannelResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeDatastoreRequest = Shapes::StructureShape.new(name: 'DescribeDatastoreRequest')
    DescribeDatastoreResponse = Shapes::StructureShape.new(name: 'DescribeDatastoreResponse')
    DescribeLoggingOptionsRequest = Shapes::StructureShape.new(name: 'DescribeLoggingOptionsRequest')
    DescribeLoggingOptionsResponse = Shapes::StructureShape.new(name: 'DescribeLoggingOptionsResponse')
    DescribePipelineRequest = Shapes::StructureShape.new(name: 'DescribePipelineRequest')
    DescribePipelineResponse = Shapes::StructureShape.new(name: 'DescribePipelineResponse')
    DeviceRegistryEnrichActivity = Shapes::StructureShape.new(name: 'DeviceRegistryEnrichActivity')
    DeviceShadowEnrichActivity = Shapes::StructureShape.new(name: 'DeviceShadowEnrichActivity')
    DoubleValue = Shapes::FloatShape.new(name: 'DoubleValue')
    EndTime = Shapes::TimestampShape.new(name: 'EndTime')
    EntryName = Shapes::StringShape.new(name: 'EntryName')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EstimatedResourceSize = Shapes::StructureShape.new(name: 'EstimatedResourceSize')
    FilterActivity = Shapes::StructureShape.new(name: 'FilterActivity')
    FilterExpression = Shapes::StringShape.new(name: 'FilterExpression')
    GetDatasetContentRequest = Shapes::StructureShape.new(name: 'GetDatasetContentRequest')
    GetDatasetContentResponse = Shapes::StructureShape.new(name: 'GetDatasetContentResponse')
    Image = Shapes::StringShape.new(name: 'Image')
    IncludeStatisticsFlag = Shapes::BooleanShape.new(name: 'IncludeStatisticsFlag')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LambdaActivity = Shapes::StructureShape.new(name: 'LambdaActivity')
    LambdaName = Shapes::StringShape.new(name: 'LambdaName')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListDatasetContentsRequest = Shapes::StructureShape.new(name: 'ListDatasetContentsRequest')
    ListDatasetContentsResponse = Shapes::StructureShape.new(name: 'ListDatasetContentsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListDatastoresRequest = Shapes::StructureShape.new(name: 'ListDatastoresRequest')
    ListDatastoresResponse = Shapes::StructureShape.new(name: 'ListDatastoresResponse')
    ListPipelinesRequest = Shapes::StructureShape.new(name: 'ListPipelinesRequest')
    ListPipelinesResponse = Shapes::StructureShape.new(name: 'ListPipelinesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogResult = Shapes::StringShape.new(name: 'LogResult')
    LoggingEnabled = Shapes::BooleanShape.new(name: 'LoggingEnabled')
    LoggingLevel = Shapes::StringShape.new(name: 'LoggingLevel')
    LoggingOptions = Shapes::StructureShape.new(name: 'LoggingOptions')
    MathActivity = Shapes::StructureShape.new(name: 'MathActivity')
    MathExpression = Shapes::StringShape.new(name: 'MathExpression')
    MaxMessages = Shapes::IntegerShape.new(name: 'MaxMessages')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    MessagePayload = Shapes::BlobShape.new(name: 'MessagePayload')
    MessagePayloads = Shapes::ListShape.new(name: 'MessagePayloads')
    Messages = Shapes::ListShape.new(name: 'Messages')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OffsetSeconds = Shapes::IntegerShape.new(name: 'OffsetSeconds')
    OutputFileName = Shapes::StringShape.new(name: 'OutputFileName')
    OutputFileUriValue = Shapes::StructureShape.new(name: 'OutputFileUriValue')
    Pipeline = Shapes::StructureShape.new(name: 'Pipeline')
    PipelineActivities = Shapes::ListShape.new(name: 'PipelineActivities')
    PipelineActivity = Shapes::StructureShape.new(name: 'PipelineActivity')
    PipelineArn = Shapes::StringShape.new(name: 'PipelineArn')
    PipelineName = Shapes::StringShape.new(name: 'PipelineName')
    PipelineSummaries = Shapes::ListShape.new(name: 'PipelineSummaries')
    PipelineSummary = Shapes::StructureShape.new(name: 'PipelineSummary')
    PresignedURI = Shapes::StringShape.new(name: 'PresignedURI')
    PutLoggingOptionsRequest = Shapes::StructureShape.new(name: 'PutLoggingOptionsRequest')
    QueryFilter = Shapes::StructureShape.new(name: 'QueryFilter')
    QueryFilters = Shapes::ListShape.new(name: 'QueryFilters')
    Reason = Shapes::StringShape.new(name: 'Reason')
    RemoveAttributesActivity = Shapes::StructureShape.new(name: 'RemoveAttributesActivity')
    ReprocessingId = Shapes::StringShape.new(name: 'ReprocessingId')
    ReprocessingStatus = Shapes::StringShape.new(name: 'ReprocessingStatus')
    ReprocessingSummaries = Shapes::ListShape.new(name: 'ReprocessingSummaries')
    ReprocessingSummary = Shapes::StructureShape.new(name: 'ReprocessingSummary')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConfiguration = Shapes::StructureShape.new(name: 'ResourceConfiguration')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetentionPeriod = Shapes::StructureShape.new(name: 'RetentionPeriod')
    RetentionPeriodInDays = Shapes::IntegerShape.new(name: 'RetentionPeriodInDays')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RunPipelineActivityRequest = Shapes::StructureShape.new(name: 'RunPipelineActivityRequest')
    RunPipelineActivityResponse = Shapes::StructureShape.new(name: 'RunPipelineActivityResponse')
    SampleChannelDataRequest = Shapes::StructureShape.new(name: 'SampleChannelDataRequest')
    SampleChannelDataResponse = Shapes::StructureShape.new(name: 'SampleChannelDataResponse')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    SelectAttributesActivity = Shapes::StructureShape.new(name: 'SelectAttributesActivity')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SizeInBytes = Shapes::FloatShape.new(name: 'SizeInBytes')
    SqlQuery = Shapes::StringShape.new(name: 'SqlQuery')
    SqlQueryDatasetAction = Shapes::StructureShape.new(name: 'SqlQueryDatasetAction')
    StartPipelineReprocessingRequest = Shapes::StructureShape.new(name: 'StartPipelineReprocessingRequest')
    StartPipelineReprocessingResponse = Shapes::StructureShape.new(name: 'StartPipelineReprocessingResponse')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeExpression = Shapes::StringShape.new(name: 'TimeExpression')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TriggeringDataset = Shapes::StructureShape.new(name: 'TriggeringDataset')
    UnlimitedRetentionPeriod = Shapes::BooleanShape.new(name: 'UnlimitedRetentionPeriod')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateDatasetRequest = Shapes::StructureShape.new(name: 'UpdateDatasetRequest')
    UpdateDatastoreRequest = Shapes::StructureShape.new(name: 'UpdateDatastoreRequest')
    UpdatePipelineRequest = Shapes::StructureShape.new(name: 'UpdatePipelineRequest')
    Variable = Shapes::StructureShape.new(name: 'Variable')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    Variables = Shapes::ListShape.new(name: 'Variables')
    VolumeSizeInGB = Shapes::IntegerShape.new(name: 'VolumeSizeInGB')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    resourceArn = Shapes::StringShape.new(name: 'resourceArn')
    resourceId = Shapes::StringShape.new(name: 'resourceId')

    AddAttributesActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    AddAttributesActivity.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeNameMapping, required: true, location_name: "attributes"))
    AddAttributesActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    AddAttributesActivity.struct_class = Types::AddAttributesActivity

    AttributeNameMapping.key = Shapes::ShapeRef.new(shape: AttributeName)
    AttributeNameMapping.value = Shapes::ShapeRef.new(shape: AttributeName)

    AttributeNames.member = Shapes::ShapeRef.new(shape: AttributeName)

    BatchPutMessageErrorEntries.member = Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntry)

    BatchPutMessageErrorEntry.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "messageId"))
    BatchPutMessageErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchPutMessageErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchPutMessageErrorEntry.struct_class = Types::BatchPutMessageErrorEntry

    BatchPutMessageRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "channelName"))
    BatchPutMessageRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, required: true, location_name: "messages"))
    BatchPutMessageRequest.struct_class = Types::BatchPutMessageRequest

    BatchPutMessageResponse.add_member(:batch_put_message_error_entries, Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntries, location_name: "batchPutMessageErrorEntries"))
    BatchPutMessageResponse.struct_class = Types::BatchPutMessageResponse

    CancelPipelineReprocessingRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "pipelineName"))
    CancelPipelineReprocessingRequest.add_member(:reprocessing_id, Shapes::ShapeRef.new(shape: ReprocessingId, required: true, location: "uri", location_name: "reprocessingId"))
    CancelPipelineReprocessingRequest.struct_class = Types::CancelPipelineReprocessingRequest

    CancelPipelineReprocessingResponse.struct_class = Types::CancelPipelineReprocessingResponse

    Channel.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    Channel.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn"))
    Channel.add_member(:status, Shapes::ShapeRef.new(shape: ChannelStatus, location_name: "status"))
    Channel.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    Channel.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Channel.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    Channel.struct_class = Types::Channel

    ChannelActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    ChannelActivity.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "channelName"))
    ChannelActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    ChannelActivity.struct_class = Types::ChannelActivity

    ChannelStatistics.add_member(:size, Shapes::ShapeRef.new(shape: EstimatedResourceSize, location_name: "size"))
    ChannelStatistics.struct_class = Types::ChannelStatistics

    ChannelSummaries.member = Shapes::ShapeRef.new(shape: ChannelSummary)

    ChannelSummary.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "channelName"))
    ChannelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ChannelStatus, location_name: "status"))
    ChannelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    ChannelSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    ChannelSummary.struct_class = Types::ChannelSummary

    ContainerDatasetAction.add_member(:image, Shapes::ShapeRef.new(shape: Image, required: true, location_name: "image"))
    ContainerDatasetAction.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "executionRoleArn"))
    ContainerDatasetAction.add_member(:resource_configuration, Shapes::ShapeRef.new(shape: ResourceConfiguration, required: true, location_name: "resourceConfiguration"))
    ContainerDatasetAction.add_member(:variables, Shapes::ShapeRef.new(shape: Variables, location_name: "variables"))
    ContainerDatasetAction.struct_class = Types::ContainerDatasetAction

    CreateChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "channelName"))
    CreateChannelRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "channelName"))
    CreateChannelResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    CreateChannelResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateDatasetContentRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "datasetName"))
    CreateDatasetContentRequest.struct_class = Types::CreateDatasetContentRequest

    CreateDatasetContentResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: DatasetContentVersion, location_name: "versionId"))
    CreateDatasetContentResponse.struct_class = Types::CreateDatasetContentResponse

    CreateDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "datasetName"))
    CreateDatasetRequest.add_member(:actions, Shapes::ShapeRef.new(shape: DatasetActions, required: true, location_name: "actions"))
    CreateDatasetRequest.add_member(:triggers, Shapes::ShapeRef.new(shape: DatasetTriggers, location_name: "triggers"))
    CreateDatasetRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    CreateDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "datasetName"))
    CreateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "datasetArn"))
    CreateDatasetResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, required: true, location_name: "datastoreName"))
    CreateDatastoreRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    CreateDatastoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDatastoreRequest.struct_class = Types::CreateDatastoreRequest

    CreateDatastoreResponse.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "datastoreName"))
    CreateDatastoreResponse.add_member(:datastore_arn, Shapes::ShapeRef.new(shape: DatastoreArn, location_name: "datastoreArn"))
    CreateDatastoreResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    CreateDatastoreResponse.struct_class = Types::CreateDatastoreResponse

    CreatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "pipelineName"))
    CreatePipelineRequest.add_member(:pipeline_activities, Shapes::ShapeRef.new(shape: PipelineActivities, required: true, location_name: "pipelineActivities"))
    CreatePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreatePipelineRequest.struct_class = Types::CreatePipelineRequest

    CreatePipelineResponse.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "pipelineName"))
    CreatePipelineResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "pipelineArn"))
    CreatePipelineResponse.struct_class = Types::CreatePipelineResponse

    Dataset.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "name"))
    Dataset.add_member(:arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "arn"))
    Dataset.add_member(:actions, Shapes::ShapeRef.new(shape: DatasetActions, location_name: "actions"))
    Dataset.add_member(:triggers, Shapes::ShapeRef.new(shape: DatasetTriggers, location_name: "triggers"))
    Dataset.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "status"))
    Dataset.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Dataset.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    Dataset.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    Dataset.struct_class = Types::Dataset

    DatasetAction.add_member(:action_name, Shapes::ShapeRef.new(shape: DatasetActionName, location_name: "actionName"))
    DatasetAction.add_member(:query_action, Shapes::ShapeRef.new(shape: SqlQueryDatasetAction, location_name: "queryAction"))
    DatasetAction.add_member(:container_action, Shapes::ShapeRef.new(shape: ContainerDatasetAction, location_name: "containerAction"))
    DatasetAction.struct_class = Types::DatasetAction

    DatasetActionSummaries.member = Shapes::ShapeRef.new(shape: DatasetActionSummary)

    DatasetActionSummary.add_member(:action_name, Shapes::ShapeRef.new(shape: DatasetActionName, location_name: "actionName"))
    DatasetActionSummary.add_member(:action_type, Shapes::ShapeRef.new(shape: DatasetActionType, location_name: "actionType"))
    DatasetActionSummary.struct_class = Types::DatasetActionSummary

    DatasetActions.member = Shapes::ShapeRef.new(shape: DatasetAction)

    DatasetContentStatus.add_member(:state, Shapes::ShapeRef.new(shape: DatasetContentState, location_name: "state"))
    DatasetContentStatus.add_member(:reason, Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    DatasetContentStatus.struct_class = Types::DatasetContentStatus

    DatasetContentSummaries.member = Shapes::ShapeRef.new(shape: DatasetContentSummary)

    DatasetContentSummary.add_member(:version, Shapes::ShapeRef.new(shape: DatasetContentVersion, location_name: "version"))
    DatasetContentSummary.add_member(:status, Shapes::ShapeRef.new(shape: DatasetContentStatus, location_name: "status"))
    DatasetContentSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DatasetContentSummary.add_member(:schedule_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleTime"))
    DatasetContentSummary.struct_class = Types::DatasetContentSummary

    DatasetContentVersionValue.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "datasetName"))
    DatasetContentVersionValue.struct_class = Types::DatasetContentVersionValue

    DatasetEntries.member = Shapes::ShapeRef.new(shape: DatasetEntry)

    DatasetEntry.add_member(:entry_name, Shapes::ShapeRef.new(shape: EntryName, location_name: "entryName"))
    DatasetEntry.add_member(:data_uri, Shapes::ShapeRef.new(shape: PresignedURI, location_name: "dataURI"))
    DatasetEntry.struct_class = Types::DatasetEntry

    DatasetSummaries.member = Shapes::ShapeRef.new(shape: DatasetSummary)

    DatasetSummary.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "datasetName"))
    DatasetSummary.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "status"))
    DatasetSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DatasetSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DatasetSummary.add_member(:triggers, Shapes::ShapeRef.new(shape: DatasetTriggers, location_name: "triggers"))
    DatasetSummary.add_member(:actions, Shapes::ShapeRef.new(shape: DatasetActionSummaries, location_name: "actions"))
    DatasetSummary.struct_class = Types::DatasetSummary

    DatasetTrigger.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    DatasetTrigger.add_member(:dataset, Shapes::ShapeRef.new(shape: TriggeringDataset, location_name: "dataset"))
    DatasetTrigger.struct_class = Types::DatasetTrigger

    DatasetTriggers.member = Shapes::ShapeRef.new(shape: DatasetTrigger)

    Datastore.add_member(:name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "name"))
    Datastore.add_member(:arn, Shapes::ShapeRef.new(shape: DatastoreArn, location_name: "arn"))
    Datastore.add_member(:status, Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: "status"))
    Datastore.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    Datastore.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Datastore.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    Datastore.struct_class = Types::Datastore

    DatastoreActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    DatastoreActivity.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, required: true, location_name: "datastoreName"))
    DatastoreActivity.struct_class = Types::DatastoreActivity

    DatastoreStatistics.add_member(:size, Shapes::ShapeRef.new(shape: EstimatedResourceSize, location_name: "size"))
    DatastoreStatistics.struct_class = Types::DatastoreStatistics

    DatastoreSummaries.member = Shapes::ShapeRef.new(shape: DatastoreSummary)

    DatastoreSummary.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, location_name: "datastoreName"))
    DatastoreSummary.add_member(:status, Shapes::ShapeRef.new(shape: DatastoreStatus, location_name: "status"))
    DatastoreSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DatastoreSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DatastoreSummary.struct_class = Types::DatastoreSummary

    DeleteChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location: "uri", location_name: "channelName"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteDatasetContentRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "datasetName"))
    DeleteDatasetContentRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: DatasetContentVersion, location: "querystring", location_name: "versionId"))
    DeleteDatasetContentRequest.struct_class = Types::DeleteDatasetContentRequest

    DeleteDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "datasetName"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, required: true, location: "uri", location_name: "datastoreName"))
    DeleteDatastoreRequest.struct_class = Types::DeleteDatastoreRequest

    DeletePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "pipelineName"))
    DeletePipelineRequest.struct_class = Types::DeletePipelineRequest

    DeltaTime.add_member(:offset_seconds, Shapes::ShapeRef.new(shape: OffsetSeconds, required: true, location_name: "offsetSeconds"))
    DeltaTime.add_member(:time_expression, Shapes::ShapeRef.new(shape: TimeExpression, required: true, location_name: "timeExpression"))
    DeltaTime.struct_class = Types::DeltaTime

    DescribeChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location: "uri", location_name: "channelName"))
    DescribeChannelRequest.add_member(:include_statistics, Shapes::ShapeRef.new(shape: IncludeStatisticsFlag, location: "querystring", location_name: "includeStatistics"))
    DescribeChannelRequest.struct_class = Types::DescribeChannelRequest

    DescribeChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    DescribeChannelResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: ChannelStatistics, location_name: "statistics"))
    DescribeChannelResponse.struct_class = Types::DescribeChannelResponse

    DescribeDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "datasetName"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: Dataset, location_name: "dataset"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, required: true, location: "uri", location_name: "datastoreName"))
    DescribeDatastoreRequest.add_member(:include_statistics, Shapes::ShapeRef.new(shape: IncludeStatisticsFlag, location: "querystring", location_name: "includeStatistics"))
    DescribeDatastoreRequest.struct_class = Types::DescribeDatastoreRequest

    DescribeDatastoreResponse.add_member(:datastore, Shapes::ShapeRef.new(shape: Datastore, location_name: "datastore"))
    DescribeDatastoreResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: DatastoreStatistics, location_name: "statistics"))
    DescribeDatastoreResponse.struct_class = Types::DescribeDatastoreResponse

    DescribeLoggingOptionsRequest.struct_class = Types::DescribeLoggingOptionsRequest

    DescribeLoggingOptionsResponse.add_member(:logging_options, Shapes::ShapeRef.new(shape: LoggingOptions, location_name: "loggingOptions"))
    DescribeLoggingOptionsResponse.struct_class = Types::DescribeLoggingOptionsResponse

    DescribePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "pipelineName"))
    DescribePipelineRequest.struct_class = Types::DescribePipelineRequest

    DescribePipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "pipeline"))
    DescribePipelineResponse.struct_class = Types::DescribePipelineResponse

    DeviceRegistryEnrichActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    DeviceRegistryEnrichActivity.add_member(:attribute, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "attribute"))
    DeviceRegistryEnrichActivity.add_member(:thing_name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "thingName"))
    DeviceRegistryEnrichActivity.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    DeviceRegistryEnrichActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    DeviceRegistryEnrichActivity.struct_class = Types::DeviceRegistryEnrichActivity

    DeviceShadowEnrichActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    DeviceShadowEnrichActivity.add_member(:attribute, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "attribute"))
    DeviceShadowEnrichActivity.add_member(:thing_name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "thingName"))
    DeviceShadowEnrichActivity.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    DeviceShadowEnrichActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    DeviceShadowEnrichActivity.struct_class = Types::DeviceShadowEnrichActivity

    EstimatedResourceSize.add_member(:estimated_size_in_bytes, Shapes::ShapeRef.new(shape: SizeInBytes, location_name: "estimatedSizeInBytes"))
    EstimatedResourceSize.add_member(:estimated_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "estimatedOn"))
    EstimatedResourceSize.struct_class = Types::EstimatedResourceSize

    FilterActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    FilterActivity.add_member(:filter, Shapes::ShapeRef.new(shape: FilterExpression, required: true, location_name: "filter"))
    FilterActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    FilterActivity.struct_class = Types::FilterActivity

    GetDatasetContentRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "datasetName"))
    GetDatasetContentRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: DatasetContentVersion, location: "querystring", location_name: "versionId"))
    GetDatasetContentRequest.struct_class = Types::GetDatasetContentRequest

    GetDatasetContentResponse.add_member(:entries, Shapes::ShapeRef.new(shape: DatasetEntries, location_name: "entries"))
    GetDatasetContentResponse.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    GetDatasetContentResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetContentStatus, location_name: "status"))
    GetDatasetContentResponse.struct_class = Types::GetDatasetContentResponse

    LambdaActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    LambdaActivity.add_member(:lambda_name, Shapes::ShapeRef.new(shape: LambdaName, required: true, location_name: "lambdaName"))
    LambdaActivity.add_member(:batch_size, Shapes::ShapeRef.new(shape: ActivityBatchSize, required: true, location_name: "batchSize"))
    LambdaActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    LambdaActivity.struct_class = Types::LambdaActivity

    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channel_summaries, Shapes::ShapeRef.new(shape: ChannelSummaries, location_name: "channelSummaries"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListDatasetContentsRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "datasetName"))
    ListDatasetContentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDatasetContentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDatasetContentsRequest.struct_class = Types::ListDatasetContentsRequest

    ListDatasetContentsResponse.add_member(:dataset_content_summaries, Shapes::ShapeRef.new(shape: DatasetContentSummaries, location_name: "datasetContentSummaries"))
    ListDatasetContentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetContentsResponse.struct_class = Types::ListDatasetContentsResponse

    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:dataset_summaries, Shapes::ShapeRef.new(shape: DatasetSummaries, location_name: "datasetSummaries"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListDatastoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDatastoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDatastoresRequest.struct_class = Types::ListDatastoresRequest

    ListDatastoresResponse.add_member(:datastore_summaries, Shapes::ShapeRef.new(shape: DatastoreSummaries, location_name: "datastoreSummaries"))
    ListDatastoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatastoresResponse.struct_class = Types::ListDatastoresResponse

    ListPipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPipelinesRequest.struct_class = Types::ListPipelinesRequest

    ListPipelinesResponse.add_member(:pipeline_summaries, Shapes::ShapeRef.new(shape: PipelineSummaries, location_name: "pipelineSummaries"))
    ListPipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPipelinesResponse.struct_class = Types::ListPipelinesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingOptions.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    LoggingOptions.add_member(:level, Shapes::ShapeRef.new(shape: LoggingLevel, required: true, location_name: "level"))
    LoggingOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: LoggingEnabled, required: true, location_name: "enabled"))
    LoggingOptions.struct_class = Types::LoggingOptions

    MathActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    MathActivity.add_member(:attribute, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "attribute"))
    MathActivity.add_member(:math, Shapes::ShapeRef.new(shape: MathExpression, required: true, location_name: "math"))
    MathActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    MathActivity.struct_class = Types::MathActivity

    Message.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "messageId"))
    Message.add_member(:payload, Shapes::ShapeRef.new(shape: MessagePayload, required: true, location_name: "payload"))
    Message.struct_class = Types::Message

    MessagePayloads.member = Shapes::ShapeRef.new(shape: MessagePayload)

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    OutputFileUriValue.add_member(:file_name, Shapes::ShapeRef.new(shape: OutputFileName, required: true, location_name: "fileName"))
    OutputFileUriValue.struct_class = Types::OutputFileUriValue

    Pipeline.add_member(:name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "name"))
    Pipeline.add_member(:arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "arn"))
    Pipeline.add_member(:activities, Shapes::ShapeRef.new(shape: PipelineActivities, location_name: "activities"))
    Pipeline.add_member(:reprocessing_summaries, Shapes::ShapeRef.new(shape: ReprocessingSummaries, location_name: "reprocessingSummaries"))
    Pipeline.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Pipeline.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    Pipeline.struct_class = Types::Pipeline

    PipelineActivities.member = Shapes::ShapeRef.new(shape: PipelineActivity)

    PipelineActivity.add_member(:channel, Shapes::ShapeRef.new(shape: ChannelActivity, location_name: "channel"))
    PipelineActivity.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaActivity, location_name: "lambda"))
    PipelineActivity.add_member(:datastore, Shapes::ShapeRef.new(shape: DatastoreActivity, location_name: "datastore"))
    PipelineActivity.add_member(:add_attributes, Shapes::ShapeRef.new(shape: AddAttributesActivity, location_name: "addAttributes"))
    PipelineActivity.add_member(:remove_attributes, Shapes::ShapeRef.new(shape: RemoveAttributesActivity, location_name: "removeAttributes"))
    PipelineActivity.add_member(:select_attributes, Shapes::ShapeRef.new(shape: SelectAttributesActivity, location_name: "selectAttributes"))
    PipelineActivity.add_member(:filter, Shapes::ShapeRef.new(shape: FilterActivity, location_name: "filter"))
    PipelineActivity.add_member(:math, Shapes::ShapeRef.new(shape: MathActivity, location_name: "math"))
    PipelineActivity.add_member(:device_registry_enrich, Shapes::ShapeRef.new(shape: DeviceRegistryEnrichActivity, location_name: "deviceRegistryEnrich"))
    PipelineActivity.add_member(:device_shadow_enrich, Shapes::ShapeRef.new(shape: DeviceShadowEnrichActivity, location_name: "deviceShadowEnrich"))
    PipelineActivity.struct_class = Types::PipelineActivity

    PipelineSummaries.member = Shapes::ShapeRef.new(shape: PipelineSummary)

    PipelineSummary.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "pipelineName"))
    PipelineSummary.add_member(:reprocessing_summaries, Shapes::ShapeRef.new(shape: ReprocessingSummaries, location_name: "reprocessingSummaries"))
    PipelineSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    PipelineSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    PipelineSummary.struct_class = Types::PipelineSummary

    PutLoggingOptionsRequest.add_member(:logging_options, Shapes::ShapeRef.new(shape: LoggingOptions, required: true, location_name: "loggingOptions"))
    PutLoggingOptionsRequest.struct_class = Types::PutLoggingOptionsRequest

    QueryFilter.add_member(:delta_time, Shapes::ShapeRef.new(shape: DeltaTime, location_name: "deltaTime"))
    QueryFilter.struct_class = Types::QueryFilter

    QueryFilters.member = Shapes::ShapeRef.new(shape: QueryFilter)

    RemoveAttributesActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    RemoveAttributesActivity.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeNames, required: true, location_name: "attributes"))
    RemoveAttributesActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    RemoveAttributesActivity.struct_class = Types::RemoveAttributesActivity

    ReprocessingSummaries.member = Shapes::ShapeRef.new(shape: ReprocessingSummary)

    ReprocessingSummary.add_member(:id, Shapes::ShapeRef.new(shape: ReprocessingId, location_name: "id"))
    ReprocessingSummary.add_member(:status, Shapes::ShapeRef.new(shape: ReprocessingStatus, location_name: "status"))
    ReprocessingSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    ReprocessingSummary.struct_class = Types::ReprocessingSummary

    ResourceConfiguration.add_member(:compute_type, Shapes::ShapeRef.new(shape: ComputeType, required: true, location_name: "computeType"))
    ResourceConfiguration.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: VolumeSizeInGB, required: true, location_name: "volumeSizeInGB"))
    ResourceConfiguration.struct_class = Types::ResourceConfiguration

    RetentionPeriod.add_member(:unlimited, Shapes::ShapeRef.new(shape: UnlimitedRetentionPeriod, location_name: "unlimited"))
    RetentionPeriod.add_member(:number_of_days, Shapes::ShapeRef.new(shape: RetentionPeriodInDays, location_name: "numberOfDays"))
    RetentionPeriod.struct_class = Types::RetentionPeriod

    RunPipelineActivityRequest.add_member(:pipeline_activity, Shapes::ShapeRef.new(shape: PipelineActivity, required: true, location_name: "pipelineActivity"))
    RunPipelineActivityRequest.add_member(:payloads, Shapes::ShapeRef.new(shape: MessagePayloads, required: true, location_name: "payloads"))
    RunPipelineActivityRequest.struct_class = Types::RunPipelineActivityRequest

    RunPipelineActivityResponse.add_member(:payloads, Shapes::ShapeRef.new(shape: MessagePayloads, location_name: "payloads"))
    RunPipelineActivityResponse.add_member(:log_result, Shapes::ShapeRef.new(shape: LogResult, location_name: "logResult"))
    RunPipelineActivityResponse.struct_class = Types::RunPipelineActivityResponse

    SampleChannelDataRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location: "uri", location_name: "channelName"))
    SampleChannelDataRequest.add_member(:max_messages, Shapes::ShapeRef.new(shape: MaxMessages, location: "querystring", location_name: "maxMessages"))
    SampleChannelDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location: "querystring", location_name: "startTime"))
    SampleChannelDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location: "querystring", location_name: "endTime"))
    SampleChannelDataRequest.struct_class = Types::SampleChannelDataRequest

    SampleChannelDataResponse.add_member(:payloads, Shapes::ShapeRef.new(shape: MessagePayloads, location_name: "payloads"))
    SampleChannelDataResponse.struct_class = Types::SampleChannelDataResponse

    Schedule.add_member(:expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "expression"))
    Schedule.struct_class = Types::Schedule

    SelectAttributesActivity.add_member(:name, Shapes::ShapeRef.new(shape: ActivityName, required: true, location_name: "name"))
    SelectAttributesActivity.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeNames, required: true, location_name: "attributes"))
    SelectAttributesActivity.add_member(:next, Shapes::ShapeRef.new(shape: ActivityName, location_name: "next"))
    SelectAttributesActivity.struct_class = Types::SelectAttributesActivity

    SqlQueryDatasetAction.add_member(:sql_query, Shapes::ShapeRef.new(shape: SqlQuery, required: true, location_name: "sqlQuery"))
    SqlQueryDatasetAction.add_member(:filters, Shapes::ShapeRef.new(shape: QueryFilters, location_name: "filters"))
    SqlQueryDatasetAction.struct_class = Types::SqlQueryDatasetAction

    StartPipelineReprocessingRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "pipelineName"))
    StartPipelineReprocessingRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "startTime"))
    StartPipelineReprocessingRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "endTime"))
    StartPipelineReprocessingRequest.struct_class = Types::StartPipelineReprocessingRequest

    StartPipelineReprocessingResponse.add_member(:reprocessing_id, Shapes::ShapeRef.new(shape: ReprocessingId, location_name: "reprocessingId"))
    StartPipelineReprocessingResponse.struct_class = Types::StartPipelineReprocessingResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TriggeringDataset.add_member(:name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "name"))
    TriggeringDataset.struct_class = Types::TriggeringDataset

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location: "uri", location_name: "channelName"))
    UpdateChannelRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "datasetName"))
    UpdateDatasetRequest.add_member(:actions, Shapes::ShapeRef.new(shape: DatasetActions, required: true, location_name: "actions"))
    UpdateDatasetRequest.add_member(:triggers, Shapes::ShapeRef.new(shape: DatasetTriggers, location_name: "triggers"))
    UpdateDatasetRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    UpdateDatasetRequest.struct_class = Types::UpdateDatasetRequest

    UpdateDatastoreRequest.add_member(:datastore_name, Shapes::ShapeRef.new(shape: DatastoreName, required: true, location: "uri", location_name: "datastoreName"))
    UpdateDatastoreRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    UpdateDatastoreRequest.struct_class = Types::UpdateDatastoreRequest

    UpdatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "pipelineName"))
    UpdatePipelineRequest.add_member(:pipeline_activities, Shapes::ShapeRef.new(shape: PipelineActivities, required: true, location_name: "pipelineActivities"))
    UpdatePipelineRequest.struct_class = Types::UpdatePipelineRequest

    Variable.add_member(:name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "name"))
    Variable.add_member(:string_value, Shapes::ShapeRef.new(shape: StringValue, location_name: "stringValue"))
    Variable.add_member(:double_value, Shapes::ShapeRef.new(shape: DoubleValue, location_name: "doubleValue", metadata: {"box"=>true}))
    Variable.add_member(:dataset_content_version_value, Shapes::ShapeRef.new(shape: DatasetContentVersionValue, location_name: "datasetContentVersionValue"))
    Variable.add_member(:output_file_uri_value, Shapes::ShapeRef.new(shape: OutputFileUriValue, location_name: "outputFileUriValue"))
    Variable.struct_class = Types::Variable

    Variables.member = Shapes::ShapeRef.new(shape: Variable)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-27"

      api.metadata = {
        "apiVersion" => "2017-11-27",
        "endpointPrefix" => "iotanalytics",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT Analytics",
        "serviceId" => "IoTAnalytics",
        "signatureVersion" => "v4",
        "signingName" => "iotanalytics",
        "uid" => "iotanalytics-2017-11-27",
      }

      api.add_operation(:batch_put_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutMessage"
        o.http_method = "POST"
        o.http_request_uri = "/messages/batch"
        o.input = Shapes::ShapeRef.new(shape: BatchPutMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_pipeline_reprocessing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelPipelineReprocessing"
        o.http_method = "DELETE"
        o.http_request_uri = "/pipelines/{pipelineName}/reprocessing/{reprocessingId}"
        o.input = Shapes::ShapeRef.new(shape: CancelPipelineReprocessingRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelPipelineReprocessingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_dataset_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatasetContent"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetName}/content"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetContentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatastore"
        o.http_method = "POST"
        o.http_request_uri = "/datastores"
        o.input = Shapes::ShapeRef.new(shape: CreateDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/pipelines"
        o.input = Shapes::ShapeRef.new(shape: CreatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/datasets/{datasetName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_dataset_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatasetContent"
        o.http_method = "DELETE"
        o.http_request_uri = "/datasets/{datasetName}/content"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetContentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatastore"
        o.http_method = "DELETE"
        o.http_request_uri = "/datastores/{datastoreName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/pipelines/{pipelineName}"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannel"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDatastore"
        o.http_method = "GET"
        o.http_request_uri = "/datastores/{datastoreName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatastoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoggingOptions"
        o.http_method = "GET"
        o.http_request_uri = "/logging"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePipeline"
        o.http_method = "GET"
        o.http_request_uri = "/pipelines/{pipelineName}"
        o.input = Shapes::ShapeRef.new(shape: DescribePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_dataset_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatasetContent"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetName}/content"
        o.input = Shapes::ShapeRef.new(shape: GetDatasetContentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatasetContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_contents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetContents"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetName}/contents"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetContentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetContentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_request_uri = "/datasets"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_datastores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatastores"
        o.http_method = "GET"
        o.http_request_uri = "/datastores"
        o.input = Shapes::ShapeRef.new(shape: ListDatastoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatastoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelines"
        o.http_method = "GET"
        o.http_request_uri = "/pipelines"
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLoggingOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/logging"
        o.input = Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:run_pipeline_activity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RunPipelineActivity"
        o.http_method = "POST"
        o.http_request_uri = "/pipelineactivities/run"
        o.input = Shapes::ShapeRef.new(shape: RunPipelineActivityRequest)
        o.output = Shapes::ShapeRef.new(shape: RunPipelineActivityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:sample_channel_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SampleChannelData"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelName}/sample"
        o.input = Shapes::ShapeRef.new(shape: SampleChannelDataRequest)
        o.output = Shapes::ShapeRef.new(shape: SampleChannelDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_pipeline_reprocessing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPipelineReprocessing"
        o.http_method = "POST"
        o.http_request_uri = "/pipelines/{pipelineName}/reprocessing"
        o.input = Shapes::ShapeRef.new(shape: StartPipelineReprocessingRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPipelineReprocessingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataset"
        o.http_method = "PUT"
        o.http_request_uri = "/datasets/{datasetName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_datastore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatastore"
        o.http_method = "PUT"
        o.http_request_uri = "/datastores/{datastoreName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatastoreRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/pipelines/{pipelineName}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
