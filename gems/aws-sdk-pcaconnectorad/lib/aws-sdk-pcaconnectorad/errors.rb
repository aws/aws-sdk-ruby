# frozen_string_literal: true

# This is generated code!

module Aws::PcaConnectorAd
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::PcaConnectorAd::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::PcaConnectorAd::Errors::ServiceError
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

    # <p>You can receive this error if you attempt to create a resource share when you don't have
    #          the required permissions. This can be caused by insufficient permissions in policies
    #          attached to your Amazon Web Services Identity and Access Management (IAM) principal. It can also happen
    #          because of restrictions in place from an Amazon Web Services Organizations service control policy (SCP)
    #          that affects your Amazon Web Services account. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorAd::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This request cannot be completed for one of the following reasons because the requested
    #          resource was being concurrently modified by another request.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorAd::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the Amazon Web Services resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or failure with
    #          an internal server. </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorAd::Types::InternalServerException] data
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

    # <p>The operation tried to access a nonexistent resource. The resource might not be
    #          specified correctly, or its status might not be ACTIVE.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorAd::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the Amazon Web Services resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorAd::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the Amazon Web Services resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Identifies the originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The code associated with the service quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The limit on the number of requests per second was exceeded. </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorAd::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Identifies the originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The code associated with the quota.</p>
      def quota_code
        @data[:quota_code]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p>An input validation error occurred. For example, invalid characters in a template name,
    #          or if a pagination token is invalid. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::PcaConnectorAd::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the validation error. This won't be return for every
      #          validation exception.</p>
      def reason
        @data[:reason]
      end
    end
  end
end
