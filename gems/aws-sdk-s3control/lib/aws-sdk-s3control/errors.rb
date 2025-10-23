# frozen_string_literal: true

# This is generated code!

module Aws::S3Control
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::S3Control::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::S3Control::Errors::ServiceError
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
    extend Smithy::Client::DynamicErrors

    # <p></p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested Outposts bucket name is not available. The bucket namespace is shared by
    #          all users of the Outposts in this Region. Select a different name and try
    #          again.</p>
    class BucketAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::BucketAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The Outposts bucket you tried to create already exists, and you own it. </p>
    class BucketAlreadyOwnedByYou < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::BucketAlreadyOwnedByYou] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p></p>
    class IdempotencyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::IdempotencyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    class InternalServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::InternalServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    class JobStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::JobStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon S3 throws this exception if you make a <code>GetPublicAccessBlock</code> request
    #          against an account that doesn't have a <code>PublicAccessBlockConfiguration</code>
    #          set.</p>
    class NoSuchPublicAccessBlockConfiguration < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::NoSuchPublicAccessBlockConfiguration] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p></p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon S3 throws this exception if you have too many tags in your tag set.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Control::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
