# frozen_string_literal: true

# This is generated code!

module Aws::PCS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::PCS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::PCS::Errors::ServiceError
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

    # <p>You don't have permission to perform the action.</p> <p> <u>Examples</u> </p> <ul> <li> <p>The launch template instance profile doesn't pass <code>iam:PassRole</code> verification.</p> </li> <li> <p>There is a mismatch between the account ID and cluster ID.</p> </li> <li> <p>The cluster ID doesn't exist.</p> </li> <li> <p>The EC2 instance isn't present.</p> </li> </ul>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PCS::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more than 1 operation on the same resource at the same time.</p> <p> <u>Examples</u> </p> <ul> <li> <p>A cluster with the same name already exists.</p> </li> <li> <p>A cluster isn't in <code>ACTIVE</code> status.</p> </li> <li> <p>A cluster to delete is in an unstable state. For example, because it still has <code>ACTIVE</code> node groups or queues.</p> </li> <li> <p>A queue already exists in a cluster.</p> </li> </ul>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PCS::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The unique identifier of the resource that caused the conflict exception. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type or category of the resource that caused the conflict exception." </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>PCS can't process your request right now. Try again later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PCS::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>The requested resource can't be found. The cluster, node group, or queue you're attempting to get, update, list, or delete doesn't exist.</p> <p> <u>Examples</u> </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PCS::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The unique identifier of the resource that was not found. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type or category of the resource that was not found. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your Amazon Web Services account. To learn how to increase your service quota, see <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html">Requesting a quota increase</a> in the <i>Service Quotas User Guide</i> </p> <p> <u>Examples</u> </p> <ul> <li> <p>The max number of clusters or queues has been reached for the account.</p> </li> <li> <p>The max number of compute node groups has been reached for the associated cluster.</p> </li> <li> <p>The total of <code>maxInstances</code> across all compute node groups has been reached for associated cluster.</p> </li> </ul>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PCS::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The service code associated with the quota that was exceeded. </p>
      def service_code
        @data[:service_code]
      end

      # <p> The unique identifier of the resource that caused the quota to be exceeded. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p> The type or category of the resource that caused the quota to be exceeded. </p>
      def resource_type
        @data[:resource_type]
      end

      # <p> The <b>quota code</b> of the service quota that was exceeded. </p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>Your request exceeded a request rate quota. Check the resource's request rate quota and try again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PCS::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The number of seconds to wait before retrying the request. </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The request isn't valid.</p> <p> <u>Examples</u> </p> <ul> <li> <p>Your request contains malformed JSON or unsupported characters.</p> </li> <li> <p>The scheduler version isn't supported.</p> </li> <li> <p>There are networking related errors, such as network validation failure.</p> </li> <li> <p>AMI type is <code>CUSTOM</code> and the launch template doesn't define the AMI ID, or the AMI type is AL2 and the launch template defines the AMI.</p> </li> </ul>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PCS::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p> The specific reason or cause of the validation error. </p>
      def reason
        @data[:reason]
      end

      # <p> A list of fields or properties that failed validation. </p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
