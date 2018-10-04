# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoMedia
  # @api private
  module ClientApi

    include Seahorse::Model

    ClientLimitExceededException = Shapes::StructureShape.new(name: 'ClientLimitExceededException')
    ConnectionLimitExceededException = Shapes::StructureShape.new(name: 'ConnectionLimitExceededException')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    ContinuationToken = Shapes::StringShape.new(name: 'ContinuationToken')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FragmentNumberString = Shapes::StringShape.new(name: 'FragmentNumberString')
    GetMediaInput = Shapes::StructureShape.new(name: 'GetMediaInput')
    GetMediaOutput = Shapes::StructureShape.new(name: 'GetMediaOutput')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidEndpointException = Shapes::StructureShape.new(name: 'InvalidEndpointException')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    Payload = Shapes::BlobShape.new(name: 'Payload')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StartSelector = Shapes::StructureShape.new(name: 'StartSelector')
    StartSelectorType = Shapes::StringShape.new(name: 'StartSelectorType')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')

    GetMediaInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    GetMediaInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "StreamARN"))
    GetMediaInput.add_member(:start_selector, Shapes::ShapeRef.new(shape: StartSelector, required: true, location_name: "StartSelector"))
    GetMediaInput.struct_class = Types::GetMediaInput

    GetMediaOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location: "header", location_name: "Content-Type"))
    GetMediaOutput.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "Payload"))
    GetMediaOutput.struct_class = Types::GetMediaOutput
    GetMediaOutput[:payload] = :payload
    GetMediaOutput[:payload_member] = GetMediaOutput.member(:payload)

    StartSelector.add_member(:start_selector_type, Shapes::ShapeRef.new(shape: StartSelectorType, required: true, location_name: "StartSelectorType"))
    StartSelector.add_member(:after_fragment_number, Shapes::ShapeRef.new(shape: FragmentNumberString, location_name: "AfterFragmentNumber"))
    StartSelector.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTimestamp"))
    StartSelector.add_member(:continuation_token, Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "ContinuationToken"))
    StartSelector.struct_class = Types::StartSelector


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-30"

      api.metadata = {
        "apiVersion" => "2017-09-30",
        "endpointPrefix" => "kinesisvideo",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Kinesis Video Media",
        "serviceFullName" => "Amazon Kinesis Video Streams Media",
        "serviceId" => "Kinesis Video Media",
        "signatureVersion" => "v4",
        "uid" => "kinesis-video-media-2017-09-30",
      }

      api.add_operation(:get_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMedia"
        o.http_method = "POST"
        o.http_request_uri = "/getMedia"
        o.input = Shapes::ShapeRef.new(shape: GetMediaInput)
        o.output = Shapes::ShapeRef.new(shape: GetMediaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectionLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)
    end

  end
end
