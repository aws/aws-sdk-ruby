# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SimpleDB
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
