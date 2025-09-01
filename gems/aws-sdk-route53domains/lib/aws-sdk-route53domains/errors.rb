# frozen_string_literal: true

# This is generated code!

module Aws::Route53Domains
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Route53Domains::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Route53Domains::Errors::ServiceError
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
  # * {DnssecLimitExceeded}
  # * {DomainLimitExceeded}
  # * {DuplicateRequest}
  # * {InvalidInput}
  # * {OperationLimitExceeded}
  # * {TLDRulesViolation}
  # * {UnsupportedTLD}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p> This error is returned if you call <code>AssociateDelegationSignerToDomain</code>
    # 			when the specified domain has reached the maximum number of DS records. You can't add
    # 			any additional DS records unless you delete an existing one first. </p>
    class DnssecLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53Domains::Types::DnssecLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of domains has exceeded the allowed threshold for the account.</p>
    class DomainLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53Domains::Types::DomainLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The number of domains has exceeded the allowed threshold for the account.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request is already in progress for the domain.</p>
    class DuplicateRequest < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53Domains::Types::DuplicateRequest] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>ID of the request operation.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The request is already in progress for the domain.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested item is not acceptable. For example, for APIs that accept a domain name,
    # 			the request might specify a domain name that doesn't belong to the account that
    # 			submitted the request. For <code>AcceptDomainTransferFromAnotherAwsAccount</code>, the
    # 			password might be invalid.</p>
    class InvalidInput < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53Domains::Types::InvalidInput] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The requested item is not acceptable. For example, for an OperationId it might refer
      # 			to the ID of an operation that is already completed. For a domain name, it might not be
      # 			a valid domain name or belong to the requester account.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of operations or jobs running exceeded the allowed threshold for the
    # 			account.</p>
    class OperationLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53Domains::Types::OperationLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The number of operations or jobs running exceeded the allowed threshold for the
      # 			account.</p>
      def message
        @data[:message]
      end
    end

    # <p>The top-level domain does not support this operation.</p>
    class TLDRulesViolation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53Domains::Types::TLDRulesViolation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The top-level domain does not support this operation.</p>
      def message
        @data[:message]
      end
    end

    # <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
    class UnsupportedTLD < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Route53Domains::Types::UnsupportedTLD] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
      def message
        @data[:message]
      end
    end
  end
end
