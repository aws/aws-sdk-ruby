# frozen_string_literal: true

# This is generated code!

module Aws::SWF
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SWF::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SWF::Errors::ServiceError
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
  # * {DefaultUndefinedFault}
  # * {DomainAlreadyExistsFault}
  # * {DomainDeprecatedFault}
  # * {LimitExceededFault}
  # * {OperationNotPermittedFault}
  # * {TooManyTagsFault}
  # * {TypeAlreadyExistsFault}
  # * {TypeDeprecatedFault}
  # * {TypeNotDeprecatedFault}
  # * {UnknownResourceFault}
  # * {WorkflowExecutionAlreadyStartedFault}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The <code>StartWorkflowExecution</code> API action was called without the required
    #       parameters set.</p>
    #          <p>Some workflow execution parameters, such as the decision <code>taskList</code>, must be
    #       set to start the execution. However, these parameters might have been set as defaults when the
    #       workflow type was registered. In this case, you can omit these parameters from the
    #         <code>StartWorkflowExecution</code> call and Amazon SWF uses the values defined in the workflow
    #       type.</p>
    #          <note>
    #             <p>If these parameters aren't set and no default parameters were defined in the workflow
    #         type, this error is displayed.</p>
    #          </note>
    class DefaultUndefinedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::DefaultUndefinedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the domain already exists. You may get this fault if you are registering a domain that is either already registered or deprecated, or if you undeprecate a domain that is currently registered.</p>
    class DomainAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::DomainAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description that may help with diagnosing the cause of the fault.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned when the specified domain has been deprecated.</p>
    class DomainDeprecatedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::DomainDeprecatedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description that may help with diagnosing the cause of the fault.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.</p>
    class LimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::LimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description that may help with diagnosing the cause of the fault.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned when the caller doesn't have sufficient permissions to invoke the action.</p>
    class OperationNotPermittedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::OperationNotPermittedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description that may help with diagnosing the cause of the fault.</p>
      def message
        @data[:message]
      end
    end

    # <p>You've exceeded the number of tags allowed for a domain.</p>
    class TooManyTagsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::TooManyTagsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the type already exists in the specified domain. You may get this fault if you are registering a type that is either already registered or deprecated, or if you undeprecate a type that is currently registered.</p>
    class TypeAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::TypeAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description that may help with diagnosing the cause of the fault.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned when the specified activity or workflow type was already deprecated.</p>
    class TypeDeprecatedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::TypeDeprecatedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description that may help with diagnosing the cause of the fault.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned when the resource type has not been deprecated.</p>
    class TypeNotDeprecatedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::TypeNotDeprecatedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.</p>
    class UnknownResourceFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::UnknownResourceFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description that may help with diagnosing the cause of the fault.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned by <a>StartWorkflowExecution</a> when an open execution with the same workflowId is already running in
    #       the specified domain.</p>
    class WorkflowExecutionAlreadyStartedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SWF::Types::WorkflowExecutionAlreadyStartedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A description that may help with diagnosing the cause of the fault.</p>
      def message
        @data[:message]
      end
    end
  end
end
