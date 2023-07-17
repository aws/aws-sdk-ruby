# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IVS
  module Types

    # @!attribute [rw] exception_message
    #   User does not have sufficient access to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a stream’s audio configuration, as set up by the
    # broadcaster (usually in an encoder). This is part of the
    # IngestConfiguration object and used for monitoring stream health.
    #
    # @!attribute [rw] channels
    #   Number of audio channels.
    #   @return [Integer]
    #
    # @!attribute [rw] codec
    #   Codec used for the audio encoding.
    #   @return [String]
    #
    # @!attribute [rw] sample_rate
    #   Number of audio samples recorded per second.
    #   @return [Integer]
    #
    # @!attribute [rw] target_bitrate
    #   The expected ingest bitrate (bits per second). This is configured in
    #   the encoder.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/AudioConfiguration AWS API Documentation
    #
    class AudioConfiguration < Struct.new(
      :channels,
      :codec,
      :sample_rate,
      :target_bitrate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error related to a specific channel, specified by its ARN.
    #
    # @!attribute [rw] arn
    #   Channel ARN.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   Error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message, determined by the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchError AWS API Documentation
    #
    class BatchError < Struct.new(
      :arn,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arns
    #   Array of ARNs, one per channel.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchGetChannelRequest AWS API Documentation
    #
    class BatchGetChannelRequest < Struct.new(
      :arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] errors
    #   Each error object is related to a specific ARN in the request.
    #   @return [Array<Types::BatchError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchGetChannelResponse AWS API Documentation
    #
    class BatchGetChannelResponse < Struct.new(
      :channels,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arns
    #   Array of ARNs, one per stream key.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchGetStreamKeyRequest AWS API Documentation
    #
    class BatchGetStreamKeyRequest < Struct.new(
      :arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   @return [Array<Types::BatchError>]
    #
    # @!attribute [rw] stream_keys
    #   @return [Array<Types::StreamKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchGetStreamKeyResponse AWS API Documentation
    #
    class BatchGetStreamKeyResponse < Struct.new(
      :errors,
      :stream_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error for a request in the batch for
    # BatchStartViewerSessionRevocation. Each error is related to a specific
    # channel-ARN and viewer-ID pair.
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   Error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message, determined by the application.
    #   @return [String]
    #
    # @!attribute [rw] viewer_id
    #   The ID of the viewer session to revoke.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchStartViewerSessionRevocationError AWS API Documentation
    #
    class BatchStartViewerSessionRevocationError < Struct.new(
      :channel_arn,
      :code,
      :message,
      :viewer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] viewer_sessions
    #   Array of viewer sessions, one per channel-ARN and viewer-ID pair.
    #   @return [Array<Types::BatchStartViewerSessionRevocationViewerSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchStartViewerSessionRevocationRequest AWS API Documentation
    #
    class BatchStartViewerSessionRevocationRequest < Struct.new(
      :viewer_sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Each error object is related to a specific `channelArn` and
    #   `viewerId` pair in the request.
    #   @return [Array<Types::BatchStartViewerSessionRevocationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchStartViewerSessionRevocationResponse AWS API Documentation
    #
    class BatchStartViewerSessionRevocationResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A viewer session to revoke in the call to
    # BatchStartViewerSessionRevocation.
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel associated with the viewer session to revoke.
    #   @return [String]
    #
    # @!attribute [rw] viewer_id
    #   The ID of the viewer associated with the viewer session to revoke.
    #   Do not use this field for personally identifying, confidential, or
    #   sensitive information.
    #   @return [String]
    #
    # @!attribute [rw] viewer_session_versions_less_than_or_equal_to
    #   An optional filter on which versions of the viewer session to
    #   revoke. All versions less than or equal to the specified version
    #   will be revoked. Default: 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchStartViewerSessionRevocationViewerSession AWS API Documentation
    #
    class BatchStartViewerSessionRevocationViewerSession < Struct.new(
      :channel_arn,
      :viewer_id,
      :viewer_session_versions_less_than_or_equal_to)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a channel.
    #
    # @!attribute [rw] arn
    #   Channel ARN.
    #   @return [String]
    #
    # @!attribute [rw] authorized
    #   Whether the channel is private (enabled for playback authorization).
    #   Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] ingest_endpoint
    #   Channel ingest endpoint, part of the definition of an ingest server,
    #   used when you set up streaming software.
    #   @return [String]
    #
    # @!attribute [rw] insecure_ingest
    #   Whether the channel allows insecure RTMP ingest. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] latency_mode
    #   Channel latency mode. Use `NORMAL` to broadcast and deliver live
    #   video up to Full HD. Use `LOW` for near-real-time interaction with
    #   viewers. Default: `LOW`. (Note: In the Amazon IVS console, `LOW` and
    #   `NORMAL` correspond to Ultra-low and Standard, respectively.)
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Channel name.
    #   @return [String]
    #
    # @!attribute [rw] playback_url
    #   Channel playback URL.
    #   @return [String]
    #
    # @!attribute [rw] preset
    #   Optional transcode preset for the channel. This is selectable only
    #   for `ADVANCED_HD` and `ADVANCED_SD` channel types. For those channel
    #   types, the default `preset` is `HIGHER_BANDWIDTH_DELIVERY`. For
    #   other channel types (`BASIC` and `STANDARD`), `preset` is the empty
    #   string (`""`).
    #   @return [String]
    #
    # @!attribute [rw] recording_configuration_arn
    #   Recording-configuration ARN. A value other than an empty string
    #   indicates that recording is enabled. Default: "" (empty string,
    #   recording is disabled).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of 1-50 maps, each of the form
    #   `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable input resolution or bitrate, the stream
    #   probably will disconnect immediately.* Some types generate multiple
    #   qualities (renditions) from the original input; this automatically
    #   gives viewers the best experience for their devices and network
    #   conditions. Some types provide transcoded video; transcoding allows
    #   higher playback quality across a range of download speeds. Default:
    #   `STANDARD`. Valid values:
    #
    #   * `BASIC`: Video is transmuxed: Amazon IVS delivers the original
    #     input quality to viewers. The viewer’s video-quality choice is
    #     limited to the original input. Input resolution can be up to 1080p
    #     and bitrate can be up to 1.5 Mbps for 480p and up to 3.5 Mbps for
    #     resolutions between 480p and 1080p. Original audio is passed
    #     through.
    #
    #   * `STANDARD`: Video is transcoded: multiple qualities are generated
    #     from the original input, to automatically give viewers the best
    #     experience for their devices and network conditions. Transcoding
    #     allows higher playback quality across a range of download speeds.
    #     Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps.
    #     Audio is transcoded only for renditions 360p and below; above
    #     that, audio is passed through. This is the default when you create
    #     a channel.
    #
    #   * `ADVANCED_SD`: Video is transcoded; multiple qualities are
    #     generated from the original input, to automatically give viewers
    #     the best experience for their devices and network conditions.
    #     Input resolution can be up to 1080p and bitrate can be up to 8.5
    #     Mbps; output is capped at SD quality (480p). You can select an
    #     optional transcode preset (see below). Audio for all renditions is
    #     transcoded, and an audio-only rendition is available.
    #
    #   * `ADVANCED_HD`: Video is transcoded; multiple qualities are
    #     generated from the original input, to automatically give viewers
    #     the best experience for their devices and network conditions.
    #     Input resolution can be up to 1080p and bitrate can be up to 8.5
    #     Mbps; output is capped at HD quality (720p). You can select an
    #     optional transcode preset (see below). Audio for all renditions is
    #     transcoded, and an audio-only rendition is available.
    #
    #   Optional *transcode presets* (available for the `ADVANCED` types)
    #   allow you to trade off available download bandwidth and video
    #   quality, to optimize the viewing experience. There are two presets:
    #
    #   * *Constrained bandwidth delivery* uses a lower bitrate for each
    #     quality level. Use it if you have low download bandwidth and/or
    #     simple video content (e.g., talking heads)
    #
    #   * *Higher bandwidth delivery* uses a higher bitrate for each quality
    #     level. Use it if you have high download bandwidth and/or complex
    #     video content (e.g., flashes and quick scene changes).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :arn,
      :authorized,
      :ingest_endpoint,
      :insecure_ingest,
      :latency_mode,
      :name,
      :playback_url,
      :preset,
      :recording_configuration_arn,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   The stream is offline for the given channel ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ChannelNotBroadcasting AWS API Documentation
    #
    class ChannelNotBroadcasting < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a channel.
    #
    # @!attribute [rw] arn
    #   Channel ARN.
    #   @return [String]
    #
    # @!attribute [rw] authorized
    #   Whether the channel is private (enabled for playback authorization).
    #   Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] insecure_ingest
    #   Whether the channel allows insecure RTMP ingest. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] latency_mode
    #   Channel latency mode. Use `NORMAL` to broadcast and deliver live
    #   video up to Full HD. Use `LOW` for near-real-time interaction with
    #   viewers. Default: `LOW`. (Note: In the Amazon IVS console, `LOW` and
    #   `NORMAL` correspond to Ultra-low and Standard, respectively.)
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Channel name.
    #   @return [String]
    #
    # @!attribute [rw] preset
    #   Optional transcode preset for the channel. This is selectable only
    #   for `ADVANCED_HD` and `ADVANCED_SD` channel types. For those channel
    #   types, the default `preset` is `HIGHER_BANDWIDTH_DELIVERY`. For
    #   other channel types (`BASIC` and `STANDARD`), `preset` is the empty
    #   string (`""`).
    #   @return [String]
    #
    # @!attribute [rw] recording_configuration_arn
    #   Recording-configuration ARN. A value other than an empty string
    #   indicates that recording is enabled. Default: "" (empty string,
    #   recording is disabled).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of 1-50 maps, each of the form
    #   `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable input resolution or bitrate, the stream
    #   probably will disconnect immediately.* Some types generate multiple
    #   qualities (renditions) from the original input; this automatically
    #   gives viewers the best experience for their devices and network
    #   conditions. Some types provide transcoded video; transcoding allows
    #   higher playback quality across a range of download speeds. Default:
    #   `STANDARD`. Valid values:
    #
    #   * `BASIC`: Video is transmuxed: Amazon IVS delivers the original
    #     input quality to viewers. The viewer’s video-quality choice is
    #     limited to the original input. Input resolution can be up to 1080p
    #     and bitrate can be up to 1.5 Mbps for 480p and up to 3.5 Mbps for
    #     resolutions between 480p and 1080p. Original audio is passed
    #     through.
    #
    #   * `STANDARD`: Video is transcoded: multiple qualities are generated
    #     from the original input, to automatically give viewers the best
    #     experience for their devices and network conditions. Transcoding
    #     allows higher playback quality across a range of download speeds.
    #     Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps.
    #     Audio is transcoded only for renditions 360p and below; above
    #     that, audio is passed through. This is the default when you create
    #     a channel.
    #
    #   * `ADVANCED_SD`: Video is transcoded; multiple qualities are
    #     generated from the original input, to automatically give viewers
    #     the best experience for their devices and network conditions.
    #     Input resolution can be up to 1080p and bitrate can be up to 8.5
    #     Mbps; output is capped at SD quality (480p). You can select an
    #     optional transcode preset (see below). Audio for all renditions is
    #     transcoded, and an audio-only rendition is available.
    #
    #   * `ADVANCED_HD`: Video is transcoded; multiple qualities are
    #     generated from the original input, to automatically give viewers
    #     the best experience for their devices and network conditions.
    #     Input resolution can be up to 1080p and bitrate can be up to 8.5
    #     Mbps; output is capped at HD quality (720p). You can select an
    #     optional transcode preset (see below). Audio for all renditions is
    #     transcoded, and an audio-only rendition is available.
    #
    #   Optional *transcode presets* (available for the `ADVANCED` types)
    #   allow you to trade off available download bandwidth and video
    #   quality, to optimize the viewing experience. There are two presets:
    #
    #   * *Constrained bandwidth delivery* uses a lower bitrate for each
    #     quality level. Use it if you have low download bandwidth and/or
    #     simple video content (e.g., talking heads)
    #
    #   * *Higher bandwidth delivery* uses a higher bitrate for each quality
    #     level. Use it if you have high download bandwidth and/or complex
    #     video content (e.g., flashes and quick scene changes).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ChannelSummary AWS API Documentation
    #
    class ChannelSummary < Struct.new(
      :arn,
      :authorized,
      :insecure_ingest,
      :latency_mode,
      :name,
      :preset,
      :recording_configuration_arn,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Updating or deleting a resource can cause an inconsistent state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized
    #   Whether the channel is private (enabled for playback authorization).
    #   Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] insecure_ingest
    #   Whether the channel allows insecure RTMP ingest. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] latency_mode
    #   Channel latency mode. Use `NORMAL` to broadcast and deliver live
    #   video up to Full HD. Use `LOW` for near-real-time interaction with
    #   viewers. (Note: In the Amazon IVS console, `LOW` and `NORMAL`
    #   correspond to Ultra-low and Standard, respectively.) Default: `LOW`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Channel name.
    #   @return [String]
    #
    # @!attribute [rw] preset
    #   Optional transcode preset for the channel. This is selectable only
    #   for `ADVANCED_HD` and `ADVANCED_SD` channel types. For those channel
    #   types, the default `preset` is `HIGHER_BANDWIDTH_DELIVERY`. For
    #   other channel types (`BASIC` and `STANDARD`), `preset` is the empty
    #   string (`""`).
    #   @return [String]
    #
    # @!attribute [rw] recording_configuration_arn
    #   Recording-configuration ARN. Default: "" (empty string, recording
    #   is disabled).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
    #   See [Tagging Amazon Web Services Resources][1] for more information,
    #   including restrictions that apply to tags and "Tag naming limits
    #   and requirements"; Amazon IVS has no service-specific constraints
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable input resolution or bitrate, the stream
    #   probably will disconnect immediately.* Some types generate multiple
    #   qualities (renditions) from the original input; this automatically
    #   gives viewers the best experience for their devices and network
    #   conditions. Some types provide transcoded video; transcoding allows
    #   higher playback quality across a range of download speeds. Default:
    #   `STANDARD`. Valid values:
    #
    #   * `BASIC`: Video is transmuxed: Amazon IVS delivers the original
    #     input quality to viewers. The viewer’s video-quality choice is
    #     limited to the original input. Input resolution can be up to 1080p
    #     and bitrate can be up to 1.5 Mbps for 480p and up to 3.5 Mbps for
    #     resolutions between 480p and 1080p. Original audio is passed
    #     through.
    #
    #   * `STANDARD`: Video is transcoded: multiple qualities are generated
    #     from the original input, to automatically give viewers the best
    #     experience for their devices and network conditions. Transcoding
    #     allows higher playback quality across a range of download speeds.
    #     Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps.
    #     Audio is transcoded only for renditions 360p and below; above
    #     that, audio is passed through. This is the default when you create
    #     a channel.
    #
    #   * `ADVANCED_SD`: Video is transcoded; multiple qualities are
    #     generated from the original input, to automatically give viewers
    #     the best experience for their devices and network conditions.
    #     Input resolution can be up to 1080p and bitrate can be up to 8.5
    #     Mbps; output is capped at SD quality (480p). You can select an
    #     optional transcode preset (see below). Audio for all renditions is
    #     transcoded, and an audio-only rendition is available.
    #
    #   * `ADVANCED_HD`: Video is transcoded; multiple qualities are
    #     generated from the original input, to automatically give viewers
    #     the best experience for their devices and network conditions.
    #     Input resolution can be up to 1080p and bitrate can be up to 8.5
    #     Mbps; output is capped at HD quality (720p). You can select an
    #     optional transcode preset (see below). Audio for all renditions is
    #     transcoded, and an audio-only rendition is available.
    #
    #   Optional *transcode presets* (available for the `ADVANCED` types)
    #   allow you to trade off available download bandwidth and video
    #   quality, to optimize the viewing experience. There are two presets:
    #
    #   * *Constrained bandwidth delivery* uses a lower bitrate for each
    #     quality level. Use it if you have low download bandwidth and/or
    #     simple video content (e.g., talking heads)
    #
    #   * *Higher bandwidth delivery* uses a higher bitrate for each quality
    #     level. Use it if you have high download bandwidth and/or complex
    #     video content (e.g., flashes and quick scene changes).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :authorized,
      :insecure_ingest,
      :latency_mode,
      :name,
      :preset,
      :recording_configuration_arn,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   @return [Types::Channel]
    #
    # @!attribute [rw] stream_key
    #   @return [Types::StreamKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :channel,
      :stream_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_configuration
    #   A complex type that contains a destination configuration for where
    #   recorded video will be stored.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] name
    #   Recording-configuration name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] recording_reconnect_window_seconds
    #   If a broadcast disconnects and then reconnects within the specified
    #   interval, the multiple streams will be considered a single broadcast
    #   and merged together. Default: 0.
    #   @return [Integer]
    #
    # @!attribute [rw] rendition_configuration
    #   Object that describes which renditions should be recorded for a
    #   stream.
    #   @return [Types::RenditionConfiguration]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
    #   See [Tagging Amazon Web Services Resources][1] for more information,
    #   including restrictions that apply to tags and "Tag naming limits
    #   and requirements"; Amazon IVS has no service-specific constraints
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] thumbnail_configuration
    #   A complex type that allows you to enable/disable the recording of
    #   thumbnails for a live session and modify the interval at which
    #   thumbnails are generated for the live session.
    #   @return [Types::ThumbnailConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateRecordingConfigurationRequest AWS API Documentation
    #
    class CreateRecordingConfigurationRequest < Struct.new(
      :destination_configuration,
      :name,
      :recording_reconnect_window_seconds,
      :rendition_configuration,
      :tags,
      :thumbnail_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recording_configuration
    #   <zonbook />
    #
    #   <xhtml />
    #   @return [Types::RecordingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateRecordingConfigurationResponse AWS API Documentation
    #
    class CreateRecordingConfigurationResponse < Struct.new(
      :recording_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   ARN of the channel for which to create the stream key.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
    #   See [Tagging Amazon Web Services Resources][1] for more information,
    #   including restrictions that apply to tags and "Tag naming limits
    #   and requirements"; Amazon IVS has no service-specific constraints
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateStreamKeyRequest AWS API Documentation
    #
    class CreateStreamKeyRequest < Struct.new(
      :channel_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_key
    #   Stream key used to authenticate an RTMPS stream for ingestion.
    #   @return [Types::StreamKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateStreamKeyResponse AWS API Documentation
    #
    class CreateStreamKeyResponse < Struct.new(
      :stream_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the channel to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the key pair to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DeletePlaybackKeyPairRequest AWS API Documentation
    #
    class DeletePlaybackKeyPairRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DeletePlaybackKeyPairResponse AWS API Documentation
    #
    class DeletePlaybackKeyPairResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the recording configuration to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DeleteRecordingConfigurationRequest AWS API Documentation
    #
    class DeleteRecordingConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the stream key to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DeleteStreamKeyRequest AWS API Documentation
    #
    class DeleteStreamKeyRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes a location where recorded videos will be
    # stored. Each member represents a type of destination configuration.
    # For recording, you define one and only one type of destination
    # configuration.
    #
    # @!attribute [rw] s3
    #   An S3 destination configuration where recorded videos will be
    #   stored.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DestinationConfiguration AWS API Documentation
    #
    class DestinationConfiguration < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the channel for which the configuration is to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetChannelRequest AWS API Documentation
    #
    class GetChannelRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   @return [Types::Channel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetChannelResponse AWS API Documentation
    #
    class GetChannelResponse < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the key pair to be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetPlaybackKeyPairRequest AWS API Documentation
    #
    class GetPlaybackKeyPairRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair
    #   <zonbook />
    #
    #   <xhtml />
    #   @return [Types::PlaybackKeyPair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetPlaybackKeyPairResponse AWS API Documentation
    #
    class GetPlaybackKeyPairResponse < Struct.new(
      :key_pair)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the recording configuration to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetRecordingConfigurationRequest AWS API Documentation
    #
    class GetRecordingConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recording_configuration
    #   <zonbook />
    #
    #   <xhtml />
    #   @return [Types::RecordingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetRecordingConfigurationResponse AWS API Documentation
    #
    class GetRecordingConfigurationResponse < Struct.new(
      :recording_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN for the stream key to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStreamKeyRequest AWS API Documentation
    #
    class GetStreamKeyRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_key
    #   <zonbook />
    #
    #   <xhtml />
    #   @return [Types::StreamKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStreamKeyResponse AWS API Documentation
    #
    class GetStreamKeyResponse < Struct.new(
      :stream_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   Channel ARN for stream to be accessed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStreamRequest AWS API Documentation
    #
    class GetStreamRequest < Struct.new(
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   @return [Types::Stream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStreamResponse AWS API Documentation
    #
    class GetStreamResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   ARN of the channel resource
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   Unique identifier for a live or previously live stream in the
    #   specified channel. If no `streamId` is provided, this returns the
    #   most recent stream session for the channel, if it exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStreamSessionRequest AWS API Documentation
    #
    class GetStreamSessionRequest < Struct.new(
      :channel_arn,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_session
    #   List of stream details.
    #   @return [Types::StreamSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStreamSessionResponse AWS API Documentation
    #
    class GetStreamSessionResponse < Struct.new(
      :stream_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Playback-key-pair name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] public_key_material
    #   The public portion of a customer-generated key pair.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags provided with the request are added to the playback key
    #   pair tags. See [Tagging Amazon Web Services Resources][1] for more
    #   information, including restrictions that apply to tags and "Tag
    #   naming limits and requirements"; Amazon IVS has no service-specific
    #   constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ImportPlaybackKeyPairRequest AWS API Documentation
    #
    class ImportPlaybackKeyPairRequest < Struct.new(
      :name,
      :public_key_material,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair
    #   @return [Types::PlaybackKeyPair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ImportPlaybackKeyPairResponse AWS API Documentation
    #
    class ImportPlaybackKeyPairResponse < Struct.new(
      :key_pair)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying the ingest configuration set up by the broadcaster,
    # usually in an encoder.
    #
    # @!attribute [rw] audio
    #   Encoder settings for audio.
    #   @return [Types::AudioConfiguration]
    #
    # @!attribute [rw] video
    #   Encoder settings for video.
    #   @return [Types::VideoConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/IngestConfiguration AWS API Documentation
    #
    class IngestConfiguration < Struct.new(
      :audio,
      :video)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Unexpected error during processing of request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_by_name
    #   Filters the channel list to match the specified name.
    #   @return [String]
    #
    # @!attribute [rw] filter_by_recording_configuration_arn
    #   Filters the channel list to match the specified
    #   recording-configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of channels to return. Default: 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The first channel to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :filter_by_name,
      :filter_by_recording_configuration_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   List of the matching channels.
    #   @return [Array<Types::ChannelSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more channels than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of key pairs to return. Default: your service quota
    #   or 100, whichever is smaller.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The first key pair to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListPlaybackKeyPairsRequest AWS API Documentation
    #
    class ListPlaybackKeyPairsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pairs
    #   List of key pairs.
    #   @return [Array<Types::PlaybackKeyPairSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more key pairs than `maxResults`, use `nextToken` in
    #   the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListPlaybackKeyPairsResponse AWS API Documentation
    #
    class ListPlaybackKeyPairsResponse < Struct.new(
      :key_pairs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of recording configurations to return. Default: your
    #   service quota or 100, whichever is smaller.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The first recording configuration to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListRecordingConfigurationsRequest AWS API Documentation
    #
    class ListRecordingConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more recording configurations than `maxResults`, use
    #   `nextToken` in the request to get the next set.
    #   @return [String]
    #
    # @!attribute [rw] recording_configurations
    #   List of the matching recording configurations.
    #   @return [Array<Types::RecordingConfigurationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListRecordingConfigurationsResponse AWS API Documentation
    #
    class ListRecordingConfigurationsResponse < Struct.new(
      :next_token,
      :recording_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   Channel ARN used to filter the list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of streamKeys to return. Default: 1.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The first stream key to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamKeysRequest AWS API Documentation
    #
    class ListStreamKeysRequest < Struct.new(
      :channel_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more stream keys than `maxResults`, use `nextToken` in
    #   the request to get the next set.
    #   @return [String]
    #
    # @!attribute [rw] stream_keys
    #   List of stream keys.
    #   @return [Array<Types::StreamKeySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamKeysResponse AWS API Documentation
    #
    class ListStreamKeysResponse < Struct.new(
      :next_token,
      :stream_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   Channel ARN used to filter the list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of streams to return. Default: 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The first stream to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamSessionsRequest AWS API Documentation
    #
    class ListStreamSessionsRequest < Struct.new(
      :channel_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more streams than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @!attribute [rw] stream_sessions
    #   List of stream sessions.
    #   @return [Array<Types::StreamSessionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamSessionsResponse AWS API Documentation
    #
    class ListStreamSessionsResponse < Struct.new(
      :next_token,
      :stream_sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_by
    #   Filters the stream list to match the specified criterion.
    #   @return [Types::StreamFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum number of streams to return. Default: 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The first stream to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamsRequest AWS API Documentation
    #
    class ListStreamsRequest < Struct.new(
      :filter_by,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more streams than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @!attribute [rw] streams
    #   List of streams.
    #   @return [Array<Types::StreamSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamsResponse AWS API Documentation
    #
    class ListStreamsResponse < Struct.new(
      :next_token,
      :streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be retrieved. The ARN must be
    #   URL-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Your account is pending verification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/PendingVerification AWS API Documentation
    #
    class PendingVerification < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key pair used to sign and validate a playback authorization token.
    #
    # @!attribute [rw] arn
    #   Key-pair ARN.
    #   @return [String]
    #
    # @!attribute [rw] fingerprint
    #   Key-pair identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Playback-key-pair name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of 1-50 maps, each of the form
    #   `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/PlaybackKeyPair AWS API Documentation
    #
    class PlaybackKeyPair < Struct.new(
      :arn,
      :fingerprint,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a playback key pair.
    #
    # @!attribute [rw] arn
    #   Key-pair ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Playback-key-pair name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of 1-50 maps, each of the form
    #   `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/PlaybackKeyPairSummary AWS API Documentation
    #
    class PlaybackKeyPairSummary < Struct.new(
      :arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   ARN of the channel into which metadata is inserted. This channel
    #   must have an active stream.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata to insert into the stream. Maximum: 1 KB per request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/PutMetadataRequest AWS API Documentation
    #
    class PutMetadataRequest < Struct.new(
      :channel_arn,
      :metadata)
      SENSITIVE = [:metadata]
      include Aws::Structure
    end

    # An object representing a configuration to record a channel stream.
    #
    # @!attribute [rw] arn
    #   Recording-configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] destination_configuration
    #   A complex type that contains information about where recorded video
    #   will be stored.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] name
    #   Recording-configuration name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] recording_reconnect_window_seconds
    #   If a broadcast disconnects and then reconnects within the specified
    #   interval, the multiple streams will be considered a single broadcast
    #   and merged together. Default: 0.
    #   @return [Integer]
    #
    # @!attribute [rw] rendition_configuration
    #   Object that describes which renditions should be recorded for a
    #   stream.
    #   @return [Types::RenditionConfiguration]
    #
    # @!attribute [rw] state
    #   Indicates the current state of the recording configuration. When the
    #   state is `ACTIVE`, the configuration is ready for recording a
    #   channel stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of 1-50 maps, each of the form
    #   `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] thumbnail_configuration
    #   A complex type that allows you to enable/disable the recording of
    #   thumbnails for a live session and modify the interval at which
    #   thumbnails are generated for the live session.
    #   @return [Types::ThumbnailConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/RecordingConfiguration AWS API Documentation
    #
    class RecordingConfiguration < Struct.new(
      :arn,
      :destination_configuration,
      :name,
      :recording_reconnect_window_seconds,
      :rendition_configuration,
      :state,
      :tags,
      :thumbnail_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a RecordingConfiguration.
    #
    # @!attribute [rw] arn
    #   Recording-configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] destination_configuration
    #   A complex type that contains information about where recorded video
    #   will be stored.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] name
    #   Recording-configuration name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Indicates the current state of the recording configuration. When the
    #   state is `ACTIVE`, the configuration is ready for recording a
    #   channel stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of 1-50 maps, each of the form
    #   `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/RecordingConfigurationSummary AWS API Documentation
    #
    class RecordingConfigurationSummary < Struct.new(
      :arn,
      :destination_configuration,
      :name,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that describes which renditions should be recorded for a
    # stream.
    #
    # @!attribute [rw] rendition_selection
    #   Indicates which set of renditions are recorded for a stream. For
    #   `BASIC` channels, the `CUSTOM` value has no effect. If `CUSTOM` is
    #   specified, a set of renditions must be specified in the `renditions`
    #   field. Default: `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] renditions
    #   Indicates which renditions are recorded for a stream, if
    #   `renditionSelection` is `CUSTOM`; otherwise, this field is
    #   irrelevant. The selected renditions are recorded if they are
    #   available during the stream. If a selected rendition is unavailable,
    #   the best available rendition is recorded. For details on the
    #   resolution dimensions of each rendition, see [Auto-Record to Amazon
    #   S3][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/userguide/record-to-s3.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/RenditionConfiguration AWS API Documentation
    #
    class RenditionConfiguration < Struct.new(
      :rendition_selection,
      :renditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Request references a resource which does not exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes an S3 location where recorded videos
    # will be stored.
    #
    # @!attribute [rw] bucket_name
    #   Location (S3 bucket name) where recorded videos will be stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/S3DestinationConfiguration AWS API Documentation
    #
    class S3DestinationConfiguration < Struct.new(
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Request would cause a service quota to be exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel associated with the viewer session to revoke.
    #   @return [String]
    #
    # @!attribute [rw] viewer_id
    #   The ID of the viewer associated with the viewer session to revoke.
    #   Do not use this field for personally identifying, confidential, or
    #   sensitive information.
    #   @return [String]
    #
    # @!attribute [rw] viewer_session_versions_less_than_or_equal_to
    #   An optional filter on which versions of the viewer session to
    #   revoke. All versions less than or equal to the specified version
    #   will be revoked. Default: 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StartViewerSessionRevocationRequest AWS API Documentation
    #
    class StartViewerSessionRevocationRequest < Struct.new(
      :channel_arn,
      :viewer_id,
      :viewer_session_versions_less_than_or_equal_to)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StartViewerSessionRevocationResponse AWS API Documentation
    #
    class StartViewerSessionRevocationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] channel_arn
    #   ARN of the channel for which the stream is to be stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StopStreamRequest AWS API Documentation
    #
    class StopStreamRequest < Struct.new(
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StopStreamResponse AWS API Documentation
    #
    class StopStreamResponse < Aws::EmptyStructure; end

    # Specifies a live video stream that has been ingested and distributed.
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN for the stream.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   The stream’s health.
    #   @return [String]
    #
    # @!attribute [rw] playback_url
    #   URL of the master playlist, required by the video player to play the
    #   HLS stream.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Time of the stream’s start. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The stream’s state. Do not rely on the `OFFLINE` state, as the API
    #   may not return it; instead, a "NotBroadcasting" error will
    #   indicate that the stream is not live.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   Unique identifier for a live or previously live stream in the
    #   specified channel.
    #   @return [String]
    #
    # @!attribute [rw] viewer_count
    #   A count of concurrent views of the stream. Typically, a new view
    #   appears in `viewerCount` within 15 seconds of when video playback
    #   starts and a view is removed from `viewerCount` within 1 minute of
    #   when video playback ends. A value of -1 indicates that the request
    #   timed out; in this case, retry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/Stream AWS API Documentation
    #
    class Stream < Struct.new(
      :channel_arn,
      :health,
      :playback_url,
      :start_time,
      :state,
      :stream_id,
      :viewer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a stream’s events. For a list of events, see [Using
    # Amazon EventBridge with Amazon IVS][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html
    #
    # @!attribute [rw] event_time
    #   Time when the event occurred. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Name that identifies the stream event within a `type`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Logical group for certain events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamEvent AWS API Documentation
    #
    class StreamEvent < Struct.new(
      :event_time,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying the stream attribute on which to filter.
    #
    # @!attribute [rw] health
    #   The stream’s health.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamFilters AWS API Documentation
    #
    class StreamFilters < Struct.new(
      :health)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a stream key.
    #
    # @!attribute [rw] arn
    #   Stream-key ARN.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN for the stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of 1-50 maps, each of the form
    #   `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] value
    #   Stream-key value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamKey AWS API Documentation
    #
    class StreamKey < Struct.new(
      :arn,
      :channel_arn,
      :tags,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # Summary information about a stream key.
    #
    # @!attribute [rw] arn
    #   Stream-key ARN.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN for the stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of 1-50 maps, each of the form
    #   `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamKeySummary AWS API Documentation
    #
    class StreamKeySummary < Struct.new(
      :arn,
      :channel_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that captures the Amazon IVS configuration that the customer
    # provisioned, the ingest configurations that the broadcaster used, and
    # the most recent Amazon IVS stream events it encountered.
    #
    # @!attribute [rw] channel
    #   The properties of the channel at the time of going live.
    #   @return [Types::Channel]
    #
    # @!attribute [rw] end_time
    #   Time when the channel went offline. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*. For live streams, this is
    #   `NULL`.
    #   @return [Time]
    #
    # @!attribute [rw] ingest_configuration
    #   The properties of the incoming RTMP stream for the stream.
    #   @return [Types::IngestConfiguration]
    #
    # @!attribute [rw] recording_configuration
    #   The properties of recording the live stream.
    #   @return [Types::RecordingConfiguration]
    #
    # @!attribute [rw] start_time
    #   Time when the channel went live. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] stream_id
    #   Unique identifier for a live or previously live stream in the
    #   specified channel.
    #   @return [String]
    #
    # @!attribute [rw] truncated_events
    #   List of Amazon IVS events that the stream encountered. The list is
    #   sorted by most recent events and contains up to 500 events. For
    #   Amazon IVS events, see [Using Amazon EventBridge with Amazon
    #   IVS][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html
    #   @return [Array<Types::StreamEvent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamSession AWS API Documentation
    #
    class StreamSession < Struct.new(
      :channel,
      :end_time,
      :ingest_configuration,
      :recording_configuration,
      :start_time,
      :stream_id,
      :truncated_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a stream session.
    #
    # @!attribute [rw] end_time
    #   Time when the channel went offline. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*. For live streams, this is
    #   `NULL`.
    #   @return [Time]
    #
    # @!attribute [rw] has_error_event
    #   If `true`, this stream encountered a quota breach or failure.
    #   @return [Boolean]
    #
    # @!attribute [rw] start_time
    #   Time when the channel went live. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] stream_id
    #   Unique identifier for a live or previously live stream in the
    #   specified channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamSessionSummary AWS API Documentation
    #
    class StreamSessionSummary < Struct.new(
      :end_time,
      :has_error_event,
      :start_time,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a stream.
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN for the stream.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   The stream’s health.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Time of the stream’s start. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The stream’s state. Do not rely on the `OFFLINE` state, as the API
    #   may not return it; instead, a "NotBroadcasting" error will
    #   indicate that the stream is not live.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   Unique identifier for a live or previously live stream in the
    #   specified channel.
    #   @return [String]
    #
    # @!attribute [rw] viewer_count
    #   A count of concurrent views of the stream. Typically, a new view
    #   appears in `viewerCount` within 15 seconds of when video playback
    #   starts and a view is removed from `viewerCount` within 1 minute of
    #   when video playback ends. A value of -1 indicates that the request
    #   timed out; in this case, retry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamSummary AWS API Documentation
    #
    class StreamSummary < Struct.new(
      :channel_arn,
      :health,
      :start_time,
      :state,
      :stream_id,
      :viewer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   The stream is temporarily unavailable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamUnavailable AWS API Documentation
    #
    class StreamUnavailable < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of the resource for which tags are to be added or updated. The
    #   ARN must be URL-encoded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of tags to be added or updated. Array of maps, each of the
    #   form `string:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] exception_message
    #   Request was denied due to request throttling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a configuration of thumbnails for recorded
    # video.
    #
    # @!attribute [rw] recording_mode
    #   Thumbnail recording mode. Default: `INTERVAL`.
    #   @return [String]
    #
    # @!attribute [rw] resolution
    #   Indicates the desired resolution of recorded thumbnails. Thumbnails
    #   are recorded at the selected resolution if the corresponding
    #   rendition is available during the stream; otherwise, they are
    #   recorded at source resolution. For more information about resolution
    #   values and their corresponding height and width dimensions, see
    #   [Auto-Record to Amazon S3][1]. Default: Null (source resolution is
    #   returned).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/userguide/record-to-s3.html
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   Indicates the format in which thumbnails are recorded. `SEQUENTIAL`
    #   records all generated thumbnails in a serial manner, to the
    #   media/thumbnails directory. `LATEST` saves the latest thumbnail in
    #   media/latest\_thumbnail/thumb.jpg and overwrites it at the interval
    #   specified by `targetIntervalSeconds`. You can enable both
    #   `SEQUENTIAL` and `LATEST`. Default: `SEQUENTIAL`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_interval_seconds
    #   The targeted thumbnail-generation interval in seconds. This is
    #   configurable (and required) only if `recordingMode` is `INTERVAL`.
    #   Default: 60.
    #
    #   **Important:** For the `BASIC` channel type, setting a value for
    #   `targetIntervalSeconds` does not guarantee that thumbnails are
    #   generated at the specified interval. For thumbnails to be generated
    #   at the `targetIntervalSeconds` interval, the `IDR/Keyframe` value
    #   for the input video must be less than the `targetIntervalSeconds`
    #   value. See [ Amazon IVS Streaming Configuration][1] for information
    #   on setting `IDR/Keyframe` to the recommended value in video-encoder
    #   settings.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/userguide/streaming-config.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ThumbnailConfiguration AWS API Documentation
    #
    class ThumbnailConfiguration < Struct.new(
      :recording_mode,
      :resolution,
      :storage,
      :target_interval_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of the resource for which tags are to be removed. The ARN must
    #   be URL-encoded.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Array of tags to be removed. Array of maps, each of the form
    #   s`tring:string (key:value)`. See [Tagging Amazon Web Services
    #   Resources][1] for more information, including restrictions that
    #   apply to tags and "Tag naming limits and requirements"; Amazon IVS
    #   has no service-specific constraints beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the channel to be updated.
    #   @return [String]
    #
    # @!attribute [rw] authorized
    #   Whether the channel is private (enabled for playback authorization).
    #   @return [Boolean]
    #
    # @!attribute [rw] insecure_ingest
    #   Whether the channel allows insecure RTMP ingest. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] latency_mode
    #   Channel latency mode. Use `NORMAL` to broadcast and deliver live
    #   video up to Full HD. Use `LOW` for near-real-time interaction with
    #   viewers. (Note: In the Amazon IVS console, `LOW` and `NORMAL`
    #   correspond to Ultra-low and Standard, respectively.)
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Channel name.
    #   @return [String]
    #
    # @!attribute [rw] preset
    #   Optional transcode preset for the channel. This is selectable only
    #   for `ADVANCED_HD` and `ADVANCED_SD` channel types. For those channel
    #   types, the default `preset` is `HIGHER_BANDWIDTH_DELIVERY`. For
    #   other channel types (`BASIC` and `STANDARD`), `preset` is the empty
    #   string (`""`).
    #   @return [String]
    #
    # @!attribute [rw] recording_configuration_arn
    #   Recording-configuration ARN. If this is set to an empty string,
    #   recording is disabled. A value other than an empty string indicates
    #   that recording is enabled
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable input resolution or bitrate, the stream
    #   probably will disconnect immediately.* Some types generate multiple
    #   qualities (renditions) from the original input; this automatically
    #   gives viewers the best experience for their devices and network
    #   conditions. Some types provide transcoded video; transcoding allows
    #   higher playback quality across a range of download speeds. Default:
    #   `STANDARD`. Valid values:
    #
    #   * `BASIC`: Video is transmuxed: Amazon IVS delivers the original
    #     input quality to viewers. The viewer’s video-quality choice is
    #     limited to the original input. Input resolution can be up to 1080p
    #     and bitrate can be up to 1.5 Mbps for 480p and up to 3.5 Mbps for
    #     resolutions between 480p and 1080p. Original audio is passed
    #     through.
    #
    #   * `STANDARD`: Video is transcoded: multiple qualities are generated
    #     from the original input, to automatically give viewers the best
    #     experience for their devices and network conditions. Transcoding
    #     allows higher playback quality across a range of download speeds.
    #     Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps.
    #     Audio is transcoded only for renditions 360p and below; above
    #     that, audio is passed through. This is the default when you create
    #     a channel.
    #
    #   * `ADVANCED_SD`: Video is transcoded; multiple qualities are
    #     generated from the original input, to automatically give viewers
    #     the best experience for their devices and network conditions.
    #     Input resolution can be up to 1080p and bitrate can be up to 8.5
    #     Mbps; output is capped at SD quality (480p). You can select an
    #     optional transcode preset (see below). Audio for all renditions is
    #     transcoded, and an audio-only rendition is available.
    #
    #   * `ADVANCED_HD`: Video is transcoded; multiple qualities are
    #     generated from the original input, to automatically give viewers
    #     the best experience for their devices and network conditions.
    #     Input resolution can be up to 1080p and bitrate can be up to 8.5
    #     Mbps; output is capped at HD quality (720p). You can select an
    #     optional transcode preset (see below). Audio for all renditions is
    #     transcoded, and an audio-only rendition is available.
    #
    #   Optional *transcode presets* (available for the `ADVANCED` types)
    #   allow you to trade off available download bandwidth and video
    #   quality, to optimize the viewing experience. There are two presets:
    #
    #   * *Constrained bandwidth delivery* uses a lower bitrate for each
    #     quality level. Use it if you have low download bandwidth and/or
    #     simple video content (e.g., talking heads)
    #
    #   * *Higher bandwidth delivery* uses a higher bitrate for each quality
    #     level. Use it if you have high download bandwidth and/or complex
    #     video content (e.g., flashes and quick scene changes).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :arn,
      :authorized,
      :insecure_ingest,
      :latency_mode,
      :name,
      :preset,
      :recording_configuration_arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   Object specifying a channel.
    #   @return [Types::Channel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a stream’s video configuration, as set up by the
    # broadcaster (usually in an encoder). This is part of the
    # IngestConfiguration object and used for monitoring stream health.
    #
    # @!attribute [rw] avc_level
    #   Indicates the degree of required decoder performance for a profile.
    #   Normally this is set automatically by the encoder. For details, see
    #   the H.264 specification.
    #   @return [String]
    #
    # @!attribute [rw] avc_profile
    #   Indicates to the decoder the requirements for decoding the stream.
    #   For definitions of the valid values, see the H.264 specification.
    #   @return [String]
    #
    # @!attribute [rw] codec
    #   Codec used for the video encoding.
    #   @return [String]
    #
    # @!attribute [rw] encoder
    #   Software or hardware used to encode the video.
    #   @return [String]
    #
    # @!attribute [rw] target_bitrate
    #   The expected ingest bitrate (bits per second). This is configured in
    #   the encoder.
    #   @return [Integer]
    #
    # @!attribute [rw] target_framerate
    #   The expected ingest framerate. This is configured in the encoder.
    #   @return [Integer]
    #
    # @!attribute [rw] video_height
    #   Video-resolution height in pixels.
    #   @return [Integer]
    #
    # @!attribute [rw] video_width
    #   Video-resolution width in pixels.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/VideoConfiguration AWS API Documentation
    #
    class VideoConfiguration < Struct.new(
      :avc_level,
      :avc_profile,
      :codec,
      :encoder,
      :target_bitrate,
      :target_framerate,
      :video_height,
      :video_width)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
