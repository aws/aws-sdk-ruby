# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideo
  # @api private
  module ClientApi

    include Seahorse::Model

    APIName = Shapes::StringShape.new(name: 'APIName')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountChannelLimitExceededException = Shapes::StructureShape.new(name: 'AccountChannelLimitExceededException')
    AccountStreamLimitExceededException = Shapes::StructureShape.new(name: 'AccountStreamLimitExceededException')
    ChannelInfo = Shapes::StructureShape.new(name: 'ChannelInfo')
    ChannelInfoList = Shapes::ListShape.new(name: 'ChannelInfoList')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelNameCondition = Shapes::StructureShape.new(name: 'ChannelNameCondition')
    ChannelProtocol = Shapes::StringShape.new(name: 'ChannelProtocol')
    ChannelRole = Shapes::StringShape.new(name: 'ChannelRole')
    ChannelType = Shapes::StringShape.new(name: 'ChannelType')
    ClientLimitExceededException = Shapes::StructureShape.new(name: 'ClientLimitExceededException')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConfigurationStatus = Shapes::StringShape.new(name: 'ConfigurationStatus')
    CreateSignalingChannelInput = Shapes::StructureShape.new(name: 'CreateSignalingChannelInput')
    CreateSignalingChannelOutput = Shapes::StructureShape.new(name: 'CreateSignalingChannelOutput')
    CreateStreamInput = Shapes::StructureShape.new(name: 'CreateStreamInput')
    CreateStreamOutput = Shapes::StructureShape.new(name: 'CreateStreamOutput')
    DataEndpoint = Shapes::StringShape.new(name: 'DataEndpoint')
    DataRetentionChangeInHours = Shapes::IntegerShape.new(name: 'DataRetentionChangeInHours')
    DataRetentionInHours = Shapes::IntegerShape.new(name: 'DataRetentionInHours')
    DeleteAfterUpload = Shapes::BooleanShape.new(name: 'DeleteAfterUpload')
    DeleteEdgeConfigurationInput = Shapes::StructureShape.new(name: 'DeleteEdgeConfigurationInput')
    DeleteEdgeConfigurationOutput = Shapes::StructureShape.new(name: 'DeleteEdgeConfigurationOutput')
    DeleteSignalingChannelInput = Shapes::StructureShape.new(name: 'DeleteSignalingChannelInput')
    DeleteSignalingChannelOutput = Shapes::StructureShape.new(name: 'DeleteSignalingChannelOutput')
    DeleteStreamInput = Shapes::StructureShape.new(name: 'DeleteStreamInput')
    DeleteStreamOutput = Shapes::StructureShape.new(name: 'DeleteStreamOutput')
    DeletionConfig = Shapes::StructureShape.new(name: 'DeletionConfig')
    DescribeEdgeConfigurationInput = Shapes::StructureShape.new(name: 'DescribeEdgeConfigurationInput')
    DescribeEdgeConfigurationOutput = Shapes::StructureShape.new(name: 'DescribeEdgeConfigurationOutput')
    DescribeImageGenerationConfigurationInput = Shapes::StructureShape.new(name: 'DescribeImageGenerationConfigurationInput')
    DescribeImageGenerationConfigurationOutput = Shapes::StructureShape.new(name: 'DescribeImageGenerationConfigurationOutput')
    DescribeMappedResourceConfigurationInput = Shapes::StructureShape.new(name: 'DescribeMappedResourceConfigurationInput')
    DescribeMappedResourceConfigurationOutput = Shapes::StructureShape.new(name: 'DescribeMappedResourceConfigurationOutput')
    DescribeMediaStorageConfigurationInput = Shapes::StructureShape.new(name: 'DescribeMediaStorageConfigurationInput')
    DescribeMediaStorageConfigurationOutput = Shapes::StructureShape.new(name: 'DescribeMediaStorageConfigurationOutput')
    DescribeNotificationConfigurationInput = Shapes::StructureShape.new(name: 'DescribeNotificationConfigurationInput')
    DescribeNotificationConfigurationOutput = Shapes::StructureShape.new(name: 'DescribeNotificationConfigurationOutput')
    DescribeSignalingChannelInput = Shapes::StructureShape.new(name: 'DescribeSignalingChannelInput')
    DescribeSignalingChannelOutput = Shapes::StructureShape.new(name: 'DescribeSignalingChannelOutput')
    DescribeStreamInput = Shapes::StructureShape.new(name: 'DescribeStreamInput')
    DescribeStreamOutput = Shapes::StructureShape.new(name: 'DescribeStreamOutput')
    DestinationRegion = Shapes::StringShape.new(name: 'DestinationRegion')
    DestinationUri = Shapes::StringShape.new(name: 'DestinationUri')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceStreamLimitExceededException = Shapes::StructureShape.new(name: 'DeviceStreamLimitExceededException')
    DurationInSeconds = Shapes::IntegerShape.new(name: 'DurationInSeconds')
    EdgeAgentStatus = Shapes::StructureShape.new(name: 'EdgeAgentStatus')
    EdgeConfig = Shapes::StructureShape.new(name: 'EdgeConfig')
    EdgeRetentionInHours = Shapes::IntegerShape.new(name: 'EdgeRetentionInHours')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FailedStatusDetails = Shapes::StringShape.new(name: 'FailedStatusDetails')
    Format = Shapes::StringShape.new(name: 'Format')
    FormatConfig = Shapes::MapShape.new(name: 'FormatConfig')
    FormatConfigKey = Shapes::StringShape.new(name: 'FormatConfigKey')
    FormatConfigValue = Shapes::StringShape.new(name: 'FormatConfigValue')
    GetDataEndpointInput = Shapes::StructureShape.new(name: 'GetDataEndpointInput')
    GetDataEndpointOutput = Shapes::StructureShape.new(name: 'GetDataEndpointOutput')
    GetSignalingChannelEndpointInput = Shapes::StructureShape.new(name: 'GetSignalingChannelEndpointInput')
    GetSignalingChannelEndpointOutput = Shapes::StructureShape.new(name: 'GetSignalingChannelEndpointOutput')
    HeightPixels = Shapes::IntegerShape.new(name: 'HeightPixels')
    HubDeviceArn = Shapes::StringShape.new(name: 'HubDeviceArn')
    ImageGenerationConfiguration = Shapes::StructureShape.new(name: 'ImageGenerationConfiguration')
    ImageGenerationDestinationConfig = Shapes::StructureShape.new(name: 'ImageGenerationDestinationConfig')
    ImageSelectorType = Shapes::StringShape.new(name: 'ImageSelectorType')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidDeviceException = Shapes::StructureShape.new(name: 'InvalidDeviceException')
    InvalidResourceFormatException = Shapes::StructureShape.new(name: 'InvalidResourceFormatException')
    JobStatusDetails = Shapes::StringShape.new(name: 'JobStatusDetails')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LastRecorderStatus = Shapes::StructureShape.new(name: 'LastRecorderStatus')
    LastUploaderStatus = Shapes::StructureShape.new(name: 'LastUploaderStatus')
    ListEdgeAgentConfigurationsEdgeConfig = Shapes::StructureShape.new(name: 'ListEdgeAgentConfigurationsEdgeConfig')
    ListEdgeAgentConfigurationsEdgeConfigList = Shapes::ListShape.new(name: 'ListEdgeAgentConfigurationsEdgeConfigList')
    ListEdgeAgentConfigurationsInput = Shapes::StructureShape.new(name: 'ListEdgeAgentConfigurationsInput')
    ListEdgeAgentConfigurationsInputLimit = Shapes::IntegerShape.new(name: 'ListEdgeAgentConfigurationsInputLimit')
    ListEdgeAgentConfigurationsOutput = Shapes::StructureShape.new(name: 'ListEdgeAgentConfigurationsOutput')
    ListOfProtocols = Shapes::ListShape.new(name: 'ListOfProtocols')
    ListSignalingChannelsInput = Shapes::StructureShape.new(name: 'ListSignalingChannelsInput')
    ListSignalingChannelsOutput = Shapes::StructureShape.new(name: 'ListSignalingChannelsOutput')
    ListStreamsInput = Shapes::StructureShape.new(name: 'ListStreamsInput')
    ListStreamsInputLimit = Shapes::IntegerShape.new(name: 'ListStreamsInputLimit')
    ListStreamsOutput = Shapes::StructureShape.new(name: 'ListStreamsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTagsForStreamInput = Shapes::StructureShape.new(name: 'ListTagsForStreamInput')
    ListTagsForStreamOutput = Shapes::StructureShape.new(name: 'ListTagsForStreamOutput')
    LocalSizeConfig = Shapes::StructureShape.new(name: 'LocalSizeConfig')
    MappedResourceConfigurationList = Shapes::ListShape.new(name: 'MappedResourceConfigurationList')
    MappedResourceConfigurationListItem = Shapes::StructureShape.new(name: 'MappedResourceConfigurationListItem')
    MappedResourceConfigurationListLimit = Shapes::IntegerShape.new(name: 'MappedResourceConfigurationListLimit')
    MaxLocalMediaSizeInMB = Shapes::IntegerShape.new(name: 'MaxLocalMediaSizeInMB')
    MediaSourceConfig = Shapes::StructureShape.new(name: 'MediaSourceConfig')
    MediaStorageConfiguration = Shapes::StructureShape.new(name: 'MediaStorageConfiguration')
    MediaStorageConfigurationStatus = Shapes::StringShape.new(name: 'MediaStorageConfigurationStatus')
    MediaType = Shapes::StringShape.new(name: 'MediaType')
    MediaUriSecretArn = Shapes::StringShape.new(name: 'MediaUriSecretArn')
    MediaUriType = Shapes::StringShape.new(name: 'MediaUriType')
    MessageTtlSeconds = Shapes::IntegerShape.new(name: 'MessageTtlSeconds')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoDataRetentionException = Shapes::StructureShape.new(name: 'NoDataRetentionException')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    NotificationDestinationConfig = Shapes::StructureShape.new(name: 'NotificationDestinationConfig')
    RecorderConfig = Shapes::StructureShape.new(name: 'RecorderConfig')
    RecorderStatus = Shapes::StringShape.new(name: 'RecorderStatus')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceEndpoint = Shapes::StringShape.new(name: 'ResourceEndpoint')
    ResourceEndpointList = Shapes::ListShape.new(name: 'ResourceEndpointList')
    ResourceEndpointListItem = Shapes::StructureShape.new(name: 'ResourceEndpointListItem')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTags = Shapes::MapShape.new(name: 'ResourceTags')
    SamplingInterval = Shapes::IntegerShape.new(name: 'SamplingInterval')
    ScheduleConfig = Shapes::StructureShape.new(name: 'ScheduleConfig')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    SingleMasterChannelEndpointConfiguration = Shapes::StructureShape.new(name: 'SingleMasterChannelEndpointConfiguration')
    SingleMasterConfiguration = Shapes::StructureShape.new(name: 'SingleMasterConfiguration')
    StartEdgeConfigurationUpdateInput = Shapes::StructureShape.new(name: 'StartEdgeConfigurationUpdateInput')
    StartEdgeConfigurationUpdateOutput = Shapes::StructureShape.new(name: 'StartEdgeConfigurationUpdateOutput')
    Status = Shapes::StringShape.new(name: 'Status')
    StrategyOnFullSize = Shapes::StringShape.new(name: 'StrategyOnFullSize')
    StreamEdgeConfigurationNotFoundException = Shapes::StructureShape.new(name: 'StreamEdgeConfigurationNotFoundException')
    StreamInfo = Shapes::StructureShape.new(name: 'StreamInfo')
    StreamInfoList = Shapes::ListShape.new(name: 'StreamInfoList')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    StreamNameCondition = Shapes::StructureShape.new(name: 'StreamNameCondition')
    SyncStatus = Shapes::StringShape.new(name: 'SyncStatus')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagOnCreateList = Shapes::ListShape.new(name: 'TagOnCreateList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagStreamInput = Shapes::StructureShape.new(name: 'TagStreamInput')
    TagStreamOutput = Shapes::StructureShape.new(name: 'TagStreamOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsPerResourceExceededLimitException = Shapes::StructureShape.new(name: 'TagsPerResourceExceededLimitException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UntagStreamInput = Shapes::StructureShape.new(name: 'UntagStreamInput')
    UntagStreamOutput = Shapes::StructureShape.new(name: 'UntagStreamOutput')
    UpdateDataRetentionInput = Shapes::StructureShape.new(name: 'UpdateDataRetentionInput')
    UpdateDataRetentionOperation = Shapes::StringShape.new(name: 'UpdateDataRetentionOperation')
    UpdateDataRetentionOutput = Shapes::StructureShape.new(name: 'UpdateDataRetentionOutput')
    UpdateImageGenerationConfigurationInput = Shapes::StructureShape.new(name: 'UpdateImageGenerationConfigurationInput')
    UpdateImageGenerationConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateImageGenerationConfigurationOutput')
    UpdateMediaStorageConfigurationInput = Shapes::StructureShape.new(name: 'UpdateMediaStorageConfigurationInput')
    UpdateMediaStorageConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateMediaStorageConfigurationOutput')
    UpdateNotificationConfigurationInput = Shapes::StructureShape.new(name: 'UpdateNotificationConfigurationInput')
    UpdateNotificationConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateNotificationConfigurationOutput')
    UpdateSignalingChannelInput = Shapes::StructureShape.new(name: 'UpdateSignalingChannelInput')
    UpdateSignalingChannelOutput = Shapes::StructureShape.new(name: 'UpdateSignalingChannelOutput')
    UpdateStreamInput = Shapes::StructureShape.new(name: 'UpdateStreamInput')
    UpdateStreamOutput = Shapes::StructureShape.new(name: 'UpdateStreamOutput')
    UploaderConfig = Shapes::StructureShape.new(name: 'UploaderConfig')
    UploaderStatus = Shapes::StringShape.new(name: 'UploaderStatus')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionMismatchException = Shapes::StructureShape.new(name: 'VersionMismatchException')
    WidthPixels = Shapes::IntegerShape.new(name: 'WidthPixels')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountChannelLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccountChannelLimitExceededException.struct_class = Types::AccountChannelLimitExceededException

    AccountStreamLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccountStreamLimitExceededException.struct_class = Types::AccountStreamLimitExceededException

    ChannelInfo.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "ChannelName"))
    ChannelInfo.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ChannelARN"))
    ChannelInfo.add_member(:channel_type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "ChannelType"))
    ChannelInfo.add_member(:channel_status, Shapes::ShapeRef.new(shape: Status, location_name: "ChannelStatus"))
    ChannelInfo.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ChannelInfo.add_member(:single_master_configuration, Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: "SingleMasterConfiguration"))
    ChannelInfo.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "Version"))
    ChannelInfo.struct_class = Types::ChannelInfo

    ChannelInfoList.member = Shapes::ShapeRef.new(shape: ChannelInfo)

    ChannelNameCondition.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    ChannelNameCondition.add_member(:comparison_value, Shapes::ShapeRef.new(shape: ChannelName, location_name: "ComparisonValue"))
    ChannelNameCondition.struct_class = Types::ChannelNameCondition

    ClientLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ClientLimitExceededException.struct_class = Types::ClientLimitExceededException

    CreateSignalingChannelInput.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "ChannelName"))
    CreateSignalingChannelInput.add_member(:channel_type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "ChannelType"))
    CreateSignalingChannelInput.add_member(:single_master_configuration, Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: "SingleMasterConfiguration"))
    CreateSignalingChannelInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagOnCreateList, location_name: "Tags"))
    CreateSignalingChannelInput.struct_class = Types::CreateSignalingChannelInput

    CreateSignalingChannelOutput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ChannelARN"))
    CreateSignalingChannelOutput.struct_class = Types::CreateSignalingChannelOutput

    CreateStreamInput.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    CreateStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    CreateStreamInput.add_member(:media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "MediaType"))
    CreateStreamInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateStreamInput.add_member(:data_retention_in_hours, Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: "DataRetentionInHours"))
    CreateStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "Tags"))
    CreateStreamInput.struct_class = Types::CreateStreamInput

    CreateStreamOutput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    CreateStreamOutput.struct_class = Types::CreateStreamOutput

    DeleteEdgeConfigurationInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DeleteEdgeConfigurationInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    DeleteEdgeConfigurationInput.struct_class = Types::DeleteEdgeConfigurationInput

    DeleteEdgeConfigurationOutput.struct_class = Types::DeleteEdgeConfigurationOutput

    DeleteSignalingChannelInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ChannelARN"))
    DeleteSignalingChannelInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, location_name: "CurrentVersion"))
    DeleteSignalingChannelInput.struct_class = Types::DeleteSignalingChannelInput

    DeleteSignalingChannelOutput.struct_class = Types::DeleteSignalingChannelOutput

    DeleteStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "StreamARN"))
    DeleteStreamInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, location_name: "CurrentVersion"))
    DeleteStreamInput.struct_class = Types::DeleteStreamInput

    DeleteStreamOutput.struct_class = Types::DeleteStreamOutput

    DeletionConfig.add_member(:edge_retention_in_hours, Shapes::ShapeRef.new(shape: EdgeRetentionInHours, location_name: "EdgeRetentionInHours"))
    DeletionConfig.add_member(:local_size_config, Shapes::ShapeRef.new(shape: LocalSizeConfig, location_name: "LocalSizeConfig"))
    DeletionConfig.add_member(:delete_after_upload, Shapes::ShapeRef.new(shape: DeleteAfterUpload, location_name: "DeleteAfterUpload"))
    DeletionConfig.struct_class = Types::DeletionConfig

    DescribeEdgeConfigurationInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeEdgeConfigurationInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    DescribeEdgeConfigurationInput.struct_class = Types::DescribeEdgeConfigurationInput

    DescribeEdgeConfigurationOutput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeEdgeConfigurationOutput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    DescribeEdgeConfigurationOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeEdgeConfigurationOutput.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DescribeEdgeConfigurationOutput.add_member(:sync_status, Shapes::ShapeRef.new(shape: SyncStatus, location_name: "SyncStatus"))
    DescribeEdgeConfigurationOutput.add_member(:failed_status_details, Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: "FailedStatusDetails"))
    DescribeEdgeConfigurationOutput.add_member(:edge_config, Shapes::ShapeRef.new(shape: EdgeConfig, location_name: "EdgeConfig"))
    DescribeEdgeConfigurationOutput.add_member(:edge_agent_status, Shapes::ShapeRef.new(shape: EdgeAgentStatus, location_name: "EdgeAgentStatus"))
    DescribeEdgeConfigurationOutput.struct_class = Types::DescribeEdgeConfigurationOutput

    DescribeImageGenerationConfigurationInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeImageGenerationConfigurationInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    DescribeImageGenerationConfigurationInput.struct_class = Types::DescribeImageGenerationConfigurationInput

    DescribeImageGenerationConfigurationOutput.add_member(:image_generation_configuration, Shapes::ShapeRef.new(shape: ImageGenerationConfiguration, location_name: "ImageGenerationConfiguration"))
    DescribeImageGenerationConfigurationOutput.struct_class = Types::DescribeImageGenerationConfigurationOutput

    DescribeMappedResourceConfigurationInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeMappedResourceConfigurationInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    DescribeMappedResourceConfigurationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MappedResourceConfigurationListLimit, location_name: "MaxResults"))
    DescribeMappedResourceConfigurationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMappedResourceConfigurationInput.struct_class = Types::DescribeMappedResourceConfigurationInput

    DescribeMappedResourceConfigurationOutput.add_member(:mapped_resource_configuration_list, Shapes::ShapeRef.new(shape: MappedResourceConfigurationList, location_name: "MappedResourceConfigurationList"))
    DescribeMappedResourceConfigurationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMappedResourceConfigurationOutput.struct_class = Types::DescribeMappedResourceConfigurationOutput

    DescribeMediaStorageConfigurationInput.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "ChannelName"))
    DescribeMediaStorageConfigurationInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ChannelARN"))
    DescribeMediaStorageConfigurationInput.struct_class = Types::DescribeMediaStorageConfigurationInput

    DescribeMediaStorageConfigurationOutput.add_member(:media_storage_configuration, Shapes::ShapeRef.new(shape: MediaStorageConfiguration, location_name: "MediaStorageConfiguration"))
    DescribeMediaStorageConfigurationOutput.struct_class = Types::DescribeMediaStorageConfigurationOutput

    DescribeNotificationConfigurationInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeNotificationConfigurationInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    DescribeNotificationConfigurationInput.struct_class = Types::DescribeNotificationConfigurationInput

    DescribeNotificationConfigurationOutput.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    DescribeNotificationConfigurationOutput.struct_class = Types::DescribeNotificationConfigurationOutput

    DescribeSignalingChannelInput.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "ChannelName"))
    DescribeSignalingChannelInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ChannelARN"))
    DescribeSignalingChannelInput.struct_class = Types::DescribeSignalingChannelInput

    DescribeSignalingChannelOutput.add_member(:channel_info, Shapes::ShapeRef.new(shape: ChannelInfo, location_name: "ChannelInfo"))
    DescribeSignalingChannelOutput.struct_class = Types::DescribeSignalingChannelOutput

    DescribeStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    DescribeStreamInput.struct_class = Types::DescribeStreamInput

    DescribeStreamOutput.add_member(:stream_info, Shapes::ShapeRef.new(shape: StreamInfo, location_name: "StreamInfo"))
    DescribeStreamOutput.struct_class = Types::DescribeStreamOutput

    DeviceStreamLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DeviceStreamLimitExceededException.struct_class = Types::DeviceStreamLimitExceededException

    EdgeAgentStatus.add_member(:last_recorder_status, Shapes::ShapeRef.new(shape: LastRecorderStatus, location_name: "LastRecorderStatus"))
    EdgeAgentStatus.add_member(:last_uploader_status, Shapes::ShapeRef.new(shape: LastUploaderStatus, location_name: "LastUploaderStatus"))
    EdgeAgentStatus.struct_class = Types::EdgeAgentStatus

    EdgeConfig.add_member(:hub_device_arn, Shapes::ShapeRef.new(shape: HubDeviceArn, required: true, location_name: "HubDeviceArn"))
    EdgeConfig.add_member(:recorder_config, Shapes::ShapeRef.new(shape: RecorderConfig, required: true, location_name: "RecorderConfig"))
    EdgeConfig.add_member(:uploader_config, Shapes::ShapeRef.new(shape: UploaderConfig, location_name: "UploaderConfig"))
    EdgeConfig.add_member(:deletion_config, Shapes::ShapeRef.new(shape: DeletionConfig, location_name: "DeletionConfig"))
    EdgeConfig.struct_class = Types::EdgeConfig

    FormatConfig.key = Shapes::ShapeRef.new(shape: FormatConfigKey)
    FormatConfig.value = Shapes::ShapeRef.new(shape: FormatConfigValue)

    GetDataEndpointInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    GetDataEndpointInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    GetDataEndpointInput.add_member(:api_name, Shapes::ShapeRef.new(shape: APIName, required: true, location_name: "APIName"))
    GetDataEndpointInput.struct_class = Types::GetDataEndpointInput

    GetDataEndpointOutput.add_member(:data_endpoint, Shapes::ShapeRef.new(shape: DataEndpoint, location_name: "DataEndpoint"))
    GetDataEndpointOutput.struct_class = Types::GetDataEndpointOutput

    GetSignalingChannelEndpointInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ChannelARN"))
    GetSignalingChannelEndpointInput.add_member(:single_master_channel_endpoint_configuration, Shapes::ShapeRef.new(shape: SingleMasterChannelEndpointConfiguration, location_name: "SingleMasterChannelEndpointConfiguration"))
    GetSignalingChannelEndpointInput.struct_class = Types::GetSignalingChannelEndpointInput

    GetSignalingChannelEndpointOutput.add_member(:resource_endpoint_list, Shapes::ShapeRef.new(shape: ResourceEndpointList, location_name: "ResourceEndpointList"))
    GetSignalingChannelEndpointOutput.struct_class = Types::GetSignalingChannelEndpointOutput

    ImageGenerationConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "Status"))
    ImageGenerationConfiguration.add_member(:image_selector_type, Shapes::ShapeRef.new(shape: ImageSelectorType, required: true, location_name: "ImageSelectorType"))
    ImageGenerationConfiguration.add_member(:destination_config, Shapes::ShapeRef.new(shape: ImageGenerationDestinationConfig, required: true, location_name: "DestinationConfig"))
    ImageGenerationConfiguration.add_member(:sampling_interval, Shapes::ShapeRef.new(shape: SamplingInterval, required: true, location_name: "SamplingInterval"))
    ImageGenerationConfiguration.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "Format"))
    ImageGenerationConfiguration.add_member(:format_config, Shapes::ShapeRef.new(shape: FormatConfig, location_name: "FormatConfig"))
    ImageGenerationConfiguration.add_member(:width_pixels, Shapes::ShapeRef.new(shape: WidthPixels, location_name: "WidthPixels"))
    ImageGenerationConfiguration.add_member(:height_pixels, Shapes::ShapeRef.new(shape: HeightPixels, location_name: "HeightPixels"))
    ImageGenerationConfiguration.struct_class = Types::ImageGenerationConfiguration

    ImageGenerationDestinationConfig.add_member(:uri, Shapes::ShapeRef.new(shape: DestinationUri, required: true, location_name: "Uri"))
    ImageGenerationDestinationConfig.add_member(:destination_region, Shapes::ShapeRef.new(shape: DestinationRegion, required: true, location_name: "DestinationRegion"))
    ImageGenerationDestinationConfig.struct_class = Types::ImageGenerationDestinationConfig

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    InvalidDeviceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidDeviceException.struct_class = Types::InvalidDeviceException

    InvalidResourceFormatException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidResourceFormatException.struct_class = Types::InvalidResourceFormatException

    LastRecorderStatus.add_member(:job_status_details, Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: "JobStatusDetails"))
    LastRecorderStatus.add_member(:last_collected_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastCollectedTime"))
    LastRecorderStatus.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    LastRecorderStatus.add_member(:recorder_status, Shapes::ShapeRef.new(shape: RecorderStatus, location_name: "RecorderStatus"))
    LastRecorderStatus.struct_class = Types::LastRecorderStatus

    LastUploaderStatus.add_member(:job_status_details, Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: "JobStatusDetails"))
    LastUploaderStatus.add_member(:last_collected_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastCollectedTime"))
    LastUploaderStatus.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    LastUploaderStatus.add_member(:uploader_status, Shapes::ShapeRef.new(shape: UploaderStatus, location_name: "UploaderStatus"))
    LastUploaderStatus.struct_class = Types::LastUploaderStatus

    ListEdgeAgentConfigurationsEdgeConfig.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:sync_status, Shapes::ShapeRef.new(shape: SyncStatus, location_name: "SyncStatus"))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:failed_status_details, Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: "FailedStatusDetails"))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:edge_config, Shapes::ShapeRef.new(shape: EdgeConfig, location_name: "EdgeConfig"))
    ListEdgeAgentConfigurationsEdgeConfig.struct_class = Types::ListEdgeAgentConfigurationsEdgeConfig

    ListEdgeAgentConfigurationsEdgeConfigList.member = Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsEdgeConfig)

    ListEdgeAgentConfigurationsInput.add_member(:hub_device_arn, Shapes::ShapeRef.new(shape: HubDeviceArn, required: true, location_name: "HubDeviceArn"))
    ListEdgeAgentConfigurationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsInputLimit, location_name: "MaxResults"))
    ListEdgeAgentConfigurationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEdgeAgentConfigurationsInput.struct_class = Types::ListEdgeAgentConfigurationsInput

    ListEdgeAgentConfigurationsOutput.add_member(:edge_configs, Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsEdgeConfigList, location_name: "EdgeConfigs"))
    ListEdgeAgentConfigurationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEdgeAgentConfigurationsOutput.struct_class = Types::ListEdgeAgentConfigurationsOutput

    ListOfProtocols.member = Shapes::ShapeRef.new(shape: ChannelProtocol)

    ListSignalingChannelsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: "MaxResults"))
    ListSignalingChannelsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSignalingChannelsInput.add_member(:channel_name_condition, Shapes::ShapeRef.new(shape: ChannelNameCondition, location_name: "ChannelNameCondition"))
    ListSignalingChannelsInput.struct_class = Types::ListSignalingChannelsInput

    ListSignalingChannelsOutput.add_member(:channel_info_list, Shapes::ShapeRef.new(shape: ChannelInfoList, location_name: "ChannelInfoList"))
    ListSignalingChannelsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSignalingChannelsOutput.struct_class = Types::ListSignalingChannelsOutput

    ListStreamsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: "MaxResults"))
    ListStreamsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamsInput.add_member(:stream_name_condition, Shapes::ShapeRef.new(shape: StreamNameCondition, location_name: "StreamNameCondition"))
    ListStreamsInput.struct_class = Types::ListStreamsInput

    ListStreamsOutput.add_member(:stream_info_list, Shapes::ShapeRef.new(shape: StreamInfoList, location_name: "StreamInfoList"))
    ListStreamsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamsOutput.struct_class = Types::ListStreamsOutput

    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTagsForStreamInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    ListTagsForStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    ListTagsForStreamInput.struct_class = Types::ListTagsForStreamInput

    ListTagsForStreamOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForStreamOutput.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "Tags"))
    ListTagsForStreamOutput.struct_class = Types::ListTagsForStreamOutput

    LocalSizeConfig.add_member(:max_local_media_size_in_mb, Shapes::ShapeRef.new(shape: MaxLocalMediaSizeInMB, location_name: "MaxLocalMediaSizeInMB"))
    LocalSizeConfig.add_member(:strategy_on_full_size, Shapes::ShapeRef.new(shape: StrategyOnFullSize, location_name: "StrategyOnFullSize"))
    LocalSizeConfig.struct_class = Types::LocalSizeConfig

    MappedResourceConfigurationList.member = Shapes::ShapeRef.new(shape: MappedResourceConfigurationListItem)

    MappedResourceConfigurationListItem.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    MappedResourceConfigurationListItem.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ARN"))
    MappedResourceConfigurationListItem.struct_class = Types::MappedResourceConfigurationListItem

    MediaSourceConfig.add_member(:media_uri_secret_arn, Shapes::ShapeRef.new(shape: MediaUriSecretArn, required: true, location_name: "MediaUriSecretArn"))
    MediaSourceConfig.add_member(:media_uri_type, Shapes::ShapeRef.new(shape: MediaUriType, required: true, location_name: "MediaUriType"))
    MediaSourceConfig.struct_class = Types::MediaSourceConfig

    MediaStorageConfiguration.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    MediaStorageConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: MediaStorageConfigurationStatus, required: true, location_name: "Status"))
    MediaStorageConfiguration.struct_class = Types::MediaStorageConfiguration

    NoDataRetentionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NoDataRetentionException.struct_class = Types::NoDataRetentionException

    NotAuthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotAuthorizedException.struct_class = Types::NotAuthorizedException

    NotificationConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "Status"))
    NotificationConfiguration.add_member(:destination_config, Shapes::ShapeRef.new(shape: NotificationDestinationConfig, required: true, location_name: "DestinationConfig"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    NotificationDestinationConfig.add_member(:uri, Shapes::ShapeRef.new(shape: DestinationUri, required: true, location_name: "Uri"))
    NotificationDestinationConfig.struct_class = Types::NotificationDestinationConfig

    RecorderConfig.add_member(:media_source_config, Shapes::ShapeRef.new(shape: MediaSourceConfig, required: true, location_name: "MediaSourceConfig"))
    RecorderConfig.add_member(:schedule_config, Shapes::ShapeRef.new(shape: ScheduleConfig, location_name: "ScheduleConfig"))
    RecorderConfig.struct_class = Types::RecorderConfig

    ResourceEndpointList.member = Shapes::ShapeRef.new(shape: ResourceEndpointListItem)

    ResourceEndpointListItem.add_member(:protocol, Shapes::ShapeRef.new(shape: ChannelProtocol, location_name: "Protocol"))
    ResourceEndpointListItem.add_member(:resource_endpoint, Shapes::ShapeRef.new(shape: ResourceEndpoint, location_name: "ResourceEndpoint"))
    ResourceEndpointListItem.struct_class = Types::ResourceEndpointListItem

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTags.key = Shapes::ShapeRef.new(shape: TagKey)
    ResourceTags.value = Shapes::ShapeRef.new(shape: TagValue)

    ScheduleConfig.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "ScheduleExpression"))
    ScheduleConfig.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, required: true, location_name: "DurationInSeconds"))
    ScheduleConfig.struct_class = Types::ScheduleConfig

    SingleMasterChannelEndpointConfiguration.add_member(:protocols, Shapes::ShapeRef.new(shape: ListOfProtocols, location_name: "Protocols"))
    SingleMasterChannelEndpointConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: ChannelRole, location_name: "Role"))
    SingleMasterChannelEndpointConfiguration.struct_class = Types::SingleMasterChannelEndpointConfiguration

    SingleMasterConfiguration.add_member(:message_ttl_seconds, Shapes::ShapeRef.new(shape: MessageTtlSeconds, location_name: "MessageTtlSeconds"))
    SingleMasterConfiguration.struct_class = Types::SingleMasterConfiguration

    StartEdgeConfigurationUpdateInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    StartEdgeConfigurationUpdateInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    StartEdgeConfigurationUpdateInput.add_member(:edge_config, Shapes::ShapeRef.new(shape: EdgeConfig, required: true, location_name: "EdgeConfig"))
    StartEdgeConfigurationUpdateInput.struct_class = Types::StartEdgeConfigurationUpdateInput

    StartEdgeConfigurationUpdateOutput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    StartEdgeConfigurationUpdateOutput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    StartEdgeConfigurationUpdateOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    StartEdgeConfigurationUpdateOutput.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    StartEdgeConfigurationUpdateOutput.add_member(:sync_status, Shapes::ShapeRef.new(shape: SyncStatus, location_name: "SyncStatus"))
    StartEdgeConfigurationUpdateOutput.add_member(:failed_status_details, Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: "FailedStatusDetails"))
    StartEdgeConfigurationUpdateOutput.add_member(:edge_config, Shapes::ShapeRef.new(shape: EdgeConfig, location_name: "EdgeConfig"))
    StartEdgeConfigurationUpdateOutput.struct_class = Types::StartEdgeConfigurationUpdateOutput

    StreamEdgeConfigurationNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    StreamEdgeConfigurationNotFoundException.struct_class = Types::StreamEdgeConfigurationNotFoundException

    StreamInfo.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    StreamInfo.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    StreamInfo.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    StreamInfo.add_member(:media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "MediaType"))
    StreamInfo.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    StreamInfo.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "Version"))
    StreamInfo.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    StreamInfo.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    StreamInfo.add_member(:data_retention_in_hours, Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: "DataRetentionInHours"))
    StreamInfo.struct_class = Types::StreamInfo

    StreamInfoList.member = Shapes::ShapeRef.new(shape: StreamInfo)

    StreamNameCondition.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    StreamNameCondition.add_member(:comparison_value, Shapes::ShapeRef.new(shape: StreamName, location_name: "ComparisonValue"))
    StreamNameCondition.struct_class = Types::StreamNameCondition

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagOnCreateList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TagStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    TagStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    TagStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceTags, required: true, location_name: "Tags"))
    TagStreamInput.struct_class = Types::TagStreamInput

    TagStreamOutput.struct_class = Types::TagStreamOutput

    TagsPerResourceExceededLimitException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TagsPerResourceExceededLimitException.struct_class = Types::TagsPerResourceExceededLimitException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN"))
    UntagResourceInput.add_member(:tag_key_list, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeyList"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UntagStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    UntagStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UntagStreamInput.add_member(:tag_key_list, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeyList"))
    UntagStreamInput.struct_class = Types::UntagStreamInput

    UntagStreamOutput.struct_class = Types::UntagStreamOutput

    UpdateDataRetentionInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateDataRetentionInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    UpdateDataRetentionInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "CurrentVersion"))
    UpdateDataRetentionInput.add_member(:operation, Shapes::ShapeRef.new(shape: UpdateDataRetentionOperation, required: true, location_name: "Operation"))
    UpdateDataRetentionInput.add_member(:data_retention_change_in_hours, Shapes::ShapeRef.new(shape: DataRetentionChangeInHours, required: true, location_name: "DataRetentionChangeInHours"))
    UpdateDataRetentionInput.struct_class = Types::UpdateDataRetentionInput

    UpdateDataRetentionOutput.struct_class = Types::UpdateDataRetentionOutput

    UpdateImageGenerationConfigurationInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateImageGenerationConfigurationInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    UpdateImageGenerationConfigurationInput.add_member(:image_generation_configuration, Shapes::ShapeRef.new(shape: ImageGenerationConfiguration, location_name: "ImageGenerationConfiguration"))
    UpdateImageGenerationConfigurationInput.struct_class = Types::UpdateImageGenerationConfigurationInput

    UpdateImageGenerationConfigurationOutput.struct_class = Types::UpdateImageGenerationConfigurationOutput

    UpdateMediaStorageConfigurationInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ChannelARN"))
    UpdateMediaStorageConfigurationInput.add_member(:media_storage_configuration, Shapes::ShapeRef.new(shape: MediaStorageConfiguration, required: true, location_name: "MediaStorageConfiguration"))
    UpdateMediaStorageConfigurationInput.struct_class = Types::UpdateMediaStorageConfigurationInput

    UpdateMediaStorageConfigurationOutput.struct_class = Types::UpdateMediaStorageConfigurationOutput

    UpdateNotificationConfigurationInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateNotificationConfigurationInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    UpdateNotificationConfigurationInput.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    UpdateNotificationConfigurationInput.struct_class = Types::UpdateNotificationConfigurationInput

    UpdateNotificationConfigurationOutput.struct_class = Types::UpdateNotificationConfigurationOutput

    UpdateSignalingChannelInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ChannelARN"))
    UpdateSignalingChannelInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "CurrentVersion"))
    UpdateSignalingChannelInput.add_member(:single_master_configuration, Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: "SingleMasterConfiguration"))
    UpdateSignalingChannelInput.struct_class = Types::UpdateSignalingChannelInput

    UpdateSignalingChannelOutput.struct_class = Types::UpdateSignalingChannelOutput

    UpdateStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    UpdateStreamInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "CurrentVersion"))
    UpdateStreamInput.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    UpdateStreamInput.add_member(:media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "MediaType"))
    UpdateStreamInput.struct_class = Types::UpdateStreamInput

    UpdateStreamOutput.struct_class = Types::UpdateStreamOutput

    UploaderConfig.add_member(:schedule_config, Shapes::ShapeRef.new(shape: ScheduleConfig, required: true, location_name: "ScheduleConfig"))
    UploaderConfig.struct_class = Types::UploaderConfig

    VersionMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    VersionMismatchException.struct_class = Types::VersionMismatchException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-30"

      api.metadata = {
        "apiVersion" => "2017-09-30",
        "endpointPrefix" => "kinesisvideo",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Kinesis Video",
        "serviceFullName" => "Amazon Kinesis Video Streams",
        "serviceId" => "Kinesis Video",
        "signatureVersion" => "v4",
        "uid" => "kinesisvideo-2017-09-30",
      }

      api.add_operation(:create_signaling_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSignalingChannel"
        o.http_method = "POST"
        o.http_request_uri = "/createSignalingChannel"
        o.input = Shapes::ShapeRef.new(shape: CreateSignalingChannelInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSignalingChannelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccountChannelLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
      end)

      api.add_operation(:create_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStream"
        o.http_method = "POST"
        o.http_request_uri = "/createStream"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccountStreamLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceStreamLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeviceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
      end)

      api.add_operation(:delete_edge_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEdgeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/deleteEdgeConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteEdgeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEdgeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StreamEdgeConfigurationNotFoundException)
      end)

      api.add_operation(:delete_signaling_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSignalingChannel"
        o.http_method = "POST"
        o.http_request_uri = "/deleteSignalingChannel"
        o.input = Shapes::ShapeRef.new(shape: DeleteSignalingChannelInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSignalingChannelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStream"
        o.http_method = "POST"
        o.http_request_uri = "/deleteStream"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:describe_edge_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEdgeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeEdgeConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeEdgeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEdgeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StreamEdgeConfigurationNotFoundException)
      end)

      api.add_operation(:describe_image_generation_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImageGenerationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeImageGenerationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeImageGenerationConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeImageGenerationConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_mapped_resource_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMappedResourceConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeMappedResourceConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeMappedResourceConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMappedResourceConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_media_storage_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMediaStorageConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeMediaStorageConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeMediaStorageConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMediaStorageConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
      end)

      api.add_operation(:describe_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/describeNotificationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_signaling_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSignalingChannel"
        o.http_method = "POST"
        o.http_request_uri = "/describeSignalingChannel"
        o.input = Shapes::ShapeRef.new(shape: DescribeSignalingChannelInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeSignalingChannelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStream"
        o.http_method = "POST"
        o.http_request_uri = "/describeStream"
        o.input = Shapes::ShapeRef.new(shape: DescribeStreamInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:get_data_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/getDataEndpoint"
        o.input = Shapes::ShapeRef.new(shape: GetDataEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: GetDataEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:get_signaling_channel_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSignalingChannelEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/getSignalingChannelEndpoint"
        o.input = Shapes::ShapeRef.new(shape: GetSignalingChannelEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: GetSignalingChannelEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_edge_agent_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEdgeAgentConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/listEdgeAgentConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_signaling_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSignalingChannels"
        o.http_method = "POST"
        o.http_request_uri = "/listSignalingChannels"
        o.input = Shapes::ShapeRef.new(shape: ListSignalingChannelsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSignalingChannelsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreams"
        o.http_method = "POST"
        o.http_request_uri = "/listStreams"
        o.input = Shapes::ShapeRef.new(shape: ListStreamsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
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
        o.http_request_uri = "/ListTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_tags_for_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForStream"
        o.http_method = "POST"
        o.http_request_uri = "/listTagsForStream"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForStreamInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
      end)

      api.add_operation(:start_edge_configuration_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEdgeConfigurationUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/startEdgeConfigurationUpdate"
        o.input = Shapes::ShapeRef.new(shape: StartEdgeConfigurationUpdateInput)
        o.output = Shapes::ShapeRef.new(shape: StartEdgeConfigurationUpdateOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: NoDataRetentionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/TagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
      end)

      api.add_operation(:tag_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagStream"
        o.http_method = "POST"
        o.http_request_uri = "/tagStream"
        o.input = Shapes::ShapeRef.new(shape: TagStreamInput)
        o.output = Shapes::ShapeRef.new(shape: TagStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
        o.errors << Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/UntagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagStream"
        o.http_method = "POST"
        o.http_request_uri = "/untagStream"
        o.input = Shapes::ShapeRef.new(shape: UntagStreamInput)
        o.output = Shapes::ShapeRef.new(shape: UntagStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
      end)

      api.add_operation(:update_data_retention, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataRetention"
        o.http_method = "POST"
        o.http_request_uri = "/updateDataRetention"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataRetentionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataRetentionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
      end)

      api.add_operation(:update_image_generation_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateImageGenerationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/updateImageGenerationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateImageGenerationConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateImageGenerationConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: NoDataRetentionException)
      end)

      api.add_operation(:update_media_storage_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMediaStorageConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/updateMediaStorageConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateMediaStorageConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMediaStorageConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoDataRetentionException)
      end)

      api.add_operation(:update_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/updateNotificationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: NoDataRetentionException)
      end)

      api.add_operation(:update_signaling_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSignalingChannel"
        o.http_method = "POST"
        o.http_request_uri = "/updateSignalingChannel"
        o.input = Shapes::ShapeRef.new(shape: UpdateSignalingChannelInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSignalingChannelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
      end)

      api.add_operation(:update_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStream"
        o.http_method = "POST"
        o.http_request_uri = "/updateStream"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: VersionMismatchException)
      end)
    end

  end
end
