# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoArchivedMedia
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ClientLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ClientLimitExceededException', name: 'ClientLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClipFragmentSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ClipFragmentSelector', name: 'ClipFragmentSelector')
    ClipFragmentSelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ClipFragmentSelectorType', name: 'ClipFragmentSelectorType')
    ClipTimestampRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ClipTimestampRange', name: 'ClipTimestampRange')
    ContainerFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ContainerFormat', name: 'ContainerFormat')
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ContentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]+$"})
    DASHDisplayFragmentNumber = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#DASHDisplayFragmentNumber', name: 'DASHDisplayFragmentNumber')
    DASHDisplayFragmentTimestamp = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#DASHDisplayFragmentTimestamp', name: 'DASHDisplayFragmentTimestamp')
    DASHFragmentSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#DASHFragmentSelector', name: 'DASHFragmentSelector')
    DASHFragmentSelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#DASHFragmentSelectorType', name: 'DASHFragmentSelectorType')
    DASHMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#DASHMaxResults', name: 'DASHMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    DASHPlaybackMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#DASHPlaybackMode', name: 'DASHPlaybackMode')
    DASHStreamingSessionURL = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#DASHStreamingSessionURL', name: 'DASHStreamingSessionURL')
    DASHTimestampRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#DASHTimestampRange', name: 'DASHTimestampRange')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ErrorMessage', name: 'ErrorMessage')
    Expires = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#Expires', name: 'Expires', traits: {"smithy.api#range" => {"min" => 300, "max" => 43200}})
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#Format', name: 'Format')
    FormatConfig = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#FormatConfig', name: 'FormatConfig', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FormatConfigKey = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#FormatConfigKey', name: 'FormatConfigKey')
    FormatConfigValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#FormatConfigValue', name: 'FormatConfigValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_0-9]+$"})
    Fragment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#Fragment', name: 'Fragment')
    FragmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#FragmentList', name: 'FragmentList')
    FragmentNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#FragmentNumberList', name: 'FragmentNumberList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    FragmentNumberString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#FragmentNumberString', name: 'FragmentNumberString', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]+$"})
    FragmentSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#FragmentSelector', name: 'FragmentSelector')
    FragmentSelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#FragmentSelectorType', name: 'FragmentSelectorType')
    GetClipInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetClipInput', name: 'GetClipInput')
    GetClipOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetClipOutput', name: 'GetClipOutput')
    GetDASHStreamingSessionURLInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetDASHStreamingSessionURLInput', name: 'GetDASHStreamingSessionURLInput')
    GetDASHStreamingSessionURLOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetDASHStreamingSessionURLOutput', name: 'GetDASHStreamingSessionURLOutput')
    GetHLSStreamingSessionURLInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetHLSStreamingSessionURLInput', name: 'GetHLSStreamingSessionURLInput')
    GetHLSStreamingSessionURLOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetHLSStreamingSessionURLOutput', name: 'GetHLSStreamingSessionURLOutput')
    GetImagesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetImagesInput', name: 'GetImagesInput')
    GetImagesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetImagesMaxResults', name: 'GetImagesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    GetImagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetImagesOutput', name: 'GetImagesOutput')
    GetMediaForFragmentListInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetMediaForFragmentListInput', name: 'GetMediaForFragmentListInput')
    GetMediaForFragmentListOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#GetMediaForFragmentListOutput', name: 'GetMediaForFragmentListOutput')
    HLSDiscontinuityMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HLSDiscontinuityMode', name: 'HLSDiscontinuityMode')
    HLSDisplayFragmentTimestamp = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HLSDisplayFragmentTimestamp', name: 'HLSDisplayFragmentTimestamp')
    HLSFragmentSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HLSFragmentSelector', name: 'HLSFragmentSelector')
    HLSFragmentSelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HLSFragmentSelectorType', name: 'HLSFragmentSelectorType')
    HLSMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HLSMaxResults', name: 'HLSMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    HLSPlaybackMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HLSPlaybackMode', name: 'HLSPlaybackMode')
    HLSStreamingSessionURL = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HLSStreamingSessionURL', name: 'HLSStreamingSessionURL')
    HLSTimestampRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HLSTimestampRange', name: 'HLSTimestampRange')
    HeightPixels = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#HeightPixels', name: 'HeightPixels', traits: {"smithy.api#range" => {"min" => 1, "max" => 2160}})
    Image = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#Image', name: 'Image')
    ImageContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ImageContent', name: 'ImageContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 6291456}})
    ImageError = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ImageError', name: 'ImageError')
    ImageSelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ImageSelectorType', name: 'ImageSelectorType')
    Images = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#Images', name: 'Images')
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCodecPrivateDataException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#InvalidCodecPrivateDataException', name: 'InvalidCodecPrivateDataException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMediaFrameException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#InvalidMediaFrameException', name: 'InvalidMediaFrameException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListFragmentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ListFragmentsInput', name: 'ListFragmentsInput')
    ListFragmentsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ListFragmentsMaxResults', name: 'ListFragmentsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListFragmentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ListFragmentsOutput', name: 'ListFragmentsOutput')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MissingCodecPrivateDataException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#MissingCodecPrivateDataException', name: 'MissingCodecPrivateDataException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9+/]+={0,2}$"})
    NoDataRetentionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#NoDataRetentionException', name: 'NoDataRetentionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#NotAuthorizedException', name: 'NotAuthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    Payload = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#Payload', name: 'Payload', traits: {"smithy.api#streaming" => {}})
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SamplingInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#SamplingInterval', name: 'SamplingInterval')
    StreamName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#StreamName', name: 'StreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#Timestamp', name: 'Timestamp')
    TimestampRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#TimestampRange', name: 'TimestampRange')
    UnsupportedStreamMediaTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#UnsupportedStreamMediaTypeException', name: 'UnsupportedStreamMediaTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WidthPixels = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kinesisvideoarchivedmedia#WidthPixels', name: 'WidthPixels', traits: {"smithy.api#range" => {"min" => 1, "max" => 3840}})

    ClientLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ClientLimitExceededException.type = Types::ClientLimitExceededException
    ClipFragmentSelector.add_member(:fragment_selector_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipFragmentSelectorType, location_name: 'FragmentSelectorType', traits: {"smithy.api#required" => {}}))
    ClipFragmentSelector.add_member(:timestamp_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipTimestampRange, location_name: 'TimestampRange', traits: {"smithy.api#required" => {}}))
    ClipFragmentSelector.type = Types::ClipFragmentSelector
    ClipFragmentSelectorType.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCER_TIMESTAMP', traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    ClipFragmentSelectorType.add_member(:server_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_TIMESTAMP', traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    ClipTimestampRange.add_member(:start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestamp', traits: {"smithy.api#required" => {}}))
    ClipTimestampRange.add_member(:end_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTimestamp', traits: {"smithy.api#required" => {}}))
    ClipTimestampRange.type = Types::ClipTimestampRange
    ContainerFormat.add_member(:fragmented_mp4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRAGMENTED_MP4', traits: {"smithy.api#enumValue" => "FRAGMENTED_MP4"}))
    ContainerFormat.add_member(:mpeg_ts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MPEG_TS', traits: {"smithy.api#enumValue" => "MPEG_TS"}))
    DASHDisplayFragmentNumber.add_member(:always, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS', traits: {"smithy.api#enumValue" => "ALWAYS"}))
    DASHDisplayFragmentNumber.add_member(:never, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEVER', traits: {"smithy.api#enumValue" => "NEVER"}))
    DASHDisplayFragmentTimestamp.add_member(:always, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS', traits: {"smithy.api#enumValue" => "ALWAYS"}))
    DASHDisplayFragmentTimestamp.add_member(:never, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEVER', traits: {"smithy.api#enumValue" => "NEVER"}))
    DASHFragmentSelector.add_member(:fragment_selector_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DASHFragmentSelectorType, location_name: 'FragmentSelectorType'))
    DASHFragmentSelector.add_member(:timestamp_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DASHTimestampRange, location_name: 'TimestampRange'))
    DASHFragmentSelector.type = Types::DASHFragmentSelector
    DASHFragmentSelectorType.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCER_TIMESTAMP', traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    DASHFragmentSelectorType.add_member(:server_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_TIMESTAMP', traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    DASHPlaybackMode.add_member(:live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIVE', traits: {"smithy.api#enumValue" => "LIVE"}))
    DASHPlaybackMode.add_member(:live_replay, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIVE_REPLAY', traits: {"smithy.api#enumValue" => "LIVE_REPLAY"}))
    DASHPlaybackMode.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    DASHTimestampRange.add_member(:start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestamp'))
    DASHTimestampRange.add_member(:end_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTimestamp'))
    DASHTimestampRange.type = Types::DASHTimestampRange
    Format.add_member(:jpeg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JPEG', traits: {"smithy.api#enumValue" => "JPEG"}))
    Format.add_member(:png, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PNG', traits: {"smithy.api#enumValue" => "PNG"}))
    FormatConfig.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfigKey)
    FormatConfig.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfigValue)
    FormatConfigKey.add_member(:jpeg_quality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JPEGQuality', traits: {"smithy.api#enumValue" => "JPEGQuality"}))
    Fragment.add_member(:fragment_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentNumberString, location_name: 'FragmentNumber'))
    Fragment.add_member(:fragment_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'FragmentSizeInBytes', traits: {"smithy.api#default" => 0}))
    Fragment.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ProducerTimestamp'))
    Fragment.add_member(:server_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ServerTimestamp'))
    Fragment.add_member(:fragment_length_in_milliseconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'FragmentLengthInMilliseconds', traits: {"smithy.api#default" => 0}))
    Fragment.type = Types::Fragment
    FragmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fragment)
    FragmentNumberList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentNumberString)
    FragmentSelector.add_member(:fragment_selector_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentSelectorType, location_name: 'FragmentSelectorType', traits: {"smithy.api#required" => {}}))
    FragmentSelector.add_member(:timestamp_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'TimestampRange', traits: {"smithy.api#required" => {}}))
    FragmentSelector.type = Types::FragmentSelector
    FragmentSelectorType.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCER_TIMESTAMP', traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    FragmentSelectorType.add_member(:server_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_TIMESTAMP', traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    GetClipInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    GetClipInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    GetClipInput.add_member(:clip_fragment_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipFragmentSelector, location_name: 'ClipFragmentSelector', traits: {"smithy.api#required" => {}}))
    GetClipInput.type = Types::GetClipInput
    GetClipOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetClipOutput.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload', traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetClipOutput[:http_payload] = :payload
    GetClipOutput[:http_payload_member] = GetClipOutput.member(:payload)
    GetClipOutput.type = Types::GetClipOutput
    GetDASHStreamingSessionURLInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    GetDASHStreamingSessionURLInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    GetDASHStreamingSessionURLInput.add_member(:playback_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DASHPlaybackMode, location_name: 'PlaybackMode'))
    GetDASHStreamingSessionURLInput.add_member(:display_fragment_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DASHDisplayFragmentTimestamp, location_name: 'DisplayFragmentTimestamp'))
    GetDASHStreamingSessionURLInput.add_member(:display_fragment_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DASHDisplayFragmentNumber, location_name: 'DisplayFragmentNumber'))
    GetDASHStreamingSessionURLInput.add_member(:dash_fragment_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DASHFragmentSelector, location_name: 'DASHFragmentSelector'))
    GetDASHStreamingSessionURLInput.add_member(:expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expires, location_name: 'Expires'))
    GetDASHStreamingSessionURLInput.add_member(:max_manifest_fragment_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DASHMaxResults, location_name: 'MaxManifestFragmentResults'))
    GetDASHStreamingSessionURLInput.type = Types::GetDASHStreamingSessionURLInput
    GetDASHStreamingSessionURLOutput.add_member(:dash_streaming_session_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DASHStreamingSessionURL, location_name: 'DASHStreamingSessionURL'))
    GetDASHStreamingSessionURLOutput.type = Types::GetDASHStreamingSessionURLOutput
    GetHLSStreamingSessionURLInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    GetHLSStreamingSessionURLInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    GetHLSStreamingSessionURLInput.add_member(:playback_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HLSPlaybackMode, location_name: 'PlaybackMode'))
    GetHLSStreamingSessionURLInput.add_member(:hls_fragment_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HLSFragmentSelector, location_name: 'HLSFragmentSelector'))
    GetHLSStreamingSessionURLInput.add_member(:container_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerFormat, location_name: 'ContainerFormat'))
    GetHLSStreamingSessionURLInput.add_member(:discontinuity_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HLSDiscontinuityMode, location_name: 'DiscontinuityMode'))
    GetHLSStreamingSessionURLInput.add_member(:display_fragment_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HLSDisplayFragmentTimestamp, location_name: 'DisplayFragmentTimestamp'))
    GetHLSStreamingSessionURLInput.add_member(:expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expires, location_name: 'Expires'))
    GetHLSStreamingSessionURLInput.add_member(:max_media_playlist_fragment_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HLSMaxResults, location_name: 'MaxMediaPlaylistFragmentResults'))
    GetHLSStreamingSessionURLInput.type = Types::GetHLSStreamingSessionURLInput
    GetHLSStreamingSessionURLOutput.add_member(:hls_streaming_session_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HLSStreamingSessionURL, location_name: 'HLSStreamingSessionURL'))
    GetHLSStreamingSessionURLOutput.type = Types::GetHLSStreamingSessionURLOutput
    GetImagesInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    GetImagesInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    GetImagesInput.add_member(:image_selector_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSelectorType, location_name: 'ImageSelectorType', traits: {"smithy.api#required" => {}}))
    GetImagesInput.add_member(:start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestamp', traits: {"smithy.api#required" => {}}))
    GetImagesInput.add_member(:end_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTimestamp', traits: {"smithy.api#required" => {}}))
    GetImagesInput.add_member(:sampling_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingInterval, location_name: 'SamplingInterval'))
    GetImagesInput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#required" => {}}))
    GetImagesInput.add_member(:format_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormatConfig, location_name: 'FormatConfig'))
    GetImagesInput.add_member(:width_pixels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WidthPixels, location_name: 'WidthPixels'))
    GetImagesInput.add_member(:height_pixels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeightPixels, location_name: 'HeightPixels'))
    GetImagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImagesMaxResults, location_name: 'MaxResults'))
    GetImagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    GetImagesInput.type = Types::GetImagesInput
    GetImagesOutput.add_member(:images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Images, location_name: 'Images'))
    GetImagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    GetImagesOutput.type = Types::GetImagesOutput
    GetMediaForFragmentListInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    GetMediaForFragmentListInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    GetMediaForFragmentListInput.add_member(:fragments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentNumberList, location_name: 'Fragments', traits: {"smithy.api#required" => {}}))
    GetMediaForFragmentListInput.type = Types::GetMediaForFragmentListInput
    GetMediaForFragmentListOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetMediaForFragmentListOutput.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload', traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetMediaForFragmentListOutput[:http_payload] = :payload
    GetMediaForFragmentListOutput[:http_payload_member] = GetMediaForFragmentListOutput.member(:payload)
    GetMediaForFragmentListOutput.type = Types::GetMediaForFragmentListOutput
    HLSDiscontinuityMode.add_member(:always, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS', traits: {"smithy.api#enumValue" => "ALWAYS"}))
    HLSDiscontinuityMode.add_member(:never, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEVER', traits: {"smithy.api#enumValue" => "NEVER"}))
    HLSDiscontinuityMode.add_member(:on_discontinuity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DISCONTINUITY', traits: {"smithy.api#enumValue" => "ON_DISCONTINUITY"}))
    HLSDisplayFragmentTimestamp.add_member(:always, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS', traits: {"smithy.api#enumValue" => "ALWAYS"}))
    HLSDisplayFragmentTimestamp.add_member(:never, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEVER', traits: {"smithy.api#enumValue" => "NEVER"}))
    HLSFragmentSelector.add_member(:fragment_selector_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HLSFragmentSelectorType, location_name: 'FragmentSelectorType'))
    HLSFragmentSelector.add_member(:timestamp_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HLSTimestampRange, location_name: 'TimestampRange'))
    HLSFragmentSelector.type = Types::HLSFragmentSelector
    HLSFragmentSelectorType.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCER_TIMESTAMP', traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    HLSFragmentSelectorType.add_member(:server_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_TIMESTAMP', traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    HLSPlaybackMode.add_member(:live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIVE', traits: {"smithy.api#enumValue" => "LIVE"}))
    HLSPlaybackMode.add_member(:live_replay, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIVE_REPLAY', traits: {"smithy.api#enumValue" => "LIVE_REPLAY"}))
    HLSPlaybackMode.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    HLSTimestampRange.add_member(:start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestamp'))
    HLSTimestampRange.add_member(:end_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTimestamp'))
    HLSTimestampRange.type = Types::HLSTimestampRange
    Image.add_member(:time_stamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'TimeStamp'))
    Image.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageError, location_name: 'Error'))
    Image.add_member(:image_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageContent, location_name: 'ImageContent'))
    Image.type = Types::Image
    ImageError.add_member(:no_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_MEDIA', traits: {"smithy.api#enumValue" => "NO_MEDIA"}))
    ImageError.add_member(:media_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIA_ERROR', traits: {"smithy.api#enumValue" => "MEDIA_ERROR"}))
    ImageSelectorType.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCER_TIMESTAMP', traits: {"smithy.api#enumValue" => "PRODUCER_TIMESTAMP"}))
    ImageSelectorType.add_member(:server_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_TIMESTAMP', traits: {"smithy.api#enumValue" => "SERVER_TIMESTAMP"}))
    Images.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image)
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidCodecPrivateDataException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidCodecPrivateDataException.type = Types::InvalidCodecPrivateDataException
    InvalidMediaFrameException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidMediaFrameException.type = Types::InvalidMediaFrameException
    ListFragmentsInput.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName'))
    ListFragmentsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'StreamARN'))
    ListFragmentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFragmentsMaxResults, location_name: 'MaxResults'))
    ListFragmentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListFragmentsInput.add_member(:fragment_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentSelector, location_name: 'FragmentSelector'))
    ListFragmentsInput.type = Types::ListFragmentsInput
    ListFragmentsOutput.add_member(:fragments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentList, location_name: 'Fragments'))
    ListFragmentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListFragmentsOutput.type = Types::ListFragmentsOutput
    MissingCodecPrivateDataException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MissingCodecPrivateDataException.type = Types::MissingCodecPrivateDataException
    NoDataRetentionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NoDataRetentionException.type = Types::NoDataRetentionException
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotAuthorizedException.type = Types::NotAuthorizedException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    TimestampRange.add_member(:start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestamp', traits: {"smithy.api#required" => {}}))
    TimestampRange.add_member(:end_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTimestamp', traits: {"smithy.api#required" => {}}))
    TimestampRange.type = Types::TimestampRange
    UnsupportedStreamMediaTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnsupportedStreamMediaTypeException.type = Types::UnsupportedStreamMediaTypeException

    AWSAcuityReader = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesisvideoarchivedmedia#AWSAcuityReader"
      service.name = "AWSAcuityReader"
      service.version = "2017-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis Video Archived Media", "arnNamespace" => "kinesisvideo", "cloudFormationName" => "KinesisVideoArchivedMedia", "cloudTrailEventSource" => "kinesisvideoarchivedmedia.amazonaws.com", "endpointPrefix" => "kinesisvideo"}, "aws.auth#sigv4" => {"name" => "kinesisvideo"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Kinesis Video Streams Archived Media"}
      service.add_operation(:get_clip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideoarchivedmedia#GetClip"
        operation.name = "GetClip"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClipInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClipOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCodecPrivateDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMediaFrameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingCodecPrivateDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedStreamMediaTypeException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getClip", "code" => 200}}
      end)
      service.add_operation(:get_dash_streaming_session_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideoarchivedmedia#GetDASHStreamingSessionURL"
        operation.name = "GetDASHStreamingSessionURL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDASHStreamingSessionURLInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDASHStreamingSessionURLOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCodecPrivateDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingCodecPrivateDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedStreamMediaTypeException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getDASHStreamingSessionURL", "code" => 200}}
      end)
      service.add_operation(:get_hls_streaming_session_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideoarchivedmedia#GetHLSStreamingSessionURL"
        operation.name = "GetHLSStreamingSessionURL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHLSStreamingSessionURLInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHLSStreamingSessionURLOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCodecPrivateDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingCodecPrivateDataException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedStreamMediaTypeException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getHLSStreamingSessionURL", "code" => 200}}
      end)
      service.add_operation(:get_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideoarchivedmedia#GetImages"
        operation.name = "GetImages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImagesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImagesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoDataRetentionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getImages", "code" => 200}}
        operation[:paginator] = Paginators::GetImages.new
      end)
      service.add_operation(:get_media_for_fragment_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideoarchivedmedia#GetMediaForFragmentList"
        operation.name = "GetMediaForFragmentList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaForFragmentListInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaForFragmentListOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getMediaForFragmentList", "code" => 200}}
      end)
      service.add_operation(:list_fragments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesisvideoarchivedmedia#ListFragments"
        operation.name = "ListFragments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFragmentsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFragmentsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listFragments", "code" => 200}}
        operation[:paginator] = Paginators::ListFragments.new
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
