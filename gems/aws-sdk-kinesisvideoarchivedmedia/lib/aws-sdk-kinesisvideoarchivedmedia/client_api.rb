# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoArchivedMedia
  # @api private
  module ClientApi

    include Seahorse::Model

    ClientLimitExceededException = Shapes::StructureShape.new(name: 'ClientLimitExceededException')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Fragment = Shapes::StructureShape.new(name: 'Fragment')
    FragmentList = Shapes::ListShape.new(name: 'FragmentList')
    FragmentNumberList = Shapes::ListShape.new(name: 'FragmentNumberList')
    FragmentNumberString = Shapes::StringShape.new(name: 'FragmentNumberString')
    FragmentSelector = Shapes::StructureShape.new(name: 'FragmentSelector')
    FragmentSelectorType = Shapes::StringShape.new(name: 'FragmentSelectorType')
    GetMediaForFragmentListInput = Shapes::StructureShape.new(name: 'GetMediaForFragmentListInput')
    GetMediaForFragmentListOutput = Shapes::StructureShape.new(name: 'GetMediaForFragmentListOutput')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    ListFragmentsInput = Shapes::StructureShape.new(name: 'ListFragmentsInput')
    ListFragmentsOutput = Shapes::StructureShape.new(name: 'ListFragmentsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    PageLimit = Shapes::IntegerShape.new(name: 'PageLimit')
    Payload = Shapes::BlobShape.new(name: 'Payload')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    String = Shapes::StringShape.new(name: 'String')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampRange = Shapes::StructureShape.new(name: 'TimestampRange')

    Fragment.add_member(:fragment_number, Shapes::ShapeRef.new(shape: String, location_name: "FragmentNumber"))
    Fragment.add_member(:fragment_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "FragmentSizeInBytes"))
    Fragment.add_member(:producer_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ProducerTimestamp"))
    Fragment.add_member(:server_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ServerTimestamp"))
    Fragment.add_member(:fragment_length_in_milliseconds, Shapes::ShapeRef.new(shape: Long, location_name: "FragmentLengthInMilliseconds"))
    Fragment.struct_class = Types::Fragment

    FragmentList.member = Shapes::ShapeRef.new(shape: Fragment)

    FragmentNumberList.member = Shapes::ShapeRef.new(shape: FragmentNumberString)

    FragmentSelector.add_member(:fragment_selector_type, Shapes::ShapeRef.new(shape: FragmentSelectorType, required: true, location_name: "FragmentSelectorType"))
    FragmentSelector.add_member(:timestamp_range, Shapes::ShapeRef.new(shape: TimestampRange, required: true, location_name: "TimestampRange"))
    FragmentSelector.struct_class = Types::FragmentSelector

    GetMediaForFragmentListInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    GetMediaForFragmentListInput.add_member(:fragments, Shapes::ShapeRef.new(shape: FragmentNumberList, required: true, location_name: "Fragments"))
    GetMediaForFragmentListInput.struct_class = Types::GetMediaForFragmentListInput

    GetMediaForFragmentListOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location: "header", location_name: "Content-Type"))
    GetMediaForFragmentListOutput.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "Payload"))
    GetMediaForFragmentListOutput.struct_class = Types::GetMediaForFragmentListOutput
    GetMediaForFragmentListOutput[:payload] = :payload
    GetMediaForFragmentListOutput[:payload_member] = GetMediaForFragmentListOutput.member(:payload)

    ListFragmentsInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    ListFragmentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PageLimit, location_name: "MaxResults"))
    ListFragmentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFragmentsInput.add_member(:fragment_selector, Shapes::ShapeRef.new(shape: FragmentSelector, location_name: "FragmentSelector"))
    ListFragmentsInput.struct_class = Types::ListFragmentsInput

    ListFragmentsOutput.add_member(:fragments, Shapes::ShapeRef.new(shape: FragmentList, location_name: "Fragments"))
    ListFragmentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFragmentsOutput.struct_class = Types::ListFragmentsOutput

    TimestampRange.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTimestamp"))
    TimestampRange.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTimestamp"))
    TimestampRange.struct_class = Types::TimestampRange


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-30"

      api.metadata = {
        "endpointPrefix" => "kinesisvideo",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Kinesis Video Streams Archived Media",
        "signatureVersion" => "v4",
      }

      api.add_operation(:get_media_for_fragment_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMediaForFragmentList"
        o.http_method = "POST"
        o.http_request_uri = "/getMediaForFragmentList"
        o.input = Shapes::ShapeRef.new(shape: GetMediaForFragmentListInput)
        o.output = Shapes::ShapeRef.new(shape: GetMediaForFragmentListOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:list_fragments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFragments"
        o.http_method = "POST"
        o.http_request_uri = "/listFragments"
        o.input = Shapes::ShapeRef.new(shape: ListFragmentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListFragmentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)
    end

  end
end
