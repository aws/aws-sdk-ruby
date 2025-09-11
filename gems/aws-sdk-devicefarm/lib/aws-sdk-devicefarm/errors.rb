# frozen_string_literal: true

# This is generated code!

module Aws::DeviceFarm
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DeviceFarm::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DeviceFarm::Errors::ServiceError
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
  # * {ArgumentException}
  # * {CannotDeleteException}
  # * {IdempotencyException}
  # * {InternalServiceException}
  # * {InvalidOperationException}
  # * {LimitExceededException}
  # * {NotEligibleException}
  # * {NotFoundException}
  # * {ServiceAccountException}
  # * {TagOperationException}
  # * {TagPolicyException}
  # * {TooManyTagsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An invalid argument was specified.</p>
    class ArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::ArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Any additional information about the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested object could not be deleted.</p>
    class CannotDeleteException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::CannotDeleteException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An entity with the same name already exists.</p>
    class IdempotencyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::IdempotencyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Any additional information about the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An internal exception was raised in the service. Contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you see this
    #          error. </p>
    class InternalServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::InternalServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There was an error with the update request, or you do not have sufficient permissions
    #             to update this VPC endpoint configuration.</p>
    class InvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::InvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A limit was exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Any additional information about the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Exception gets thrown when a user is not eligible to perform the specified
    #             transaction.</p>
    class NotEligibleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::NotEligibleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The HTTP response code of a Not Eligible exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified entity was not found.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Any additional information about the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>There was a problem with the service account.</p>
    class ServiceAccountException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::ServiceAccountException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Any additional information about the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation was not successful. Try again.</p>
    class TagOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::TagOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The request doesn't comply with the AWS Identity and Access Management (IAM) tag
    #             policy. Correct your request and then retry it.</p>
    class TagPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::TagPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The list of tags on the repository is over the limit. The maximum number of tags that
    #             can be applied to a repository is 50. </p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DeviceFarm::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def resource_name
        @data[:resource_name]
      end
    end
  end
end
