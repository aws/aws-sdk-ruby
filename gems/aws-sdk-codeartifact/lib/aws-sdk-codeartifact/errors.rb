# frozen_string_literal: true

# This is generated code!

module Aws::Codeartifact
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Codeartifact::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Codeartifact::Errors::ServiceError
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

    # <p>
    #         The operation did not succeed because of an unauthorized access attempt.
    #       </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codeartifact::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #         The operation did not succeed because prerequisites are not met.
    #       </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codeartifact::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>
      #       The ID of the resource.
      #     </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>
      #       The type of Amazon Web Services resource.
      #     </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p> The operation did not succeed because of an error that occurred inside CodeArtifact. </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codeartifact::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #       The operation did not succeed because the resource requested is not found in the service.
    #     </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codeartifact::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>
      #       The ID of the resource.
      #     </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>
      #       The type of Amazon Web Services resource.
      #     </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>
    #         The operation did not succeed because it would have exceeded a service limit for your account.
    #       </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codeartifact::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>
      #       The ID of the resource.
      #     </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>
      #       The type of Amazon Web Services resource.
      #     </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>
    #       The operation did not succeed because too many requests are sent to the service.
    #     </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codeartifact::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>
      #       The time period, in seconds, to wait before retrying the request.
      #     </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>
    #       The operation did not succeed because a parameter in the request was sent with an invalid value.
    #     </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codeartifact::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>
      #       
      #     </p>
      def reason
        @data[:reason]
      end
    end
  end
end
