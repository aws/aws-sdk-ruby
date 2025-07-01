# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFormation

  # When CloudFormation returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::CloudFormation::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all CloudFormation errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudFormation::Errors::ServiceError
  #       # rescues all CloudFormation API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AlreadyExistsException}
  # * {CFNRegistryException}
  # * {ChangeSetNotFoundException}
  #    * This error class is not used. `ChangeSetNotFound` is used during parsing instead.
  # * {ConcurrentResourcesLimitExceededException}
  #    * This error class is not used. `ConcurrentResourcesLimitExceeded` is used during parsing instead.
  # * {CreatedButModifiedException}
  # * {GeneratedTemplateNotFoundException}
  #    * This error class is not used. `GeneratedTemplateNotFound` is used during parsing instead.
  # * {HookResultNotFoundException}
  #    * This error class is not used. `HookResultNotFound` is used during parsing instead.
  # * {InsufficientCapabilitiesException}
  # * {InvalidChangeSetStatusException}
  #    * This error class is not used. `InvalidChangeSetStatus` is used during parsing instead.
  # * {InvalidOperationException}
  # * {InvalidStateTransitionException}
  #    * This error class is not used. `InvalidStateTransition` is used during parsing instead.
  # * {LimitExceededException}
  # * {NameAlreadyExistsException}
  # * {OperationIdAlreadyExistsException}
  # * {OperationInProgressException}
  # * {OperationNotFoundException}
  # * {OperationStatusCheckFailedException}
  #    * This error class is not used. `ConditionalCheckFailed` is used during parsing instead.
  # * {ResourceScanInProgressException}
  #    * This error class is not used. `ResourceScanInProgress` is used during parsing instead.
  # * {ResourceScanLimitExceededException}
  #    * This error class is not used. `ResourceScanLimitExceeded` is used during parsing instead.
  # * {ResourceScanNotFoundException}
  #    * This error class is not used. `ResourceScanNotFound` is used during parsing instead.
  # * {StackInstanceNotFoundException}
  # * {StackNotFoundException}
  # * {StackRefactorNotFoundException}
  # * {StackSetNotEmptyException}
  # * {StackSetNotFoundException}
  # * {StaleRequestException}
  # * {TokenAlreadyExistsException}
  # * {TypeConfigurationNotFoundException}
  # * {TypeNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::AlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CFNRegistryException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::CFNRegistryException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ChangeSetNotFound` instead.
    class ChangeSetNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::ChangeSetNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ConcurrentResourcesLimitExceeded` instead.
    class ConcurrentResourcesLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::ConcurrentResourcesLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CreatedButModifiedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::CreatedButModifiedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `GeneratedTemplateNotFound` instead.
    class GeneratedTemplateNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::GeneratedTemplateNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `HookResultNotFound` instead.
    class HookResultNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::HookResultNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientCapabilitiesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::InsufficientCapabilitiesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidChangeSetStatus` instead.
    class InvalidChangeSetStatusException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::InvalidChangeSetStatusException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidOperationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::InvalidOperationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidStateTransition` instead.
    class InvalidStateTransitionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::InvalidStateTransitionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NameAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::NameAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OperationIdAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::OperationIdAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OperationInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::OperationInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OperationNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::OperationNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ConditionalCheckFailed` instead.
    class OperationStatusCheckFailedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::OperationStatusCheckFailedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResourceScanInProgress` instead.
    class ResourceScanInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::ResourceScanInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResourceScanLimitExceeded` instead.
    class ResourceScanLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::ResourceScanLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResourceScanNotFound` instead.
    class ResourceScanNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::ResourceScanNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StackInstanceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::StackInstanceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StackNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::StackNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StackRefactorNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::StackRefactorNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StackSetNotEmptyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::StackSetNotEmptyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StackSetNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::StackSetNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StaleRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::StaleRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TokenAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::TokenAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TypeConfigurationNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::TypeConfigurationNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TypeNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudFormation::Types::TypeNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
