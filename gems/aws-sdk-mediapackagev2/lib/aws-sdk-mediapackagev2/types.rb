# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaPackageV2
  module Types

    # You don't have permissions to perform the requested operation. The
    # user or role that is making the request must have at least one IAM
    # permissions policy attached that grants the required permissions. For
    # more information, see Access Management in the IAM User Guide.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the channel group.
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel group was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel group was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the channel
    #   group for future identification purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ChannelGroupListConfiguration AWS API Documentation
    #
    class ChannelGroupListConfiguration < Struct.new(
      :channel_group_name,
      :arn,
      :created_at,
      :modified_at,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the channel.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the channel for
    #   future identification purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ChannelListConfiguration AWS API Documentation
    #
    class ChannelListConfiguration < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting this resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] conflict_exception_type
    #   The type of ConflictException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :conflict_exception_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region. You can't use spaces in the name. You
    #   can't change the name after you create the channel group.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Enter any descriptive text that helps you to identify the channel
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelGroupRequest AWS API Documentation
    #
    class CreateChannelGroupRequest < Struct.new(
      :channel_group_name,
      :client_token,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] egress_domain
    #   The output domain where the source stream should be sent. Integrate
    #   the egress domain with a downstream CDN (such as Amazon CloudFront)
    #   or playback device.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel group was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel group was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelGroupResponse AWS API Documentation
    #
    class CreateChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group. You can't change the name after
    #   you create the channel.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Enter any descriptive text that helps you to identify the channel.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :client_token,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel.
    #   @return [String]
    #
    # @!attribute [rw] ingest_endpoints
    #   The list of ingest endpoints.
    #   @return [Array<Types::IngestEndpoint>]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :ingest_endpoints,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create an HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index,
    #   with an added suffix to distinguish it from the manifest name. The
    #   manifestName on the HLSManifest object overrides the manifestName
    #   you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] scte_hls
    #   The SCTE configuration.
    #   @return [Types::ScteHls]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the
    #   interval that you specify. If you don't enter an interval,
    #   EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest. The
    #   tags sync the stream to the wall clock so that viewers can seek to a
    #   specific time in the playback timeline on the player. ID3Timed
    #   metadata messages generate every 5 seconds whenever the content is
    #   ingested.
    #
    #   Irrespective of this parameter, if any ID3Timed metadata is in the
    #   HLS input, it is passed through to the HLS output.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateHlsManifestConfiguration AWS API Documentation
    #
    class CreateHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :scte_hls,
      :manifest_window_seconds,
      :program_date_time_interval_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a low-latency HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index,
    #   with an added suffix to distinguish it from the manifest name. The
    #   manifestName on the HLSManifest object overrides the manifestName
    #   you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] scte_hls
    #   The SCTE configuration.
    #   @return [Types::ScteHls]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the
    #   interval that you specify. If you don't enter an interval,
    #   EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest. The
    #   tags sync the stream to the wall clock so that viewers can seek to a
    #   specific time in the playback timeline on the player. ID3Timed
    #   metadata messages generate every 5 seconds whenever the content is
    #   ingested.
    #
    #   Irrespective of this parameter, if any ID3Timed metadata is in the
    #   HLS input, it is passed through to the HLS output.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateLowLatencyHlsManifestConfiguration AWS API Documentation
    #
    class CreateLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :scte_hls,
      :manifest_window_seconds,
      :program_date_time_interval_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and must be unique for your
    #   account in the AWS Region and channel. You can't use spaces in the
    #   name. You can't change the name after you create the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container to attach to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file. You can't change the
    #   container type after you create the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Enter any descriptive text that helps you to identify the origin
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window. The
    #   maximum startover window is 1,209,600 seconds (14 days).
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::CreateHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::CreateLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateOriginEndpointRequest AWS API Documentation
    #
    class CreateOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :client_token,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] created_at
    #   The date and time the origin endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the origin endpoint was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window.
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   origin endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateOriginEndpointResponse AWS API Documentation
    #
    class CreateOriginEndpointResponse < Struct.new(
      :arn,
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :created_at,
      :modified_at,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelGroupRequest AWS API Documentation
    #
    class DeleteChannelGroupRequest < Struct.new(
      :channel_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelGroupResponse AWS API Documentation
    #
    class DeleteChannelGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelPolicyRequest AWS API Documentation
    #
    class DeleteChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelPolicyResponse AWS API Documentation
    #
    class DeleteChannelPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelResponse AWS API Documentation
    #
    class DeleteChannelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointPolicyRequest AWS API Documentation
    #
    class DeleteOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointPolicyResponse AWS API Documentation
    #
    class DeleteOriginEndpointPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointRequest AWS API Documentation
    #
    class DeleteOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointResponse AWS API Documentation
    #
    class DeleteOriginEndpointResponse < Aws::EmptyStructure; end

    # The parameters for encrypting content.
    #
    # @!attribute [rw] constant_initialization_vector
    #   A 128-bit, 16-byte hex value represented by a 32-character string,
    #   used in conjunction with the key for encrypting content. If you
    #   don't specify a value, then MediaPackage creates the constant
    #   initialization vector (IV).
    #   @return [String]
    #
    # @!attribute [rw] encryption_method
    #   The encryption method to use.
    #   @return [Types::EncryptionMethod]
    #
    # @!attribute [rw] key_rotation_interval_seconds
    #   The frequency (in seconds) of key changes for live workflows, in
    #   which content is streamed real time. The service retrieves content
    #   keys before the live content begins streaming, and then retrieves
    #   them as needed over the lifetime of the workflow. By default, key
    #   rotation is set to 300 seconds (5 minutes), the minimum rotation
    #   interval, which is equivalent to setting it to 300. If you don't
    #   enter an interval, content keys aren't rotated.
    #
    #   The following example setting causes the service to rotate keys
    #   every thirty minutes: `1800`
    #   @return [Integer]
    #
    # @!attribute [rw] speke_key_provider
    #   The parameters for the SPEKE key provider.
    #   @return [Types::SpekeKeyProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/Encryption AWS API Documentation
    #
    class Encryption < Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :key_rotation_interval_seconds,
      :speke_key_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure one or more content encryption keys for your endpoints that
    # use SPEKE Version 2.0. The encryption contract defines which content
    # keys are used to encrypt the audio and video tracks in your stream. To
    # configure the encryption contract, specify which audio and video
    # encryption presets to use.
    #
    # @!attribute [rw] preset_speke_20_audio
    #   A collection of audio encryption presets.
    #
    #   Value description:
    #
    #   * PRESET-AUDIO-1 - Use one content key to encrypt all of the audio
    #     tracks in your stream.
    #
    #   * PRESET-AUDIO-2 - Use one content key to encrypt all of the stereo
    #     audio tracks and one content key to encrypt all of the
    #     multichannel audio tracks.
    #
    #   * PRESET-AUDIO-3 - Use one content key to encrypt all of the stereo
    #     audio tracks, one content key to encrypt all of the multichannel
    #     audio tracks with 3 to 6 channels, and one content key to encrypt
    #     all of the multichannel audio tracks with more than 6 channels.
    #
    #   * SHARED - Use the same content key for all of the audio and video
    #     tracks in your stream.
    #
    #   * UNENCRYPTED - Don't encrypt any of the audio tracks in your
    #     stream.
    #   @return [String]
    #
    # @!attribute [rw] preset_speke_20_video
    #   A collection of video encryption presets.
    #
    #   Value description:
    #
    #   * PRESET-VIDEO-1 - Use one content key to encrypt all of the video
    #     tracks in your stream.
    #
    #   * PRESET-VIDEO-2 - Use one content key to encrypt all of the SD
    #     video tracks and one content key for all HD and higher resolutions
    #     video tracks.
    #
    #   * PRESET-VIDEO-3 - Use one content key to encrypt all of the SD
    #     video tracks, one content key for HD video tracks and one content
    #     key for all UHD video tracks.
    #
    #   * PRESET-VIDEO-4 - Use one content key to encrypt all of the SD
    #     video tracks, one content key for HD video tracks, one content key
    #     for all UHD1 video tracks and one content key for all UHD2 video
    #     tracks.
    #
    #   * PRESET-VIDEO-5 - Use one content key to encrypt all of the SD
    #     video tracks, one content key for HD1 video tracks, one content
    #     key for HD2 video tracks, one content key for all UHD1 video
    #     tracks and one content key for all UHD2 video tracks.
    #
    #   * PRESET-VIDEO-6 - Use one content key to encrypt all of the SD
    #     video tracks, one content key for HD1 video tracks, one content
    #     key for HD2 video tracks and one content key for all UHD video
    #     tracks.
    #
    #   * PRESET-VIDEO-7 - Use one content key to encrypt all of the SD+HD1
    #     video tracks, one content key for HD2 video tracks and one content
    #     key for all UHD video tracks.
    #
    #   * PRESET-VIDEO-8 - Use one content key to encrypt all of the SD+HD1
    #     video tracks, one content key for HD2 video tracks, one content
    #     key for all UHD1 video tracks and one content key for all UHD2
    #     video tracks.
    #
    #   * SHARED - Use the same content key for all of the video and audio
    #     tracks in your stream.
    #
    #   * UNENCRYPTED - Don't encrypt any of the video tracks in your
    #     stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/EncryptionContractConfiguration AWS API Documentation
    #
    class EncryptionContractConfiguration < Struct.new(
      :preset_speke_20_audio,
      :preset_speke_20_video)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption type.
    #
    # @!attribute [rw] ts_encryption_method
    #   The encryption method to use.
    #   @return [String]
    #
    # @!attribute [rw] cmaf_encryption_method
    #   The encryption method to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/EncryptionMethod AWS API Documentation
    #
    class EncryptionMethod < Struct.new(
      :ts_encryption_method,
      :cmaf_encryption_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelGroupRequest AWS API Documentation
    #
    class GetChannelGroupRequest < Struct.new(
      :channel_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] egress_domain
    #   The output domain where the source stream should be sent. Integrate
    #   the domain with a downstream CDN (such as Amazon CloudFront) or
    #   playback device.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel group was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel group was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelGroupResponse AWS API Documentation
    #
    class GetChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelPolicyRequest AWS API Documentation
    #
    class GetChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy assigned to the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelPolicyResponse AWS API Documentation
    #
    class GetChannelPolicyResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelRequest AWS API Documentation
    #
    class GetChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel.
    #   @return [String]
    #
    # @!attribute [rw] ingest_endpoints
    #   The list of ingest endpoints.
    #   @return [Array<Types::IngestEndpoint>]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelResponse AWS API Documentation
    #
    class GetChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :ingest_endpoints,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieve the HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default child manifest name,
    #   index\_1. The manifestName on the HLSManifest object overrides the
    #   manifestName you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the
    #   interval that you specify. If you don't enter an interval,
    #   EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest. The
    #   tags sync the stream to the wall clock so that viewers can seek to a
    #   specific time in the playback timeline on the player. ID3Timed
    #   metadata messages generate every 5 seconds whenever the content is
    #   ingested.
    #
    #   Irrespective of this parameter, if any ID3Timed metadata is in the
    #   HLS input, it is passed through to the HLS output.
    #   @return [Integer]
    #
    # @!attribute [rw] scte_hls
    #   The SCTE configuration.
    #   @return [Types::ScteHls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetHlsManifestConfiguration AWS API Documentation
    #
    class GetHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :child_manifest_name,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :scte_hls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieve the low-latency HTTP live streaming (HLS) manifest
    # configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default child manifest name,
    #   index\_1. The manifestName on the HLSManifest object overrides the
    #   manifestName you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] manifest_window_seconds
    #   The total duration (in seconds) of the manifest's content.
    #   @return [Integer]
    #
    # @!attribute [rw] program_date_time_interval_seconds
    #   Inserts EXT-X-PROGRAM-DATE-TIME tags in the output manifest at the
    #   interval that you specify. If you don't enter an interval,
    #   EXT-X-PROGRAM-DATE-TIME tags aren't included in the manifest. The
    #   tags sync the stream to the wall clock so that viewers can seek to a
    #   specific time in the playback timeline on the player. ID3Timed
    #   metadata messages generate every 5 seconds whenever the content is
    #   ingested.
    #
    #   Irrespective of this parameter, if any ID3Timed metadata is in the
    #   HLS input, it is passed through to the HLS output.
    #   @return [Integer]
    #
    # @!attribute [rw] scte_hls
    #   The SCTE configuration.
    #   @return [Types::ScteHls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetLowLatencyHlsManifestConfiguration AWS API Documentation
    #
    class GetLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :url,
      :child_manifest_name,
      :manifest_window_seconds,
      :program_date_time_interval_seconds,
      :scte_hls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointPolicyRequest AWS API Documentation
    #
    class GetOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy assigned to the origin endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointPolicyResponse AWS API Documentation
    #
    class GetOriginEndpointPolicyResponse < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointRequest AWS API Documentation
    #
    class GetOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] created_at
    #   The date and time the origin endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the origin endpoint was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window.
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   origin endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointResponse AWS API Documentation
    #
    class GetOriginEndpointResponse < Struct.new(
      :arn,
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :created_at,
      :modified_at,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ingest domain URL where the source stream should be sent.
    #
    # @!attribute [rw] id
    #   The system-generated unique identifier for the IngestEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The ingest domain URL where the source stream should be sent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/IngestEndpoint AWS API Documentation
    #
    class IngestEndpoint < Struct.new(
      :id,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that an error from the service occurred while trying to
    # process a request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelGroupsRequest AWS API Documentation
    #
    class ListChannelGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The objects being returned.
    #   @return [Array<Types::ChannelGroupListConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelGroupsResponse AWS API Documentation
    #
    class ListChannelGroupsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :channel_group_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The objects being returned.
    #   @return [Array<Types::ChannelListConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List the HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default child manifest name,
    #   index\_1. The manifestName on the HLSManifest object overrides the
    #   manifestName you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListHlsManifestConfiguration AWS API Documentation
    #
    class ListHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # List the low-latency HTTP live streaming (HLS) manifest configuration.
    #
    # @!attribute [rw] manifest_name
    #   A short short string that's appended to the endpoint URL. The
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default manifest name, index.
    #   MediaPackage automatically inserts the format extension, such as
    #   .m3u8. You can't use the same manifest name if you use HLS manifest
    #   and low-latency HLS manifest. The manifestName on the HLSManifest
    #   object overrides the manifestName you provided on the originEndpoint
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] child_manifest_name
    #   A short string that's appended to the endpoint URL. The child
    #   manifest name creates a unique path to this endpoint. If you don't
    #   enter a value, MediaPackage uses the default child manifest name,
    #   index\_1. The manifestName on the HLSManifest object overrides the
    #   manifestName you provided on the originEndpoint object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The egress domain URL for stream delivery from MediaPackage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListLowLatencyHlsManifestConfiguration AWS API Documentation
    #
    class ListLowLatencyHlsManifestConfiguration < Struct.new(
      :manifest_name,
      :child_manifest_name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListOriginEndpointsRequest AWS API Documentation
    #
    class ListOriginEndpointsRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The objects being returned.
    #   @return [Array<Types::OriginEndpointListConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the GET list request. Use the token to
    #   fetch the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListOriginEndpointsResponse AWS API Documentation
    #
    class ListOriginEndpointsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch resource that you want to view tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the origin endpoint.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the origin
    #   endpoint for future identification purposes.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the origin endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the origin endpoint was modified.
    #   @return [Time]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::ListHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::ListLowLatencyHlsManifestConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/OriginEndpointListConfiguration AWS API Documentation
    #
    class OriginEndpointListConfiguration < Struct.new(
      :arn,
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :description,
      :created_at,
      :modified_at,
      :hls_manifests,
      :low_latency_hls_manifests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to attach to the specified channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutChannelPolicyRequest AWS API Documentation
    #
    class PutChannelPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutChannelPolicyResponse AWS API Documentation
    #
    class PutChannelPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to attach to the specified origin endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutOriginEndpointPolicyRequest AWS API Documentation
    #
    class PutOriginEndpointPolicyRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutOriginEndpointPolicyResponse AWS API Documentation
    #
    class PutOriginEndpointPolicyResponse < Aws::EmptyStructure; end

    # The specified resource doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type_not_found
    #   The specified resource type wasn't found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SCTE configuration.
    #
    # @!attribute [rw] scte_filter
    #   The SCTE-35 message types that you want to be treated as ad markers
    #   in the output.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/Scte AWS API Documentation
    #
    class Scte < Struct.new(
      :scte_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SCTE configuration.
    #
    # @!attribute [rw] ad_marker_hls
    #   Ad markers indicate when ads should be inserted during playback. If
    #   you include ad markers in the content stream in your upstream
    #   encoders, then you need to inform MediaPackage what to do with the
    #   ad markers in the output. Choose what you want MediaPackage to do
    #   with the ad markers.
    #
    #   Value description:
    #
    #   * DATERANGE - Insert EXT-X-DATERANGE tags to signal ad and program
    #     transition events in TS and CMAF manifests. If you use DATERANGE,
    #     you must set a programDateTimeIntervalSeconds value of 1 or
    #     higher. To learn more about DATERANGE, see [SCTE-35 Ad Marker
    #     EXT-X-DATERANGE][1].
    #
    #   ^
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mediapackage/latest/ug/scte-35-ad-marker-ext-x-daterange.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ScteHls AWS API Documentation
    #
    class ScteHls < Struct.new(
      :ad_marker_hls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The segment configuration, including the segment name, duration, and
    # other configuration values.
    #
    # @!attribute [rw] segment_duration_seconds
    #   The duration (in seconds) of each segment. Enter a value equal to,
    #   or a multiple of, the input segment duration. If the value that you
    #   enter is different from the input segment duration, MediaPackage
    #   rounds segments to the nearest multiple of the input segment
    #   duration.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_name
    #   The name that describes the segment. The name is the base name of
    #   the segment used in all content manifests inside of the endpoint.
    #   You can't use spaces in the name.
    #   @return [String]
    #
    # @!attribute [rw] ts_use_audio_rendition_group
    #   When selected, MediaPackage bundles all audio tracks in a rendition
    #   group. All other tracks in the stream can be used with any audio
    #   rendition from the group.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_iframe_only_streams
    #   When selected, the stream set includes an additional I-frame only
    #   stream, along with the other tracks. If false, this extra stream is
    #   not included. MediaPackage generates an I-frame only stream from the
    #   first rendition in the manifest. The service inserts
    #   EXT-I-FRAMES-ONLY tags in the output manifest, and then generates
    #   and includes an I-frames only playlist in the stream. This playlist
    #   permits player functionality like fast forward and rewind.
    #   @return [Boolean]
    #
    # @!attribute [rw] ts_include_dvb_subtitles
    #   By default, MediaPackage excludes all digital video broadcasting
    #   (DVB) subtitles from the output. When selected, MediaPackage passes
    #   through DVB subtitles into the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] scte
    #   The SCTE configuration options in the segment settings.
    #   @return [Types::Scte]
    #
    # @!attribute [rw] encryption
    #   The parameters for encrypting content.
    #   @return [Types::Encryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/Segment AWS API Documentation
    #
    class Segment < Struct.new(
      :segment_duration_seconds,
      :segment_name,
      :ts_use_audio_rendition_group,
      :include_iframe_only_streams,
      :ts_include_dvb_subtitles,
      :scte,
      :encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for the SPEKE key provider.
    #
    # @!attribute [rw] encryption_contract_configuration
    #   Configure one or more content encryption keys for your endpoints
    #   that use SPEKE Version 2.0. The encryption contract defines which
    #   content keys are used to encrypt the audio and video tracks in your
    #   stream. To configure the encryption contract, specify which audio
    #   and video encryption presets to use.
    #   @return [Types::EncryptionContractConfiguration]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the content. The service sends this to the
    #   key server to identify the current endpoint. How unique you make
    #   this depends on how fine-grained you want access controls to be. The
    #   service does not permit you to use the same ID for two simultaneous
    #   encryption processes. The resource ID is also known as the content
    #   ID.
    #
    #   The following example shows a resource ID:
    #   `MovieNight20171126093045`
    #   @return [String]
    #
    # @!attribute [rw] drm_systems
    #   The DRM solution provider you're using to protect your content
    #   during distribution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The ARN for the IAM role granted by the key provider that provides
    #   access to the key provider API. This role must have a trust policy
    #   that allows MediaPackage to assume the role, and it must have a
    #   sufficient permissions policy to allow access to the specific key
    #   retrieval URL. Get this from your DRM solution provider.
    #
    #   Valid format: `arn:aws:iam::\{accountID\}:role/\{name\}`. The
    #   following example shows a role ARN:
    #   `arn:aws:iam::444455556666:role/SpekeAccess`
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the API Gateway proxy that you set up to talk to your key
    #   server. The API Gateway proxy must reside in the same AWS Region as
    #   MediaPackage and must start with https://.
    #
    #   The following example shows a URL:
    #   `https://1wm2dx1f33.execute-api.us-west-2.amazonaws.com/SpekeSample/copyProtection`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/SpekeKeyProvider AWS API Documentation
    #
    class SpekeKeyProvider < Struct.new(
      :encryption_contract_configuration,
      :resource_id,
      :drm_systems,
      :role_arn,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the MediaPackage resource that you're adding tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request throughput limit was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the MediaPackage resource that you're removing tags
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the channel
    #   group for future identification purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelGroupRequest AWS API Documentation
    #
    class UpdateChannelGroupRequest < Struct.new(
      :channel_group_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] egress_domain
    #   The output domain where the source stream is sent. Integrate the
    #   domain with a downstream CDN (such as Amazon CloudFront) or playback
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel group was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel group was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelGroupResponse AWS API Documentation
    #
    class UpdateChannelGroupResponse < Struct.new(
      :channel_group_name,
      :arn,
      :egress_domain,
      :created_at,
      :modified_at,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the channel for
    #   future identification purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the channel was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for your channel.
    #   @return [String]
    #
    # @!attribute [rw] ingest_endpoints
    #   The list of ingest endpoints.
    #   @return [Array<Types::IngestEndpoint>]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   channel.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :arn,
      :channel_name,
      :channel_group_name,
      :created_at,
      :modified_at,
      :description,
      :ingest_endpoints,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] description
    #   Any descriptive information that you want to add to the origin
    #   endpoint for future identification purposes.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window. The
    #   maximum startover window is 1,209,600 seconds (14 days).
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::CreateHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::CreateLowLatencyHlsManifestConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateOriginEndpointRequest AWS API Documentation
    #
    class UpdateOriginEndpointRequest < Struct.new(
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your
    #   account in the AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in
    #   the AWS Region and channel group.
    #   @return [String]
    #
    # @!attribute [rw] origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   The type of container attached to this origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] created_at
    #   The date and time the origin endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the origin endpoint was modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the origin endpoint.
    #   @return [String]
    #
    # @!attribute [rw] startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can
    #   start-over or catch-up on content that falls within the window.
    #   @return [Integer]
    #
    # @!attribute [rw] hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #   @return [Array<Types::GetHlsManifestConfiguration>]
    #
    # @!attribute [rw] low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #   @return [Array<Types::GetLowLatencyHlsManifestConfiguration>]
    #
    # @!attribute [rw] tags
    #   The comma-separated list of tag key:value pairs assigned to the
    #   origin endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateOriginEndpointResponse AWS API Documentation
    #
    class UpdateOriginEndpointResponse < Struct.new(
      :arn,
      :channel_group_name,
      :channel_name,
      :origin_endpoint_name,
      :container_type,
      :segment,
      :created_at,
      :modified_at,
      :description,
      :startover_window_seconds,
      :hls_manifests,
      :low_latency_hls_manifests,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by the AWS service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] validation_exception_type
    #   The type of ValidationException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :validation_exception_type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
