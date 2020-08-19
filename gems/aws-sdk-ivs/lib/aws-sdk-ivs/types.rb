# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # @!attribute [rw] stream_keys
    #   @return [Array<Types::StreamKey>]
    #
    # @!attribute [rw] errors
    #   @return [Array<Types::BatchError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchGetStreamKeyResponse AWS API Documentation
    #
    class BatchGetStreamKeyResponse < Struct.new(
      :stream_keys,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a channel.
    #
    # @!attribute [rw] arn
    #   Channel ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Channel name.
    #   @return [String]
    #
    # @!attribute [rw] latency_mode
    #   Channel latency mode. Default: `LOW`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable resolution or bitrate, the stream
    #   probably will disconnect immediately.* Valid values:
    #
    #   * `STANDARD`\: Multiple qualities are generated from the original
    #     input, to automatically give viewers the best experience for their
    #     devices and network conditions. Vertical resolution can be up to
    #     1080 and bitrate can be up to 8.5 Mbps.
    #
    #   * `BASIC`\: Amazon IVS delivers the original input to viewers. The
    #     viewer’s video-quality choice is limited to the original input.
    #     Vertical resolution can be up to 480 and bitrate can be up to 1.5
    #     Mbps.
    #
    #   Default: `STANDARD`.
    #   @return [String]
    #
    # @!attribute [rw] ingest_endpoint
    #   Channel ingest endpoint, part of the definition of an ingest server,
    #   used when you set up streaming software.
    #   @return [String]
    #
    # @!attribute [rw] playback_url
    #   Channel playback URL.
    #   @return [String]
    #
    # @!attribute [rw] authorized
    #   Whether the channel is authorized.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :arn,
      :name,
      :latency_mode,
      :type,
      :ingest_endpoint,
      :playback_url,
      :authorized,
      :tags)
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
    # @!attribute [rw] name
    #   Channel name.
    #   @return [String]
    #
    # @!attribute [rw] latency_mode
    #   Channel latency mode. Default: `LOW`.
    #   @return [String]
    #
    # @!attribute [rw] authorized
    #   Whether the channel is authorized.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ChannelSummary AWS API Documentation
    #
    class ChannelSummary < Struct.new(
      :arn,
      :name,
      :latency_mode,
      :authorized,
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
    #         name: "ChannelName",
    #         latency_mode: "NORMAL", # accepts NORMAL, LOW
    #         type: "BASIC", # accepts BASIC, STANDARD
    #         authorized: false,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Channel name.
    #   @return [String]
    #
    # @!attribute [rw] latency_mode
    #   Channel latency mode. Default: `LOW`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable resolution or bitrate, the stream
    #   probably will disconnect immediately.* Valid values:
    #
    #   * `STANDARD`\: Multiple qualities are generated from the original
    #     input, to automatically give viewers the best experience for their
    #     devices and network conditions. Vertical resolution can be up to
    #     1080 and bitrate can be up to 8.5 Mbps.
    #
    #   * `BASIC`\: Amazon IVS delivers the original input to viewers. The
    #     viewer’s video-quality choice is limited to the original input.
    #     Vertical resolution can be up to 480 and bitrate can be up to 1.5
    #     Mbps.
    #
    #   Default: `STANDARD`.
    #   @return [String]
    #
    # @!attribute [rw] authorized
    #   Whether the channel is authorized. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   See Channel$tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :name,
      :latency_mode,
      :type,
      :authorized,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   Object specifying a channel.
    #   @return [Types::Channel]
    #
    # @!attribute [rw] stream_key
    #   Object specifying a stream key.
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
    #   See Channel$tags.
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
    #   Object specifying a channel.
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
    #   A key pair used to sign and validate a playback authorization token.
    #   @return [Types::PlaybackKeyPair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetPlaybackKeyPairResponse AWS API Documentation
    #
    class GetPlaybackKeyPairResponse < Struct.new(
      :key_pair)
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
    #   Object specifying a stream key.
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
    #   Specifies a live video stream that has been ingested and
    #   distributed.
    #   @return [Types::Stream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStreamResponse AWS API Documentation
    #
    class GetStreamResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportPlaybackKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         public_key_material: "PlaybackPublicKeyMaterial", # required
    #         name: "PlaybackKeyPairName",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] public_key_material
    #   The public portion of a customer-generated key pair.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   An arbitrary string (a nickname) assigned to a playback key pair
    #   that helps the customer identify that resource. The value does not
    #   need to be unique.
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
      :public_key_material,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_pair
    #   A key pair used to sign and validate a playback authorization token.
    #   @return [Types::PlaybackKeyPair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ImportPlaybackKeyPairResponse AWS API Documentation
    #
    class ImportPlaybackKeyPairResponse < Struct.new(
      :key_pair)
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
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter_by_name
    #   Filters the channel list to match the specified name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first channel to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of channels to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :filter_by_name,
      :next_token,
      :max_results)
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
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Maximum number of key pairs to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The first key pair to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListPlaybackKeyPairsRequest AWS API Documentation
    #
    class ListPlaybackKeyPairsRequest < Struct.new(
      :next_token,
      :max_results)
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

    # @note When making an API call, you may pass ListStreamKeysRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChannelArn", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN used to filter the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first stream key to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of streamKeys to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamKeysRequest AWS API Documentation
    #
    class ListStreamKeysRequest < Struct.new(
      :channel_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_keys
    #   List of stream keys.
    #   @return [Array<Types::StreamKeySummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more stream keys than `maxResults`, use `nextToken` in
    #   the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamKeysResponse AWS API Documentation
    #
    class ListStreamKeysResponse < Struct.new(
      :stream_keys,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStreamsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The first stream to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of streams to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamsRequest AWS API Documentation
    #
    class ListStreamsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streams
    #   List of streams.
    #   @return [Array<Types::StreamSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more streams than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamsResponse AWS API Documentation
    #
    class ListStreamsResponse < Struct.new(
      :streams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first tag to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of tags to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   If there are more tags than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
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
    # @!attribute [rw] name
    #   Key-pair name.
    #   @return [String]
    #
    # @!attribute [rw] fingerprint
    #   Key-pair identifier.
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
      :name,
      :fingerprint,
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
    #   Key-pair name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of 1-50 maps, each of the form `string:string (key:value)`
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
    # @!attribute [rw] playback_url
    #   URL of the video master manifest, required by the video player to
    #   play the HLS stream.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   ISO-8601 formatted timestamp of the stream’s start.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The stream’s state.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   The stream’s health.
    #   @return [String]
    #
    # @!attribute [rw] viewer_count
    #   Number of current viewers of the stream.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/Stream AWS API Documentation
    #
    class Stream < Struct.new(
      :channel_arn,
      :playback_url,
      :start_time,
      :state,
      :health,
      :viewer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a stream key.
    #
    # @!attribute [rw] arn
    #   Stream-key ARN.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Stream-key value.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamKey AWS API Documentation
    #
    class StreamKey < Struct.new(
      :arn,
      :value,
      :channel_arn,
      :tags)
      SENSITIVE = []
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

    # Summary information about a stream.
    #
    # @!attribute [rw] channel_arn
    #   Channel ARN for the stream.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The stream’s state.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   The stream’s health.
    #   @return [String]
    #
    # @!attribute [rw] viewer_count
    #   Number of current viewers of the stream.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   ISO-8601 formatted timestamp of the stream’s start.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StreamSummary AWS API Documentation
    #
    class StreamSummary < Struct.new(
      :channel_arn,
      :state,
      :health,
      :viewer_count,
      :start_time)
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
    #         name: "ChannelName",
    #         latency_mode: "NORMAL", # accepts NORMAL, LOW
    #         type: "BASIC", # accepts BASIC, STANDARD
    #         authorized: false,
    #       }
    #
    # @!attribute [rw] arn
    #   ARN of the channel to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Channel name.
    #   @return [String]
    #
    # @!attribute [rw] latency_mode
    #   Channel latency mode. Default: `LOW`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable resolution or bitrate, the stream
    #   probably will disconnect immediately.* Valid values:
    #
    #   * `STANDARD`\: Multiple qualities are generated from the original
    #     input, to automatically give viewers the best experience for their
    #     devices and network conditions. Vertical resolution can be up to
    #     1080 and bitrate can be up to 8.5 Mbps.
    #
    #   * `BASIC`\: Amazon IVS delivers the original input to viewers. The
    #     viewer’s video-quality choice is limited to the original input.
    #     Vertical resolution can be up to 480 and bitrate can be up to 1.5
    #     Mbps.
    #
    #   Default: `STANDARD`.
    #   @return [String]
    #
    # @!attribute [rw] authorized
    #   Whether the channel is authorized. Default: `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :arn,
      :name,
      :latency_mode,
      :type,
      :authorized)
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
    #   The input fails to satisfy the constraints specified by an AWS
    #   service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
