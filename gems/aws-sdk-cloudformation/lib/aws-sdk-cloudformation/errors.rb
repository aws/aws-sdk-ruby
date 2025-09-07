# frozen_string_literal: true

# This is generated code!

module Aws::CloudFormation
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudFormation::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudFormation::Errors::ServiceError
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
  # * {CFNRegistryException}
  # * {ChangeSetNotFoundException}
  # * {ConcurrentResourcesLimitExceededException}
  # * {CreatedButModifiedException}
  # * {GeneratedTemplateNotFoundException}
  # * {HookResultNotFoundException}
  # * {InsufficientCapabilitiesException}
  # * {InvalidChangeSetStatusException}
  # * {InvalidOperationException}
  # * {InvalidStateTransitionException}
  # * {LimitExceededException}
  # * {NameAlreadyExistsException}
  # * {OperationIdAlreadyExistsException}
  # * {OperationInProgressException}
  # * {OperationNotFoundException}
  # * {OperationStatusCheckFailedException}
  # * {ResourceScanInProgressException}
  # * {ResourceScanLimitExceededException}
  # * {ResourceScanNotFoundException}
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
    extend Smithy::Client::DynamicErrors

    # <p>The resource with the name requested already exists.</p>
    class AlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::AlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An error occurred during a CloudFormation registry operation.</p>
    class CFNRegistryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::CFNRegistryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message with details about the error that occurred.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified change set name or ID doesn't exit. To view valid change sets for a stack, use the
    #    <code>ListChangeSets</code> operation.</p>
    class ChangeSetNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::ChangeSetNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No more than 5 generated templates can be in an <code>InProgress</code> or <code>Pending</code> status at one
    #    time. This error is also returned if a generated template that is in an <code>InProgress</code> or
    #    <code>Pending</code> status is attempted to be updated or deleted.</p>
    class ConcurrentResourcesLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::ConcurrentResourcesLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource exists, but has been changed.</p>
    class CreatedButModifiedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::CreatedButModifiedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The generated template was not found.</p>
    class GeneratedTemplateNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::GeneratedTemplateNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified target doesn't have any requested Hook invocations.</p>
    class HookResultNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::HookResultNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The template contains resources with capabilities that weren't specified in the Capabilities parameter.</p>
    class InsufficientCapabilitiesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::InsufficientCapabilitiesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified change set can't be used to update the stack. For example, the change set status might be
    #    <code>CREATE_IN_PROGRESS</code>, or the stack status might be <code>UPDATE_IN_PROGRESS</code>.</p>
    class InvalidChangeSetStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::InvalidChangeSetStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified operation isn't valid.</p>
    class InvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::InvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Error reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>. CloudFormation doesn't
    #    return this error to users.</p>
    class InvalidStateTransitionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::InvalidStateTransitionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for the resource has already been reached.</p>
    #          <p>For information about resource and stack limitations, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">CloudFormation quotas</a> in the
    #    <i>CloudFormation User Guide</i>.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified name is already in use.</p>
    class NameAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::NameAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified operation ID already exists.</p>
    class OperationIdAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::OperationIdAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Another operation is currently in progress for this StackSet. Only one operation can be performed for a stack
    #    set at a given time.</p>
    class OperationInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::OperationInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified ID refers to an operation that doesn't exist.</p>
    class OperationNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::OperationNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Error reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>. CloudFormation doesn't
    #    return this error to users.</p>
    class OperationStatusCheckFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::OperationStatusCheckFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource scan is currently in progress. Only one can be run at a time for an account in a Region.</p>
    class ResourceScanInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::ResourceScanInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The limit on resource scans has been exceeded. Reasons include:</p>
    #          <ul>
    #             <li>
    #                <p>Exceeded the daily quota for resource scans.</p>
    #             </li>
    #             <li>
    #                <p>A resource scan recently failed. You must wait 10 minutes before starting a new resource scan.</p>
    #             </li>
    #             <li>
    #                <p>The last resource scan failed after exceeding 100,000 resources. When this happens, you must wait 24 hours
    #      before starting a new resource scan.</p>
    #             </li>
    #          </ul>
    class ResourceScanLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::ResourceScanLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource scan was not found.</p>
    class ResourceScanNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::ResourceScanNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified stack instance doesn't exist.</p>
    class StackInstanceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::StackInstanceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified stack ARN doesn't exist or stack doesn't exist corresponding to the ARN in input.</p>
    class StackNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::StackNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified stack refactor can't be found.</p>
    class StackRefactorNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::StackRefactorNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't yet delete this StackSet, because it still contains one or more stack instances. Delete all stack
    #    instances from the StackSet before deleting the StackSet.</p>
    class StackSetNotEmptyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::StackSetNotEmptyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified StackSet doesn't exist.</p>
    class StackSetNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::StackSetNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Another operation has been performed on this StackSet since the specified operation was performed.</p>
    class StaleRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::StaleRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A client request token already exists.</p>
    class TokenAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::TokenAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified extension configuration can't be found.</p>
    class TypeConfigurationNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::TypeConfigurationNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message with details about the error that occurred.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified extension doesn't exist in the CloudFormation registry.</p>
    class TypeNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudFormation::Types::TypeNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message with details about the error that occurred.</p>
      def message
        @data[:message]
      end
    end
  end
end
