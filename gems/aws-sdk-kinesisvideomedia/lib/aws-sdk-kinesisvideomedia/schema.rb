# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoMedia
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ClientLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#ClientLimitExceededException', name: 'ClientLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConnectionLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#ConnectionLimitExceededException', name: 'ConnectionLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideomedia#ContentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]+$"})
    ContinuationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideomedia#ContinuationToken', name: 'ContinuationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]+$"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideomedia#ErrorMessage', name: 'ErrorMessage')
    FragmentNumberString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideomedia#FragmentNumberString', name: 'FragmentNumberString', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]+$"})
    GetMediaInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#GetMediaInput', name: 'GetMediaInput')
    GetMediaOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#GetMediaOutput', name: 'GetMediaOutput')
    InvalidArgumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEndpointException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#InvalidEndpointException', name: 'InvalidEndpointException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotAuthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#NotAuthorizedException', name: 'NotAuthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    Payload = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.kinesisvideomedia#Payload', name: 'Payload', traits: {"smithy.api#streaming" => {}})
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideomedia#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StartSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideomedia#StartSelector', name: 'StartSelector')
    StartSelectorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideomedia#StartSelectorType', name: 'StartSelectorType')
    StreamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideomedia#StreamName', name: 'StreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kinesisvideomedia#Timestamp', name: 'Timestamp')

    ClientLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ClientLimitExceededException.type = Types::ClientLimitExceededException
    ConnectionLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConnectionLimitExceededException.type = Types::ConnectionLimitExceededException
    GetMediaInput.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The Kinesis video stream name from where you want to get the media content. If you\n      don't specify the <code>streamName</code>, you must specify the\n      <code>streamARN</code>.</p>"}))
    GetMediaInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The ARN of the stream from where you want to get the media content. If you don't\n      specify the <code>streamARN</code>, you must specify the <code>streamName</code>.</p>"}))
    GetMediaInput.add_member(:start_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: StartSelector, location_name: 'StartSelector', traits: {"smithy.api#documentation" => "<p>Identifies the starting chunk to get from the specified stream. </p>", "smithy.api#required" => {}}))
    GetMediaInput.type = Types::GetMediaInput
    GetMediaOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type of the requested media.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    GetMediaOutput.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p> The payload Kinesis Video Streams returns is a sequence of chunks from the specified\n      stream. For information about the chunks, see . The\n      chunks that Kinesis Video Streams returns in the <code>GetMedia</code> call also include the\n      following additional Matroska (MKV) tags: </p>\n         <ul>\n            <li>\n               <p>AWS_KINESISVIDEO_CONTINUATION_TOKEN (UTF-8 string) - In the event your\n            <code>GetMedia</code> call terminates, you can use this continuation token in your next\n          request to get the next chunk where the last request terminated.</p>\n            </li>\n            <li>\n               <p>AWS_KINESISVIDEO_MILLIS_BEHIND_NOW (UTF-8 string) - Client applications can use\n          this tag value to determine how far behind the chunk returned in the response is from the\n          latest chunk on the stream. </p>\n            </li>\n            <li>\n               <p>AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the chunk.</p>\n            </li>\n            <li>\n               <p>AWS_KINESISVIDEO_SERVER_TIMESTAMP - Server timestamp of the fragment.</p>\n            </li>\n            <li>\n               <p>AWS_KINESISVIDEO_PRODUCER_TIMESTAMP - Producer timestamp of the fragment.</p>\n            </li>\n         </ul>\n         <p>The following tags will be present if an error occurs:</p>\n         <ul>\n            <li>\n               <p>AWS_KINESISVIDEO_ERROR_CODE - String description of an error that caused GetMedia\n          to stop.</p>\n            </li>\n            <li>\n               <p>AWS_KINESISVIDEO_ERROR_ID: Integer code of the error.</p>\n            </li>\n         </ul>\n         <p>The error codes are as follows:</p>\n         <ul>\n            <li>\n               <p>3002 - Error writing to the stream</p>\n            </li>\n            <li>\n               <p>4000 - Requested fragment is not found</p>\n            </li>\n            <li>\n               <p>4500 - Access denied for the stream's KMS key</p>\n            </li>\n            <li>\n               <p>4501 - Stream's KMS key is disabled</p>\n            </li>\n            <li>\n               <p>4502 - Validation error on the stream's KMS key</p>\n            </li>\n            <li>\n               <p>4503 - KMS key specified in the stream is unavailable</p>\n            </li>\n            <li>\n               <p>4504 - Invalid usage of the KMS key specified in the stream</p>\n            </li>\n            <li>\n               <p>4505 - Invalid state of the KMS key specified in the stream</p>\n            </li>\n            <li>\n               <p>4506 - Unable to find the KMS key specified in the stream</p>\n            </li>\n            <li>\n               <p>5000 - Internal error</p>\n            </li>\n         </ul>", "smithy.api#httpPayload" => {}}))
    GetMediaOutput[:http_payload] = :payload
    GetMediaOutput[:http_payload_member] = GetMediaOutput.member(:payload)
    GetMediaOutput.type = Types::GetMediaOutput
    InvalidArgumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidEndpointException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidEndpointException.type = Types::InvalidEndpointException
    NotAuthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotAuthorizedException.type = Types::NotAuthorizedException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StartSelector.add_member(:start_selector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StartSelectorType, location_name: 'StartSelectorType', traits: {"smithy.api#documentation" => "<p>Identifies the fragment on the Kinesis video stream where you want to start getting the\n      data from.</p>\n         <ul>\n            <li>\n               <p>NOW - Start with the latest chunk on the stream.</p>\n            </li>\n            <li>\n               <p>EARLIEST - Start with earliest available chunk on the stream.</p>\n            </li>\n            <li>\n               <p>FRAGMENT_NUMBER - Start with the chunk after a specific fragment. You must also\n          specify the <code>AfterFragmentNumber</code> parameter.</p>\n            </li>\n            <li>\n               <p>PRODUCER_TIMESTAMP or SERVER_TIMESTAMP - Start with the chunk containing a fragment\n          with the specified producer or server timestamp. You specify the timestamp by adding\n            <code>StartTimestamp</code>.</p>\n            </li>\n            <li>\n               <p> CONTINUATION_TOKEN - Read using the specified continuation token. </p>\n            </li>\n         </ul>\n         <note>\n            <p>If you choose the NOW, EARLIEST, or CONTINUATION_TOKEN as the\n          <code>startSelectorType</code>, you don't provide any additional information in the\n          <code>startSelector</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    StartSelector.add_member(:after_fragment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentNumberString, location_name: 'AfterFragmentNumber', traits: {"smithy.api#documentation" => "<p>Specifies the fragment number from where you want the <code>GetMedia</code> API to\n      start returning the fragments. </p>"}))
    StartSelector.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestamp', traits: {"smithy.api#documentation" => "<p>A timestamp value. This value is required if you choose the PRODUCER_TIMESTAMP or the\n      SERVER_TIMESTAMP as the <code>startSelectorType</code>. The <code>GetMedia</code> API then\n      starts with the chunk containing the fragment that has the specified timestamp.</p>"}))
    StartSelector.add_member(:continuation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: 'ContinuationToken', traits: {"smithy.api#documentation" => "<p>Continuation token that Kinesis Video Streams returned in the previous\n        <code>GetMedia</code> response. The <code>GetMedia</code> API then starts with the chunk\n      identified by the continuation token.</p>"}))
    StartSelector.type = Types::StartSelector
    StartSelectorType.add_member(:fragment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRAGMENT_NUMBER', traits: {"smithy.api#enumValue" => "FRAGMENT_NUMBER"}))
    StartSelectorType.add_member(:server_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_TIMESTAMP', traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    StartSelectorType.add_member(:producer_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCER_TIMESTAMP', traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    StartSelectorType.add_member(:now, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOW', traits: {"smithy.api#enumValue" => "NOW"}))
    StartSelectorType.add_member(:earliest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EARLIEST', traits: {"smithy.api#enumValue" => "EARLIEST"}))
    StartSelectorType.add_member(:continuation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUATION_TOKEN', traits: {"smithy.api#enumValue" => "CONTINUATION_TOKEN"}))

    AWSAcuityInletService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisvideomedia#AWSAcuityInletService"
      service.name = "AWSAcuityInletService"
      service.version = "2017-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Video Media", "arnNamespace" => "kinesisvideo", "cloudFormationName" => "KinesisVideoMedia", "cloudTrailEventSource" => "kinesisvideomedia.amazonaws.com", "endpointPrefix" => "kinesisvideo"}, "aws.auth#sigv4" => {"name" => "kinesisvideo"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Kinesis Video Streams Media"}
      service.add_operation(:get_media, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideomedia#GetMedia"
        operation.name = "GetMedia"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getMedia", "code" => 200}}
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
