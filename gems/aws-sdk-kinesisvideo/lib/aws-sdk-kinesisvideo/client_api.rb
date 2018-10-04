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
    AccountStreamLimitExceededException = Shapes::StructureShape.new(name: 'AccountStreamLimitExceededException')
    ClientLimitExceededException = Shapes::StructureShape.new(name: 'ClientLimitExceededException')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CreateStreamInput = Shapes::StructureShape.new(name: 'CreateStreamInput')
    CreateStreamOutput = Shapes::StructureShape.new(name: 'CreateStreamOutput')
    DataEndpoint = Shapes::StringShape.new(name: 'DataEndpoint')
    DataRetentionChangeInHours = Shapes::IntegerShape.new(name: 'DataRetentionChangeInHours')
    DataRetentionInHours = Shapes::IntegerShape.new(name: 'DataRetentionInHours')
    DeleteStreamInput = Shapes::StructureShape.new(name: 'DeleteStreamInput')
    DeleteStreamOutput = Shapes::StructureShape.new(name: 'DeleteStreamOutput')
    DescribeStreamInput = Shapes::StructureShape.new(name: 'DescribeStreamInput')
    DescribeStreamOutput = Shapes::StructureShape.new(name: 'DescribeStreamOutput')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceStreamLimitExceededException = Shapes::StructureShape.new(name: 'DeviceStreamLimitExceededException')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetDataEndpointInput = Shapes::StructureShape.new(name: 'GetDataEndpointInput')
    GetDataEndpointOutput = Shapes::StructureShape.new(name: 'GetDataEndpointOutput')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidDeviceException = Shapes::StructureShape.new(name: 'InvalidDeviceException')
    InvalidResourceFormatException = Shapes::StructureShape.new(name: 'InvalidResourceFormatException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListStreamsInput = Shapes::StructureShape.new(name: 'ListStreamsInput')
    ListStreamsInputLimit = Shapes::IntegerShape.new(name: 'ListStreamsInputLimit')
    ListStreamsOutput = Shapes::StructureShape.new(name: 'ListStreamsOutput')
    ListTagsForStreamInput = Shapes::StructureShape.new(name: 'ListTagsForStreamInput')
    ListTagsForStreamOutput = Shapes::StructureShape.new(name: 'ListTagsForStreamOutput')
    MediaType = Shapes::StringShape.new(name: 'MediaType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTags = Shapes::MapShape.new(name: 'ResourceTags')
    Status = Shapes::StringShape.new(name: 'Status')
    StreamInfo = Shapes::StructureShape.new(name: 'StreamInfo')
    StreamInfoList = Shapes::ListShape.new(name: 'StreamInfoList')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    StreamNameCondition = Shapes::StructureShape.new(name: 'StreamNameCondition')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagStreamInput = Shapes::StructureShape.new(name: 'TagStreamInput')
    TagStreamOutput = Shapes::StructureShape.new(name: 'TagStreamOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsPerResourceExceededLimitException = Shapes::StructureShape.new(name: 'TagsPerResourceExceededLimitException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagStreamInput = Shapes::StructureShape.new(name: 'UntagStreamInput')
    UntagStreamOutput = Shapes::StructureShape.new(name: 'UntagStreamOutput')
    UpdateDataRetentionInput = Shapes::StructureShape.new(name: 'UpdateDataRetentionInput')
    UpdateDataRetentionOperation = Shapes::StringShape.new(name: 'UpdateDataRetentionOperation')
    UpdateDataRetentionOutput = Shapes::StructureShape.new(name: 'UpdateDataRetentionOutput')
    UpdateStreamInput = Shapes::StructureShape.new(name: 'UpdateStreamInput')
    UpdateStreamOutput = Shapes::StructureShape.new(name: 'UpdateStreamOutput')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionMismatchException = Shapes::StructureShape.new(name: 'VersionMismatchException')

    CreateStreamInput.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    CreateStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    CreateStreamInput.add_member(:media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "MediaType"))
    CreateStreamInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateStreamInput.add_member(:data_retention_in_hours, Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: "DataRetentionInHours"))
    CreateStreamInput.struct_class = Types::CreateStreamInput

    CreateStreamOutput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    CreateStreamOutput.struct_class = Types::CreateStreamOutput

    DeleteStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "StreamARN"))
    DeleteStreamInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, location_name: "CurrentVersion"))
    DeleteStreamInput.struct_class = Types::DeleteStreamInput

    DeleteStreamOutput.struct_class = Types::DeleteStreamOutput

    DescribeStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    DescribeStreamInput.struct_class = Types::DescribeStreamInput

    DescribeStreamOutput.add_member(:stream_info, Shapes::ShapeRef.new(shape: StreamInfo, location_name: "StreamInfo"))
    DescribeStreamOutput.struct_class = Types::DescribeStreamOutput

    GetDataEndpointInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    GetDataEndpointInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    GetDataEndpointInput.add_member(:api_name, Shapes::ShapeRef.new(shape: APIName, required: true, location_name: "APIName"))
    GetDataEndpointInput.struct_class = Types::GetDataEndpointInput

    GetDataEndpointOutput.add_member(:data_endpoint, Shapes::ShapeRef.new(shape: DataEndpoint, location_name: "DataEndpoint"))
    GetDataEndpointOutput.struct_class = Types::GetDataEndpointOutput

    ListStreamsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: "MaxResults"))
    ListStreamsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamsInput.add_member(:stream_name_condition, Shapes::ShapeRef.new(shape: StreamNameCondition, location_name: "StreamNameCondition"))
    ListStreamsInput.struct_class = Types::ListStreamsInput

    ListStreamsOutput.add_member(:stream_info_list, Shapes::ShapeRef.new(shape: StreamInfoList, location_name: "StreamInfoList"))
    ListStreamsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamsOutput.struct_class = Types::ListStreamsOutput

    ListTagsForStreamInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    ListTagsForStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    ListTagsForStreamInput.struct_class = Types::ListTagsForStreamInput

    ListTagsForStreamOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForStreamOutput.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "Tags"))
    ListTagsForStreamOutput.struct_class = Types::ListTagsForStreamOutput

    ResourceTags.key = Shapes::ShapeRef.new(shape: TagKey)
    ResourceTags.value = Shapes::ShapeRef.new(shape: TagValue)

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

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    TagStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    TagStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceTags, required: true, location_name: "Tags"))
    TagStreamInput.struct_class = Types::TagStreamInput

    TagStreamOutput.struct_class = Types::TagStreamOutput

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

    UpdateStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    UpdateStreamInput.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "CurrentVersion"))
    UpdateStreamInput.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    UpdateStreamInput.add_member(:media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "MediaType"))
    UpdateStreamInput.struct_class = Types::UpdateStreamInput

    UpdateStreamOutput.struct_class = Types::UpdateStreamOutput


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

      api.add_operation(:list_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreams"
        o.http_method = "POST"
        o.http_request_uri = "/listStreams"
        o.input = Shapes::ShapeRef.new(shape: ListStreamsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
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
