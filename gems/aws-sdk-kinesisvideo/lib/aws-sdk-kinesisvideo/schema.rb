# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideo
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APIName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#APIName', name: 'APIName')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    AccountChannelLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#AccountChannelLimitExceededException', name: 'AccountChannelLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountStreamLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#AccountStreamLimitExceededException', name: 'AccountStreamLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ChannelInfo', name: 'ChannelInfo')
    ChannelInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#ChannelInfoList', name: 'ChannelInfoList')
    ChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ChannelName', name: 'ChannelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ChannelNameCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ChannelNameCondition', name: 'ChannelNameCondition')
    ChannelProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ChannelProtocol', name: 'ChannelProtocol')
    ChannelRole = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ChannelRole', name: 'ChannelRole')
    ChannelType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ChannelType', name: 'ChannelType')
    ClientLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ClientLimitExceededException', name: 'ClientLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ComparisonOperator', name: 'ComparisonOperator')
    ConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ConfigurationStatus', name: 'ConfigurationStatus')
    CreateSignalingChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#CreateSignalingChannelInput', name: 'CreateSignalingChannelInput')
    CreateSignalingChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#CreateSignalingChannelOutput', name: 'CreateSignalingChannelOutput')
    CreateStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#CreateStreamInput', name: 'CreateStreamInput')
    CreateStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#CreateStreamOutput', name: 'CreateStreamOutput')
    DataEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#DataEndpoint', name: 'DataEndpoint')
    DataRetentionChangeInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#DataRetentionChangeInHours', name: 'DataRetentionChangeInHours', traits: {"smithy.api#range" => {"min" => 1}})
    DataRetentionInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#DataRetentionInHours', name: 'DataRetentionInHours', traits: {"smithy.api#range" => {"min" => 0}})
    DeleteAfterUpload = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kinesisvideo#DeleteAfterUpload', name: 'DeleteAfterUpload')
    DeleteEdgeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteEdgeConfigurationInput', name: 'DeleteEdgeConfigurationInput')
    DeleteEdgeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteEdgeConfigurationOutput', name: 'DeleteEdgeConfigurationOutput')
    DeleteSignalingChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteSignalingChannelInput', name: 'DeleteSignalingChannelInput')
    DeleteSignalingChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteSignalingChannelOutput', name: 'DeleteSignalingChannelOutput')
    DeleteStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteStreamInput', name: 'DeleteStreamInput')
    DeleteStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeleteStreamOutput', name: 'DeleteStreamOutput')
    DeletionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeletionConfig', name: 'DeletionConfig')
    DescribeEdgeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeEdgeConfigurationInput', name: 'DescribeEdgeConfigurationInput')
    DescribeEdgeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeEdgeConfigurationOutput', name: 'DescribeEdgeConfigurationOutput')
    DescribeImageGenerationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeImageGenerationConfigurationInput', name: 'DescribeImageGenerationConfigurationInput')
    DescribeImageGenerationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeImageGenerationConfigurationOutput', name: 'DescribeImageGenerationConfigurationOutput')
    DescribeMappedResourceConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeMappedResourceConfigurationInput', name: 'DescribeMappedResourceConfigurationInput')
    DescribeMappedResourceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeMappedResourceConfigurationOutput', name: 'DescribeMappedResourceConfigurationOutput')
    DescribeMediaStorageConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeMediaStorageConfigurationInput', name: 'DescribeMediaStorageConfigurationInput')
    DescribeMediaStorageConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeMediaStorageConfigurationOutput', name: 'DescribeMediaStorageConfigurationOutput')
    DescribeNotificationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeNotificationConfigurationInput', name: 'DescribeNotificationConfigurationInput')
    DescribeNotificationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeNotificationConfigurationOutput', name: 'DescribeNotificationConfigurationOutput')
    DescribeSignalingChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeSignalingChannelInput', name: 'DescribeSignalingChannelInput')
    DescribeSignalingChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeSignalingChannelOutput', name: 'DescribeSignalingChannelOutput')
    DescribeStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeStreamInput', name: 'DescribeStreamInput')
    DescribeStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DescribeStreamOutput', name: 'DescribeStreamOutput')
    DestinationRegion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#DestinationRegion', name: 'DestinationRegion', traits: {"smithy.api#length" => {"min" => 9, "max" => 14}, "smithy.api#pattern" => "^[a-z]+(-[a-z]+)?-[a-z]+-[0-9]$"})
    DestinationUri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#DestinationUri', name: 'DestinationUri', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_0-9]+:(//)?([^/]+)/?([^*]*)$"})
    DeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#DeviceName', name: 'DeviceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    DeviceStreamLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#DeviceStreamLimitExceededException', name: 'DeviceStreamLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#DurationInSeconds', name: 'DurationInSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 3600}})
    EdgeAgentStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#EdgeAgentStatus', name: 'EdgeAgentStatus')
    EdgeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#EdgeConfig', name: 'EdgeConfig')
    EdgeRetentionInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#EdgeRetentionInHours', name: 'EdgeRetentionInHours', traits: {"smithy.api#range" => {"min" => 1, "max" => 720}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ErrorMessage', name: 'ErrorMessage')
    FailedStatusDetails = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#FailedStatusDetails', name: 'FailedStatusDetails')
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#Format', name: 'Format')
    FormatConfig = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kinesisvideo#FormatConfig', name: 'FormatConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FormatConfigKey = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#FormatConfigKey', name: 'FormatConfigKey')
    FormatConfigValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#FormatConfigValue', name: 'FormatConfigValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_0-9]+$"})
    GetDataEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#GetDataEndpointInput', name: 'GetDataEndpointInput')
    GetDataEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#GetDataEndpointOutput', name: 'GetDataEndpointOutput')
    GetSignalingChannelEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#GetSignalingChannelEndpointInput', name: 'GetSignalingChannelEndpointInput')
    GetSignalingChannelEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#GetSignalingChannelEndpointOutput', name: 'GetSignalingChannelEndpointOutput')
    HeightPixels = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#HeightPixels', name: 'HeightPixels', traits: {"smithy.api#range" => {"min" => 1, "max" => 2160}})
    HubDeviceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#HubDeviceArn', name: 'HubDeviceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:iot:[a-z0-9-]+:[0-9]+:thing/[a-zA-Z0-9_.-]+$"})
    ImageGenerationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ImageGenerationConfiguration', name: 'ImageGenerationConfiguration')
    ImageGenerationDestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ImageGenerationDestinationConfig', name: 'ImageGenerationDestinationConfig')
    ImageSelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#ImageSelectorType', name: 'ImageSelectorType')
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDeviceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#InvalidDeviceException', name: 'InvalidDeviceException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceFormatException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#InvalidResourceFormatException', name: 'InvalidResourceFormatException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobStatusDetails = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#JobStatusDetails', name: 'JobStatusDetails')
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    LastRecorderStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#LastRecorderStatus', name: 'LastRecorderStatus')
    LastUploaderStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#LastUploaderStatus', name: 'LastUploaderStatus')
    ListEdgeAgentConfigurationsEdgeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsEdgeConfig', name: 'ListEdgeAgentConfigurationsEdgeConfig')
    ListEdgeAgentConfigurationsEdgeConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsEdgeConfigList', name: 'ListEdgeAgentConfigurationsEdgeConfigList')
    ListEdgeAgentConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsInput', name: 'ListEdgeAgentConfigurationsInput')
    ListEdgeAgentConfigurationsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsInputLimit', name: 'ListEdgeAgentConfigurationsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ListEdgeAgentConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListEdgeAgentConfigurationsOutput', name: 'ListEdgeAgentConfigurationsOutput')
    ListOfProtocols = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#ListOfProtocols', name: 'ListOfProtocols', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ListSignalingChannelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListSignalingChannelsInput', name: 'ListSignalingChannelsInput')
    ListSignalingChannelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListSignalingChannelsOutput', name: 'ListSignalingChannelsOutput')
    ListStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListStreamsInput', name: 'ListStreamsInput')
    ListStreamsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#ListStreamsInputLimit', name: 'ListStreamsInputLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ListStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListStreamsOutput', name: 'ListStreamsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTagsForStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListTagsForStreamInput', name: 'ListTagsForStreamInput')
    ListTagsForStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ListTagsForStreamOutput', name: 'ListTagsForStreamOutput')
    LocalSizeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#LocalSizeConfig', name: 'LocalSizeConfig')
    MappedResourceConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#MappedResourceConfigurationList', name: 'MappedResourceConfigurationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    MappedResourceConfigurationListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#MappedResourceConfigurationListItem', name: 'MappedResourceConfigurationListItem')
    MappedResourceConfigurationListLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#MappedResourceConfigurationListLimit', name: 'MappedResourceConfigurationListLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    MaxLocalMediaSizeInMB = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#MaxLocalMediaSizeInMB', name: 'MaxLocalMediaSizeInMB', traits: {"smithy.api#range" => {"min" => 64, "max" => 2000000}})
    MediaSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#MediaSourceConfig', name: 'MediaSourceConfig')
    MediaStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#MediaStorageConfiguration', name: 'MediaStorageConfiguration')
    MediaStorageConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#MediaStorageConfigurationStatus', name: 'MediaStorageConfigurationStatus')
    MediaType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#MediaType', name: 'MediaType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+(,[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+)*$"})
    MediaUriSecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#MediaUriSecretArn', name: 'MediaUriSecretArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:secretsmanager:[a-z0-9-]+:[0-9]+:secret:[a-zA-Z0-9_.-]+$", "smithy.api#sensitive" => {}})
    MediaUriType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#MediaUriType', name: 'MediaUriType')
    MessageTtlSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#MessageTtlSeconds', name: 'MessageTtlSeconds', traits: {"smithy.api#range" => {"min" => 5, "max" => 120}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=]*$"})
    NoDataRetentionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#NoDataRetentionException', name: 'NoDataRetentionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#NotAuthorizedException', name: 'NotAuthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#NotificationConfiguration', name: 'NotificationConfiguration')
    NotificationDestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#NotificationDestinationConfig', name: 'NotificationDestinationConfig')
    RecorderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#RecorderConfig', name: 'RecorderConfig')
    RecorderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#RecorderStatus', name: 'RecorderStatus')
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    ResourceEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ResourceEndpoint', name: 'ResourceEndpoint')
    ResourceEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#ResourceEndpointList', name: 'ResourceEndpointList')
    ResourceEndpointListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ResourceEndpointListItem', name: 'ResourceEndpointListItem')
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kinesisvideo#ResourceTags', name: 'ResourceTags', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    SamplingInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#SamplingInterval', name: 'SamplingInterval')
    ScheduleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#ScheduleConfig', name: 'ScheduleConfig')
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#ScheduleExpression', name: 'ScheduleExpression', traits: {"smithy.api#length" => {"min" => 11, "max" => 100}, "smithy.api#pattern" => "^[^\\n]{11,100}$"})
    SingleMasterChannelEndpointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#SingleMasterChannelEndpointConfiguration', name: 'SingleMasterChannelEndpointConfiguration')
    SingleMasterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#SingleMasterConfiguration', name: 'SingleMasterConfiguration')
    StartEdgeConfigurationUpdateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StartEdgeConfigurationUpdateInput', name: 'StartEdgeConfigurationUpdateInput')
    StartEdgeConfigurationUpdateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StartEdgeConfigurationUpdateOutput', name: 'StartEdgeConfigurationUpdateOutput')
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#Status', name: 'Status')
    StrategyOnFullSize = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#StrategyOnFullSize', name: 'StrategyOnFullSize')
    StreamEdgeConfigurationNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StreamEdgeConfigurationNotFoundException', name: 'StreamEdgeConfigurationNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StreamInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StreamInfo', name: 'StreamInfo')
    StreamInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#StreamInfoList', name: 'StreamInfoList')
    StreamName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#StreamName', name: 'StreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    StreamNameCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#StreamNameCondition', name: 'StreamNameCondition')
    SyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#SyncStatus', name: 'SyncStatus')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagOnCreateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideo#TagOnCreateList', name: 'TagOnCreateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagResourceOutput', name: 'TagResourceOutput')
    TagStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagStreamInput', name: 'TagStreamInput')
    TagStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagStreamOutput', name: 'TagStreamOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagsPerResourceExceededLimitException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#TagsPerResourceExceededLimitException', name: 'TagsPerResourceExceededLimitException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kinesisvideo#Timestamp', name: 'Timestamp')
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#Type', name: 'Type')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UntagResourceOutput', name: 'UntagResourceOutput')
    UntagStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UntagStreamInput', name: 'UntagStreamInput')
    UntagStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UntagStreamOutput', name: 'UntagStreamOutput')
    UpdateDataRetentionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateDataRetentionInput', name: 'UpdateDataRetentionInput')
    UpdateDataRetentionOperation = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#UpdateDataRetentionOperation', name: 'UpdateDataRetentionOperation')
    UpdateDataRetentionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateDataRetentionOutput', name: 'UpdateDataRetentionOutput')
    UpdateImageGenerationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateImageGenerationConfigurationInput', name: 'UpdateImageGenerationConfigurationInput')
    UpdateImageGenerationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateImageGenerationConfigurationOutput', name: 'UpdateImageGenerationConfigurationOutput')
    UpdateMediaStorageConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateMediaStorageConfigurationInput', name: 'UpdateMediaStorageConfigurationInput')
    UpdateMediaStorageConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateMediaStorageConfigurationOutput', name: 'UpdateMediaStorageConfigurationOutput')
    UpdateNotificationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateNotificationConfigurationInput', name: 'UpdateNotificationConfigurationInput')
    UpdateNotificationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateNotificationConfigurationOutput', name: 'UpdateNotificationConfigurationOutput')
    UpdateSignalingChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateSignalingChannelInput', name: 'UpdateSignalingChannelInput')
    UpdateSignalingChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateSignalingChannelOutput', name: 'UpdateSignalingChannelOutput')
    UpdateStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateStreamInput', name: 'UpdateStreamInput')
    UpdateStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UpdateStreamOutput', name: 'UpdateStreamOutput')
    UploaderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#UploaderConfig', name: 'UploaderConfig')
    UploaderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideo#UploaderStatus', name: 'UploaderStatus')
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideo#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    VersionMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideo#VersionMismatchException', name: 'VersionMismatchException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WidthPixels = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideo#WidthPixels', name: 'WidthPixels', traits: {"smithy.api#range" => {"min" => 1, "max" => 3840}})

    APIName.add_member(:put_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT_MEDIA', traits: {"smithy.api#enumValue" => "PUT_MEDIA"}))
    APIName.add_member(:get_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_MEDIA', traits: {"smithy.api#enumValue" => "GET_MEDIA"}))
    APIName.add_member(:list_fragments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIST_FRAGMENTS', traits: {"smithy.api#enumValue" => "LIST_FRAGMENTS"}))
    APIName.add_member(:get_media_for_fragment_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_MEDIA_FOR_FRAGMENT_LIST', traits: {"smithy.api#enumValue" => "GET_MEDIA_FOR_FRAGMENT_LIST"}))
    APIName.add_member(:get_hls_streaming_session_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_HLS_STREAMING_SESSION_URL', traits: {"smithy.api#enumValue" => "GET_HLS_STREAMING_SESSION_URL"}))
    APIName.add_member(:get_dash_streaming_session_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_DASH_STREAMING_SESSION_URL', traits: {"smithy.api#enumValue" => "GET_DASH_STREAMING_SESSION_URL"}))
    APIName.add_member(:get_clip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_CLIP', traits: {"smithy.api#enumValue" => "GET_CLIP"}))
    APIName.add_member(:get_images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET_IMAGES', traits: {"smithy.api#enumValue" => "GET_IMAGES"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountChannelLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccountChannelLimitExceededException.type = Types::AccountChannelLimitExceededException
    AccountStreamLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccountStreamLimitExceededException.type = Types::AccountStreamLimitExceededException
    ChannelInfo.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ChannelName'))
    ChannelInfo.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN'))
    ChannelInfo.add_member(:channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType'))
    ChannelInfo.add_member(:channel_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'ChannelStatus'))
    ChannelInfo.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    ChannelInfo.add_member(:single_master_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: 'SingleMasterConfiguration'))
    ChannelInfo.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version'))
    ChannelInfo.type = Types::ChannelInfo
    ChannelInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelInfo)
    ChannelNameCondition.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator'))
    ChannelNameCondition.add_member(:comparison_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ComparisonValue'))
    ChannelNameCondition.type = Types::ChannelNameCondition
    ChannelProtocol.add_member(:wss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WSS', traits: {"smithy.api#enumValue" => "WSS"}))
    ChannelProtocol.add_member(:https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTPS', traits: {"smithy.api#enumValue" => "HTTPS"}))
    ChannelProtocol.add_member(:webrtc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBRTC', traits: {"smithy.api#enumValue" => "WEBRTC"}))
    ChannelRole.add_member(:master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER', traits: {"smithy.api#enumValue" => "MASTER"}))
    ChannelRole.add_member(:viewer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIEWER', traits: {"smithy.api#enumValue" => "VIEWER"}))
    ChannelType.add_member(:single_master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_MASTER', traits: {"smithy.api#enumValue" => "SINGLE_MASTER"}))
    ChannelType.add_member(:full_mesh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_MESH', traits: {"smithy.api#enumValue" => "FULL_MESH"}))
    ClientLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ClientLimitExceededException.type = Types::ClientLimitExceededException
    ComparisonOperator.add_member(:begins_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEGINS_WITH', traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    ConfigurationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CreateSignalingChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ChannelName', traits: {"smithy.api#required" => {}}))
    CreateSignalingChannelInput.add_member(:channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'ChannelType'))
    CreateSignalingChannelInput.add_member(:single_master_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: 'SingleMasterConfiguration'))
    CreateSignalingChannelInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagOnCreateList, location_name: 'Tags'))
    CreateSignalingChannelInput.type = Types::CreateSignalingChannelInput
    CreateSignalingChannelOutput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN'))
    CreateSignalingChannelOutput.type = Types::CreateSignalingChannelOutput
    CreateStreamInput.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName'))
    CreateStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#required" => {}}))
    CreateStreamInput.add_member(:media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'MediaType'))
    CreateStreamInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    CreateStreamInput.add_member(:data_retention_in_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: 'DataRetentionInHours'))
    CreateStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'Tags'))
    CreateStreamInput.type = Types::CreateStreamInput
    CreateStreamOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    CreateStreamOutput.type = Types::CreateStreamOutput
    DeleteEdgeConfigurationInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    DeleteEdgeConfigurationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    DeleteEdgeConfigurationInput.type = Types::DeleteEdgeConfigurationInput
    DeleteEdgeConfigurationOutput.type = Types::DeleteEdgeConfigurationOutput
    DeleteSignalingChannelInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#required" => {}}))
    DeleteSignalingChannelInput.add_member(:current_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion'))
    DeleteSignalingChannelInput.type = Types::DeleteSignalingChannelInput
    DeleteSignalingChannelOutput.type = Types::DeleteSignalingChannelOutput
    DeleteStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#required" => {}}))
    DeleteStreamInput.add_member(:current_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion'))
    DeleteStreamInput.type = Types::DeleteStreamInput
    DeleteStreamOutput.type = Types::DeleteStreamOutput
    DeletionConfig.add_member(:edge_retention_in_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeRetentionInHours, location_name: 'EdgeRetentionInHours'))
    DeletionConfig.add_member(:local_size_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSizeConfig, location_name: 'LocalSizeConfig'))
    DeletionConfig.add_member(:delete_after_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAfterUpload, location_name: 'DeleteAfterUpload'))
    DeletionConfig.type = Types::DeletionConfig
    DescribeEdgeConfigurationInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    DescribeEdgeConfigurationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    DescribeEdgeConfigurationInput.type = Types::DescribeEdgeConfigurationInput
    DescribeEdgeConfigurationOutput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    DescribeEdgeConfigurationOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    DescribeEdgeConfigurationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    DescribeEdgeConfigurationOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime'))
    DescribeEdgeConfigurationOutput.add_member(:sync_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStatus, location_name: 'SyncStatus'))
    DescribeEdgeConfigurationOutput.add_member(:failed_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: 'FailedStatusDetails'))
    DescribeEdgeConfigurationOutput.add_member(:edge_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeConfig, location_name: 'EdgeConfig'))
    DescribeEdgeConfigurationOutput.add_member(:edge_agent_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeAgentStatus, location_name: 'EdgeAgentStatus'))
    DescribeEdgeConfigurationOutput.type = Types::DescribeEdgeConfigurationOutput
    DescribeImageGenerationConfigurationInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    DescribeImageGenerationConfigurationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    DescribeImageGenerationConfigurationInput.type = Types::DescribeImageGenerationConfigurationInput
    DescribeImageGenerationConfigurationOutput.add_member(:image_generation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageGenerationConfiguration, location_name: 'ImageGenerationConfiguration'))
    DescribeImageGenerationConfigurationOutput.type = Types::DescribeImageGenerationConfigurationOutput
    DescribeMappedResourceConfigurationInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    DescribeMappedResourceConfigurationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    DescribeMappedResourceConfigurationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappedResourceConfigurationListLimit, location_name: 'MaxResults'))
    DescribeMappedResourceConfigurationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeMappedResourceConfigurationInput.type = Types::DescribeMappedResourceConfigurationInput
    DescribeMappedResourceConfigurationOutput.add_member(:mapped_resource_configuration_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappedResourceConfigurationList, location_name: 'MappedResourceConfigurationList'))
    DescribeMappedResourceConfigurationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeMappedResourceConfigurationOutput.type = Types::DescribeMappedResourceConfigurationOutput
    DescribeMediaStorageConfigurationInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ChannelName'))
    DescribeMediaStorageConfigurationInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN'))
    DescribeMediaStorageConfigurationInput.type = Types::DescribeMediaStorageConfigurationInput
    DescribeMediaStorageConfigurationOutput.add_member(:media_storage_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStorageConfiguration, location_name: 'MediaStorageConfiguration'))
    DescribeMediaStorageConfigurationOutput.type = Types::DescribeMediaStorageConfigurationOutput
    DescribeNotificationConfigurationInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    DescribeNotificationConfigurationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    DescribeNotificationConfigurationInput.type = Types::DescribeNotificationConfigurationInput
    DescribeNotificationConfigurationOutput.add_member(:notification_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'NotificationConfiguration'))
    DescribeNotificationConfigurationOutput.type = Types::DescribeNotificationConfigurationOutput
    DescribeSignalingChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'ChannelName'))
    DescribeSignalingChannelInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN'))
    DescribeSignalingChannelInput.type = Types::DescribeSignalingChannelInput
    DescribeSignalingChannelOutput.add_member(:channel_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelInfo, location_name: 'ChannelInfo'))
    DescribeSignalingChannelOutput.type = Types::DescribeSignalingChannelOutput
    DescribeStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    DescribeStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    DescribeStreamInput.type = Types::DescribeStreamInput
    DescribeStreamOutput.add_member(:stream_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamInfo, location_name: 'StreamInfo'))
    DescribeStreamOutput.type = Types::DescribeStreamOutput
    DeviceStreamLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DeviceStreamLimitExceededException.type = Types::DeviceStreamLimitExceededException
    EdgeAgentStatus.add_member(:last_recorder_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastRecorderStatus, location_name: 'LastRecorderStatus'))
    EdgeAgentStatus.add_member(:last_uploader_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUploaderStatus, location_name: 'LastUploaderStatus'))
    EdgeAgentStatus.type = Types::EdgeAgentStatus
    EdgeConfig.add_member(:hub_device_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HubDeviceArn, location_name: 'HubDeviceArn', traits: {"smithy.api#required" => {}}))
    EdgeConfig.add_member(:recorder_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecorderConfig, location_name: 'RecorderConfig', traits: {"smithy.api#required" => {}}))
    EdgeConfig.add_member(:uploader_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploaderConfig, location_name: 'UploaderConfig'))
    EdgeConfig.add_member(:deletion_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionConfig, location_name: 'DeletionConfig'))
    EdgeConfig.type = Types::EdgeConfig
    Format.add_member(:jpeg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JPEG', traits: {"smithy.api#enumValue" => "JPEG"}))
    Format.add_member(:png, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PNG', traits: {"smithy.api#enumValue" => "PNG"}))
    FormatConfig.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfigKey)
    FormatConfig.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfigValue)
    FormatConfigKey.add_member(:jpeg_quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JPEGQuality', traits: {"smithy.api#enumValue" => "JPEGQuality"}))
    GetDataEndpointInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    GetDataEndpointInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    GetDataEndpointInput.add_member(:api_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APIName, location_name: 'APIName', traits: {"smithy.api#required" => {}}))
    GetDataEndpointInput.type = Types::GetDataEndpointInput
    GetDataEndpointOutput.add_member(:data_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataEndpoint, location_name: 'DataEndpoint'))
    GetDataEndpointOutput.type = Types::GetDataEndpointOutput
    GetSignalingChannelEndpointInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#required" => {}}))
    GetSignalingChannelEndpointInput.add_member(:single_master_channel_endpoint_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMasterChannelEndpointConfiguration, location_name: 'SingleMasterChannelEndpointConfiguration'))
    GetSignalingChannelEndpointInput.type = Types::GetSignalingChannelEndpointInput
    GetSignalingChannelEndpointOutput.add_member(:resource_endpoint_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointList, location_name: 'ResourceEndpointList'))
    GetSignalingChannelEndpointOutput.type = Types::GetSignalingChannelEndpointOutput
    ImageGenerationConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:image_selector_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSelectorType, location_name: 'ImageSelectorType', traits: {"smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:destination_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageGenerationDestinationConfig, location_name: 'DestinationConfig', traits: {"smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:sampling_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingInterval, location_name: 'SamplingInterval', traits: {"smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#required" => {}}))
    ImageGenerationConfiguration.add_member(:format_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfig, location_name: 'FormatConfig'))
    ImageGenerationConfiguration.add_member(:width_pixels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WidthPixels, location_name: 'WidthPixels'))
    ImageGenerationConfiguration.add_member(:height_pixels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeightPixels, location_name: 'HeightPixels'))
    ImageGenerationConfiguration.type = Types::ImageGenerationConfiguration
    ImageGenerationDestinationConfig.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationUri, location_name: 'Uri', traits: {"smithy.api#required" => {}}))
    ImageGenerationDestinationConfig.add_member(:destination_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationRegion, location_name: 'DestinationRegion', traits: {"smithy.api#required" => {}}))
    ImageGenerationDestinationConfig.type = Types::ImageGenerationDestinationConfig
    ImageSelectorType.add_member(:server_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_TIMESTAMP', traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    ImageSelectorType.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCER_TIMESTAMP', traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidDeviceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidDeviceException.type = Types::InvalidDeviceException
    InvalidResourceFormatException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidResourceFormatException.type = Types::InvalidResourceFormatException
    LastRecorderStatus.add_member(:job_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: 'JobStatusDetails'))
    LastRecorderStatus.add_member(:last_collected_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastCollectedTime'))
    LastRecorderStatus.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime'))
    LastRecorderStatus.add_member(:recorder_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecorderStatus, location_name: 'RecorderStatus'))
    LastRecorderStatus.type = Types::LastRecorderStatus
    LastUploaderStatus.add_member(:job_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: 'JobStatusDetails'))
    LastUploaderStatus.add_member(:last_collected_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastCollectedTime'))
    LastUploaderStatus.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime'))
    LastUploaderStatus.add_member(:uploader_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploaderStatus, location_name: 'UploaderStatus'))
    LastUploaderStatus.type = Types::LastUploaderStatus
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime'))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:sync_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStatus, location_name: 'SyncStatus'))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:failed_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: 'FailedStatusDetails'))
    ListEdgeAgentConfigurationsEdgeConfig.add_member(:edge_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeConfig, location_name: 'EdgeConfig'))
    ListEdgeAgentConfigurationsEdgeConfig.type = Types::ListEdgeAgentConfigurationsEdgeConfig
    ListEdgeAgentConfigurationsEdgeConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsEdgeConfig)
    ListEdgeAgentConfigurationsInput.add_member(:hub_device_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HubDeviceArn, location_name: 'HubDeviceArn', traits: {"smithy.api#required" => {}}))
    ListEdgeAgentConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsInputLimit, location_name: 'MaxResults'))
    ListEdgeAgentConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEdgeAgentConfigurationsInput.type = Types::ListEdgeAgentConfigurationsInput
    ListEdgeAgentConfigurationsOutput.add_member(:edge_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsEdgeConfigList, location_name: 'EdgeConfigs'))
    ListEdgeAgentConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEdgeAgentConfigurationsOutput.type = Types::ListEdgeAgentConfigurationsOutput
    ListOfProtocols.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelProtocol)
    ListSignalingChannelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: 'MaxResults'))
    ListSignalingChannelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListSignalingChannelsInput.add_member(:channel_name_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNameCondition, location_name: 'ChannelNameCondition'))
    ListSignalingChannelsInput.type = Types::ListSignalingChannelsInput
    ListSignalingChannelsOutput.add_member(:channel_info_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelInfoList, location_name: 'ChannelInfoList'))
    ListSignalingChannelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListSignalingChannelsOutput.type = Types::ListSignalingChannelsOutput
    ListStreamsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: 'MaxResults'))
    ListStreamsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListStreamsInput.add_member(:stream_name_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamNameCondition, location_name: 'StreamNameCondition'))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:stream_info_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamInfoList, location_name: 'StreamInfoList'))
    ListStreamsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListStreamsOutput.type = Types::ListStreamsOutput
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'Tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForStreamInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    ListTagsForStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    ListTagsForStreamInput.type = Types::ListTagsForStreamInput
    ListTagsForStreamOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForStreamOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'Tags'))
    ListTagsForStreamOutput.type = Types::ListTagsForStreamOutput
    LocalSizeConfig.add_member(:max_local_media_size_in_mb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLocalMediaSizeInMB, location_name: 'MaxLocalMediaSizeInMB'))
    LocalSizeConfig.add_member(:strategy_on_full_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StrategyOnFullSize, location_name: 'StrategyOnFullSize'))
    LocalSizeConfig.type = Types::LocalSizeConfig
    MappedResourceConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappedResourceConfigurationListItem)
    MappedResourceConfigurationListItem.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type'))
    MappedResourceConfigurationListItem.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ARN'))
    MappedResourceConfigurationListItem.type = Types::MappedResourceConfigurationListItem
    MediaSourceConfig.add_member(:media_uri_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaUriSecretArn, location_name: 'MediaUriSecretArn', traits: {"smithy.api#required" => {}}))
    MediaSourceConfig.add_member(:media_uri_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaUriType, location_name: 'MediaUriType', traits: {"smithy.api#required" => {}}))
    MediaSourceConfig.type = Types::MediaSourceConfig
    MediaStorageConfiguration.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    MediaStorageConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStorageConfigurationStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    MediaStorageConfiguration.type = Types::MediaStorageConfiguration
    MediaStorageConfigurationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    MediaStorageConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    MediaUriType.add_member(:rtsp_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RTSP_URI', traits: {"smithy.api#enumValue" => "RTSP_URI"}))
    MediaUriType.add_member(:file_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_URI', traits: {"smithy.api#enumValue" => "FILE_URI"}))
    NoDataRetentionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NoDataRetentionException.type = Types::NoDataRetentionException
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotAuthorizedException.type = Types::NotAuthorizedException
    NotificationConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    NotificationConfiguration.add_member(:destination_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationConfig, location_name: 'DestinationConfig', traits: {"smithy.api#required" => {}}))
    NotificationConfiguration.type = Types::NotificationConfiguration
    NotificationDestinationConfig.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationUri, location_name: 'Uri', traits: {"smithy.api#required" => {}}))
    NotificationDestinationConfig.type = Types::NotificationDestinationConfig
    RecorderConfig.add_member(:media_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaSourceConfig, location_name: 'MediaSourceConfig', traits: {"smithy.api#required" => {}}))
    RecorderConfig.add_member(:schedule_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfig, location_name: 'ScheduleConfig'))
    RecorderConfig.type = Types::RecorderConfig
    RecorderStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    RecorderStatus.add_member(:user_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_ERROR', traits: {"smithy.api#enumValue" => "USER_ERROR"}))
    RecorderStatus.add_member(:system_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ERROR', traits: {"smithy.api#enumValue" => "SYSTEM_ERROR"}))
    ResourceEndpointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointListItem)
    ResourceEndpointListItem.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelProtocol, location_name: 'Protocol'))
    ResourceEndpointListItem.add_member(:resource_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpoint, location_name: 'ResourceEndpoint'))
    ResourceEndpointListItem.type = Types::ResourceEndpointListItem
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    ResourceTags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ScheduleConfig.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#required" => {}}))
    ScheduleConfig.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'DurationInSeconds', traits: {"smithy.api#required" => {}}))
    ScheduleConfig.type = Types::ScheduleConfig
    SingleMasterChannelEndpointConfiguration.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfProtocols, location_name: 'Protocols'))
    SingleMasterChannelEndpointConfiguration.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRole, location_name: 'Role'))
    SingleMasterChannelEndpointConfiguration.type = Types::SingleMasterChannelEndpointConfiguration
    SingleMasterConfiguration.add_member(:message_ttl_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTtlSeconds, location_name: 'MessageTtlSeconds'))
    SingleMasterConfiguration.type = Types::SingleMasterConfiguration
    StartEdgeConfigurationUpdateInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    StartEdgeConfigurationUpdateInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    StartEdgeConfigurationUpdateInput.add_member(:edge_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeConfig, location_name: 'EdgeConfig', traits: {"smithy.api#required" => {}}))
    StartEdgeConfigurationUpdateInput.type = Types::StartEdgeConfigurationUpdateInput
    StartEdgeConfigurationUpdateOutput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    StartEdgeConfigurationUpdateOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    StartEdgeConfigurationUpdateOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    StartEdgeConfigurationUpdateOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime'))
    StartEdgeConfigurationUpdateOutput.add_member(:sync_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStatus, location_name: 'SyncStatus'))
    StartEdgeConfigurationUpdateOutput.add_member(:failed_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedStatusDetails, location_name: 'FailedStatusDetails'))
    StartEdgeConfigurationUpdateOutput.add_member(:edge_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeConfig, location_name: 'EdgeConfig'))
    StartEdgeConfigurationUpdateOutput.type = Types::StartEdgeConfigurationUpdateOutput
    Status.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Status.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    Status.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    StrategyOnFullSize.add_member(:delete_oldest_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_OLDEST_MEDIA', traits: {"smithy.api#enumValue" => "DELETE_OLDEST_MEDIA"}))
    StrategyOnFullSize.add_member(:deny_new_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY_NEW_MEDIA', traits: {"smithy.api#enumValue" => "DENY_NEW_MEDIA"}))
    StreamEdgeConfigurationNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    StreamEdgeConfigurationNotFoundException.type = Types::StreamEdgeConfigurationNotFoundException
    StreamInfo.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName'))
    StreamInfo.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    StreamInfo.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    StreamInfo.add_member(:media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'MediaType'))
    StreamInfo.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    StreamInfo.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version'))
    StreamInfo.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    StreamInfo.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    StreamInfo.add_member(:data_retention_in_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: 'DataRetentionInHours'))
    StreamInfo.type = Types::StreamInfo
    StreamInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamInfo)
    StreamNameCondition.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator'))
    StreamNameCondition.add_member(:comparison_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'ComparisonValue'))
    StreamNameCondition.type = Types::StreamNameCondition
    SyncStatus.add_member(:syncing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNCING', traits: {"smithy.api#enumValue" => "SYNCING"}))
    SyncStatus.add_member(:acknowledged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACKNOWLEDGED', traits: {"smithy.api#enumValue" => "ACKNOWLEDGED"}))
    SyncStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_SYNC', traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    SyncStatus.add_member(:sync_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNC_FAILED', traits: {"smithy.api#enumValue" => "SYNC_FAILED"}))
    SyncStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    SyncStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    SyncStatus.add_member(:deleting_acknowledged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING_ACKNOWLEDGED', traits: {"smithy.api#enumValue" => "DELETING_ACKNOWLEDGED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagOnCreateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    TagStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    TagStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagStreamInput.type = Types::TagStreamInput
    TagStreamOutput.type = Types::TagStreamOutput
    TagsPerResourceExceededLimitException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TagsPerResourceExceededLimitException.type = Types::TagsPerResourceExceededLimitException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_key_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeyList', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UntagStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    UntagStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    UntagStreamInput.add_member(:tag_key_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeyList', traits: {"smithy.api#required" => {}}))
    UntagStreamInput.type = Types::UntagStreamInput
    UntagStreamOutput.type = Types::UntagStreamOutput
    UpdateDataRetentionInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    UpdateDataRetentionInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    UpdateDataRetentionInput.add_member(:current_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion', traits: {"smithy.api#required" => {}}))
    UpdateDataRetentionInput.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataRetentionOperation, location_name: 'Operation', traits: {"smithy.api#required" => {}}))
    UpdateDataRetentionInput.add_member(:data_retention_change_in_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionChangeInHours, location_name: 'DataRetentionChangeInHours', traits: {"smithy.api#required" => {}}))
    UpdateDataRetentionInput.type = Types::UpdateDataRetentionInput
    UpdateDataRetentionOperation.add_member(:increase_data_retention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCREASE_DATA_RETENTION', traits: {"smithy.api#enumValue" => "INCREASE_DATA_RETENTION"}))
    UpdateDataRetentionOperation.add_member(:decrease_data_retention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECREASE_DATA_RETENTION', traits: {"smithy.api#enumValue" => "DECREASE_DATA_RETENTION"}))
    UpdateDataRetentionOutput.type = Types::UpdateDataRetentionOutput
    UpdateImageGenerationConfigurationInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    UpdateImageGenerationConfigurationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    UpdateImageGenerationConfigurationInput.add_member(:image_generation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageGenerationConfiguration, location_name: 'ImageGenerationConfiguration'))
    UpdateImageGenerationConfigurationInput.type = Types::UpdateImageGenerationConfigurationInput
    UpdateImageGenerationConfigurationOutput.type = Types::UpdateImageGenerationConfigurationOutput
    UpdateMediaStorageConfigurationInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#required" => {}}))
    UpdateMediaStorageConfigurationInput.add_member(:media_storage_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStorageConfiguration, location_name: 'MediaStorageConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateMediaStorageConfigurationInput.type = Types::UpdateMediaStorageConfigurationInput
    UpdateMediaStorageConfigurationOutput.type = Types::UpdateMediaStorageConfigurationOutput
    UpdateNotificationConfigurationInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    UpdateNotificationConfigurationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    UpdateNotificationConfigurationInput.add_member(:notification_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'NotificationConfiguration'))
    UpdateNotificationConfigurationInput.type = Types::UpdateNotificationConfigurationInput
    UpdateNotificationConfigurationOutput.type = Types::UpdateNotificationConfigurationOutput
    UpdateSignalingChannelInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ChannelARN', traits: {"smithy.api#required" => {}}))
    UpdateSignalingChannelInput.add_member(:current_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion', traits: {"smithy.api#required" => {}}))
    UpdateSignalingChannelInput.add_member(:single_master_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SingleMasterConfiguration, location_name: 'SingleMasterConfiguration'))
    UpdateSignalingChannelInput.type = Types::UpdateSignalingChannelInput
    UpdateSignalingChannelOutput.type = Types::UpdateSignalingChannelOutput
    UpdateStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    UpdateStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    UpdateStreamInput.add_member(:current_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'CurrentVersion', traits: {"smithy.api#required" => {}}))
    UpdateStreamInput.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName'))
    UpdateStreamInput.add_member(:media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'MediaType'))
    UpdateStreamInput.type = Types::UpdateStreamInput
    UpdateStreamOutput.type = Types::UpdateStreamOutput
    UploaderConfig.add_member(:schedule_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfig, location_name: 'ScheduleConfig', traits: {"smithy.api#required" => {}}))
    UploaderConfig.type = Types::UploaderConfig
    UploaderStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    UploaderStatus.add_member(:user_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_ERROR', traits: {"smithy.api#enumValue" => "USER_ERROR"}))
    UploaderStatus.add_member(:system_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_ERROR', traits: {"smithy.api#enumValue" => "SYSTEM_ERROR"}))
    VersionMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    VersionMismatchException.type = Types::VersionMismatchException

    KinesisVideo20170930 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisvideo#KinesisVideo_20170930"
      service.name = "KinesisVideo20170930"
      service.version = "2017-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Video", "arnNamespace" => "kinesisvideo", "cloudFormationName" => "KinesisVideo", "cloudTrailEventSource" => "kinesisvideo.amazonaws.com", "docId" => "kinesisvideo-2017-09-30", "endpointPrefix" => "kinesisvideo"}, "aws.auth#sigv4" => {"name" => "kinesisvideo"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Kinesis Video Streams", "smithy.api#xmlNamespace" => {"uri" => "https://kinesisvideo.amazonaws.com/doc/2017-09-30/"}}
      service.add_operation(:create_signaling_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#CreateSignalingChannel"
        operation.name = "CreateSignalingChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSignalingChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSignalingChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountChannelLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createSignalingChannel", "code" => 200}}
      end)
      service.add_operation(:create_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#CreateStream"
        operation.name = "CreateStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountStreamLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceStreamLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeviceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createStream", "code" => 200}}
      end)
      service.add_operation(:delete_edge_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DeleteEdgeConfiguration"
        operation.name = "DeleteEdgeConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEdgeConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEdgeConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEdgeConfigurationNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteEdgeConfiguration", "code" => 200}}
      end)
      service.add_operation(:delete_signaling_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DeleteSignalingChannel"
        operation.name = "DeleteSignalingChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSignalingChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSignalingChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteSignalingChannel", "code" => 200}}
      end)
      service.add_operation(:delete_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DeleteStream"
        operation.name = "DeleteStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteStream", "code" => 200}}
      end)
      service.add_operation(:describe_edge_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeEdgeConfiguration"
        operation.name = "DescribeEdgeConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEdgeConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEdgeConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEdgeConfigurationNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeEdgeConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_image_generation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeImageGenerationConfiguration"
        operation.name = "DescribeImageGenerationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageGenerationConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageGenerationConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeImageGenerationConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_mapped_resource_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeMappedResourceConfiguration"
        operation.name = "DescribeMappedResourceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMappedResourceConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMappedResourceConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeMappedResourceConfiguration", "code" => 200}}
        operation[:paginator] = Paginators::DescribeMappedResourceConfiguration.new
      end)
      service.add_operation(:describe_media_storage_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeMediaStorageConfiguration"
        operation.name = "DescribeMediaStorageConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMediaStorageConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMediaStorageConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeMediaStorageConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeNotificationConfiguration"
        operation.name = "DescribeNotificationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeNotificationConfiguration", "code" => 200}}
      end)
      service.add_operation(:describe_signaling_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeSignalingChannel"
        operation.name = "DescribeSignalingChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSignalingChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSignalingChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeSignalingChannel", "code" => 200}}
      end)
      service.add_operation(:describe_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#DescribeStream"
        operation.name = "DescribeStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeStream", "code" => 200}}
      end)
      service.add_operation(:get_data_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#GetDataEndpoint"
        operation.name = "GetDataEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getDataEndpoint", "code" => 200}}
      end)
      service.add_operation(:get_signaling_channel_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#GetSignalingChannelEndpoint"
        operation.name = "GetSignalingChannelEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSignalingChannelEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSignalingChannelEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getSignalingChannelEndpoint", "code" => 200}}
      end)
      service.add_operation(:list_edge_agent_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListEdgeAgentConfigurations"
        operation.name = "ListEdgeAgentConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEdgeAgentConfigurationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listEdgeAgentConfigurations", "code" => 200}}
        operation[:paginator] = Paginators::ListEdgeAgentConfigurations.new
      end)
      service.add_operation(:list_signaling_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListSignalingChannels"
        operation.name = "ListSignalingChannels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSignalingChannelsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSignalingChannelsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listSignalingChannels", "code" => 200}}
        operation[:paginator] = Paginators::ListSignalingChannels.new
      end)
      service.add_operation(:list_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListStreams"
        operation.name = "ListStreams"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listStreams", "code" => 200}}
        operation[:paginator] = Paginators::ListStreams.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#ListTagsForStream"
        operation.name = "ListTagsForStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listTagsForStream", "code" => 200}}
      end)
      service.add_operation(:start_edge_configuration_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#StartEdgeConfigurationUpdate"
        operation.name = "StartEdgeConfigurationUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartEdgeConfigurationUpdateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartEdgeConfigurationUpdateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/startEdgeConfigurationUpdate", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}}
      end)
      service.add_operation(:tag_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#TagStream"
        operation.name = "TagStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerResourceExceededLimitException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tagStream", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource", "code" => 200}}
      end)
      service.add_operation(:untag_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UntagStream"
        operation.name = "UntagStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceFormatException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untagStream", "code" => 200}}
      end)
      service.add_operation(:update_data_retention, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateDataRetention"
        operation.name = "UpdateDataRetention"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataRetentionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataRetentionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateDataRetention", "code" => 200}}
      end)
      service.add_operation(:update_image_generation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateImageGenerationConfiguration"
        operation.name = "UpdateImageGenerationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImageGenerationConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImageGenerationConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateImageGenerationConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_media_storage_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateMediaStorageConfiguration"
        operation.name = "UpdateMediaStorageConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaStorageConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaStorageConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateMediaStorageConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateNotificationConfiguration"
        operation.name = "UpdateNotificationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateNotificationConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_signaling_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateSignalingChannel"
        operation.name = "UpdateSignalingChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSignalingChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSignalingChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateSignalingChannel", "code" => 200}}
      end)
      service.add_operation(:update_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideo#UpdateStream"
        operation.name = "UpdateStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionMismatchException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateStream", "code" => 200}}
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
