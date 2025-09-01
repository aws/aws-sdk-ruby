# frozen_string_literal: true

# This is generated code!

module Aws::Support
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Support::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Support::Errors::ServiceError
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
  # * {AttachmentIdNotFound}
  # * {AttachmentLimitExceeded}
  # * {AttachmentSetExpired}
  # * {AttachmentSetIdNotFound}
  # * {AttachmentSetSizeLimitExceeded}
  # * {CaseCreationLimitExceeded}
  # * {CaseIdNotFound}
  # * {DescribeAttachmentLimitExceeded}
  # * {InternalServerError}
  # * {ThrottlingException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An attachment with the specified ID could not be found.</p>
    class AttachmentIdNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::AttachmentIdNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An attachment with the specified ID could not be found.</p>
      def message
        @data[:message]
      end
    end

    # <p>The limit for the number of attachment sets created in a short period of time has been
    #             exceeded.</p>
    class AttachmentLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::AttachmentLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The limit for the number of attachment sets created in a short period of time has been
      #             exceeded.</p>
      def message
        @data[:message]
      end
    end

    # <p>The expiration time of the attachment set has passed. The set expires 1 hour after it
    #             is created.</p>
    class AttachmentSetExpired < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::AttachmentSetExpired] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The expiration time of the attachment set has passed. The set expires one hour after
      #             it is created.</p>
      def message
        @data[:message]
      end
    end

    # <p>An attachment set with the specified ID could not be found.</p>
    class AttachmentSetIdNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::AttachmentSetIdNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An attachment set with the specified ID could not be found.</p>
      def message
        @data[:message]
      end
    end

    # <p>A limit for the size of an attachment set has been exceeded. The limits are three
    #             attachments and 5 MB per attachment.</p>
    class AttachmentSetSizeLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::AttachmentSetSizeLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A limit for the size of an attachment set has been exceeded. The limits are three
      #             attachments and 5 MB per attachment.</p>
      def message
        @data[:message]
      end
    end

    # <p>The case creation limit for the account has been exceeded.</p>
    class CaseCreationLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::CaseCreationLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error message that indicates that you have exceeded the number of cases you can
      #             have open.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested <code>caseId</code> couldn't be located.</p>
    class CaseIdNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::CaseIdNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The requested <code>CaseId</code> could not be located.</p>
      def message
        @data[:message]
      end
    end

    # <p>The limit for the number of <a>DescribeAttachment</a> requests in a short
    #             period of time has been exceeded.</p>
    class DescribeAttachmentLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::DescribeAttachmentLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The limit for the number of <a>DescribeAttachment</a> requests in a short
      #             period of time has been exceeded.</p>
      def message
        @data[:message]
      end
    end

    # <p>An internal server error occurred.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An internal server error occurred.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #         You have exceeded the maximum allowed TPS (Transactions Per Second) for the operations.
    #         </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Support::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
