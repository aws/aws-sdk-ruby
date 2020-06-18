# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    CreateSignalingChannelInput = Shapes::StructureShape.new(name: 'CreateSignalingChannelInput')
    CreateSignalingChannelOutput = Shapes::StructureShape.new(name: 'CreateSignalingChannelOutput')
    CreateStreamInput = Shapes::StructureShape.new(name: 'CreateStreamInput')
    CreateStreamOutput = Shapes::StructureShape.new(name: 'CreateStreamOutput')
    DataEndpoint = Shapes::StringShape.new(name: 'DataEndpoint')
    DataRetentionChangeInHours = Shapes::IntegerShape.new(name: 'DataRetentionChangeInHours')
    DataRetentionInHours = Shapes::IntegerShape.new(name: 'DataRetentionInHours')
    DeleteSignalingChannelInput = Shapes::StructureShape.new(name: 'DeleteSignalingChannelInput')
    DeleteSignalingChannelOutput = Shapes::StructureShape.new(name: 'DeleteSignalingChannelOutput')
    DeleteStreamInput = Shapes::StructureShape.new(name: 'DeleteStreamInput')
    DeleteStreamOutput = Shapes::StructureShape.new(name: 'DeleteStreamOutput')
    DescribeSignalingChannelInput = Shapes::StructureShape.new(name: 'DescribeSignalingChannelInput')
    DescribeSignalingChannelOutput = Shapes::StructureShape.new(name: 'DescribeSignalingChannelOutput')
    DescribeStreamInput = Shapes::StructureShape.new(name: 'DescribeStreamInput')
    DescribeStreamOutput = Shapes::StructureShape.new(name: 'DescribeStreamOutput')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceStreamLimitExceededException = Shapes::StructureShape.new(name: 'DeviceStreamLimitExceededException')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetDataEndpointInput = Shapes::StructureShape.new(name: 'GetDataEndpointInput')
    GetDataEndpointOutput = Shapes::StructureShape.new(name: 'GetDataEndpointOutput')
    GetSignalingChannelEndpointInput = Shapes::StructureShape.new(name: 'GetSignalingChannelEndpointInput')
    GetSignalingChannelEndpointOutput = Shapes::StructureShape.new(name: 'GetSignalingChannelEndpointOutput')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidDeviceException = Shapes::StructureShape.new(name: 'InvalidDeviceException')
    InvalidResourceFormatException = Shapes::StructureShape.new(name: 'InvalidResourceFormatException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
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
    MediaType = Shapes::StringShape.new(name: 'MediaType')
    MessageTtlSeconds = Shapes::IntegerShape.new(name: 'MessageTtlSeconds')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceEndpoint = Shapes::StringShape.new(name: 'ResourceEndpoint')
    ResourceEndpointList = Shapes::ListShape.new(name: 'ResourceEndpointList')
    ResourceEndpointListItem = Shapes::StructureShape.new(name: 'ResourceEndpointListItem')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTags = Shapes::MapShape.new(name: 'ResourceTags')
    SingleMasterChannelEndpointConfiguration = Shapes::StructureShape.new(name: 'SingleMasterChannelEndpointConfiguration')
    SingleMasterConfiguration = Shapes::StructureShape.new(name: 'SingleMasterConfiguration')
    Status = Shapes::StringShape.new(name: 'Status')
    StreamInfo = Shapes::StructureShape.new(name: 'StreamInfo')
    StreamInfoList = Shapes::ListShape.new(name: 'StreamInfoList')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    StreamNameCondition = Shapes::StructureShape.new(name: 'StreamNameCondition')
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
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UntagStreamInput = Shapes::StructureShape.new(name: 'UntagStreamInput')
    UntagStreamOutput = Shapes::StructureShape.new(name: 'UntagStreamOutput')
    UpdateDataRetentionInput = Shapes::StructureShape.new(name: 'UpdateDataRetentionInput')
    UpdateDataRetentionOperation = Shapes::StringShape.new(name: 'UpdateDataRetentionOperation')
    UpdateDataRetentionOutput = Shapes::StructureShape.new(name: 'UpdateDataRetentionOutput')
    UpdateSignalingChannelInput = Shapes::StructureShape.new(name: 'UpdateSignalingChannelInput')
    UpdateSignalingChannelOutput = Shapes::StructureShape.new(name: 'UpdateSignalingChannelOutput')
    UpdateStreamInput = Shapes::StructureShape.new(name: 'UpdateStreamInput')
    UpdateStreamOutput = Shapes::StructureShape.new(name: 'UpdateStreamOutput')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionMismatchException = Shapes::StructureShape.new(name: 'VersionMismatchException')

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

    DeleteSignalingChannelInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ChannelARN"))
    DeleteSignalingChannelInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, location_name: "CurrentVersion"))
    DeleteSignalingChannelInput.struct_class = Types::DeleteSignalingChannelInput

    DeleteSignalingChannelOutput.struct_class = Types::DeleteSignalingChannelOutput

    DeleteStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "StreamARN"))
    DeleteStreamInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, location_name: "CurrentVersion"))
    DeleteStreamInput.struct_class = Types::DeleteStreamInput

    DeleteStreamOutput.struct_class = Types::DeleteStreamOutput

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

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    InvalidDeviceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidDeviceException.struct_class = Types::InvalidDeviceException

    InvalidResourceFormatException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidResourceFormatException.struct_class = Types::InvalidResourceFormatException

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

    NotAuthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotAuthorizedException.struct_class = Types::NotAuthorizedException

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

    SingleMasterChannelEndpointConfiguration.add_member(:protocols, Shapes::ShapeRef.new(shape: ListOfProtocols, location_name: "Protocols"))
    SingleMasterChannelEndpointConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: ChannelRole, location_name: "Role"))
    SingleMasterChannelEndpointConfiguration.struct_class = Types::SingleMasterChannelEndpointConfiguration

    SingleMasterConfiguration.add_member(:message_ttl_seconds, Shapes::ShapeRef.new(shape: MessageTtlSeconds, location_name: "MessageTtlSeconds"))
    SingleMasterConfiguration.struct_class = Types::SingleMasterConfiguration

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
