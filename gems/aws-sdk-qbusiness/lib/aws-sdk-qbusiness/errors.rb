# frozen_string_literal: true

# This is generated code!

module Aws::QBusiness
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::QBusiness::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::QBusiness::Errors::ServiceError
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
  # * {ExternalResourceException}
  # * {InternalServerException}
  # * {LicenseNotFoundException}
  # * {MediaTooLargeException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p> You don't have access to perform this action. Make sure you have the required permission policies and user accounts and try again.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You are trying to perform an action that conflicts with the current status of your resource. Fix any inconsistencies with your resources and try again.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message describing a <code>ConflictException</code>.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An external resource that you configured with your application is returning errors and preventing this operation from succeeding. Fix those errors and try again. </p>
    class ExternalResourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::ExternalResourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An issue occurred with the internal server used for your Amazon Q Business service. Wait some minutes and try again, or contact <a href="http://aws.amazon.com/contact-us/">Support</a> for help.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You don't have permissions to perform the action because your license is inactive. Ask your admin to activate your license and try again after your licence is active.</p>
    class LicenseNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::LicenseNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested media object is too large to be returned.</p>
    class MediaTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::MediaTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The application or plugin resource you want to use doesn’t exist. Make sure you have provided the correct resource and try again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message describing a <code>ResourceNotFoundException</code>.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>You have exceeded the set limits for your Amazon Q Business service. </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message describing a <code>ServiceQuotaExceededException</code>.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request was denied due to throttling. Reduce the number of requests and try again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The input doesn't meet the constraints set by the Amazon Q Business service. Provide the correct input and try again.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QBusiness::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message describing the <code>ValidationException</code>.</p>
      def message
        @data[:message]
      end

      # <p>The reason for the <code>ValidationException</code>.</p>
      def reason
        @data[:reason]
      end

      # <p>The input field(s) that failed validation.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
