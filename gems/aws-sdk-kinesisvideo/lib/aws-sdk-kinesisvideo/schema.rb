# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideo
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APIName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#APIName', name: 'APIName')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    AccountChannelLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#AccountChannelLimitExceededException', name: 'AccountChannelLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountStreamLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#AccountStreamLimitExceededException', name: 'AccountStreamLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ChannelInfo', name: 'ChannelInfo')
    ChannelInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#ChannelInfoList', name: 'ChannelInfoList')
    ChannelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ChannelName', name: 'ChannelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ChannelNameCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ChannelNameCondition', name: 'ChannelNameCondition')
    ChannelProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ChannelProtocol', name: 'ChannelProtocol')
    ChannelRole = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ChannelRole', name: 'ChannelRole')
    ChannelType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ChannelType', name: 'ChannelType')
    ClientLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ClientLimitExceededException', name: 'ClientLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ComparisonOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ComparisonOperator', name: 'ComparisonOperator')
    ConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ConfigurationStatus', name: 'ConfigurationStatus')
    CreateSignalingChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#CreateSignalingChannelInput', name: 'CreateSignalingChannelInput')
    CreateSignalingChannelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#CreateSignalingChannelOutput', name: 'CreateSignalingChannelOutput')
    CreateStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#CreateStreamInput', name: 'CreateStreamInput')
    CreateStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#CreateStreamOutput', name: 'CreateStreamOutput')
    DataEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#DataEndpoint', name: 'DataEndpoint')
    DataRetentionChangeInHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#DataRetentionChangeInHours', name: 'DataRetentionChangeInHours', traits: {"smithy.api#range" => {"min" => 1}})
    DataRetentionInHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#DataRetentionInHours', name: 'DataRetentionInHours', traits: {"smithy.api#range" => {"min" => 0}})
    DeleteAfterUpload = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kinesisvideo#DeleteAfterUpload', name: 'DeleteAfterUpload')
    DeleteEdgeConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteEdgeConfigurationInput', name: 'DeleteEdgeConfigurationInput')
    DeleteEdgeConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteEdgeConfigurationOutput', name: 'DeleteEdgeConfigurationOutput')
    DeleteSignalingChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteSignalingChannelInput', name: 'DeleteSignalingChannelInput')
    DeleteSignalingChannelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteSignalingChannelOutput', name: 'DeleteSignalingChannelOutput')
    DeleteStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteStreamInput', name: 'DeleteStreamInput')
    DeleteStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteStreamOutput', name: 'DeleteStreamOutput')
    DeletionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeletionConfig', name: 'DeletionConfig')
    DescribeEdgeConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeEdgeConfigurationInput', name: 'DescribeEdgeConfigurationInput')
    DescribeEdgeConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeEdgeConfigurationOutput', name: 'DescribeEdgeConfigurationOutput')
    DescribeImageGenerationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeImageGenerationConfigurationInput', name: 'DescribeImageGenerationConfigurationInput')
    DescribeImageGenerationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeImageGenerationConfigurationOutput', name: 'DescribeImageGenerationConfigurationOutput')
    DescribeMappedResourceConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeMappedResourceConfigurationInput', name: 'DescribeMappedResourceConfigurationInput')
    DescribeMappedResourceConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeMappedResourceConfigurationOutput', name: 'DescribeMappedResourceConfigurationOutput')
    DescribeMediaStorageConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeMediaStorageConfigurationInput', name: 'DescribeMediaStorageConfigurationInput')
    DescribeMediaStorageConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeMediaStorageConfigurationOutput', name: 'DescribeMediaStorageConfigurationOutput')
    DescribeNotificationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeNotificationConfigurationInput', name: 'DescribeNotificationConfigurationInput')
    DescribeNotificationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeNotificationConfigurationOutput', name: 'DescribeNotificationConfigurationOutput')
    DescribeSignalingChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeSignalingChannelInput', name: 'DescribeSignalingChannelInput')
    DescribeSignalingChannelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeSignalingChannelOutput', name: 'DescribeSignalingChannelOutput')
    DescribeStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeStreamInput', name: 'DescribeStreamInput')
    DescribeStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeStreamOutput', name: 'DescribeStreamOutput')
    DestinationRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#DestinationRegion', name: 'DestinationRegion', traits: {"smithy.api#length" => {"min" => 9, "max" => 14}, "smithy.api#pattern" => "^[a-z]+(-[a-z]+)?-[a-z]+-[0-9]$"})
    DestinationUri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#DestinationUri', name: 'DestinationUri', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_0-9]+:(//)?([^/]+)/?([^*]*)$"})
    DeviceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#DeviceName', name: 'DeviceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    DeviceStreamLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeviceStreamLimitExceededException', name: 'DeviceStreamLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#DurationInSeconds', name: 'DurationInSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 3600}})
    EdgeAgentStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#EdgeAgentStatus', name: 'EdgeAgentStatus')
    EdgeConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#EdgeConfig', name: 'EdgeConfig')
    EdgeRetentionInHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#EdgeRetentionInHours', name: 'EdgeRetentionInHours', traits: {"smithy.api#range" => {"min" => 1, "max" => 720}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ErrorMessage', name: 'ErrorMessage')
    FailedStatusDetails = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#FailedStatusDetails', name: 'FailedStatusDetails')
    Format = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#Format', name: 'Format')
    FormatConfig = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kinesisvideo#FormatConfig', name: 'FormatConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FormatConfigKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#FormatConfigKey', name: 'FormatConfigKey')
    FormatConfigValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#FormatConfigValue', name: 'FormatConfigValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_0-9]+$"})
    GetDataEndpointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#GetDataEndpointInput', name: 'GetDataEndpointInput')
    GetDataEndpointOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#GetDataEndpointOutput', name: 'GetDataEndpointOutput')
    GetSignalingChannelEndpointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#GetSignalingChannelEndpointInput', name: 'GetSignalingChannelEndpointInput')
    GetSignalingChannelEndpointOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#GetSignalingChannelEndpointOutput', name: 'GetSignalingChannelEndpointOutput')
    HeightPixels = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#HeightPixels', name: 'HeightPixels', traits: {"smithy.api#range" => {"min" => 1, "max" => 2160}})
    HubDeviceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#HubDeviceArn', name: 'HubDeviceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:iot:[a-z0-9-]+:[0-9]+:thing/[a-zA-Z0-9_.-]+$"})
    ImageGenerationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ImageGenerationConfiguration', name: 'ImageGenerationConfiguration')
    ImageGenerationDestinationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ImageGenerationDestinationConfig', name: 'ImageGenerationDestinationConfig')
    ImageSelectorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ImageSelectorType', name: 'ImageSelectorType')
    InvalidArgumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDeviceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#InvalidDeviceException', name: 'InvalidDeviceException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceFormatException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#InvalidResourceFormatException', name: 'InvalidResourceFormatException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobStatusDetails = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#JobStatusDetails', name: 'JobStatusDetails')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    LastRecorderStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#LastRecorderStatus', name: 'LastRecorderStatus')
    LastUploaderStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#LastUploaderStatus', name: 'LastUploaderStatus')
    ListEdgeAgentConfigurationsEdgeConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsEdgeConfig', name: 'ListEdgeAgentConfigurationsEdgeConfig')
    ListEdgeAgentConfigurationsEdgeConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsEdgeConfigList', name: 'ListEdgeAgentConfigurationsEdgeConfigList')
    ListEdgeAgentConfigurationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsInput', name: 'ListEdgeAgentConfigurationsInput')
    ListEdgeAgentConfigurationsInputLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsInputLimit', name: 'ListEdgeAgentConfigurationsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ListEdgeAgentConfigurationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsOutput', name: 'ListEdgeAgentConfigurationsOutput')
    ListOfProtocols = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#ListOfProtocols', name: 'ListOfProtocols', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ListSignalingChannelsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListSignalingChannelsInput', name: 'ListSignalingChannelsInput')
    ListSignalingChannelsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListSignalingChannelsOutput', name: 'ListSignalingChannelsOutput')
    ListStreamsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListStreamsInput', name: 'ListStreamsInput')
    ListStreamsInputLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#ListStreamsInputLimit', name: 'ListStreamsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ListStreamsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListStreamsOutput', name: 'ListStreamsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTagsForStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListTagsForStreamInput', name: 'ListTagsForStreamInput')
    ListTagsForStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListTagsForStreamOutput', name: 'ListTagsForStreamOutput')
    LocalSizeConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#LocalSizeConfig', name: 'LocalSizeConfig')
    MappedResourceConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#MappedResourceConfigurationList', name: 'MappedResourceConfigurationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    MappedResourceConfigurationListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#MappedResourceConfigurationListItem', name: 'MappedResourceConfigurationListItem')
    MappedResourceConfigurationListLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#MappedResourceConfigurationListLimit', name: 'MappedResourceConfigurationListLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    MaxLocalMediaSizeInMB = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#MaxLocalMediaSizeInMB', name: 'MaxLocalMediaSizeInMB', traits: {"smithy.api#range" => {"min" => 64, "max" => 2000000}})
    MediaSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#MediaSourceConfig', name: 'MediaSourceConfig')
    MediaStorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#MediaStorageConfiguration', name: 'MediaStorageConfiguration')
    MediaStorageConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#MediaStorageConfigurationStatus', name: 'MediaStorageConfigurationStatus')
    MediaType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#MediaType', name: 'MediaType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+(,[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+)*$"})
    MediaUriSecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#MediaUriSecretArn', name: 'MediaUriSecretArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:secretsmanager:[a-z0-9-]+:[0-9]+:secret:[a-zA-Z0-9_.-]+$", "smithy.api#sensitive" => {}})
    MediaUriType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#MediaUriType', name: 'MediaUriType')
    MessageTtlSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#MessageTtlSeconds', name: 'MessageTtlSeconds', traits: {"smithy.api#range" => {"min" => 5, "max" => 120}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]*$"})
    NoDataRetentionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#NoDataRetentionException', name: 'NoDataRetentionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotAuthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#NotAuthorizedException', name: 'NotAuthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    NotificationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#NotificationConfiguration', name: 'NotificationConfiguration')
    NotificationDestinationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#NotificationDestinationConfig', name: 'NotificationDestinationConfig')
    RecorderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#RecorderConfig', name: 'RecorderConfig')
    RecorderStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#RecorderStatus', name: 'RecorderStatus')
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    ResourceEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ResourceEndpoint', name: 'ResourceEndpoint')
    ResourceEndpointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#ResourceEndpointList', name: 'ResourceEndpointList')
    ResourceEndpointListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ResourceEndpointListItem', name: 'ResourceEndpointListItem')
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kinesisvideo#ResourceTags', name: 'ResourceTags', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    SamplingInterval = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#SamplingInterval', name: 'SamplingInterval')
    ScheduleConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ScheduleConfig', name: 'ScheduleConfig')
    ScheduleExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ScheduleExpression', name: 'ScheduleExpression', traits: {"smithy.api#length" => {"min" => 11, "max" => 100}, "smithy.api#pattern" => "^[^\\n]{11,100}$"})
    SingleMasterChannelEndpointConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#SingleMasterChannelEndpointConfiguration', name: 'SingleMasterChannelEndpointConfiguration')
    SingleMasterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#SingleMasterConfiguration', name: 'SingleMasterConfiguration')
    StartEdgeConfigurationUpdateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StartEdgeConfigurationUpdateInput', name: 'StartEdgeConfigurationUpdateInput')
    StartEdgeConfigurationUpdateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StartEdgeConfigurationUpdateOutput', name: 'StartEdgeConfigurationUpdateOutput')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#Status', name: 'Status')
    StrategyOnFullSize = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#StrategyOnFullSize', name: 'StrategyOnFullSize')
    StreamEdgeConfigurationNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StreamEdgeConfigurationNotFoundException', name: 'StreamEdgeConfigurationNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StreamInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StreamInfo', name: 'StreamInfo')
    StreamInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#StreamInfoList', name: 'StreamInfoList')
    StreamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#StreamName', name: 'StreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    StreamNameCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StreamNameCondition', name: 'StreamNameCondition')
    SyncStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#SyncStatus', name: 'SyncStatus')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagOnCreateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#TagOnCreateList', name: 'TagOnCreateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagResourceOutput', name: 'TagResourceOutput')
    TagStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagStreamInput', name: 'TagStreamInput')
    TagStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagStreamOutput', name: 'TagStreamOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagsPerResourceExceededLimitException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagsPerResourceExceededLimitException', name: 'TagsPerResourceExceededLimitException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kinesisvideo#Timestamp', name: 'Timestamp')
    Type = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#Type', name: 'Type')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UntagResourceOutput', name: 'UntagResourceOutput')
    UntagStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UntagStreamInput', name: 'UntagStreamInput')
    UntagStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UntagStreamOutput', name: 'UntagStreamOutput')
    UpdateDataRetentionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateDataRetentionInput', name: 'UpdateDataRetentionInput')
    UpdateDataRetentionOperation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#UpdateDataRetentionOperation', name: 'UpdateDataRetentionOperation')
    UpdateDataRetentionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateDataRetentionOutput', name: 'UpdateDataRetentionOutput')
    UpdateImageGenerationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateImageGenerationConfigurationInput', name: 'UpdateImageGenerationConfigurationInput')
    UpdateImageGenerationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateImageGenerationConfigurationOutput', name: 'UpdateImageGenerationConfigurationOutput')
    UpdateMediaStorageConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateMediaStorageConfigurationInput', name: 'UpdateMediaStorageConfigurationInput')
    UpdateMediaStorageConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateMediaStorageConfigurationOutput', name: 'UpdateMediaStorageConfigurationOutput')
    UpdateNotificationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateNotificationConfigurationInput', name: 'UpdateNotificationConfigurationInput')
    UpdateNotificationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateNotificationConfigurationOutput', name: 'UpdateNotificationConfigurationOutput')
    UpdateSignalingChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateSignalingChannelInput', name: 'UpdateSignalingChannelInput')
    UpdateSignalingChannelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateSignalingChannelOutput', name: 'UpdateSignalingChannelOutput')
    UpdateStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateStreamInput', name: 'UpdateStreamInput')
    UpdateStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateStreamOutput', name: 'UpdateStreamOutput')
    UploaderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UploaderConfig', name: 'UploaderConfig')
    UploaderStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#UploaderStatus', name: 'UploaderStatus')
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    VersionMismatchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#VersionMismatchException', name: 'VersionMismatchException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WidthPixels = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#WidthPixels', name: 'WidthPixels', traits: {"smithy.api#range" => {"min" => 1, "max" => 3840}})

    APIName.add_member(:put_media, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT_MEDIA', traits: {"smithy.api#enumValue" => "PUT_MEDIA"}))
    APIName.add_member(:get_media, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_MEDIA', traits: {"smithy.api#enumValue" => "GET_MEDIA"}))
    APIName.add_member(:list_fragments, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIST_FRAGMENTS', traits: {"smithy.api#enumValue" => "LIST_FRAGMENTS"}))
    APIName.add_member(:get_media_for_fragment_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_MEDIA_FOR_FRAGMENT_LIST', traits: {"smithy.api#enumValue" => "GET_MEDIA_FOR_FRAGMENT_LIST"}))
    APIName.add_member(:get_hls_streaming_session_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_HLS_STREAMING_SESSION_URL', traits: {"smithy.api#enumValue" => "GET_HLS_STREAMING_SESSION_URL"}))
    APIName.add_member(:get_dash_streaming_session_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_DASH_STREAMING_SESSION_URL', traits: {"smithy.api#enumValue" => "GET_DASH_STREAMING_SESSION_URL"}))
    APIName.add_member(:get_clip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_CLIP', traits: {"smithy.api#enumValue" => "GET_CLIP"}))
    APIName.add_member(:get_images, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_IMAGES', traits: {"smithy.api#enumValue" => "GET_IMAGES"}))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountChannelLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccountChannelLimitExceededException.type = Types::AccountChannelLimitExceededException
    AccountStreamLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccountStreamLimitExceededException.type = Types::AccountStreamLimitExceededException
    ChannelInfo.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ChannelName', traits: {"smithy.api#documentation" => "<p>The name of the signaling channel.</p>"}))
    ChannelInfo.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signaling channel.</p>"}))
    ChannelInfo.add_member(:channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType', traits: {"smithy.api#documentation" => "<p>The type of the signaling channel.</p>"}))
    ChannelInfo.add_member(:channel_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'ChannelStatus', traits: {"smithy.api#documentation" => "<p>Current status of the signaling channel.</p>"}))
    ChannelInfo.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time at which the signaling channel was created.</p>"}))
    ChannelInfo.add_member(:single_master_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: 'SingleMasterConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration for the <code>SINGLE_MASTER</code> channel\n            type.</p>"}))
    ChannelInfo.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the signaling channel.</p>"}))
    ChannelInfo.type = Types::ChannelInfo
    ChannelInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelInfo)
    ChannelNameCondition.add_member(:comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator', traits: {"smithy.api#documentation" => "<p>A comparison operator. Currently, you can only specify the <code>BEGINS_WITH</code>\n            operator, which finds signaling channels whose names begin with a given prefix.</p>"}))
    ChannelNameCondition.add_member(:comparison_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ComparisonValue', traits: {"smithy.api#documentation" => "<p>A value to compare.</p>"}))
    ChannelNameCondition.type = Types::ChannelNameCondition
    ChannelProtocol.add_member(:wss, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WSS', traits: {"smithy.api#enumValue" => "WSS"}))
    ChannelProtocol.add_member(:https, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTPS', traits: {"smithy.api#enumValue" => "HTTPS"}))
    ChannelProtocol.add_member(:webrtc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBRTC', traits: {"smithy.api#enumValue" => "WEBRTC"}))
    ChannelRole.add_member(:master, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER', traits: {"smithy.api#enumValue" => "MASTER"}))
    ChannelRole.add_member(:viewer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIEWER', traits: {"smithy.api#enumValue" => "VIEWER"}))
    ChannelType.add_member(:single_master, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_MASTER', traits: {"smithy.api#enumValue" => "SINGLE_MASTER"}))
    ChannelType.add_member(:full_mesh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_MESH', traits: {"smithy.api#enumValue" => "FULL_MESH"}))
    ClientLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ClientLimitExceededException.type = Types::ClientLimitExceededException
    ComparisonOperator.add_member(:begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEGINS_WITH', traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    ConfigurationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ConfigurationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CreateSignalingChannelInput.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ChannelName', traits: {"smithy.api#documentation" => "<p>A name for the signaling channel that you are creating. It must be unique for each Amazon Web Services account and Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreateSignalingChannelInput.add_member(:channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType', traits: {"smithy.api#documentation" => "<p>A type of the signaling channel that you are creating. Currently,\n                <code>SINGLE_MASTER</code> is the only supported channel type. </p>"}))
    CreateSignalingChannelInput.add_member(:single_master_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: 'SingleMasterConfiguration', traits: {"smithy.api#documentation" => "<p>A structure containing the configuration for the <code>SINGLE_MASTER</code> channel\n            type. </p>"}))
    CreateSignalingChannelInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagOnCreateList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) that you want to associate with this channel.</p>"}))
    CreateSignalingChannelInput.type = Types::CreateSignalingChannelInput
    CreateSignalingChannelOutput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created channel.</p>"}))
    CreateSignalingChannelOutput.type = Types::CreateSignalingChannelOutput
    CreateStreamInput.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName', traits: {"smithy.api#documentation" => "<p>The name of the device that is writing to the stream. </p>\n         <note>\n            <p>In the current implementation, Kinesis Video Streams does not use this\n                name.</p>\n         </note>"}))
    CreateStreamInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>A name for the stream that you are creating.</p>\n         <p>The stream name is an identifier for the stream, and must be unique for each\n            account and region.</p>", "smithy.api#required" => {}}))
    CreateStreamInput.add_member(:media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'MediaType', traits: {"smithy.api#documentation" => "<p>The media type of the stream. Consumers of the stream can use this information when\n            processing the stream. For more information about media types, see <a href=\"http://www.iana.org/assignments/media-types/media-types.xhtml\">Media\n                Types</a>. If you choose to specify the <code>MediaType</code>, see <a href=\"https://tools.ietf.org/html/rfc6838#section-4.2\">Naming Requirements</a>\n            for guidelines.</p>\n         <p>Example valid values include \"video/h264\" and \"video/h264,audio/aac\".</p>\n         <p>This parameter is optional; the default value is <code>null</code> (or empty in\n            JSON).</p>"}))
    CreateStreamInput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key that you want Kinesis Video\n            Streams to use to encrypt stream data.</p>\n         <p>If no key ID is specified, the default, Kinesis Video-managed key\n            (<code>Amazon Web Services/kinesisvideo</code>) is used.</p>\n         <p> For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters\">DescribeKey</a>. </p>"}))
    CreateStreamInput.add_member(:data_retention_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: 'DataRetentionInHours', traits: {"smithy.api#documentation" => "<p>The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream.</p>\n         <p>The default value is 0, indicating that the stream does not persist data.</p>\n         <p>When the <code>DataRetentionInHours</code> value is 0, consumers can still consume\n            the fragments that remain in the service host buffer, which has a retention time limit\n            of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the\n            buffer when either limit is reached.</p>"}))
    CreateStreamInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to associate with the specified stream. Each tag is a key-value pair\n            (the value is optional).</p>"}))
    CreateStreamInput.type = Types::CreateStreamInput
    CreateStreamOutput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream.</p>"}))
    CreateStreamOutput.type = Types::CreateStreamOutput
    DeleteEdgeConfigurationInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream from which to delete the edge configuration. Specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>"}))
    DeleteEdgeConfigurationInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream. Specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>"}))
    DeleteEdgeConfigurationInput.type = Types::DeleteEdgeConfigurationInput
    DeleteEdgeConfigurationOutput.type = Types::DeleteEdgeConfigurationOutput
    DeleteSignalingChannelInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signaling channel that you want to\n            delete.</p>", "smithy.api#required" => {}}))
    DeleteSignalingChannelInput.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the signaling channel that you want to delete. You can obtain\n            the current version by invoking the <code>DescribeSignalingChannel</code> or\n                <code>ListSignalingChannels</code> API operations.</p>"}))
    DeleteSignalingChannelInput.type = Types::DeleteSignalingChannelInput
    DeleteSignalingChannelOutput.type = Types::DeleteSignalingChannelOutput
    DeleteStreamInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream that you want to delete. </p>", "smithy.api#required" => {}}))
    DeleteStreamInput.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>Optional: The version of the stream that you want to delete. </p>\n         <p>Specify the version as a safeguard to ensure that your are deleting the correct\n            stream. To get the stream version, use the <code>DescribeStream</code> API.</p>\n         <p>If not specified, only the <code>CreationTime</code> is checked before deleting the\n            stream.</p>"}))
    DeleteStreamInput.type = Types::DeleteStreamInput
    DeleteStreamOutput.type = Types::DeleteStreamOutput
    DeletionConfig.add_member(:edge_retention_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeRetentionInHours, location_name: 'EdgeRetentionInHours', traits: {"smithy.api#documentation" => "<p>The number of hours that you want to retain the data in the stream on the Edge Agent. The default value of the retention\n            time is 720 hours, which translates to 30 days.</p>"}))
    DeletionConfig.add_member(:local_size_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSizeConfig, location_name: 'LocalSizeConfig', traits: {"smithy.api#documentation" => "<p>The value of the local size required in order to delete the edge configuration.</p>"}))
    DeletionConfig.add_member(:delete_after_upload, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAfterUpload, location_name: 'DeleteAfterUpload', traits: {"smithy.api#documentation" => "<p>The <code>boolean</code> value used to indicate whether or not you want to mark the media for deletion, once it has been uploaded to \n            the Kinesis Video Stream cloud. The media files can be deleted if any of the deletion configuration values are \n            set to <code>true</code>, such as when the limit for the <code>EdgeRetentionInHours</code>, or the\n            <code>MaxLocalMediaSizeInMB</code>, has been reached. \n        </p>\n         <p>Since the default value is set to <code>true</code>, configure the uploader schedule such \n            that the media files are not being deleted before they are initially uploaded to the  Amazon Web Services cloud.</p>"}))
    DeletionConfig.type = Types::DeletionConfig
    DescribeEdgeConfigurationInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream whose edge configuration you want to update. Specify either the <code>StreamName</code> or \n            the <code>StreamARN</code>.\n        </p>"}))
    DescribeEdgeConfigurationInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream. Specify either the <code>StreamName</code>or the <code>StreamARN</code>.</p>"}))
    DescribeEdgeConfigurationInput.type = Types::DescribeEdgeConfigurationInput
    DescribeEdgeConfigurationOutput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream from which the edge configuration was updated.</p>"}))
    DescribeEdgeConfigurationOutput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream.</p>"}))
    DescribeEdgeConfigurationOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which a stream’s edge configuration was first created.</p>"}))
    DescribeEdgeConfigurationOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which a stream’s edge configuration was last updated.</p>"}))
    DescribeEdgeConfigurationOutput.add_member(:sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStatus, location_name: 'SyncStatus', traits: {"smithy.api#documentation" => "<p>The latest status of the edge configuration update.</p>"}))
    DescribeEdgeConfigurationOutput.add_member(:failed_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: 'FailedStatusDetails', traits: {"smithy.api#documentation" => "<p>A description of the generated failure status.</p>"}))
    DescribeEdgeConfigurationOutput.add_member(:edge_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeConfig, location_name: 'EdgeConfig', traits: {"smithy.api#documentation" => "<p>A description of the stream's edge configuration that will be used to sync \n            with the Edge Agent IoT Greengrass component. The Edge Agent component will run\n            on an IoT Hub Device setup at your premise.</p>"}))
    DescribeEdgeConfigurationOutput.add_member(:edge_agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeAgentStatus, location_name: 'EdgeAgentStatus', traits: {"smithy.api#documentation" => "<p>An object that contains the latest status details for an edge agent's recorder and uploader jobs. Use this information to determine the current health of an edge agent.</p>"}))
    DescribeEdgeConfigurationOutput.type = Types::DescribeEdgeConfigurationOutput
    DescribeImageGenerationConfigurationInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.  </p>"}))
    DescribeImageGenerationConfigurationInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis video stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>"}))
    DescribeImageGenerationConfigurationInput.type = Types::DescribeImageGenerationConfigurationInput
    DescribeImageGenerationConfigurationOutput.add_member(:image_generation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageGenerationConfiguration, location_name: 'ImageGenerationConfiguration', traits: {"smithy.api#documentation" => "<p>The structure that contains the information required for the Kinesis video stream (KVS) images delivery. If this structure is null, the configuration will be deleted from the stream.</p>"}))
    DescribeImageGenerationConfigurationOutput.type = Types::DescribeImageGenerationConfigurationOutput
    DescribeMappedResourceConfigurationInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream.</p>"}))
    DescribeMappedResourceConfigurationInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream.</p>"}))
    DescribeMappedResourceConfigurationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MappedResourceConfigurationListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>"}))
    DescribeMappedResourceConfigurationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to provide in your next request, to get another batch of results.</p>"}))
    DescribeMappedResourceConfigurationInput.type = Types::DescribeMappedResourceConfigurationInput
    DescribeMappedResourceConfigurationOutput.add_member(:mapped_resource_configuration_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MappedResourceConfigurationList, location_name: 'MappedResourceConfigurationList', traits: {"smithy.api#documentation" => "<p>A structure that encapsulates, or contains, the media storage configuration properties.</p>"}))
    DescribeMappedResourceConfigurationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that was used in the <code>NextToken</code>request to fetch the next set of results. </p>"}))
    DescribeMappedResourceConfigurationOutput.type = Types::DescribeMappedResourceConfigurationOutput
    DescribeMediaStorageConfigurationInput.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ChannelName', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>"}))
    DescribeMediaStorageConfigurationInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the channel.</p>"}))
    DescribeMediaStorageConfigurationInput.type = Types::DescribeMediaStorageConfigurationInput
    DescribeMediaStorageConfigurationOutput.add_member(:media_storage_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStorageConfiguration, location_name: 'MediaStorageConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that encapsulates, or contains, the media storage configuration properties.</p>"}))
    DescribeMediaStorageConfigurationOutput.type = Types::DescribeMediaStorageConfigurationOutput
    DescribeNotificationConfigurationInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream from which to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>"}))
    DescribeNotificationConfigurationInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the StreamARN.</p>"}))
    DescribeNotificationConfigurationInput.type = Types::DescribeNotificationConfigurationInput
    DescribeNotificationConfigurationOutput.add_member(:notification_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'NotificationConfiguration', traits: {"smithy.api#documentation" => "<p>The structure that contains the information required for notifications. If the structure is null, the configuration will be deleted from the stream.</p>"}))
    DescribeNotificationConfigurationOutput.type = Types::DescribeNotificationConfigurationOutput
    DescribeSignalingChannelInput.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ChannelName', traits: {"smithy.api#documentation" => "<p>The name of the signaling channel that you want to describe.</p>"}))
    DescribeSignalingChannelInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#documentation" => "<p>The ARN of the signaling channel that you want to describe.</p>"}))
    DescribeSignalingChannelInput.type = Types::DescribeSignalingChannelInput
    DescribeSignalingChannelOutput.add_member(:channel_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelInfo, location_name: 'ChannelInfo', traits: {"smithy.api#documentation" => "<p>A structure that encapsulates the specified signaling channel's metadata and\n            properties.</p>"}))
    DescribeSignalingChannelOutput.type = Types::DescribeSignalingChannelOutput
    DescribeStreamInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream.</p>"}))
    DescribeStreamInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream.</p>"}))
    DescribeStreamInput.type = Types::DescribeStreamInput
    DescribeStreamOutput.add_member(:stream_info, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamInfo, location_name: 'StreamInfo', traits: {"smithy.api#documentation" => "<p>An object that describes the stream.</p>"}))
    DescribeStreamOutput.type = Types::DescribeStreamOutput
    DeviceStreamLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeviceStreamLimitExceededException.type = Types::DeviceStreamLimitExceededException
    EdgeAgentStatus.add_member(:last_recorder_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LastRecorderStatus, location_name: 'LastRecorderStatus', traits: {"smithy.api#documentation" => "<p>The latest status of a stream’s edge recording job.</p>"}))
    EdgeAgentStatus.add_member(:last_uploader_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUploaderStatus, location_name: 'LastUploaderStatus', traits: {"smithy.api#documentation" => "<p>The latest status of a stream’s edge to cloud uploader job.</p>"}))
    EdgeAgentStatus.type = Types::EdgeAgentStatus
    EdgeConfig.add_member(:hub_device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HubDeviceArn, location_name: 'HubDeviceArn', traits: {"smithy.api#documentation" => "<p>The \"<b>Internet of Things (IoT) Thing</b>\" Arn of the stream.</p>", "smithy.api#required" => {}}))
    EdgeConfig.add_member(:recorder_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RecorderConfig, location_name: 'RecorderConfig', traits: {"smithy.api#documentation" => "<p>The recorder configuration consists of the local <code>MediaSourceConfig</code> details, that are used as \n            credentials to access the local media files streamed on the camera. </p>", "smithy.api#required" => {}}))
    EdgeConfig.add_member(:uploader_config, Smithy::Schema::Shapes::ShapeRef.new(shape: UploaderConfig, location_name: 'UploaderConfig', traits: {"smithy.api#documentation" => "<p>The uploader configuration contains the <code>ScheduleExpression</code> details that are used to\n            schedule upload jobs for the recorded media files from the Edge Agent to a Kinesis Video Stream.</p>"}))
    EdgeConfig.add_member(:deletion_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionConfig, location_name: 'DeletionConfig', traits: {"smithy.api#documentation" => "<p>The deletion configuration is made up of the retention time (<code>EdgeRetentionInHours</code>) and local size configuration\n        (<code>LocalSizeConfig</code>) details that are used to make the deletion.</p>"}))
    EdgeConfig.type = Types::EdgeConfig
    Format.add_member(:jpeg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JPEG', traits: {"smithy.api#enumValue" => "JPEG"}))
    Format.add_member(:png, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PNG', traits: {"smithy.api#enumValue" => "PNG"}))
    FormatConfig.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfigKey)
    FormatConfig.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfigValue)
    FormatConfigKey.add_member(:jpeg_quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JPEGQuality', traits: {"smithy.api#enumValue" => "JPEGQuality"}))
    GetDataEndpointInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream that you want to get the endpoint for. You must specify\n            either this parameter or a <code>StreamARN</code> in the request.</p>"}))
    GetDataEndpointInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for.\n            You must specify either this parameter or a <code>StreamName</code> in the request.\n        </p>"}))
    GetDataEndpointInput.add_member(:api_name, Smithy::Schema::Shapes::ShapeRef.new(shape: APIName, location_name: 'APIName', traits: {"smithy.api#documentation" => "<p>The name of the API action for which to get an endpoint.</p>", "smithy.api#required" => {}}))
    GetDataEndpointInput.type = Types::GetDataEndpointInput
    GetDataEndpointOutput.add_member(:data_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: DataEndpoint, location_name: 'DataEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint value. To read data from the stream or to write data to it, specify\n            this endpoint in your application.</p>"}))
    GetDataEndpointOutput.type = Types::GetDataEndpointOutput
    GetSignalingChannelEndpointInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signalling channel for which you want to get an\n            endpoint.</p>", "smithy.api#required" => {}}))
    GetSignalingChannelEndpointInput.add_member(:single_master_channel_endpoint_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMasterChannelEndpointConfiguration, location_name: 'SingleMasterChannelEndpointConfiguration', traits: {"smithy.api#documentation" => "<p>A structure containing the endpoint configuration for the <code>SINGLE_MASTER</code>\n            channel type.</p>"}))
    GetSignalingChannelEndpointInput.type = Types::GetSignalingChannelEndpointInput
    GetSignalingChannelEndpointOutput.add_member(:resource_endpoint_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointList, location_name: 'ResourceEndpointList', traits: {"smithy.api#documentation" => "<p>A list of endpoints for the specified signaling channel.</p>"}))
    GetSignalingChannelEndpointOutput.type = Types::GetSignalingChannelEndpointOutput
    ImageGenerationConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates whether the <code>ContinuousImageGenerationConfigurations</code> API is enabled or disabled.</p>", "smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:image_selector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSelectorType, location_name: 'ImageSelectorType', traits: {"smithy.api#documentation" => "<p>The origin of the Server or Producer timestamps to use to generate the images.</p>", "smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:destination_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageGenerationDestinationConfig, location_name: 'DestinationConfig', traits: {"smithy.api#documentation" => "<p>The structure that contains the information required to deliver images to a customer.</p>", "smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:sampling_interval, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingInterval, location_name: 'SamplingInterval', traits: {"smithy.api#documentation" => "<p>The time interval in milliseconds (ms) at which the images need to be generated from the stream. The minimum value that can be provided is 200 ms. If the timestamp range is less than the sampling interval, the \n            Image from the <code>StartTimestamp</code> will be returned if available. </p>", "smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The accepted image format.</p>", "smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:format_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfig, location_name: 'FormatConfig', traits: {"smithy.api#documentation" => "<p>The list of a key-value pair structure that contains extra parameters that can be applied when the image is generated.\n            The <code>FormatConfig</code> key is the <code>JPEGQuality</code>, which indicates the JPEG quality key to be used to generate the image. \n            The <code>FormatConfig</code> value accepts ints from 1 to 100. If the value is 1, the image will be generated with less quality and the best compression. \n            If the value is 100, the image will be generated with the best quality and less compression. If no value is provided, the default value of the <code>JPEGQuality</code>\n            key will be set to 80.</p>"}))
    ImageGenerationConfiguration.add_member(:width_pixels, Smithy::Schema::Shapes::ShapeRef.new(shape: WidthPixels, location_name: 'WidthPixels', traits: {"smithy.api#documentation" => "<p>The width of the output image that is used in conjunction with the <code>HeightPixels</code> parameter. When both <code>WidthPixels</code> and \n            <code>HeightPixels</code> parameters are provided, the image will be stretched to fit the specified aspect ratio. If only the <code>WidthPixels</code> parameter is \n            provided, its original aspect ratio will be used to calculate the <code>HeightPixels</code> ratio. If neither parameter is provided, the original image size will be returned.</p>"}))
    ImageGenerationConfiguration.add_member(:height_pixels, Smithy::Schema::Shapes::ShapeRef.new(shape: HeightPixels, location_name: 'HeightPixels', traits: {"smithy.api#documentation" => "<p>The height of the output image that is used in conjunction with the <code>WidthPixels</code> parameter. When both\n            <code>HeightPixels</code> and <code>WidthPixels</code> parameters are provided, the image will be stretched to fit the specified aspect ratio. \n            If only the <code>HeightPixels</code> parameter is provided, its original aspect ratio will be used to calculate the <code>WidthPixels</code> ratio.\n            If neither parameter is provided, the original image size will be returned.</p>"}))
    ImageGenerationConfiguration.type = Types::ImageGenerationConfiguration
    ImageGenerationDestinationConfig.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationUri, location_name: 'Uri', traits: {"smithy.api#documentation" => "<p>The Uniform Resource Identifier (URI) that identifies where the images will be delivered.</p>", "smithy.api#required" => {}}))
    ImageGenerationDestinationConfig.add_member(:destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationRegion, location_name: 'DestinationRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region of the S3 bucket where images will be delivered. This <code>DestinationRegion</code> must match the Region where the stream is located.</p>", "smithy.api#required" => {}}))
    ImageGenerationDestinationConfig.type = Types::ImageGenerationDestinationConfig
    ImageSelectorType.add_member(:server_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_TIMESTAMP', traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    ImageSelectorType.add_member(:producer_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCER_TIMESTAMP', traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    InvalidArgumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidDeviceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidDeviceException.type = Types::InvalidDeviceException
    InvalidResourceFormatException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidResourceFormatException.type = Types::InvalidResourceFormatException
    LastRecorderStatus.add_member(:job_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: 'JobStatusDetails', traits: {"smithy.api#documentation" => "<p>A description of a recorder job’s latest status.</p>"}))
    LastRecorderStatus.add_member(:last_collected_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastCollectedTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which the recorder job was last executed and media stored to local disk.</p>"}))
    LastRecorderStatus.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which the recorder status was last updated.</p>"}))
    LastRecorderStatus.add_member(:recorder_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RecorderStatus, location_name: 'RecorderStatus', traits: {"smithy.api#documentation" => "<p>The status of the latest recorder job.</p>"}))
    LastRecorderStatus.type = Types::LastRecorderStatus
    LastUploaderStatus.add_member(:job_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: 'JobStatusDetails', traits: {"smithy.api#documentation" => "<p>A description of an uploader job’s latest status.</p>"}))
    LastUploaderStatus.add_member(:last_collected_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastCollectedTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which the uploader job was last executed and media collected to the cloud.</p>"}))
    LastUploaderStatus.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which the uploader status was last updated.</p>"}))
    LastUploaderStatus.add_member(:uploader_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UploaderStatus, location_name: 'UploaderStatus', traits: {"smithy.api#documentation" => "<p>The status of the latest uploader job.</p>"}))
    LastUploaderStatus.type = Types::LastUploaderStatus
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream.</p>"}))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream.</p>"}))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the stream first created the edge config.</p>"}))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the stream last updated the edge config.</p>"}))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStatus, location_name: 'SyncStatus', traits: {"smithy.api#documentation" => "<p>The current sync status of the stream's edge configuration.</p>"}))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:failed_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: 'FailedStatusDetails', traits: {"smithy.api#documentation" => "<p>A description of the generated failure status.</p>"}))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:edge_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeConfig, location_name: 'EdgeConfig'))
    ListEdgeAgentConfigurationsEdgeConfig.type = Types::ListEdgeAgentConfigurationsEdgeConfig
    ListEdgeAgentConfigurationsEdgeConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsEdgeConfig)
    ListEdgeAgentConfigurationsInput.add_member(:hub_device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HubDeviceArn, location_name: 'HubDeviceArn', traits: {"smithy.api#documentation" => "<p>The \"Internet of Things (IoT) Thing\" Arn of the edge agent.</p>", "smithy.api#required" => {}}))
    ListEdgeAgentConfigurationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsInputLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of edge configurations to return in the response. The default is 5.</p>"}))
    ListEdgeAgentConfigurationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you specify this parameter, when the result of a <code>ListEdgeAgentConfigurations</code> operation is truncated, the call returns the <code>NextToken</code> in the response. To get another batch of edge configurations, provide this token in your next request.\n        </p>"}))
    ListEdgeAgentConfigurationsInput.type = Types::ListEdgeAgentConfigurationsInput
    ListEdgeAgentConfigurationsOutput.add_member(:edge_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsEdgeConfigList, location_name: 'EdgeConfigs', traits: {"smithy.api#documentation" => "<p>A description of a single stream's edge configuration.</p>"}))
    ListEdgeAgentConfigurationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, the call returns this element with a given token. To get the next batch of edge configurations, use this token in your next request.</p>"}))
    ListEdgeAgentConfigurationsOutput.type = Types::ListEdgeAgentConfigurationsOutput
    ListOfProtocols.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelProtocol)
    ListSignalingChannelsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of channels to return in the response. The default is 500.</p>"}))
    ListSignalingChannelsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you specify this parameter, when the result of a <code>ListSignalingChannels</code>\n            operation is truncated, the call returns the <code>NextToken</code> in the response. To\n            get another batch of channels, provide this token in your next request.</p>"}))
    ListSignalingChannelsInput.add_member(:channel_name_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNameCondition, location_name: 'ChannelNameCondition', traits: {"smithy.api#documentation" => "<p>Optional: Returns only the channels that satisfy a specific condition.</p>"}))
    ListSignalingChannelsInput.type = Types::ListSignalingChannelsInput
    ListSignalingChannelsOutput.add_member(:channel_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelInfoList, location_name: 'ChannelInfoList', traits: {"smithy.api#documentation" => "<p>An array of <code>ChannelInfo</code> objects.</p>"}))
    ListSignalingChannelsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, the call returns this element with a token. To get the\n            next batch of streams, use this token in your next request.</p>"}))
    ListSignalingChannelsOutput.type = Types::ListSignalingChannelsOutput
    ListStreamsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of streams to return in the response. The default is\n            10,000.</p>"}))
    ListStreamsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you specify this parameter, when the result of a <code>ListStreams</code>\n            operation is truncated, the call returns the <code>NextToken</code> in the response. To\n            get another batch of streams, provide this token in your next request.</p>"}))
    ListStreamsInput.add_member(:stream_name_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamNameCondition, location_name: 'StreamNameCondition', traits: {"smithy.api#documentation" => "<p>Optional: Returns only streams that satisfy a specific condition. Currently, you\n            can specify only the prefix of a stream name as a condition. </p>"}))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:stream_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamInfoList, location_name: 'StreamInfoList', traits: {"smithy.api#documentation" => "<p>An array of <code>StreamInfo</code> objects.</p>"}))
    ListStreamsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, the call returns this element with a token. To get\n            the next batch of streams, use this token in your next request. </p>"}))
    ListStreamsOutput.type = Types::ListStreamsOutput
    ListTagsForResourceInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you specify this parameter and the result of a <code>ListTagsForResource</code>\n            call is truncated, the response includes a token that you can use in the next request to\n            fetch the next batch of tags. </p>"}))
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signaling channel for which you want to list\n            tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you specify this parameter and the result of a <code>ListTagsForResource</code>\n            call is truncated, the response includes a token that you can use in the next request to\n            fetch the next set of tags. </p>"}))
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tag keys and values associated with the specified signaling channel.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForStreamInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you specify this parameter and the result of a <code>ListTagsForStream</code>\n            call is truncated, the response includes a token that you can use in the next request to\n            fetch the next batch of tags.</p>"}))
    ListTagsForStreamInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream that you want to list tags\n            for.</p>"}))
    ListTagsForStreamInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream that you want to list tags for.</p>"}))
    ListTagsForStreamInput.type = Types::ListTagsForStreamInput
    ListTagsForStreamOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you specify this parameter and the result of a <code>ListTags</code> call is\n            truncated, the response includes a token that you can use in the next request to fetch\n            the next set of tags.</p>"}))
    ListTagsForStreamOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tag keys and values associated with the specified stream.</p>"}))
    ListTagsForStreamOutput.type = Types::ListTagsForStreamOutput
    LocalSizeConfig.add_member(:max_local_media_size_in_mb, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLocalMediaSizeInMB, location_name: 'MaxLocalMediaSizeInMB', traits: {"smithy.api#documentation" => "<p>The overall maximum size of the media that you want to store for a stream on the Edge Agent. </p>"}))
    LocalSizeConfig.add_member(:strategy_on_full_size, Smithy::Schema::Shapes::ShapeRef.new(shape: StrategyOnFullSize, location_name: 'StrategyOnFullSize', traits: {"smithy.api#documentation" => "<p>The strategy to perform when a stream’s <code>MaxLocalMediaSizeInMB</code> limit is reached.</p>"}))
    LocalSizeConfig.type = Types::LocalSizeConfig
    MappedResourceConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MappedResourceConfigurationListItem)
    MappedResourceConfigurationListItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the associated resource for the kinesis video stream.</p>"}))
    MappedResourceConfigurationListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis Video Stream resource, associated with the stream.</p>"}))
    MappedResourceConfigurationListItem.type = Types::MappedResourceConfigurationListItem
    MediaSourceConfig.add_member(:media_uri_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaUriSecretArn, location_name: 'MediaUriSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Secrets Manager ARN for the username and password of the camera, or a local media file location.</p>", "smithy.api#required" => {}}))
    MediaSourceConfig.add_member(:media_uri_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaUriType, location_name: 'MediaUriType', traits: {"smithy.api#documentation" => "<p>The Uniform Resource Identifier (URI) type. The <code>FILE_URI</code> value can be used to stream \n            local media files.</p>\n         <note>\n            <p>Preview only supports the <code>RTSP_URI</code> media source URI format .</p>\n         </note>", "smithy.api#required" => {}}))
    MediaSourceConfig.type = Types::MediaSourceConfig
    MediaStorageConfiguration.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream. </p>"}))
    MediaStorageConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStorageConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the media storage configuration.</p>", "smithy.api#required" => {}}))
    MediaStorageConfiguration.type = Types::MediaStorageConfiguration
    MediaStorageConfigurationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    MediaStorageConfigurationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    MediaUriType.add_member(:rtsp_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RTSP_URI', traits: {"smithy.api#enumValue" => "RTSP_URI"}))
    MediaUriType.add_member(:file_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_URI', traits: {"smithy.api#enumValue" => "FILE_URI"}))
    NoDataRetentionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NoDataRetentionException.type = Types::NoDataRetentionException
    NotAuthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotAuthorizedException.type = Types::NotAuthorizedException
    NotificationConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates if a notification configuration is enabled or disabled.</p>", "smithy.api#required" => {}}))
    NotificationConfiguration.add_member(:destination_config, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationConfig, location_name: 'DestinationConfig', traits: {"smithy.api#documentation" => "<p>The destination information required to deliver a notification to a customer.</p>", "smithy.api#required" => {}}))
    NotificationConfiguration.type = Types::NotificationConfiguration
    NotificationDestinationConfig.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationUri, location_name: 'Uri', traits: {"smithy.api#documentation" => "<p>The Uniform Resource Identifier (URI) that identifies where the images will be delivered.</p>", "smithy.api#required" => {}}))
    NotificationDestinationConfig.type = Types::NotificationDestinationConfig
    RecorderConfig.add_member(:media_source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaSourceConfig, location_name: 'MediaSourceConfig', traits: {"smithy.api#documentation" => "<p>The configuration details that consist of the credentials required \n            (<code>MediaUriSecretArn</code> and <code>MediaUriType</code>) to access the media files \n            streamed to the camera.\n            </p>", "smithy.api#required" => {}}))
    RecorderConfig.add_member(:schedule_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfig, location_name: 'ScheduleConfig', traits: {"smithy.api#documentation" => "<p>The configuration that consists of the <code>ScheduleExpression</code> and the \n            <code>DurationInMinutes</code> details that specify the scheduling to record from a camera, or\n        local media file, onto the Edge Agent. If the <code>ScheduleExpression</code> attribute is not provided,\n        then the Edge Agent will always be set to recording mode.</p>"}))
    RecorderConfig.type = Types::RecorderConfig
    RecorderStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    RecorderStatus.add_member(:user_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_ERROR', traits: {"smithy.api#enumValue" => "USER_ERROR"}))
    RecorderStatus.add_member(:system_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ERROR', traits: {"smithy.api#enumValue" => "SYSTEM_ERROR"}))
    ResourceEndpointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointListItem)
    ResourceEndpointListItem.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelProtocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol of the signaling channel returned by the\n                <code>GetSignalingChannelEndpoint</code> API.</p>"}))
    ResourceEndpointListItem.add_member(:resource_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpoint, location_name: 'ResourceEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint of the signaling channel returned by the\n                <code>GetSignalingChannelEndpoint</code> API.</p>"}))
    ResourceEndpointListItem.type = Types::ResourceEndpointListItem
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    ResourceTags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ScheduleConfig.add_member(:schedule_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#documentation" => "<p>The Quartz cron expression that takes care of scheduling jobs to record from the\n            camera, or local media file, onto the Edge Agent. If the <code>ScheduleExpression</code> is not provided for the <code>RecorderConfig</code>,\n            then the Edge Agent will always be set to recording mode.</p>\n         <p>For more information about Quartz, refer to the \n            <a href=\"http://www.quartz-scheduler.org/documentation/quartz-2.3.0/tutorials/crontrigger.html\">\n               <i>Cron Trigger Tutorial</i>\n            </a> page to understand the valid expressions and its use.</p>", "smithy.api#required" => {}}))
    ScheduleConfig.add_member(:duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'DurationInSeconds', traits: {"smithy.api#documentation" => "<p>The total duration to record the media. If the <code>ScheduleExpression</code> attribute is provided, then the\n        <code>DurationInSeconds</code> attribute should also be specified.</p>", "smithy.api#required" => {}}))
    ScheduleConfig.type = Types::ScheduleConfig
    SingleMasterChannelEndpointConfiguration.add_member(:protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfProtocols, location_name: 'Protocols', traits: {"smithy.api#documentation" => "<p>This property is used to determine the nature of communication over this\n                <code>SINGLE_MASTER</code> signaling channel. If <code>WSS</code> is specified, this\n            API returns a websocket endpoint. If <code>HTTPS</code> is specified, this API returns\n            an <code>HTTPS</code> endpoint.</p>"}))
    SingleMasterChannelEndpointConfiguration.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRole, location_name: 'Role', traits: {"smithy.api#documentation" => "<p>This property is used to determine messaging permissions in this\n                <code>SINGLE_MASTER</code> signaling channel. If <code>MASTER</code> is specified,\n            this API returns an endpoint that a client can use to receive offers from and send\n            answers to any of the viewers on this signaling channel. If <code>VIEWER</code> is\n            specified, this API returns an endpoint that a client can use only to send offers to\n            another <code>MASTER</code> client on this signaling channel. </p>"}))
    SingleMasterChannelEndpointConfiguration.type = Types::SingleMasterChannelEndpointConfiguration
    SingleMasterConfiguration.add_member(:message_ttl_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTtlSeconds, location_name: 'MessageTtlSeconds', traits: {"smithy.api#documentation" => "<p>The period of time a signaling channel retains undelivered messages before they are\n            discarded.</p>"}))
    SingleMasterConfiguration.type = Types::SingleMasterConfiguration
    StartEdgeConfigurationUpdateInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream whose edge configuration you want to update. Specify either the <code>StreamName</code>\n            or the <code>StreamARN</code>.</p>"}))
    StartEdgeConfigurationUpdateInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the stream. Specify either the \n            <code>StreamName</code> or the <code>StreamARN</code>.</p>"}))
    StartEdgeConfigurationUpdateInput.add_member(:edge_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeConfig, location_name: 'EdgeConfig', traits: {"smithy.api#documentation" => "<p>The edge configuration details required to invoke the update process.</p>", "smithy.api#required" => {}}))
    StartEdgeConfigurationUpdateInput.type = Types::StartEdgeConfigurationUpdateInput
    StartEdgeConfigurationUpdateOutput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream from which the edge configuration was updated.</p>"}))
    StartEdgeConfigurationUpdateOutput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream.</p>"}))
    StartEdgeConfigurationUpdateOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which a stream’s edge configuration was first created.</p>"}))
    StartEdgeConfigurationUpdateOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which a stream’s edge configuration was last updated.</p>"}))
    StartEdgeConfigurationUpdateOutput.add_member(:sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStatus, location_name: 'SyncStatus', traits: {"smithy.api#documentation" => "<p> The current sync status of the stream's edge configuration. When you invoke this API, the sync\n            status will be set to the <code>SYNCING</code> state. Use the <code>DescribeEdgeConfiguration</code> API\n            to get the latest status of the edge configuration.</p>"}))
    StartEdgeConfigurationUpdateOutput.add_member(:failed_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: 'FailedStatusDetails', traits: {"smithy.api#documentation" => "<p>A description of the generated failure status.</p>"}))
    StartEdgeConfigurationUpdateOutput.add_member(:edge_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeConfig, location_name: 'EdgeConfig', traits: {"smithy.api#documentation" => "<p>A description of the stream's edge configuration that will be used to sync \n            with the Edge Agent IoT Greengrass component. The Edge Agent component will run\n            on an IoT Hub Device setup at your premise.</p>"}))
    StartEdgeConfigurationUpdateOutput.type = Types::StartEdgeConfigurationUpdateOutput
    Status.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Status.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    Status.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    StrategyOnFullSize.add_member(:delete_oldest_media, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_OLDEST_MEDIA', traits: {"smithy.api#enumValue" => "DELETE_OLDEST_MEDIA"}))
    StrategyOnFullSize.add_member(:deny_new_media, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY_NEW_MEDIA', traits: {"smithy.api#enumValue" => "DENY_NEW_MEDIA"}))
    StreamEdgeConfigurationNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    StreamEdgeConfigurationNotFoundException.type = Types::StreamEdgeConfigurationNotFoundException
    StreamInfo.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName', traits: {"smithy.api#documentation" => "<p>The name of the device that is associated with the stream.</p>"}))
    StreamInfo.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream.</p>"}))
    StreamInfo.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream.</p>"}))
    StreamInfo.add_member(:media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'MediaType', traits: {"smithy.api#documentation" => "<p>The <code>MediaType</code> of the stream. </p>"}))
    StreamInfo.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key that Kinesis Video Streams\n            uses to encrypt data on the stream.</p>"}))
    StreamInfo.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the stream.</p>"}))
    StreamInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the stream.</p>"}))
    StreamInfo.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>A time stamp that indicates when the stream was created.</p>"}))
    StreamInfo.add_member(:data_retention_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: 'DataRetentionInHours', traits: {"smithy.api#documentation" => "<p>How long the stream retains data, in hours.</p>"}))
    StreamInfo.type = Types::StreamInfo
    StreamInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamInfo)
    StreamNameCondition.add_member(:comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator', traits: {"smithy.api#documentation" => "<p>A comparison operator. Currently, you can specify only the <code>BEGINS_WITH</code>\n            operator, which finds streams whose names start with a given prefix.</p>"}))
    StreamNameCondition.add_member(:comparison_value, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'ComparisonValue', traits: {"smithy.api#documentation" => "<p>A value to compare.</p>"}))
    StreamNameCondition.type = Types::StreamNameCondition
    SyncStatus.add_member(:syncing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNCING', traits: {"smithy.api#enumValue" => "SYNCING"}))
    SyncStatus.add_member(:acknowledged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACKNOWLEDGED', traits: {"smithy.api#enumValue" => "ACKNOWLEDGED"}))
    SyncStatus.add_member(:in_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_SYNC', traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    SyncStatus.add_member(:sync_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNC_FAILED', traits: {"smithy.api#enumValue" => "SYNC_FAILED"}))
    SyncStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    SyncStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    SyncStatus.add_member(:deleting_acknowledged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING_ACKNOWLEDGED', traits: {"smithy.api#enumValue" => "DELETING_ACKNOWLEDGED"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the tag that is associated with the specified signaling channel.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag that is associated with the specified signaling channel.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagOnCreateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signaling channel to which you want to add\n            tags.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to associate with the specified signaling channel. Each tag is a\n            key-value pair.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagStreamInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags\n            to.</p>"}))
    TagStreamInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream that you want to add the tag or tags to.</p>"}))
    TagStreamInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to associate with the specified stream. Each tag is a key-value pair\n            (the value is optional).</p>", "smithy.api#required" => {}}))
    TagStreamInput.type = Types::TagStreamInput
    TagStreamOutput.type = Types::TagStreamOutput
    TagsPerResourceExceededLimitException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TagsPerResourceExceededLimitException.type = Types::TagsPerResourceExceededLimitException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signaling channel from which you want to remove\n            tags.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_key_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeyList', traits: {"smithy.api#documentation" => "<p>A list of the keys of the tags that you want to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UntagStreamInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream that you want to remove tags\n            from.</p>"}))
    UntagStreamInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream that you want to remove tags from.</p>"}))
    UntagStreamInput.add_member(:tag_key_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeyList', traits: {"smithy.api#documentation" => "<p>A list of the keys of the tags that you want to remove.</p>", "smithy.api#required" => {}}))
    UntagStreamInput.type = Types::UntagStreamInput
    UntagStreamOutput.type = Types::UntagStreamOutput
    UpdateDataRetentionInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream whose retention period you want to change.</p>"}))
    UpdateDataRetentionInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream whose retention period you want to\n            change.</p>"}))
    UpdateDataRetentionInput.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The version of the stream whose retention period you want to change. To get the\n            version, call either the <code>DescribeStream</code> or the <code>ListStreams</code>\n            API.</p>", "smithy.api#required" => {}}))
    UpdateDataRetentionInput.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataRetentionOperation, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>Indicates whether you want to increase or decrease the retention period.</p>", "smithy.api#required" => {}}))
    UpdateDataRetentionInput.add_member(:data_retention_change_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionChangeInHours, location_name: 'DataRetentionChangeInHours', traits: {"smithy.api#documentation" => "<p>The number of hours to adjust the current retention by. The value you specify is added to or subtracted from the current value, depending on the <code>operation</code>.</p>\n         <p>The minimum value for data retention is 0 and the maximum value is 87600 (ten years).</p>", "smithy.api#required" => {}}))
    UpdateDataRetentionInput.type = Types::UpdateDataRetentionInput
    UpdateDataRetentionOperation.add_member(:increase_data_retention, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCREASE_DATA_RETENTION', traits: {"smithy.api#enumValue" => "INCREASE_DATA_RETENTION"}))
    UpdateDataRetentionOperation.add_member(:decrease_data_retention, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECREASE_DATA_RETENTION', traits: {"smithy.api#enumValue" => "DECREASE_DATA_RETENTION"}))
    UpdateDataRetentionOutput.type = Types::UpdateDataRetentionOutput
    UpdateImageGenerationConfigurationInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream from which to update the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>"}))
    UpdateImageGenerationConfigurationInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the image generation configuration. You must specify either the <code>StreamName</code> \n            or the <code>StreamARN</code>.</p>"}))
    UpdateImageGenerationConfigurationInput.add_member(:image_generation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageGenerationConfiguration, location_name: 'ImageGenerationConfiguration', traits: {"smithy.api#documentation" => "<p>The structure that contains the information required for the KVS images delivery. If the structure is null, the configuration will be deleted from the stream.</p>"}))
    UpdateImageGenerationConfigurationInput.type = Types::UpdateImageGenerationConfigurationInput
    UpdateImageGenerationConfigurationOutput.type = Types::UpdateImageGenerationConfigurationOutput
    UpdateMediaStorageConfigurationInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the channel.</p>", "smithy.api#required" => {}}))
    UpdateMediaStorageConfigurationInput.add_member(:media_storage_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStorageConfiguration, location_name: 'MediaStorageConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that encapsulates, or contains, the media storage configuration properties.</p>", "smithy.api#required" => {}}))
    UpdateMediaStorageConfigurationInput.type = Types::UpdateMediaStorageConfigurationInput
    UpdateMediaStorageConfigurationOutput.type = Types::UpdateMediaStorageConfigurationOutput
    UpdateNotificationConfigurationInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream from which to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>"}))
    UpdateNotificationConfigurationInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>"}))
    UpdateNotificationConfigurationInput.add_member(:notification_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'NotificationConfiguration', traits: {"smithy.api#documentation" => "<p>The structure containing the information required for notifications. If the structure is null, the configuration will be deleted from the stream.</p>"}))
    UpdateNotificationConfigurationInput.type = Types::UpdateNotificationConfigurationInput
    UpdateNotificationConfigurationOutput.type = Types::UpdateNotificationConfigurationOutput
    UpdateSignalingChannelInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signaling channel that you want to\n            update.</p>", "smithy.api#required" => {}}))
    UpdateSignalingChannelInput.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the signaling channel that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateSignalingChannelInput.add_member(:single_master_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: 'SingleMasterConfiguration', traits: {"smithy.api#documentation" => "<p>The structure containing the configuration for the <code>SINGLE_MASTER</code> type of\n            the signaling channel that you want to update. </p>"}))
    UpdateSignalingChannelInput.type = Types::UpdateSignalingChannelInput
    UpdateSignalingChannelOutput.type = Types::UpdateSignalingChannelOutput
    UpdateStreamInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name of the stream whose metadata you want to update.</p>\n         <p>The stream name is an identifier for the stream, and must be unique for each\n            account and region.</p>"}))
    UpdateStreamInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The ARN of the stream whose metadata you want to update.</p>"}))
    UpdateStreamInput.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The version of the stream whose metadata you want to update.</p>", "smithy.api#required" => {}}))
    UpdateStreamInput.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName', traits: {"smithy.api#documentation" => "<p>The name of the device that is writing to the stream. </p>\n         <note>\n            <p> In the current implementation, Kinesis Video Streams does not use this name.\n            </p>\n         </note>"}))
    UpdateStreamInput.add_member(:media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'MediaType', traits: {"smithy.api#documentation" => "<p>The stream's media type. Use <code>MediaType</code> to specify the type of content\n            that the stream contains to the consumers of the stream. For more information about\n            media types, see <a href=\"http://www.iana.org/assignments/media-types/media-types.xhtml\">Media\n                Types</a>. If you choose to specify the <code>MediaType</code>, see <a href=\"https://tools.ietf.org/html/rfc6838#section-4.2\">Naming\n            Requirements</a>.</p>\n         <p>To play video on the console, you must specify the correct video type. For example,\n            if the video in the stream is H.264, specify <code>video/h264</code> as the\n                <code>MediaType</code>.</p>"}))
    UpdateStreamInput.type = Types::UpdateStreamInput
    UpdateStreamOutput.type = Types::UpdateStreamOutput
    UploaderConfig.add_member(:schedule_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfig, location_name: 'ScheduleConfig', traits: {"smithy.api#documentation" => "<p>The configuration that consists of the <code>ScheduleExpression</code> and the \n            <code>DurationInMinutes</code> details that specify the scheduling to record from a camera, or\n            local media file, onto the Edge Agent. If the <code>ScheduleConfig</code> is not provided in this <code>UploaderConfig</code>,\n            then the Edge Agent will upload at regular intervals (every 1 hour).</p>", "smithy.api#required" => {}}))
    UploaderConfig.type = Types::UploaderConfig
    UploaderStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    UploaderStatus.add_member(:user_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_ERROR', traits: {"smithy.api#enumValue" => "USER_ERROR"}))
    UploaderStatus.add_member(:system_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ERROR', traits: {"smithy.api#enumValue" => "SYSTEM_ERROR"}))
    VersionMismatchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    VersionMismatchException.type = Types::VersionMismatchException

    KinesisVideo20170930 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisvideo#KinesisVideo_20170930"
      service.name = "KinesisVideo20170930"
      service.version = "2017-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Video", "arnNamespace" => "kinesisvideo", "cloudFormationName" => "KinesisVideo", "cloudTrailEventSource" => "kinesisvideo.amazonaws.com", "docId" => "kinesisvideo-2017-09-30", "endpointPrefix" => "kinesisvideo"}, "aws.auth#sigv4" => {"name" => "kinesisvideo"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Kinesis Video Streams", "smithy.api#xmlNamespace" => {"uri" => "https://kinesisvideo.amazonaws.com/doc/2017-09-30/"}}
      service.add_operation(:create_signaling_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#CreateSignalingChannel"
        operation.name = "CreateSignalingChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSignalingChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSignalingChannelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountChannelLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createSignalingChannel", "code" => 200}}
      end)
      service.add_operation(:create_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#CreateStream"
        operation.name = "CreateStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStreamLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceStreamLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeviceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createStream", "code" => 200}}
      end)
      service.add_operation(:delete_edge_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DeleteEdgeConfiguration"
        operation.name = "DeleteEdgeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEdgeConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEdgeConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEdgeConfigurationNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteEdgeConfiguration", "code" => 200}}
      end)
      service.add_operation(:delete_signaling_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DeleteSignalingChannel"
        operation.name = "DeleteSignalingChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSignalingChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSignalingChannelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteSignalingChannel", "code" => 200}}
      end)
      service.add_operation(:delete_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DeleteStream"
        operation.name = "DeleteStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteStream", "code" => 200}}
      end)
      service.add_operation(:describe_edge_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeEdgeConfiguration"
        operation.name = "DescribeEdgeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEdgeConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEdgeConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEdgeConfigurationNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeEdgeConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_image_generation_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeImageGenerationConfiguration"
        operation.name = "DescribeImageGenerationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageGenerationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageGenerationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeImageGenerationConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_mapped_resource_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeMappedResourceConfiguration"
        operation.name = "DescribeMappedResourceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMappedResourceConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMappedResourceConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeMappedResourceConfiguration", "code" => 200}}
        operation[:paginator] = Paginators::DescribeMappedResourceConfiguration.new
      end)
      service.add_operation(:describe_media_storage_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeMediaStorageConfiguration"
        operation.name = "DescribeMediaStorageConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMediaStorageConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMediaStorageConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeMediaStorageConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_notification_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeNotificationConfiguration"
        operation.name = "DescribeNotificationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeNotificationConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_signaling_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeSignalingChannel"
        operation.name = "DescribeSignalingChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSignalingChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSignalingChannelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeSignalingChannel", "code" => 200}}
      end)
      service.add_operation(:describe_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeStream"
        operation.name = "DescribeStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeStream", "code" => 200}}
      end)
      service.add_operation(:get_data_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#GetDataEndpoint"
        operation.name = "GetDataEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataEndpointInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataEndpointOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getDataEndpoint", "code" => 200}}
      end)
      service.add_operation(:get_signaling_channel_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#GetSignalingChannelEndpoint"
        operation.name = "GetSignalingChannelEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSignalingChannelEndpointInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSignalingChannelEndpointOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getSignalingChannelEndpoint", "code" => 200}}
      end)
      service.add_operation(:list_edge_agent_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListEdgeAgentConfigurations"
        operation.name = "ListEdgeAgentConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listEdgeAgentConfigurations", "code" => 200}}
        operation[:paginator] = Paginators::ListEdgeAgentConfigurations.new
      end)
      service.add_operation(:list_signaling_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListSignalingChannels"
        operation.name = "ListSignalingChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSignalingChannelsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSignalingChannelsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listSignalingChannels", "code" => 200}}
        operation[:paginator] = Paginators::ListSignalingChannels.new
      end)
      service.add_operation(:list_streams, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListStreams"
        operation.name = "ListStreams"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listStreams", "code" => 200}}
        operation[:paginator] = Paginators::ListStreams.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListTagsForStream"
        operation.name = "ListTagsForStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listTagsForStream", "code" => 200}}
      end)
      service.add_operation(:start_edge_configuration_update, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#StartEdgeConfigurationUpdate"
        operation.name = "StartEdgeConfigurationUpdate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEdgeConfigurationUpdateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEdgeConfigurationUpdateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/startEdgeConfigurationUpdate", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}}
      end)
      service.add_operation(:tag_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#TagStream"
        operation.name = "TagStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tagStream", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource", "code" => 200}}
      end)
      service.add_operation(:untag_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UntagStream"
        operation.name = "UntagStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untagStream", "code" => 200}}
      end)
      service.add_operation(:update_data_retention, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateDataRetention"
        operation.name = "UpdateDataRetention"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataRetentionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataRetentionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateDataRetention", "code" => 200}}
      end)
      service.add_operation(:update_image_generation_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateImageGenerationConfiguration"
        operation.name = "UpdateImageGenerationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImageGenerationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImageGenerationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateImageGenerationConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_media_storage_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateMediaStorageConfiguration"
        operation.name = "UpdateMediaStorageConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaStorageConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaStorageConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateMediaStorageConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_notification_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateNotificationConfiguration"
        operation.name = "UpdateNotificationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateNotificationConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_signaling_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateSignalingChannel"
        operation.name = "UpdateSignalingChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSignalingChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSignalingChannelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateSignalingChannel", "code" => 200}}
      end)
      service.add_operation(:update_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateStream"
        operation.name = "UpdateStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateStream", "code" => 200}}
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
