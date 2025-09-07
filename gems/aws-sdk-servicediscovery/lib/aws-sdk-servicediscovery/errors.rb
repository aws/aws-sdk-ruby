# frozen_string_literal: true

# This is generated code!

module Aws::ServiceDiscovery
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ServiceDiscovery::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ServiceDiscovery::Errors::ServiceError
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
  # * {CustomHealthNotFound}
  # * {DuplicateRequest}
  # * {InstanceNotFound}
  # * {InvalidInput}
  # * {NamespaceAlreadyExists}
  # * {NamespaceNotFound}
  # * {OperationNotFound}
  # * {RequestLimitExceeded}
  # * {ResourceInUse}
  # * {ResourceLimitExceeded}
  # * {ResourceNotFoundException}
  # * {ServiceAlreadyExists}
  # * {ServiceAttributesLimitExceededException}
  # * {ServiceNotFound}
  # * {TooManyTagsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The health check for the instance that's specified by <code>ServiceId</code> and
    #     <code>InstanceId</code> isn't a custom health check. </p>
    class CustomHealthNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::CustomHealthNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation is already in progress.</p>
    class DuplicateRequest < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::DuplicateRequest] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The ID of the operation that's already in progress.</p>
      def duplicate_operation_id
        @data[:duplicate_operation_id]
      end
    end

    # <p>No instance exists with the specified ID, or the instance was recently registered, and
    #    information about the instance hasn't propagated yet.</p>
    class InstanceNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::InstanceNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more specified values aren't valid. For example, a required value might be missing, a
    #    numeric value might be outside the allowed range, or a string value might exceed length
    #    constraints.</p>
    class InvalidInput < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::InvalidInput] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The namespace that you're trying to create already exists.</p>
    class NamespaceAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::NamespaceAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The <code>CreatorRequestId</code> that was used to create the namespace.</p>
      def creator_request_id
        @data[:creator_request_id]
      end

      # <p>The ID of the existing namespace.</p>
      def namespace_id
        @data[:namespace_id]
      end
    end

    # <p>No namespace exists with the specified ID.</p>
    class NamespaceNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::NamespaceNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No operation exists with the specified ID.</p>
    class OperationNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::OperationNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation can't be completed because you've reached the quota for the number of
    #    requests. For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/throttling.html">Cloud Map API request throttling quota</a> in the
    #     <i>Cloud Map Developer Guide</i>.</p>
    class RequestLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::RequestLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource can't be deleted because it contains other resources. For example,
    #    you can't delete a service that contains any instances.</p>
    class ResourceInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::ResourceInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource can't be created because you've reached the quota on the number of
    #    resources.</p>
    class ResourceLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::ResourceLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation can't be completed because the resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The service can't be created because a service with the same name already exists.</p>
    class ServiceAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::ServiceAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The <code>CreatorRequestId</code> that was used to create the service.</p>
      def creator_request_id
        @data[:creator_request_id]
      end

      # <p>The ID of the existing service.</p>
      def service_id
        @data[:service_id]
      end

      # <p>The ARN of the existing service.</p>
      def service_arn
        @data[:service_arn]
      end
    end

    # <p>The attribute can't be added to the service because you've exceeded the quota for the number
    #    of attributes you can add to a service.</p>
    class ServiceAttributesLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::ServiceAttributesLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No service exists with the specified ID.</p>
    class ServiceNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::ServiceNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The list of tags on the resource is over the quota. The maximum number of tags that can be
    #    applied to a resource is 50.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceDiscovery::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The name of the resource.</p>
      def resource_name
        @data[:resource_name]
      end
    end
  end
end
