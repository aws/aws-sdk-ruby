# frozen_string_literal: true

# This is generated code!

module Aws::Backup
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Backup::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Backup::Errors::ServiceError
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
  # * {AlreadyExistsException}
  # * {ConflictException}
  # * {DependencyFailureException}
  # * {InvalidParameterValueException}
  # * {InvalidRequestException}
  # * {InvalidResourceStateException}
  # * {LimitExceededException}
  # * {MissingParameterValueException}
  # * {ResourceNotFoundException}
  # * {ServiceUnavailableException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The required resource already exists.</p>
    class AlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::AlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def creator_request_id
        @data[:creator_request_id]
      end

      # <p></p>
      def arn
        @data[:arn]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>Backup can't perform the action that you requested until it finishes
    #          performing a previous action. Try again later.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>A dependent Amazon Web Services service or resource returned an error to the Backup service, and the action cannot be completed.</p>
    class DependencyFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::DependencyFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>Indicates that something is wrong with a parameter's value. For example, the value is
    #          out of range.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>Indicates that something is wrong with the input to the request. For example, a
    #          parameter is of the wrong type.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>Backup is already performing an action on this recovery point. It can't
    #          perform the action you requested until the first action finishes. Try again later.</p>
    class InvalidResourceStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::InvalidResourceStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>A limit in the request has been exceeded; for example, a maximum number of items allowed
    #          in a request.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>Indicates that a required parameter is missing.</p>
    class MissingParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::MissingParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>A resource that is required for the action doesn't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end

    # <p>The request failed due to a temporary failure of the server.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Backup::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p></p>
      def type
        @data[:type]
      end

      # <p></p>
      def context
        @data[:context]
      end
    end
  end
end
