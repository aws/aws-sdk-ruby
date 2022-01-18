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

    # Object specifying a stream’s audio configuration.
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

    # @note When making an API call, you may pass BatchGetChannelRequest
    #   data as a hash:
    #
    #       {
    #         arns: ["ChannelArn"], # required
    #       }
    #
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

    # @note When making an API call, you may pass BatchGetStreamKeyRequest
    #   data as a hash:
    #
    #       {
    #         arns: ["StreamKeyArn"], # required
    #       }
    #
    # @!attribute [rw] arns
    #   Array of ARNs, one per channel.
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
    # @!attribute [rw] recording_configuration_arn
    #   Recording-configuration ARN. A value other than an empty string
    #   indicates that recording is enabled. Default: "" (empty string,
    #   recording is disabled).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable resolution or bitrate, the stream
    #   probably will disconnect immediately.* Default: `STANDARD`. Valid
    #   values:
    #
    #   * `STANDARD`\: Multiple qualities are generated from the original
    #     input, to automatically give viewers the best experience for their
    #     devices and network conditions. Resolution can be up to 1080p and
    #     bitrate can be up to 8.5 Mbps. Audio is transcoded only for
    #     renditions 360p and below; above that, audio is passed through.
    #
    #   * `BASIC`\: Amazon IVS delivers the original input to viewers. The
    #     viewer’s video-quality choice is limited to the original input.
    #     Resolution can be up to 480p and bitrate can be up to 1.5 Mbps.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :arn,
      :authorized,
      :ingest_endpoint,
      :latency_mode,
      :name,
      :playback_url,
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
    # @!attribute [rw] recording_configuration_arn
    #   Recording-configuration ARN. A value other than an empty string
    #   indicates that recording is enabled. Default: "" (empty string,
    #   recording is disabled).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ChannelSummary AWS API Documentation
    #
    class ChannelSummary < Struct.new(
      :arn,
      :authorized,
      :latency_mode,
      :name,
      :recording_configuration_arn,
      :tags)
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

    # @note When making an API call, you may pass CreateChannelRequest
    #   data as a hash:
    #
    #       {
    #         authorized: false,
    #         latency_mode: "NORMAL", # accepts NORMAL, LOW
    #         name: "ChannelName",
    #         recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         type: "BASIC", # accepts BASIC, STANDARD
    #       }
    #
    # @!attribute [rw] authorized
    #   Whether the channel is private (enabled for playback authorization).
    #   Default: `false`.
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
    # @!attribute [rw] recording_configuration_arn
    #   Recording-configuration ARN. Default: "" (empty string, recording
    #   is disabled).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable resolution or bitrate, the stream
    #   probably will disconnect immediately.* Default: `STANDARD`. Valid
    #   values:
    #
    #   * `STANDARD`\: Multiple qualities are generated from the original
    #     input, to automatically give viewers the best experience for their
    #     devices and network conditions. Resolution can be up to 1080p and
    #     bitrate can be up to 8.5 Mbps. Audio is transcoded only for
    #     renditions 360p and below; above that, audio is passed through.
    #
    #   * `BASIC`\: Amazon IVS delivers the original input to viewers. The
    #     viewer’s video-quality choice is limited to the original input.
    #     Resolution can be up to 480p and bitrate can be up to 1.5 Mbps.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :authorized,
      :latency_mode,
      :name,
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

    # @note When making an API call, you may pass CreateRecordingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         destination_configuration: { # required
    #           s3: {
    #             bucket_name: "S3DestinationBucketName", # required
    #           },
    #         },
    #         name: "RecordingConfigurationName",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         thumbnail_configuration: {
    #           recording_mode: "DISABLED", # accepts DISABLED, INTERVAL
    #           target_interval_seconds: 1,
    #         },
    #       }
    #
    # @!attribute [rw] destination_configuration
    #   A complex type that contains a destination configuration for where
    #   recorded video will be stored.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] name
    #   Recording-configuration name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
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

    # @note When making an API call, you may pass CreateStreamKeyRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChannelArn", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] channel_arn
    #   ARN of the channel for which to create the stream key.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
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

    # @note When making an API call, you may pass DeleteChannelRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ChannelArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeletePlaybackKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         arn: "PlaybackKeyPairArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteRecordingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         arn: "RecordingConfigurationArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteStreamKeyRequest
    #   data as a hash:
    #
    #       {
    #         arn: "StreamKeyArn", # required
    #       }
    #
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
    # @note When making an API call, you may pass DestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         s3: {
    #           bucket_name: "S3DestinationBucketName", # required
    #         },
    #       }
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

    # @note When making an API call, you may pass GetChannelRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ChannelArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetPlaybackKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         arn: "PlaybackKeyPairArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetRecordingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         arn: "RecordingConfigurationArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetStreamKeyRequest
    #   data as a hash:
    #
    #       {
    #         arn: "StreamKeyArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetStreamRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChannelArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetStreamSessionRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChannelArn", # required
    #         stream_id: "StreamId",
    #       }
    #
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

    # @note When making an API call, you may pass ImportPlaybackKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         name: "PlaybackKeyPairName",
    #         public_key_material: "PlaybackPublicKeyMaterial", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    #   pair tags.
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

    # @note When making an API call, you may pass ListChannelsRequest
    #   data as a hash:
    #
    #       {
    #         filter_by_name: "ChannelName",
    #         filter_by_recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
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
    #   Maximum number of channels to return. Default: 50.
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

    # @note When making an API call, you may pass ListPlaybackKeyPairsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The first key pair to retrieve. This is used for pagination; see the
    #   `nextToken` response field. Default: 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Maximum number of key pairs to return.
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

    # @note When making an API call, you may pass ListRecordingConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   Maximum number of recording configurations to return. Default: 50.
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

    # @note When making an API call, you may pass ListStreamKeysRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChannelArn", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN used to filter the list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of streamKeys to return. Default: 50.
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

    # @note When making an API call, you may pass ListStreamSessionsRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChannelArn", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN used to filter the list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of streams to return. Default: 50.
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

    # @note When making an API call, you may pass ListStreamsRequest
    #   data as a hash:
    #
    #       {
    #         filter_by: {
    #           health: "HEALTHY", # accepts HEALTHY, STARVING, UNKNOWN
    #         },
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] filter_by
    #   Filters the stream list to match the specified criterion.
    #   @return [Types::StreamFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum number of streams to return. Default: 50.
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be retrieved.
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
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
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
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
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

    # @note When making an API call, you may pass PutMetadataRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChannelArn", # required
    #         metadata: "StreamMetadata", # required
    #       }
    #
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
    # @!attribute [rw] state
    #   Indicates the current state of the recording configuration. When the
    #   state is `ACTIVE`, the configuration is ready for recording a
    #   channel stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
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
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
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
    # @note When making an API call, you may pass S3DestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         bucket_name: "S3DestinationBucketName", # required
    #       }
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

    # @note When making an API call, you may pass StopStreamRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChannelArn", # required
    #       }
    #
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
    #   Time of the stream’s start. This is an ISO 8601 timestamp returned
    #   as a string.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The stream’s state.
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
    #   UTC ISO-8601 formatted timestamp of when the event occurred.
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
    # @note When making an API call, you may pass StreamFilters
    #   data as a hash:
    #
    #       {
    #         health: "HEALTHY", # accepts HEALTHY, STARVING, UNKNOWN
    #       }
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
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
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
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
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
    #   UTC ISO-8601 formatted timestamp of when the channel went offline.
    #   For live streams, this is `NULL`.
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
    #   UTC ISO-8601 formatted timestamp of when the channel went live.
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
    #   UTC ISO-8601 formatted timestamp of when the channel went offline.
    #   For live streams, this is `NULL`.
    #   @return [Time]
    #
    # @!attribute [rw] has_error_event
    #   If `true`, this stream encountered a quota breach or failure.
    #   @return [Boolean]
    #
    # @!attribute [rw] start_time
    #   UTC ISO-8601 formatted timestamp of when the channel went live.
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
    #   Time of the stream’s start. This is an ISO 8601 timestamp returned
    #   as a string.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The stream’s state.
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   ARN of the resource for which tags are to be added or updated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of tags to be added or updated.
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
    # @note When making an API call, you may pass ThumbnailConfiguration
    #   data as a hash:
    #
    #       {
    #         recording_mode: "DISABLED", # accepts DISABLED, INTERVAL
    #         target_interval_seconds: 1,
    #       }
    #
    # @!attribute [rw] recording_mode
    #   Thumbnail recording mode. Default: `INTERVAL`.
    #   @return [String]
    #
    # @!attribute [rw] target_interval_seconds
    #   The targeted thumbnail-generation interval in seconds. This is
    #   configurable (and required) only if `recordingMode` is `INTERVAL`.
    #   Default: 60.
    #
    #   **Important:** Setting a value for `targetIntervalSeconds` does not
    #   guarantee that thumbnails are generated at the specified interval.
    #   For thumbnails to be generated at the `targetIntervalSeconds`
    #   interval, the `IDR/Keyframe` value for the input video must be less
    #   than the `targetIntervalSeconds` value. See [ Amazon IVS Streaming
    #   Configuration][1] for information on setting `IDR/Keyframe` to the
    #   recommended value in video-encoder settings.
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
      :target_interval_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   ARN of the resource for which tags are to be removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Array of tags to be removed.
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

    # @note When making an API call, you may pass UpdateChannelRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ChannelArn", # required
    #         authorized: false,
    #         latency_mode: "NORMAL", # accepts NORMAL, LOW
    #         name: "ChannelName",
    #         recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #         type: "BASIC", # accepts BASIC, STANDARD
    #       }
    #
    # @!attribute [rw] arn
    #   ARN of the channel to be updated.
    #   @return [String]
    #
    # @!attribute [rw] authorized
    #   Whether the channel is private (enabled for playback authorization).
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
    # @!attribute [rw] recording_configuration_arn
    #   Recording-configuration ARN. If this is set to an empty string,
    #   recording is disabled. A value other than an empty string indicates
    #   that recording is enabled
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable resolution or bitrate, the stream
    #   probably will disconnect immediately*. Valid values:
    #
    #   * `STANDARD`\: Multiple qualities are generated from the original
    #     input, to automatically give viewers the best experience for their
    #     devices and network conditions. Resolution can be up to 1080p and
    #     bitrate can be up to 8.5 Mbps. Audio is transcoded only for
    #     renditions 360p and below; above that, audio is passed through.
    #
    #   * `BASIC`\: Amazon IVS delivers the original input to viewers. The
    #     viewer’s video-quality choice is limited to the original input.
    #     Resolution can be up to 480p and bitrate can be up to 1.5 Mbps.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :arn,
      :authorized,
      :latency_mode,
      :name,
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

    # Object specifying a stream’s video configuration.
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
