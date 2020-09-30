# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control

  # When S3Control returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::S3Control::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all S3Control errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::S3Control::Errors::ServiceError
  #       # rescues all S3Control API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {BadRequestException}
  # * {BucketAlreadyExists}
  # * {BucketAlreadyOwnedByYou}
  # * {IdempotencyException}
  # * {InternalServiceException}
  # * {InvalidNextTokenException}
  # * {InvalidRequestException}
  # * {JobStatusException}
  # * {NoSuchPublicAccessBlockConfiguration}
  # * {NotFoundException}
  # * {TooManyRequestsException}
  # * {TooManyTagsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class BadRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::BadRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class BucketAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::BucketAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class BucketAlreadyOwnedByYou < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::BucketAlreadyOwnedByYou] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IdempotencyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::IdempotencyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InternalServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::InternalServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidNextTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::InvalidNextTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::InvalidRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class JobStatusException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::JobStatusException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NoSuchPublicAccessBlockConfiguration < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::NoSuchPublicAccessBlockConfiguration] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::NotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyRequestsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::TooManyRequestsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyTagsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::S3Control::Types::TooManyTagsException] data
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
