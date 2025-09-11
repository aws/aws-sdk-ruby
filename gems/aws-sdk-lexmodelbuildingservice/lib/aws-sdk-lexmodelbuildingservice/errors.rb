# frozen_string_literal: true

# This is generated code!

module Aws::LexModelBuildingService
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::LexModelBuildingService::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LexModelBuildingService::Errors::ServiceError
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
  # * {BadRequestException}
  # * {ConflictException}
  # * {InternalFailureException}
  # * {LimitExceededException}
  # * {NotFoundException}
  # * {PreconditionFailedException}
  # * {ResourceInUseException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Your IAM user or role does not have permission to call the Amazon Lex V2 APIs
    #       required to migrate your bot.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexModelBuildingService::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request is not well formed. For example, a value is invalid or
    #       a required field is missing. Check the field values, and try
    #       again.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexModelBuildingService::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> There was a conflict processing the request. Try your request
    #       again. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexModelBuildingService::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal Amazon Lex error occurred. Try your request again.</p>
    class InternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexModelBuildingService::Types::InternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request exceeded a limit. Try your request again.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexModelBuildingService::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource specified in the request was not found. Check the
    #       resource and try again.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexModelBuildingService::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> The checksum of the resource that you are trying to change does
    #       not match the checksum in the request. Check the resource's checksum and
    #       try again.</p>
    class PreconditionFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexModelBuildingService::Types::PreconditionFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource that you are attempting to delete is referred to by
    #       another resource. Use this information to remove references to the
    #       resource that you are trying to delete.</p>
    #          <p>The body of the exception contains a JSON object that describes the
    #       resource.</p>
    #          <p>
    #             <code>{ "resourceType": BOT | BOTALIAS | BOTCHANNEL |
    #         INTENT,</code>
    #          </p>
    #          <p>
    #             <code>"resourceReference": {</code>
    #          </p>
    #          <p>
    #             <code>"name": <i>string</i>, "version":
    #           <i>string</i> } }</code>
    #          </p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexModelBuildingService::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def reference_type
        @data[:reference_type]
      end

      def example_reference
        @data[:example_reference]
      end
    end
  end
end
