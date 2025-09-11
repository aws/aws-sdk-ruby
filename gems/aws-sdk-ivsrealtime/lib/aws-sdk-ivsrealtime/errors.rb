# frozen_string_literal: true

# This is generated code!

module Aws::IVSRealTime
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::IVSRealTime::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IVSRealTime::Errors::ServiceError
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
  # * {PendingVerification}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p/>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IVSRealTime::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p/>
      def access_control_allow_origin
        @data[:access_control_allow_origin]
      end

      # <p/>
      def access_control_expose_headers
        @data[:access_control_expose_headers]
      end

      # <p/>
      def cache_control
        @data[:cache_control]
      end

      # <p/>
      def content_security_policy
        @data[:content_security_policy]
      end

      # <p/>
      def strict_transport_security
        @data[:strict_transport_security]
      end

      # <p/>
      def x_content_type_options
        @data[:x_content_type_options]
      end

      # <p/>
      def x_frame_options
        @data[:x_frame_options]
      end

      # <p/>
      def x_amzn_error_type
        @data[:x_amzn_error_type]
      end

      # <p>User does not have sufficient access to perform this action.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IVSRealTime::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p/>
      def access_control_allow_origin
        @data[:access_control_allow_origin]
      end

      # <p/>
      def access_control_expose_headers
        @data[:access_control_expose_headers]
      end

      # <p/>
      def cache_control
        @data[:cache_control]
      end

      # <p/>
      def content_security_policy
        @data[:content_security_policy]
      end

      # <p/>
      def strict_transport_security
        @data[:strict_transport_security]
      end

      # <p/>
      def x_content_type_options
        @data[:x_content_type_options]
      end

      # <p/>
      def x_frame_options
        @data[:x_frame_options]
      end

      # <p/>
      def x_amzn_error_type
        @data[:x_amzn_error_type]
      end

      # <p>Updating or deleting a resource can cause an inconsistent state.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IVSRealTime::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p/>
      def access_control_allow_origin
        @data[:access_control_allow_origin]
      end

      # <p/>
      def access_control_expose_headers
        @data[:access_control_expose_headers]
      end

      # <p/>
      def cache_control
        @data[:cache_control]
      end

      # <p/>
      def content_security_policy
        @data[:content_security_policy]
      end

      # <p/>
      def strict_transport_security
        @data[:strict_transport_security]
      end

      # <p/>
      def x_content_type_options
        @data[:x_content_type_options]
      end

      # <p/>
      def x_frame_options
        @data[:x_frame_options]
      end

      # <p/>
      def x_amzn_error_type
        @data[:x_amzn_error_type]
      end

      # <p>Unexpected error during processing of request.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class PendingVerification < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IVSRealTime::Types::PendingVerification] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p/>
      def access_control_allow_origin
        @data[:access_control_allow_origin]
      end

      # <p/>
      def access_control_expose_headers
        @data[:access_control_expose_headers]
      end

      # <p/>
      def cache_control
        @data[:cache_control]
      end

      # <p/>
      def content_security_policy
        @data[:content_security_policy]
      end

      # <p/>
      def strict_transport_security
        @data[:strict_transport_security]
      end

      # <p/>
      def x_content_type_options
        @data[:x_content_type_options]
      end

      # <p/>
      def x_frame_options
        @data[:x_frame_options]
      end

      # <p/>
      def x_amzn_error_type
        @data[:x_amzn_error_type]
      end

      # <p> Your account is pending verification. </p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IVSRealTime::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p/>
      def access_control_allow_origin
        @data[:access_control_allow_origin]
      end

      # <p/>
      def access_control_expose_headers
        @data[:access_control_expose_headers]
      end

      # <p/>
      def cache_control
        @data[:cache_control]
      end

      # <p/>
      def content_security_policy
        @data[:content_security_policy]
      end

      # <p/>
      def strict_transport_security
        @data[:strict_transport_security]
      end

      # <p/>
      def x_content_type_options
        @data[:x_content_type_options]
      end

      # <p/>
      def x_frame_options
        @data[:x_frame_options]
      end

      # <p/>
      def x_amzn_error_type
        @data[:x_amzn_error_type]
      end

      # <p>Request references a resource which does not exist.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IVSRealTime::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p/>
      def access_control_allow_origin
        @data[:access_control_allow_origin]
      end

      # <p/>
      def access_control_expose_headers
        @data[:access_control_expose_headers]
      end

      # <p/>
      def cache_control
        @data[:cache_control]
      end

      # <p/>
      def content_security_policy
        @data[:content_security_policy]
      end

      # <p/>
      def strict_transport_security
        @data[:strict_transport_security]
      end

      # <p/>
      def x_content_type_options
        @data[:x_content_type_options]
      end

      # <p/>
      def x_frame_options
        @data[:x_frame_options]
      end

      # <p/>
      def x_amzn_error_type
        @data[:x_amzn_error_type]
      end

      # <p>Request would cause a service quota to be exceeded.</p>
      def exception_message
        @data[:exception_message]
      end
    end

    # <p/>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IVSRealTime::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p/>
      def access_control_allow_origin
        @data[:access_control_allow_origin]
      end

      # <p/>
      def access_control_expose_headers
        @data[:access_control_expose_headers]
      end

      # <p/>
      def cache_control
        @data[:cache_control]
      end

      # <p/>
      def content_security_policy
        @data[:content_security_policy]
      end

      # <p/>
      def strict_transport_security
        @data[:strict_transport_security]
      end

      # <p/>
      def x_content_type_options
        @data[:x_content_type_options]
      end

      # <p/>
      def x_frame_options
        @data[:x_frame_options]
      end

      # <p/>
      def x_amzn_error_type
        @data[:x_amzn_error_type]
      end

      # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
      def exception_message
        @data[:exception_message]
      end
    end
  end
end
