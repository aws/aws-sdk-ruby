# frozen_string_literal: true

# This is generated code!

module Aws::DevOpsGuru
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DevOpsGuru::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DevOpsGuru::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p> You don't have permissions to perform the requested operation. The user or role that
    # 			is making the request must have at least one IAM permissions policy attached that grants
    # 			the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the
    # 				<i>IAM User Guide</i>. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsGuru::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> An exception that is thrown when a conflict occurs. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsGuru::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The ID of the Amazon Web Services resource in which a conflict occurred. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of the Amazon Web Services resource in which a conflict occurred. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An internal failure in an Amazon service occurred.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsGuru::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The number of seconds after which the action that caused the internal server
      # 			exception can be retried. </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>A requested resource could not be found</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsGuru::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The ID of the Amazon Web Services resource that could not be found. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type of the Amazon Web Services resource that could not be found. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request contains a value that exceeds a maximum quota.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsGuru::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to a request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsGuru::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The code of the quota that was exceeded, causing the throttling exception. </p>
      def quota_code
        @data[:quota_code]
      end

      # <p> The code of the service that caused the throttling exception. </p>
      def service_code
        @data[:service_code]
      end

      # <p> The number of seconds after which the action that caused the throttling exception can
      # 			be retried. </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p> Contains information about data passed in to a field during a request that is not
    # 			valid. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DevOpsGuru::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p> A message that describes the validation exception. </p>
      def message
        @data[:message]
      end

      # <p> The reason the validation exception was thrown. </p>
      def reason
        @data[:reason]
      end

      def fields
        @data[:fields]
      end
    end
  end
end
