# frozen_string_literal: true

# This is generated code!

module Aws::SFN
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SFN::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SFN::Errors::ServiceError
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
  # * {ActivityAlreadyExists}
  # * {ActivityDoesNotExist}
  # * {ActivityLimitExceeded}
  # * {ActivityWorkerLimitExceeded}
  # * {ConflictException}
  # * {ExecutionAlreadyExists}
  # * {ExecutionDoesNotExist}
  # * {ExecutionLimitExceeded}
  # * {ExecutionNotRedrivable}
  # * {InvalidArn}
  # * {InvalidDefinition}
  # * {InvalidEncryptionConfiguration}
  # * {InvalidExecutionInput}
  # * {InvalidLoggingConfiguration}
  # * {InvalidName}
  # * {InvalidOutput}
  # * {InvalidToken}
  # * {InvalidTracingConfiguration}
  # * {KmsAccessDeniedException}
  # * {KmsInvalidStateException}
  # * {KmsThrottlingException}
  # * {MissingRequiredParameter}
  # * {ResourceNotFound}
  # * {ServiceQuotaExceededException}
  # * {StateMachineAlreadyExists}
  # * {StateMachineDeleting}
  # * {StateMachineDoesNotExist}
  # * {StateMachineLimitExceeded}
  # * {StateMachineTypeNotSupported}
  # * {TaskDoesNotExist}
  # * {TaskTimedOut}
  # * {TooManyTags}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Activity already exists. <code>EncryptionConfiguration</code> may not be updated.</p>
    class ActivityAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ActivityAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified activity does not exist.</p>
    class ActivityDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ActivityDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of activities has been reached. Existing activities must be deleted
    #       before a new activity can be created.</p>
    class ActivityLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ActivityLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of workers concurrently polling for activity tasks has been
    #       reached.</p>
    class ActivityWorkerLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ActivityWorkerLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Updating or deleting a resource can cause an inconsistent state. This error occurs when there're concurrent requests for <a>DeleteStateMachineVersion</a>, <a>PublishStateMachineVersion</a>, or <a>UpdateStateMachine</a> with the <code>publish</code> parameter set to <code>true</code>.</p>
    #          <p>HTTP Status Code: 409</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The execution has the same <code>name</code> as another execution (but a different
    #         <code>input</code>).</p>
    #          <note>
    #             <p>Executions with the same <code>name</code> and <code>input</code> are considered
    #         idempotent.</p>
    #          </note>
    class ExecutionAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ExecutionAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified execution does not exist.</p>
    class ExecutionDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ExecutionDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of running executions has been reached. Running executions must end or
    #       be stopped before a new execution can be started.</p>
    class ExecutionLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ExecutionLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The execution Amazon Resource Name (ARN) that you specified for <code>executionArn</code> cannot be redriven.</p>
    class ExecutionNotRedrivable < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ExecutionNotRedrivable] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided Amazon Resource Name (ARN) is not valid.</p>
    class InvalidArn < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidArn] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided Amazon States Language definition is not valid.</p>
    class InvalidDefinition < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidDefinition] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Received when <code>encryptionConfiguration</code> is specified but various conditions exist which make the configuration invalid. For example, if <code>type</code> is set to <code>CUSTOMER_MANAGED_KMS_KEY</code>, but <code>kmsKeyId</code> is null, or <code>kmsDataKeyReusePeriodSeconds</code> is not between 60 and 900, or the KMS key is not symmetric or inactive.</p>
    class InvalidEncryptionConfiguration < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidEncryptionConfiguration] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided JSON input data is not valid.</p>
    class InvalidExecutionInput < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidExecutionInput] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Configuration is not valid.</p>
    class InvalidLoggingConfiguration < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidLoggingConfiguration] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided name is not valid.</p>
    class InvalidName < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidName] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided JSON output data is not valid.</p>
    class InvalidOutput < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidOutput] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided token is not valid.</p>
    class InvalidToken < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidToken] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your <code>tracingConfiguration</code> key does not match, or <code>enabled</code> has not
    #       been set to <code>true</code> or <code>false</code>.</p>
    class InvalidTracingConfiguration < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::InvalidTracingConfiguration] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Either your KMS key policy or API caller does not have the required permissions.</p>
    class KmsAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::KmsAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The KMS key is not in valid state, for example: Disabled or Deleted.</p>
    class KmsInvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::KmsInvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Current status of the KMS; key. For example: <code>DISABLED</code>, <code>PENDING_DELETION</code>, <code>PENDING_IMPORT</code>, <code>UNAVAILABLE</code>, <code>CREATING</code>.</p>
      def kms_key_state
        @data[:kms_key_state]
      end

      def message
        @data[:message]
      end
    end

    # <p>Received when KMS returns <code>ThrottlingException</code> for a KMS call that Step Functions makes on behalf of the caller.</p>
    class KmsThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::KmsThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Request is missing a required parameter. This error occurs if both <code>definition</code>
    #       and <code>roleArn</code> are not specified.</p>
    class MissingRequiredParameter < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::MissingRequiredParameter] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Could not find the referenced resource.</p>
    class ResourceNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ResourceNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    #          <p>HTTP Status Code: 402</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A state machine with the same name but a different definition or role ARN already
    #       exists.</p>
    class StateMachineAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::StateMachineAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified state machine is being deleted.</p>
    class StateMachineDeleting < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::StateMachineDeleting] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified state machine does not exist.</p>
    class StateMachineDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::StateMachineDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of state machines has been reached. Existing state machines must be
    #       deleted before a new state machine can be created.</p>
    class StateMachineLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::StateMachineLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>State machine type is not supported.</p>
    class StateMachineTypeNotSupported < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::StateMachineTypeNotSupported] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The activity does not exist.</p>
    class TaskDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::TaskDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The task token has either expired or the task associated with the token has already been closed.</p>
    class TaskTimedOut < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::TaskTimedOut] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You've exceeded the number of tags allowed for a resource. See the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html"> Limits Topic</a> in the
    #       Step Functions Developer Guide.</p>
    class TooManyTags < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::TooManyTags] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The input does not satisfy the constraints specified by an Amazon Web Services service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SFN::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The input does not satisfy the constraints specified by an Amazon Web Services service.</p>
      def reason
        @data[:reason]
      end
    end
  end
end
