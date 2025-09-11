# frozen_string_literal: true

# This is generated code!

module Aws::CloudHSMV2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudHSMV2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudHSMV2::Errors::ServiceError
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
  # * {CloudHsmAccessDeniedException}
  # * {CloudHsmInternalFailureException}
  # * {CloudHsmInvalidRequestException}
  # * {CloudHsmResourceLimitExceededException}
  # * {CloudHsmResourceNotFoundException}
  # * {CloudHsmServiceException}
  # * {CloudHsmTagException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The request was rejected because the requester does not have permission to perform the
    #       requested operation.</p>
    class CloudHsmAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSMV2::Types::CloudHsmAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because of an CloudHSM internal failure. The request can
    #       be retried.</p>
    class CloudHsmInternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSMV2::Types::CloudHsmInternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it is not a valid request.</p>
    class CloudHsmInvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSMV2::Types::CloudHsmInvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it exceeds an CloudHSM limit.</p>
    class CloudHsmResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSMV2::Types::CloudHsmResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it refers to a resource that cannot be
    #       found.</p>
    class CloudHsmResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSMV2::Types::CloudHsmResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because an error occurred.</p>
    class CloudHsmServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSMV2::Types::CloudHsmServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.</p>
    class CloudHsmTagException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSMV2::Types::CloudHsmTagException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
