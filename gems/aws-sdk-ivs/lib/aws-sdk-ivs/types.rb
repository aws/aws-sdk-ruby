# frozen_string_literal: true

# This is generated code!

module Aws::Ivs
  # This module contains the types returned by client operations.
  module Types

    # <p/>
    # @!attribute exception_message
    #   <p>User does not have sufficient access to perform this action.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying a stream’s audio configuration, as set up by the broadcaster (usually in an encoder). This is part of the <a>IngestConfigurations</a> object and the deprecated <a>IngestConfiguration</a> object. It is used for monitoring stream health.</p>
    # @!attribute codec
    #   <p>Codec used for the audio encoding.</p>
    #   @return [String]
    # @!attribute target_bitrate
    #   <p>The expected ingest bitrate (bits per second). This is configured in the encoder.</p>
    #   @return [Integer]
    # @!attribute sample_rate
    #   <p>Number of audio samples recorded per second.</p>
    #   @return [Integer]
    # @!attribute channels
    #   <p>Number of audio channels.</p>
    #   @return [Integer]
    # @!attribute track
    #   <p>Name of the audio track (if the stream has an audio track). If multitrack is not enabled, this is track0 (the sole track).</p>
    #   @return [String]
    class AudioConfiguration < Struct.new(
      nil,
      :codec,
      :target_bitrate,
      :sample_rate,
      :channels,
      :track,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:target_bitrate] = 0 unless options.key?(:target_bitrate)
        options[:sample_rate] = 0 unless options.key?(:sample_rate)
        options[:channels] = 0 unless options.key?(:channels)
        super
      end
    end

    # <p>Error related to a specific channel, specified by its ARN.</p>
    # @!attribute arn
    #   <p>ARN of an IVS resource; e.g., channel.</p>
    #   @return [String]
    # @!attribute code
    #   <p>Error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Error message, determined by the application.</p>
    #   @return [String]
    class BatchError < Struct.new(
      nil,
      :arn,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arns
    #   <p>Array of ARNs, one per channel.</p>
    #   @return [Array<String>]
    class BatchGetChannelInput < Struct.new(
      nil,
      :arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p/>
    #   @return [Array<Types::Channel>]
    # @!attribute errors
    #   <p>Each error object is related to a specific ARN in the request.</p>
    #   @return [Array<Types::BatchError>]
    class BatchGetChannelOutput < Struct.new(
      nil,
      :channels,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arns
    #   <p>Array of ARNs, one per stream key.</p>
    #   @return [Array<String>]
    class BatchGetStreamKeyInput < Struct.new(
      nil,
      :arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_keys
    #   <p/>
    #   @return [Array<Types::StreamKey>]
    # @!attribute errors
    #   <p/>
    #   @return [Array<Types::BatchError>]
    class BatchGetStreamKeyOutput < Struct.new(
      nil,
      :stream_keys,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error for a request in the batch for BatchStartViewerSessionRevocation. Each error is
    #       related to a specific channel-ARN and viewer-ID pair.</p>
    # @!attribute channel_arn
    #   <p>Channel ARN.</p>
    #   @return [String]
    # @!attribute viewer_id
    #   <p>The ID of the viewer session to revoke.</p>
    #   @return [String]
    # @!attribute code
    #   <p>Error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Error message, determined by the application.</p>
    #   @return [String]
    class BatchStartViewerSessionRevocationError < Struct.new(
      nil,
      :channel_arn,
      :viewer_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute viewer_sessions
    #   <p>Array of viewer sessions, one per channel-ARN and viewer-ID pair.</p>
    #   @return [Array<Types::BatchStartViewerSessionRevocationViewerSession>]
    class BatchStartViewerSessionRevocationInput < Struct.new(
      nil,
      :viewer_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Each error object is related to a specific <code>channelArn</code> and
    #           <code>viewerId</code> pair in the request.</p>
    #   @return [Array<Types::BatchStartViewerSessionRevocationError>]
    class BatchStartViewerSessionRevocationOutput < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A viewer session to revoke in the call to <a>BatchStartViewerSessionRevocation</a>.</p>
    # @!attribute channel_arn
    #   <p>The ARN of the channel associated with the viewer session to revoke.</p>
    #   @return [String]
    # @!attribute viewer_id
    #   <p>The ID of the viewer associated with the viewer session to revoke. Do not use this field
    #         for personally identifying, confidential, or sensitive information.</p>
    #   @return [String]
    # @!attribute viewer_session_versions_less_than_or_equal_to
    #   <p>An optional filter on which versions of the viewer session to revoke. All versions less
    #         than or equal to the specified version will be revoked. Default: 0.</p>
    #   @return [Integer]
    class BatchStartViewerSessionRevocationViewerSession < Struct.new(
      nil,
      :channel_arn,
      :viewer_id,
      :viewer_session_versions_less_than_or_equal_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:viewer_session_versions_less_than_or_equal_to] = 0 unless options.key?(:viewer_session_versions_less_than_or_equal_to)
        super
      end
    end

    # <p>Object specifying a channel.</p>
    # @!attribute arn
    #   <p>Channel ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Channel name.</p>
    #   @return [String]
    # @!attribute latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default:
    #           <code>LOW</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable input resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html">Channel
    #           Types</a>.</p>
    #   @return [String]
    # @!attribute recording_configuration_arn
    #   <p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables
    #         recording. Default: "" (empty string, recording is disabled).</p>
    #   @return [String]
    # @!attribute ingest_endpoint
    #   <p>Channel ingest endpoint, part of the definition of an ingest server, used when you set up
    #         streaming software.</p>
    #   @return [String]
    # @!attribute playback_url
    #   <p>Channel playback URL.</p>
    #   @return [String]
    # @!attribute authorized
    #   <p>Whether the channel is private (enabled for playback authorization). Default:
    #           <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    # @!attribute insecure_ingest
    #   <p>Whether the channel allows insecure RTMP ingest. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute preset
    #   <p>Optional transcode preset for the channel. This is selectable only for
    #           <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel
    #         types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other
    #         channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty
    #         string (<code>""</code>).</p>
    #   @return [String]
    # @!attribute srt
    #   <p>Specifies the endpoint and optional passphrase for streaming with the SRT protocol.</p>
    #   @return [Types::Srt]
    # @!attribute playback_restriction_policy_arn
    #   <p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables
    #         playback restriction. Default: "" (empty string, no playback restriction policy is
    #         applied).</p>
    #   @return [String]
    # @!attribute multitrack_input_configuration
    #   <p>Object specifying multitrack input configuration. Default: no multitrack input configuration is specified.</p>
    #   @return [Types::MultitrackInputConfiguration]
    # @!attribute container_format
    #   <p>Indicates which content-packaging format is used (MPEG-TS or fMP4). If <code>multitrackInputConfiguration</code> is specified and <code>enabled</code> is <code>true</code>, then <code>containerFormat</code> is required and must be set to <code>FRAGMENTED_MP4</code>. Otherwise, <code>containerFormat</code> may be set to <code>TS</code> or <code>FRAGMENTED_MP4</code>. Default: <code>TS</code>.</p>
    #   @return [String]
    class Channel < Struct.new(
      nil,
      :arn,
      :name,
      :latency_mode,
      :type,
      :recording_configuration_arn,
      :ingest_endpoint,
      :playback_url,
      :authorized,
      :tags,
      :insecure_ingest,
      :preset,
      :srt,
      :playback_restriction_policy_arn,
      :multitrack_input_configuration,
      :container_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:authorized] = false unless options.key?(:authorized)
        options[:insecure_ingest] = false unless options.key?(:insecure_ingest)
        super
      end
    end

    # <p/>
    # @!attribute exception_message
    #   <p>The stream is offline for the given channel ARN.</p>
    #   @return [String]
    class ChannelNotBroadcasting < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a channel.</p>
    # @!attribute arn
    #   <p>Channel ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Channel name.</p>
    #   @return [String]
    # @!attribute latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default:
    #           <code>LOW</code>.</p>
    #   @return [String]
    # @!attribute authorized
    #   <p>Whether the channel is private (enabled for playback authorization). Default:
    #           <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute recording_configuration_arn
    #   <p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables
    #         recording. Default: "" (empty string, recording is disabled).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    # @!attribute insecure_ingest
    #   <p>Whether the channel allows insecure RTMP ingest. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable input resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html">Channel
    #           Types</a>.</p>
    #   @return [String]
    # @!attribute preset
    #   <p>Optional transcode preset for the channel. This is selectable only for
    #           <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel
    #         types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other
    #         channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty
    #         string (<code>""</code>).</p>
    #   @return [String]
    # @!attribute playback_restriction_policy_arn
    #   <p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables
    #         playback restriction. Default: "" (empty string, no playback restriction policy is
    #         applied).</p>
    #   @return [String]
    class ChannelSummary < Struct.new(
      nil,
      :arn,
      :name,
      :latency_mode,
      :authorized,
      :recording_configuration_arn,
      :tags,
      :insecure_ingest,
      :type,
      :preset,
      :playback_restriction_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:authorized] = false unless options.key?(:authorized)
        options[:insecure_ingest] = false unless options.key?(:insecure_ingest)
        super
      end
    end

    # <p/>
    # @!attribute exception_message
    #   <p>Updating or deleting a resource can cause an inconsistent state.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Channel name.</p>
    #   @return [String]
    # @!attribute latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default: <code>LOW</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable input resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html">Channel
    #           Types</a>.</p>
    #   @return [String]
    # @!attribute authorized
    #   <p>Whether the channel is private (enabled for playback authorization). Default:
    #           <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute recording_configuration_arn
    #   <p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables recording.
    #        Default: "" (empty string, recording is disabled).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    #   @return [Hash<String, String>]
    # @!attribute insecure_ingest
    #   <p>Whether the channel allows insecure RTMP and SRT ingest. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute preset
    #   <p>Optional transcode preset for the channel. This is selectable only for
    #           <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel
    #         types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other
    #         channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty
    #         string (<code>""</code>).</p>
    #   @return [String]
    # @!attribute playback_restriction_policy_arn
    #   <p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables playback restriction.
    #       Default: "" (empty string, no playback restriction policy is applied).</p>
    #   @return [String]
    # @!attribute multitrack_input_configuration
    #   <p>Object specifying multitrack input configuration. Default: no multitrack input configuration is specified.</p>
    #   @return [Types::MultitrackInputConfiguration]
    # @!attribute container_format
    #   <p>Indicates which content-packaging format is used (MPEG-TS or fMP4). If <code>multitrackInputConfiguration</code> is specified and <code>enabled</code> is <code>true</code>, then <code>containerFormat</code> is required and must be set to <code>FRAGMENTED_MP4</code>. Otherwise, <code>containerFormat</code> may be set to <code>TS</code> or <code>FRAGMENTED_MP4</code>. Default: <code>TS</code>.</p>
    #   @return [String]
    class CreateChannelInput < Struct.new(
      nil,
      :name,
      :latency_mode,
      :type,
      :authorized,
      :recording_configuration_arn,
      :tags,
      :insecure_ingest,
      :preset,
      :playback_restriction_policy_arn,
      :multitrack_input_configuration,
      :container_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p/>
    #   @return [Types::Channel]
    # @!attribute stream_key
    #   <p/>
    #   @return [Types::StreamKey]
    class CreateChannelOutput < Struct.new(
      nil,
      :channel,
      :stream_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute allowed_countries
    #   <p>A list of country codes that control geoblocking restriction. Allowed values are the
    #         officially assigned <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1
    #           alpha-2</a> codes. Default: All countries (an empty array).</p>
    #   @return [Array<String>]
    # @!attribute allowed_origins
    #   <p>A list of origin sites that control CORS restriction. Allowed values are the same as valid
    #         values of the Origin header defined at <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All
    #         origins (an empty array).</p>
    #   @return [Array<String>]
    # @!attribute enable_strict_origin_enforcement
    #   <p>Whether channel playback is constrained by origin site. Default:
    #         <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>Playback-restriction-policy name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    #   @return [Hash<String, String>]
    class CreatePlaybackRestrictionPolicyRequest < Struct.new(
      nil,
      :allowed_countries,
      :allowed_origins,
      :enable_strict_origin_enforcement,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute playback_restriction_policy
    #   <p/>
    #   @return [Types::PlaybackRestrictionPolicy]
    class CreatePlaybackRestrictionPolicyResponse < Struct.new(
      nil,
      :playback_restriction_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Recording-configuration name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute destination_configuration
    #   <p>A complex type that contains a destination configuration for where recorded video will be
    #         stored.</p>
    #   @return [Types::DestinationConfiguration]
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    #   @return [Hash<String, String>]
    # @!attribute thumbnail_configuration
    #   <p>A complex type that allows you to enable/disable the recording of thumbnails for a live
    #         session and modify the interval at which thumbnails are generated for the live session.</p>
    #   @return [Types::ThumbnailConfiguration]
    # @!attribute recording_reconnect_window_seconds
    #   <p>If a broadcast disconnects and then reconnects within the specified interval, the multiple
    #         streams will be considered a single broadcast and merged together. Default: 0.</p>
    #   @return [Integer]
    # @!attribute rendition_configuration
    #   <p>Object that describes which renditions should be recorded for a stream.</p>
    #   @return [Types::RenditionConfiguration]
    class CreateRecordingConfigurationInput < Struct.new(
      nil,
      :name,
      :destination_configuration,
      :tags,
      :thumbnail_configuration,
      :recording_reconnect_window_seconds,
      :rendition_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recording_configuration
    #   <p>An object representing a configuration to record a channel stream.</p>
    #   @return [Types::RecordingConfiguration]
    class CreateRecordingConfigurationOutput < Struct.new(
      nil,
      :recording_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>ARN of the channel for which to create the stream key.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    #   @return [Hash<String, String>]
    class CreateStreamKeyInput < Struct.new(
      nil,
      :channel_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_key
    #   <p>Stream key used to authenticate an RTMPS stream for ingestion.</p>
    #   @return [Types::StreamKey]
    class CreateStreamKeyOutput < Struct.new(
      nil,
      :stream_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the channel to be deleted.</p>
    #   @return [String]
    class DeleteChannelInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the key pair to be deleted.</p>
    #   @return [String]
    class DeletePlaybackKeyPairInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePlaybackKeyPairOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the playback restriction policy to be deleted.</p>
    #   @return [String]
    class DeletePlaybackRestrictionPolicyRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the recording configuration to be deleted.</p>
    #   @return [String]
    class DeleteRecordingConfigurationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the stream key to be deleted.</p>
    #   @return [String]
    class DeleteStreamKeyInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that describes a location where recorded videos will be stored. Each member
    #       represents a type of destination configuration. For recording, you define one and only one
    #       type of destination configuration.</p>
    # @!attribute s3
    #   <p>An S3 destination configuration where recorded videos will be stored.</p>
    #   @return [Types::S3DestinationConfiguration]
    class DestinationConfiguration < Struct.new(
      nil,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the channel for which the configuration is to be retrieved.</p>
    #   @return [String]
    class GetChannelInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p/>
    #   @return [Types::Channel]
    class GetChannelOutput < Struct.new(
      nil,
      :channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the key pair to be returned.</p>
    #   @return [String]
    class GetPlaybackKeyPairInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pair
    #   <p>A key pair used to sign and validate a playback authorization token.</p>
    #   @return [Types::PlaybackKeyPair]
    class GetPlaybackKeyPairOutput < Struct.new(
      nil,
      :key_pair,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the playback restriction policy to be returned.</p>
    #   @return [String]
    class GetPlaybackRestrictionPolicyRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute playback_restriction_policy
    #   <p/>
    #   @return [Types::PlaybackRestrictionPolicy]
    class GetPlaybackRestrictionPolicyResponse < Struct.new(
      nil,
      :playback_restriction_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the recording configuration to be retrieved.</p>
    #   @return [String]
    class GetRecordingConfigurationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recording_configuration
    #   <p>An object representing a configuration to record a channel stream.</p>
    #   @return [Types::RecordingConfiguration]
    class GetRecordingConfigurationOutput < Struct.new(
      nil,
      :recording_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>Channel ARN for stream to be accessed.</p>
    #   @return [String]
    class GetStreamInput < Struct.new(
      nil,
      :channel_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN for the stream key to be retrieved.</p>
    #   @return [String]
    class GetStreamKeyInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_key
    #   <p>Object specifying a stream key.</p>
    #   @return [Types::StreamKey]
    class GetStreamKeyOutput < Struct.new(
      nil,
      :stream_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream
    #   <p/>
    #   @return [Types::Stream]
    class GetStreamOutput < Struct.new(
      nil,
      :stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>ARN of the channel resource</p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel. If no
    #           <code>streamId</code> is provided, this returns the most recent stream session for the
    #         channel, if it exists.</p>
    #   @return [String]
    class GetStreamSessionInput < Struct.new(
      nil,
      :channel_arn,
      :stream_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_session
    #   <p>List of stream details.</p>
    #   @return [Types::StreamSession]
    class GetStreamSessionOutput < Struct.new(
      nil,
      :stream_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key_material
    #   <p>The public portion of a customer-generated key pair.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Playback-key-pair name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags provided with the request are added to the playback key pair tags. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    #   @return [Hash<String, String>]
    class ImportPlaybackKeyPairInput < Struct.new(
      nil,
      :public_key_material,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pair
    #   <p/>
    #   @return [Types::PlaybackKeyPair]
    class ImportPlaybackKeyPairOutput < Struct.new(
      nil,
      :key_pair,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying the ingest configuration set up by the broadcaster, usually in an
    #       encoder.</p>
    #          <p>
    #             <b>Note:</b> IngestConfiguration is deprecated in favor of <a>IngestConfigurations</a> but retained to ensure backward compatibility. If multitrack is not enabled, IngestConfiguration and IngestConfigurations contain the same data, namely information about track0 (the sole track). If multitrack is enabled, IngestConfiguration contains data for only the first track (track0) and IngestConfigurations contains data for all tracks.</p>
    # @!attribute video
    #   <p>Encoder settings for video.</p>
    #   @return [Types::VideoConfiguration]
    # @!attribute audio
    #   <p>Encoder settings for audio.</p>
    #   @return [Types::AudioConfiguration]
    class IngestConfiguration < Struct.new(
      nil,
      :video,
      :audio,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying the ingest configuration set up by the broadcaster, usually in an encoder. </p>
    #          <p>
    #             <b>Note:</b> Use IngestConfigurations instead of <a>IngestConfiguration</a> (which is deprecated). If multitrack is not enabled, IngestConfiguration and IngestConfigurations contain the same data, namely information about track0 (the sole track). If multitrack is enabled, IngestConfiguration contains data for only the first track (track0) and IngestConfigurations contains data for all tracks.</p>
    # @!attribute video_configurations
    #   <p>Encoder settings for video</p>
    #   @return [Array<Types::VideoConfiguration>]
    # @!attribute audio_configurations
    #   <p>Encoder settings for audio.</p>
    #   @return [Array<Types::AudioConfiguration>]
    class IngestConfigurations < Struct.new(
      nil,
      :video_configurations,
      :audio_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute exception_message
    #   <p>Unexpected error during processing of request.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_by_name
    #   <p>Filters the channel list to match the specified name.</p>
    #   @return [String]
    # @!attribute filter_by_recording_configuration_arn
    #   <p>Filters the channel list to match the specified recording-configuration ARN.</p>
    #   @return [String]
    # @!attribute filter_by_playback_restriction_policy_arn
    #   <p>Filters the channel list to match the specified policy.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first channel to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of channels to return. Default: 100.</p>
    #   @return [Integer]
    class ListChannelsInput < Struct.new(
      nil,
      :filter_by_name,
      :filter_by_recording_configuration_arn,
      :filter_by_playback_restriction_policy_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p>List of the matching channels.</p>
    #   @return [Array<Types::ChannelSummary>]
    # @!attribute next_token
    #   <p>If there are more channels than <code>maxResults</code>, use <code>nextToken</code> in the
    #         request to get the next set.</p>
    #   @return [String]
    class ListChannelsOutput < Struct.new(
      nil,
      :channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The first key pair to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of key pairs to return. Default: your service quota or 100, whichever is
    #         smaller.</p>
    #   @return [Integer]
    class ListPlaybackKeyPairsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pairs
    #   <p>List of key pairs.</p>
    #   @return [Array<Types::PlaybackKeyPairSummary>]
    # @!attribute next_token
    #   <p>If there are more key pairs than <code>maxResults</code>, use <code>nextToken</code> in
    #         the request to get the next set.</p>
    #   @return [String]
    class ListPlaybackKeyPairsOutput < Struct.new(
      nil,
      :key_pairs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The first policy to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of policies to return. Default: 1.</p>
    #   @return [Integer]
    class ListPlaybackRestrictionPoliciesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute playback_restriction_policies
    #   <p>List of the matching policies.</p>
    #   @return [Array<Types::PlaybackRestrictionPolicySummary>]
    # @!attribute next_token
    #   <p>If there are more channels than <code>maxResults</code>, use <code>nextToken</code> in the
    #         request to get the next set.</p>
    #   @return [String]
    class ListPlaybackRestrictionPoliciesResponse < Struct.new(
      nil,
      :playback_restriction_policies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The first recording configuration to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of recording configurations to return. Default: your service quota or 100,
    #         whichever is smaller. </p>
    #   @return [Integer]
    class ListRecordingConfigurationsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recording_configurations
    #   <p>List of the matching recording configurations.</p>
    #   @return [Array<Types::RecordingConfigurationSummary>]
    # @!attribute next_token
    #   <p>If there are more recording configurations than <code>maxResults</code>, use
    #           <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListRecordingConfigurationsOutput < Struct.new(
      nil,
      :recording_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>Channel ARN used to filter the list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first stream key to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of streamKeys to return. Default: 1.</p>
    #   @return [Integer]
    class ListStreamKeysInput < Struct.new(
      nil,
      :channel_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_keys
    #   <p>List of stream keys.</p>
    #   @return [Array<Types::StreamKeySummary>]
    # @!attribute next_token
    #   <p>If there are more stream keys than <code>maxResults</code>, use <code>nextToken</code> in
    #         the request to get the next set.</p>
    #   @return [String]
    class ListStreamKeysOutput < Struct.new(
      nil,
      :stream_keys,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>Channel ARN used to filter the list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of streams to return. Default: 100.</p>
    #   @return [Integer]
    class ListStreamSessionsInput < Struct.new(
      nil,
      :channel_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_sessions
    #   <p>List of stream sessions.</p>
    #   @return [Array<Types::StreamSessionSummary>]
    # @!attribute next_token
    #   <p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the
    #         request to get the next set.</p>
    #   @return [String]
    class ListStreamSessionsOutput < Struct.new(
      nil,
      :stream_sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_by
    #   <p>Filters the stream list to match the specified criterion.</p>
    #   @return [Types::StreamFilters]
    # @!attribute next_token
    #   <p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of streams to return. Default: 100.</p>
    #   @return [Integer]
    class ListStreamsInput < Struct.new(
      nil,
      :filter_by,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streams
    #   <p>List of streams.</p>
    #   @return [Array<Types::StreamSummary>]
    # @!attribute next_token
    #   <p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the
    #         request to get the next set.</p>
    #   @return [String]
    class ListStreamsOutput < Struct.new(
      nil,
      :streams,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string
    #           (key:value)</code>.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that specifies multitrack input configuration.</p>
    # @!attribute enabled
    #   <p>Indicates whether multitrack input is enabled. Can be set to <code>true</code> only if channel type is <code>STANDARD</code>. Setting <code>enabled</code> to <code>true</code> with any other channel type will cause an exception. If <code>true</code>, then <code>policy</code>, <code>maximumResolution</code>, and <code>containerFormat</code> are required, and <code>containerFormat</code> must be set to <code>FRAGMENTED_MP4</code>. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute policy
    #   <p>Indicates whether multitrack input is allowed or required. Required if <code>enabled</code> is <code>true</code>.</p>
    #   @return [String]
    # @!attribute maximum_resolution
    #   <p>Maximum resolution for multitrack input. Required if <code>enabled</code> is <code>true</code>.</p>
    #   @return [String]
    class MultitrackInputConfiguration < Struct.new(
      nil,
      :enabled,
      :policy,
      :maximum_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p/>
    # @!attribute exception_message
    #   <p> Your account is pending verification. </p>
    #   @return [String]
    class PendingVerification < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key pair used to sign and validate a playback authorization token.</p>
    # @!attribute arn
    #   <p>Key-pair ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Playback-key-pair name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute fingerprint
    #   <p>Key-pair identifier.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class PlaybackKeyPair < Struct.new(
      nil,
      :arn,
      :name,
      :fingerprint,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a playback key pair.</p>
    # @!attribute arn
    #   <p>Key-pair ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Playback-key-pair name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class PlaybackKeyPairSummary < Struct.new(
      nil,
      :arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a policy to constrain playback by country and/or origin
    #       sites.</p>
    # @!attribute arn
    #   <p>Playback-restriction-policy ARN</p>
    #   @return [String]
    # @!attribute allowed_countries
    #   <p>A list of country codes that control geoblocking restriction. Allowed values are the
    #         officially assigned <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1
    #           alpha-2</a> codes. Default: All countries (an empty array).</p>
    #   @return [Array<String>]
    # @!attribute allowed_origins
    #   <p>A list of origin sites that control CORS restriction. Allowed values are the same as valid
    #         values of the Origin header defined at <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All
    #         origins (an empty array).</p>
    #   @return [Array<String>]
    # @!attribute enable_strict_origin_enforcement
    #   <p>Whether channel playback is constrained by origin site. Default:
    #         <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>Playback-restriction-policy name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class PlaybackRestrictionPolicy < Struct.new(
      nil,
      :arn,
      :allowed_countries,
      :allowed_origins,
      :enable_strict_origin_enforcement,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a PlaybackRestrictionPolicy.</p>
    # @!attribute arn
    #   <p>Playback-restriction-policy ARN</p>
    #   @return [String]
    # @!attribute allowed_countries
    #   <p>A list of country codes that control geoblocking restriction. Allowed values are the
    #         officially assigned <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1
    #           alpha-2</a> codes. Default: All countries (an empty array).</p>
    #   @return [Array<String>]
    # @!attribute allowed_origins
    #   <p>A list of origin sites that control CORS restriction. Allowed values are the same as valid
    #         values of the Origin header defined at <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All
    #         origins (an empty array).</p>
    #   @return [Array<String>]
    # @!attribute enable_strict_origin_enforcement
    #   <p>Whether channel playback is constrained by origin site. Default:
    #         <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>Playback-restriction-policy name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class PlaybackRestrictionPolicySummary < Struct.new(
      nil,
      :arn,
      :allowed_countries,
      :allowed_origins,
      :enable_strict_origin_enforcement,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>ARN of the channel into which metadata is inserted. This channel must have an active
    #         stream.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata to insert into the stream. Maximum: 1 KB per request.</p>
    #   @return [String]
    class PutMetadataInput < Struct.new(
      nil,
      :channel_arn,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a configuration to record a channel stream.</p>
    # @!attribute arn
    #   <p>Recording-configuration ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Recording-configuration name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute destination_configuration
    #   <p>A complex type that contains information about where recorded video will be stored.</p>
    #   @return [Types::DestinationConfiguration]
    # @!attribute state
    #   <p>Indicates the current state of the recording configuration. When the state is
    #           <code>ACTIVE</code>, the configuration is ready for recording a channel stream.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    # @!attribute thumbnail_configuration
    #   <p>A complex type that allows you to enable/disable the recording of thumbnails for a live
    #         session and modify the interval at which thumbnails are generated for the live session.</p>
    #   @return [Types::ThumbnailConfiguration]
    # @!attribute recording_reconnect_window_seconds
    #   <p>If a broadcast disconnects and then reconnects within the specified interval, the multiple
    #         streams will be considered a single broadcast and merged together. Default: 0.</p>
    #   @return [Integer]
    # @!attribute rendition_configuration
    #   <p>Object that describes which renditions should be recorded for a stream.</p>
    #   @return [Types::RenditionConfiguration]
    class RecordingConfiguration < Struct.new(
      nil,
      :arn,
      :name,
      :destination_configuration,
      :state,
      :tags,
      :thumbnail_configuration,
      :recording_reconnect_window_seconds,
      :rendition_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:recording_reconnect_window_seconds] = 0 unless options.key?(:recording_reconnect_window_seconds)
        super
      end
    end

    # <p>Summary information about a RecordingConfiguration.</p>
    # @!attribute arn
    #   <p>Recording-configuration ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Recording-configuration name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute destination_configuration
    #   <p>A complex type that contains information about where recorded video will be stored.</p>
    #   @return [Types::DestinationConfiguration]
    # @!attribute state
    #   <p>Indicates the current state of the recording configuration. When the state is
    #           <code>ACTIVE</code>, the configuration is ready for recording a channel stream.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class RecordingConfigurationSummary < Struct.new(
      nil,
      :arn,
      :name,
      :destination_configuration,
      :state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that describes which renditions should be recorded for a stream.</p>
    # @!attribute rendition_selection
    #   <p>Indicates which set of renditions are recorded for a stream. For <code>BASIC</code>
    #         channels, the <code>CUSTOM</code> value has no effect. If <code>CUSTOM</code> is specified, a
    #         set of renditions must be specified in the <code>renditions</code> field. Default:
    #           <code>ALL</code>.</p>
    #   @return [String]
    # @!attribute renditions
    #   <p>Indicates which renditions are recorded for a stream, if <code>renditionSelection</code>
    #         is <code>CUSTOM</code>; otherwise, this field is irrelevant. The selected renditions are
    #         recorded if they are available during the stream. If a selected rendition is unavailable, the
    #         best available rendition is recorded. For details on the resolution dimensions of each
    #         rendition, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/record-to-s3.html">Auto-Record to Amazon S3</a>.</p>
    #   @return [Array<String>]
    class RenditionConfiguration < Struct.new(
      nil,
      :rendition_selection,
      :renditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute exception_message
    #   <p>Request references a resource which does not exist.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that describes an S3 location where recorded videos will be stored.</p>
    # @!attribute bucket_name
    #   <p>Location (S3 bucket name) where recorded videos will be stored.</p>
    #   @return [String]
    class S3DestinationConfiguration < Struct.new(
      nil,
      :bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute exception_message
    #   <p>Request would cause a service quota to be exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies information needed to stream using the SRT protocol.</p>
    # @!attribute endpoint
    #   <p>The endpoint to be used when streaming with IVS using the SRT protocol.</p>
    #   @return [String]
    # @!attribute passphrase
    #   <p>Auto-generated passphrase to enable encryption. This field is applicable only if the end
    #         user has <i>not</i> enabled the <code>insecureIngest</code> option for the
    #         channel.</p>
    #   @return [String]
    class Srt < Struct.new(
      nil,
      :endpoint,
      :passphrase,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel associated with the viewer session to revoke.</p>
    #   @return [String]
    # @!attribute viewer_id
    #   <p>The ID of the viewer associated with the viewer session to revoke. Do not use this field
    #         for personally identifying, confidential, or sensitive information.</p>
    #   @return [String]
    # @!attribute viewer_session_versions_less_than_or_equal_to
    #   <p>An optional filter on which versions of the viewer session to revoke. All versions less
    #         than or equal to the specified version will be revoked. Default: 0.</p>
    #   @return [Integer]
    class StartViewerSessionRevocationInput < Struct.new(
      nil,
      :channel_arn,
      :viewer_id,
      :viewer_session_versions_less_than_or_equal_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartViewerSessionRevocationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>ARN of the channel for which the stream is to be stopped.</p>
    #   @return [String]
    class StopStreamInput < Struct.new(
      nil,
      :channel_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopStreamOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a live video stream that has been ingested and distributed.</p>
    # @!attribute channel_arn
    #   <p>Channel ARN for the stream.</p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel.</p>
    #   @return [String]
    # @!attribute playback_url
    #   <p>URL of the master playlist, required by the video player to play the HLS stream.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Time of the stream’s start. This is an ISO 8601 timestamp; <i>note that this is
    #           returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The stream’s state. Do not rely on the <code>OFFLINE</code> state, as the API may not
    #         return it; instead, a "NotBroadcasting" error will indicate that the stream is not
    #         live.</p>
    #   @return [String]
    # @!attribute health
    #   <p>The stream’s health.</p>
    #   @return [String]
    # @!attribute viewer_count
    #   <p>A count of concurrent views of the stream. Typically, a new view appears in
    #           <code>viewerCount</code> within 15 seconds of when video playback starts and a view is
    #         removed from <code>viewerCount</code> within 1 minute of when video playback ends. A value of
    #         -1 indicates that the request timed out; in this case, retry.</p>
    #   @return [Integer]
    class Stream < Struct.new(
      nil,
      :channel_arn,
      :stream_id,
      :playback_url,
      :start_time,
      :state,
      :health,
      :viewer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:viewer_count] = 0 unless options.key?(:viewer_count)
        super
      end
    end

    # <p>Object specifying a stream’s events. For a list of events, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html">Using Amazon EventBridge with Amazon
    #       IVS</a>.</p>
    # @!attribute name
    #   <p>Name that identifies the stream event within a <code>type</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Logical group for certain events.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>Time when the event occurred. This is an ISO 8601 timestamp; <i>note that this is
    #           returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute code
    #   <p>Provides additional details about the stream event. There are several values; the long descriptions are provided in the IVS console but not delivered through the IVS API or EventBridge. Multitrack-related codes are used only for certain Session Ended events.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MultitrackInputNotAllowed</code> — The broadcast client attempted to connect with multitrack input, but multitrack input was not enabled on the channel. Check your broadcast software settings or set <code>MultitrackInputConfiguration.Policy</code> to <code>ALLOW</code> or <code>REQUIRE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MultitrackInputRequired</code> — The broadcast client attempted to connect with single-track video, but multitrack input is required on this channel. Enable multitrack video in your broadcast software or configure the channel’s <code>MultitrackInputConfiguration.Policy</code> to <code>ALLOW</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InvalidGetClientConfigurationStreamKey</code> — The broadcast client attempted to connect with an invalid, expired, or corrupt stream key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GetClientConfigurationStreamKeyRequired</code> — The broadcast client attempted to stream multitrack video without providing an authenticated stream key from GetClientConfiguration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InvalidMultitrackInputTrackCount</code> — The multitrack input stream contained an invalid number of tracks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InvalidMultitrackInputVideoTrackMediaProperties</code> — The multitrack input stream contained one or more tracks with an invalid codec, resolution, bitrate, or framerate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StreamTakeoverMediaMismatch</code> — The broadcast client attempted to take over with different media properties (e.g., codec, resolution, or video track type) from the original stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StreamTakeoverInvalidPriority</code> — The broadcast client attempted a takeover with either a priority integer value equal to or lower than the original stream's value or a value outside the allowed range of 1 to 2,147,483,647.</p>
    #                  <p>
    #                     <code>StreamTakeoverLimitBreached</code> — The broadcast client reached the maximum allowed takeover attempts for this stream.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StreamEvent < Struct.new(
      nil,
      :name,
      :type,
      :event_time,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying the stream attribute on which to filter.</p>
    # @!attribute health
    #   <p>The stream’s health.</p>
    #   @return [String]
    class StreamFilters < Struct.new(
      nil,
      :health,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying a stream key.</p>
    # @!attribute arn
    #   <p>Stream-key ARN.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Stream-key value.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>Channel ARN for the stream.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class StreamKey < Struct.new(
      nil,
      :arn,
      :value,
      :channel_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a stream key.</p>
    # @!attribute arn
    #   <p>Stream-key ARN.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>Channel ARN for the stream.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class StreamKeySummary < Struct.new(
      nil,
      :arn,
      :channel_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that captures the Amazon IVS configuration that the customer provisioned, the
    #       ingest configurations that the broadcaster used, and the most recent Amazon IVS stream events
    #       it encountered.</p>
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Time when the channel went live. This is an ISO 8601 timestamp; <i>note that this
    #           is returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Time when the channel went offline. This is an ISO 8601 timestamp; <i>note that
    #           this is returned as a string</i>. For live streams, this is <code>NULL</code>.</p>
    #   @return [Time]
    # @!attribute channel
    #   <p>The properties of the channel at the time of going live.</p>
    #   @return [Types::Channel]
    # @!attribute ingest_configuration
    #   <p>The properties of the incoming RTMP stream.</p>
    #            <p>
    #               <b>Note:</b>
    #               <code>ingestConfiguration</code> is deprecated in favor of <code>ingestConfigurations</code> but retained to ensure backward compatibility. If multitrack is not enabled, <code>ingestConfiguration</code> and <code>ingestConfigurations</code> contain the same data, namely information about track0 (the sole track). If multitrack is enabled, <code>ingestConfiguration</code> contains data for only the first track (track0) and <code>ingestConfigurations</code> contains data for all tracks.</p>
    #   @return [Types::IngestConfiguration]
    # @!attribute ingest_configurations
    #   <p>The properties of the incoming RTMP stream. If multitrack is enabled, <code>ingestConfigurations</code> contains data for all tracks; otherwise, it contains data only for track0 (the sole track).</p>
    #   @return [Types::IngestConfigurations]
    # @!attribute recording_configuration
    #   <p>The properties of recording the live stream.</p>
    #   @return [Types::RecordingConfiguration]
    # @!attribute truncated_events
    #   <p>List of Amazon IVS events that the stream encountered. The list is sorted by most recent
    #         events and contains up to 500 events. For Amazon IVS events, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html">Using Amazon EventBridge with Amazon
    #         IVS</a>.</p>
    #   @return [Array<Types::StreamEvent>]
    class StreamSession < Struct.new(
      nil,
      :stream_id,
      :start_time,
      :end_time,
      :channel,
      :ingest_configuration,
      :ingest_configurations,
      :recording_configuration,
      :truncated_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a stream session.</p>
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Time when the channel went live. This is an ISO 8601 timestamp; <i>note that this
    #           is returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Time when the channel went offline. This is an ISO 8601 timestamp; <i>note that
    #           this is returned as a string</i>. For live streams, this is <code>NULL</code>.</p>
    #   @return [Time]
    # @!attribute has_error_event
    #   <p>If <code>true</code>, this stream encountered a quota breach or failure.</p>
    #   @return [Boolean]
    class StreamSessionSummary < Struct.new(
      nil,
      :stream_id,
      :start_time,
      :end_time,
      :has_error_event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_error_event] = false unless options.key?(:has_error_event)
        super
      end
    end

    # <p>Summary information about a stream.</p>
    # @!attribute channel_arn
    #   <p>Channel ARN for the stream.</p>
    #   @return [String]
    # @!attribute stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The stream’s state. Do not rely on the <code>OFFLINE</code> state, as the API may not
    #         return it; instead, a "NotBroadcasting" error will indicate that the stream is not
    #         live.</p>
    #   @return [String]
    # @!attribute health
    #   <p>The stream’s health.</p>
    #   @return [String]
    # @!attribute viewer_count
    #   <p>A count of concurrent views of the stream. Typically, a new view appears in
    #           <code>viewerCount</code> within 15 seconds of when video playback starts and a view is
    #         removed from <code>viewerCount</code> within 1 minute of when video playback ends. A value of
    #         -1 indicates that the request timed out; in this case, retry.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>Time of the stream’s start. This is an ISO 8601 timestamp; <i>note that this is
    #           returned as a string</i>. </p>
    #   @return [Time]
    class StreamSummary < Struct.new(
      nil,
      :channel_arn,
      :stream_id,
      :state,
      :health,
      :viewer_count,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:viewer_count] = 0 unless options.key?(:viewer_count)
        super
      end
    end

    # <p/>
    # @!attribute exception_message
    #   <p>The stream is temporarily unavailable.</p>
    #   @return [String]
    class StreamUnavailable < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags are to be added or updated. The ARN must be
    #         URL-encoded.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Array of tags to be added or updated. Array of maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute exception_message
    #   <p>Request was denied due to request throttling.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a configuration of thumbnails for recorded video.</p>
    # @!attribute recording_mode
    #   <p>Thumbnail recording mode. Default: <code>INTERVAL</code>.</p>
    #   @return [String]
    # @!attribute target_interval_seconds
    #   <p>The targeted thumbnail-generation interval in seconds. This is configurable (and required)
    #         only if <code>recordingMode</code> is <code>INTERVAL</code>. Default: 60.</p>
    #            <p>
    #               <b>Important:</b> For the <code>BASIC</code> channel type,
    #         or the <code>STANDARD</code> channel type with multitrack input,
    #         setting a value for <code>targetIntervalSeconds</code> does not guarantee that thumbnails are
    #         generated at the specified interval. For thumbnails to be generated at the
    #           <code>targetIntervalSeconds</code> interval, the <code>IDR/Keyframe</code> value for the
    #         input video must be less than the <code>targetIntervalSeconds</code> value. See <a href="https://docs.aws.amazon.com/ivs/latest/userguide/streaming-config.html"> Amazon IVS Streaming
    #           Configuration</a> for information on setting <code>IDR/Keyframe</code> to the
    #         recommended value in video-encoder settings.</p>
    #   @return [Integer]
    # @!attribute resolution
    #   <p>Indicates the desired resolution of recorded thumbnails. Thumbnails are recorded at the
    #         selected resolution if the corresponding rendition is available during the stream; otherwise,
    #         they are recorded at source resolution. For more information about resolution values and their
    #         corresponding height and width dimensions, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/record-to-s3.html">Auto-Record to Amazon S3</a>. Default:
    #         Null (source resolution is returned).</p>
    #   @return [String]
    # @!attribute storage
    #   <p>Indicates the format in which thumbnails are recorded. <code>SEQUENTIAL</code> records all
    #         generated thumbnails in a serial manner, to the media/thumbnails directory.
    #           <code>LATEST</code> saves the latest thumbnail in media/latest_thumbnail/thumb.jpg and
    #         overwrites it at the interval specified by <code>targetIntervalSeconds</code>. You can enable
    #         both <code>SEQUENTIAL</code> and <code>LATEST</code>. Default: <code>SEQUENTIAL</code>.</p>
    #   @return [Array<String>]
    class ThumbnailConfiguration < Struct.new(
      nil,
      :recording_mode,
      :target_interval_seconds,
      :resolution,
      :storage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags are to be removed. The ARN must be URL-encoded.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Array of tags to be removed. Array of maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the channel to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Channel name.</p>
    #   @return [String]
    # @!attribute latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable input resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html">Channel
    #           Types</a>.</p>
    #   @return [String]
    # @!attribute authorized
    #   <p>Whether the channel is private (enabled for playback authorization).</p>
    #   @return [Boolean]
    # @!attribute recording_configuration_arn
    #   <p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables recording.
    #       If this is set to an empty string, recording is disabled.</p>
    #   @return [String]
    # @!attribute insecure_ingest
    #   <p>Whether the channel allows insecure RTMP and SRT ingest. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute preset
    #   <p>Optional transcode preset for the channel. This is selectable only for
    #           <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel
    #         types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other
    #         channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty
    #         string (<code>""</code>).</p>
    #   @return [String]
    # @!attribute playback_restriction_policy_arn
    #   <p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables playback restriction.
    #        If this is set to an empty string, playback restriction policy is disabled.</p>
    #   @return [String]
    # @!attribute multitrack_input_configuration
    #   <p>Object specifying multitrack input configuration. Default: no multitrack input configuration is specified.</p>
    #   @return [Types::MultitrackInputConfiguration]
    # @!attribute container_format
    #   <p>Indicates which content-packaging format is used (MPEG-TS or fMP4). If <code>multitrackInputConfiguration</code> is specified and <code>enabled</code> is <code>true</code>, then <code>containerFormat</code> is required and must be set to <code>FRAGMENTED_MP4</code>. Otherwise, <code>containerFormat</code> may be set to <code>TS</code> or <code>FRAGMENTED_MP4</code>. Default: <code>TS</code>.</p>
    #   @return [String]
    class UpdateChannelInput < Struct.new(
      nil,
      :arn,
      :name,
      :latency_mode,
      :type,
      :authorized,
      :recording_configuration_arn,
      :insecure_ingest,
      :preset,
      :playback_restriction_policy_arn,
      :multitrack_input_configuration,
      :container_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p>Object specifying the updated channel.</p>
    #   @return [Types::Channel]
    class UpdateChannelOutput < Struct.new(
      nil,
      :channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the playback-restriction-policy to be updated.</p>
    #   @return [String]
    # @!attribute allowed_countries
    #   <p>A list of country codes that control geoblocking restriction. Allowed values are the
    #         officially assigned <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1
    #           alpha-2</a> codes. Default: All countries (an empty array).</p>
    #   @return [Array<String>]
    # @!attribute allowed_origins
    #   <p>A list of origin sites that control CORS restriction. Allowed values are the same as valid
    #         values of the Origin header defined at <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All
    #         origins (an empty array).</p>
    #   @return [Array<String>]
    # @!attribute enable_strict_origin_enforcement
    #   <p>Whether channel playback is constrained by origin site. Default:
    #         <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>Playback-restriction-policy name. The value does not need to be unique.</p>
    #   @return [String]
    class UpdatePlaybackRestrictionPolicyRequest < Struct.new(
      nil,
      :arn,
      :allowed_countries,
      :allowed_origins,
      :enable_strict_origin_enforcement,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute playback_restriction_policy
    #   <p>Object specifying the updated policy.</p>
    #   @return [Types::PlaybackRestrictionPolicy]
    class UpdatePlaybackRestrictionPolicyResponse < Struct.new(
      nil,
      :playback_restriction_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute exception_message
    #   <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying a stream’s video configuration, as set up by the broadcaster (usually in
    #       an encoder). This is part of the <a>IngestConfigurations</a> object and the deprecated
    #       <a>IngestConfiguration</a> object. It is used for monitoring stream health.
    #       </p>
    # @!attribute avc_profile
    #   <p>Indicates to the decoder the requirements for decoding the stream. For definitions of the
    #         valid values, see the H.264 specification.</p>
    #   @return [String]
    # @!attribute avc_level
    #   <p>Indicates the degree of required decoder performance for a profile. Normally this is set
    #         automatically by the encoder. For details, see the H.264 specification.</p>
    #   @return [String]
    # @!attribute codec
    #   <p>Codec used for the video encoding.</p>
    #   @return [String]
    # @!attribute encoder
    #   <p>Software or hardware used to encode the video.</p>
    #   @return [String]
    # @!attribute target_bitrate
    #   <p>The expected ingest bitrate (bits per second). This is configured in the encoder.</p>
    #   @return [Integer]
    # @!attribute target_framerate
    #   <p>The expected ingest framerate. This is configured in the encoder.</p>
    #   @return [Integer]
    # @!attribute video_height
    #   <p>Video-resolution height in pixels.</p>
    #   @return [Integer]
    # @!attribute video_width
    #   <p>Video-resolution width in pixels.</p>
    #   @return [Integer]
    # @!attribute level
    #   <p>Indicates the degree of required decoder performance for a profile. Normally this is set automatically by the encoder. When an AVC codec is used, this field has the same value as <code>avcLevel</code>.</p>
    #   @return [String]
    # @!attribute track
    #   <p>Name of the video track. If multitrack is not enabled, this is track0 (the sole track).</p>
    #   @return [String]
    # @!attribute profile
    #   <p>Indicates to the decoder the requirements for decoding the stream. When an AVC codec is used, this field has the same value as <code>avcProfile</code>.</p>
    #   @return [String]
    class VideoConfiguration < Struct.new(
      nil,
      :avc_profile,
      :avc_level,
      :codec,
      :encoder,
      :target_bitrate,
      :target_framerate,
      :video_height,
      :video_width,
      :level,
      :track,
      :profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:target_bitrate] = 0 unless options.key?(:target_bitrate)
        options[:target_framerate] = 0 unless options.key?(:target_framerate)
        options[:video_height] = 0 unless options.key?(:video_height)
        options[:video_width] = 0 unless options.key?(:video_width)
        super
      end
    end

  end
end
