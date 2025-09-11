# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideo
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::KinesisVideo::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KinesisVideo::Errors::ServiceError
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
  # * {AccessDeniedException}
  # * {AccountChannelLimitExceededException}
  # * {AccountStreamLimitExceededException}
  # * {ClientLimitExceededException}
  # * {DeviceStreamLimitExceededException}
  # * {InvalidArgumentException}
  # * {InvalidDeviceException}
  # * {InvalidResourceFormatException}
  # * {NoDataRetentionException}
  # * {NotAuthorizedException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {StreamEdgeConfigurationNotFoundException}
  # * {TagsPerResourceExceededLimitException}
  # * {VersionMismatchException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have required permissions to perform this operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum limit of active signaling channels for this Amazon Web Services account
    #             in this region.</p>
    class AccountChannelLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::AccountChannelLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of streams created for the account is too high.</p>
    class AccountStreamLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::AccountStreamLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of
    #             allowed client calls. Try making the call later.</p>
    class ClientLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::ClientLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Not implemented.
    #             </p>
    class DeviceStreamLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::DeviceStreamLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The value for this input parameter is invalid.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Not implemented.</p>
    class InvalidDeviceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::InvalidDeviceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The format of the <code>StreamARN</code> is invalid.</p>
    class InvalidResourceFormatException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::InvalidResourceFormatException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Stream data retention in hours is equal to zero.</p>
    class NoDataRetentionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::NoDataRetentionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The caller is not authorized to perform this operation.</p>
    class NotAuthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::NotAuthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>When the input <code>StreamARN</code> or <code>ChannelARN</code>
    #             in <code>CLOUD_STORAGE_MODE</code> is already mapped to a different
    #             Kinesis Video Stream resource, or if the provided input <code>StreamARN</code>
    #             or <code>ChannelARN</code> is not in Active status, try one of the following : </p>
    #          <ol>
    #             <li>
    #                <p>The <code>DescribeMediaStorageConfiguration</code> API to determine what the stream given channel is mapped to. 
    #             </p>
    #             </li>
    #             <li>
    #                <p>The <code>DescribeMappedResourceConfiguration</code> API to determine the channel that the given stream is mapped to. 
    #             </p>
    #             </li>
    #             <li>
    #                <p>The <code>DescribeStream</code> or <code>DescribeSignalingChannel</code> API to determine the status of the resource.
    #             </p>
    #             </li>
    #          </ol>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon Kinesis Video Streams can't find the stream that you specified.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Exception rendered when the Amazon Kinesis Video Stream can't find a stream's edge configuration
    #          that you specified. </p>
    class StreamEdgeConfigurationNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::StreamEdgeConfigurationNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the limit of tags that you can associate with the resource.
    #             A Kinesis video stream can support up to 50 tags. </p>
    class TagsPerResourceExceededLimitException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::TagsPerResourceExceededLimitException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The stream version that you specified is not the latest version. To get the latest
    #             version, use the <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_DescribeStream.html">DescribeStream</a>
    #             API.</p>
    class VersionMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisVideo::Types::VersionMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
