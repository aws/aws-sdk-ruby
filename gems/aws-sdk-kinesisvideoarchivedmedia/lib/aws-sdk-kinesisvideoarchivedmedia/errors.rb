# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoArchivedMedia

  # When KinesisVideoArchivedMedia returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::KinesisVideoArchivedMedia::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all KinesisVideoArchivedMedia errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KinesisVideoArchivedMedia::Errors::ServiceError
  #       # rescues all KinesisVideoArchivedMedia API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
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

    extend Aws::Errors::DynamicErrors

    class ClientLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::ClientLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidArgumentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::InvalidArgumentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidCodecPrivateDataException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::InvalidCodecPrivateDataException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidMediaFrameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::InvalidMediaFrameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class MissingCodecPrivateDataException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::MissingCodecPrivateDataException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoDataRetentionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::NoDataRetentionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NotAuthorizedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::NotAuthorizedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class UnsupportedStreamMediaTypeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoArchivedMedia::Types::UnsupportedStreamMediaTypeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
