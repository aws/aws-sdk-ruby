# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoArchivedMedia
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::KinesisVideoArchivedMedia::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KinesisVideoArchivedMedia::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {ClientLimitExceededException}
  # * {InvalidArgumentException}
  # * {InvalidCodecPrivateDataException}
  # * {InvalidMediaFrameException}
  # * {MissingCodecPrivateDataException}
  # * {NoDataRetentionException}
  # * {NotAuthorizedException}
  # * {ResourceNotFoundException}
  # * {UnsupportedStreamMediaTypeException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Kinesis Video Streams has throttled the request because you have exceeded a limit. Try making the call later. For information about limits, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html">Kinesis Video Streams Limits</a>.</p>
    class ClientLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::ClientLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A specified parameter exceeds its restrictions, is not supported, or can't be
    #             used.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The codec private data in at least one of the tracks of the video stream is not valid
    #             for this operation.</p>
    class InvalidCodecPrivateDataException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::InvalidCodecPrivateDataException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more frames in the requested clip could not be parsed based on the specified
    #             codec.</p>
    class InvalidMediaFrameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::InvalidMediaFrameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No codec private data was found in at least one of tracks of the video stream.</p>
    class MissingCodecPrivateDataException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::MissingCodecPrivateDataException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>GetImages</code> was requested for a stream that does not retain data (that is, has
    #             a <code>DataRetentionInHours</code> of 0). </p>
    class NoDataRetentionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::NoDataRetentionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Status Code: 403, The caller is not authorized to perform an operation on the given
    #             stream, or the token has expired.</p>
    class NotAuthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::NotAuthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>GetImages</code> will throw this error when Kinesis Video Streams can't find the stream
    #             that you specified.</p>
    #          <p>
    #             <code>GetHLSStreamingSessionURL</code> and <code>GetDASHStreamingSessionURL</code> throw
    #             this error if a session with a <code>PlaybackMode</code> of <code>ON_DEMAND</code> or
    #                 <code>LIVE_REPLAY</code>is requested for a stream that has no fragments within the
    #             requested time range, or if a session with a <code>PlaybackMode</code> of
    #                 <code>LIVE</code> is requested for a stream that has no fragments within the last 30
    #             seconds.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The type of the media (for example, h.264 or h.265 video or ACC or G.711 audio) could
    #             not be determined from the codec IDs of the tracks in the first fragment for a playback
    #             session. The codec ID for track 1 should be <code>V_MPEG/ISO/AVC</code> and, optionally,
    #             the codec ID for track 2 should be <code>A_AAC</code>.</p>
    class UnsupportedStreamMediaTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideoArchivedMedia::Types::UnsupportedStreamMediaTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
