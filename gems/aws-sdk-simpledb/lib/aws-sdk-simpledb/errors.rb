# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SimpleDB

  # When SimpleDB returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::SimpleDB::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all SimpleDB errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SimpleDB::Errors::ServiceError
  #       # rescues all SimpleDB API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AttributeDoesNotExist}
  # * {DuplicateItemName}
  # * {InvalidNextToken}
  # * {InvalidNumberPredicates}
  # * {InvalidNumberValueTests}
  # * {InvalidParameterValue}
  # * {InvalidQueryExpression}
  # * {MissingParameter}
  # * {NoSuchDomain}
  # * {NumberDomainAttributesExceeded}
  # * {NumberDomainBytesExceeded}
  # * {NumberDomainsExceeded}
  # * {NumberItemAttributesExceeded}
  # * {NumberSubmittedAttributesExceeded}
  # * {NumberSubmittedItemsExceeded}
  # * {RequestTimeout}
  # * {TooManyRequestedAttributes}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AttributeDoesNotExist < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::AttributeDoesNotExist] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class DuplicateItemName < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::DuplicateItemName] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class InvalidNextToken < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::InvalidNextToken] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class InvalidNumberPredicates < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::InvalidNumberPredicates] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class InvalidNumberValueTests < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::InvalidNumberValueTests] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class InvalidParameterValue < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::InvalidParameterValue] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class InvalidQueryExpression < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::InvalidQueryExpression] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class MissingParameter < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::MissingParameter] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class NoSuchDomain < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::NoSuchDomain] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class NumberDomainAttributesExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::NumberDomainAttributesExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class NumberDomainBytesExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::NumberDomainBytesExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class NumberDomainsExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::NumberDomainsExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class NumberItemAttributesExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::NumberItemAttributesExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class NumberSubmittedAttributesExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::NumberSubmittedAttributesExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class NumberSubmittedItemsExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::NumberSubmittedItemsExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class RequestTimeout < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::RequestTimeout] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

    class TooManyRequestedAttributes < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SimpleDB::Types::TooManyRequestedAttributes] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def box_usage
        @data[:box_usage]
      end
    end

  end
end
