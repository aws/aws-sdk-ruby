# frozen_string_literal: true

# This is generated code!

module Aws::CodePipeline
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CodePipeline::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CodePipeline::Errors::ServiceError
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
  # * {ActionExecutionNotFoundException}
  # * {ActionNotFoundException}
  # * {ActionTypeNotFoundException}
  # * {ApprovalAlreadyCompletedException}
  # * {ConcurrentModificationException}
  # * {ConcurrentPipelineExecutionsLimitExceededException}
  # * {ConditionNotOverridableException}
  # * {ConflictException}
  # * {DuplicatedStopRequestException}
  # * {InvalidActionDeclarationException}
  # * {InvalidApprovalTokenException}
  # * {InvalidArnException}
  # * {InvalidBlockerDeclarationException}
  # * {InvalidClientTokenException}
  # * {InvalidJobException}
  # * {InvalidJobStateException}
  # * {InvalidNextTokenException}
  # * {InvalidNonceException}
  # * {InvalidStageDeclarationException}
  # * {InvalidStructureException}
  # * {InvalidTagsException}
  # * {InvalidWebhookAuthenticationParametersException}
  # * {InvalidWebhookFilterPatternException}
  # * {JobNotFoundException}
  # * {LimitExceededException}
  # * {NotLatestPipelineExecutionException}
  # * {OutputVariablesSizeExceededException}
  # * {PipelineExecutionNotFoundException}
  # * {PipelineExecutionNotStoppableException}
  # * {PipelineExecutionOutdatedException}
  # * {PipelineNameInUseException}
  # * {PipelineNotFoundException}
  # * {PipelineVersionNotFoundException}
  # * {RequestFailedException}
  # * {ResourceNotFoundException}
  # * {StageNotFoundException}
  # * {StageNotRetryableException}
  # * {TooManyTagsException}
  # * {UnableToRollbackStageException}
  # * {ValidationException}
  # * {WebhookNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The action execution was not found.</p>
    class ActionExecutionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ActionExecutionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified action cannot be found.</p>
    class ActionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ActionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified action type cannot be found.</p>
    class ActionTypeNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ActionTypeNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The approval action has already been approved or rejected.</p>
    class ApprovalAlreadyCompletedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ApprovalAlreadyCompletedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Unable to modify the tag due to a simultaneous update request.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The pipeline has reached the limit for concurrent pipeline executions.</p>
    class ConcurrentPipelineExecutionsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ConcurrentPipelineExecutionsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to override because the condition does not allow overrides.</p>
    class ConditionNotOverridableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ConditionNotOverridableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request cannot be handled because the pipeline is busy handling ongoing
    #             activities. Try again later.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The pipeline execution is already in a <code>Stopping</code> state. If you already
    #             chose to stop and wait, you cannot make that request again. You can choose to stop and
    #             abandon now, but be aware that this option can lead to failed tasks or out of sequence
    #             tasks. If you already chose to stop and abandon, you cannot make that request
    #             again.</p>
    class DuplicatedStopRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::DuplicatedStopRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The action declaration was specified in an invalid format.</p>
    class InvalidActionDeclarationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidActionDeclarationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The approval request already received a response or has expired.</p>
    class InvalidApprovalTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidApprovalTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource ARN is invalid.</p>
    class InvalidArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Reserved for future use.</p>
    class InvalidBlockerDeclarationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidBlockerDeclarationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The client token was specified in an invalid format</p>
    class InvalidClientTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidClientTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The job was specified in an invalid format or cannot be found.</p>
    class InvalidJobException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidJobException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The job state was specified in an invalid format.</p>
    class InvalidJobStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidJobStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The next token was specified in an invalid format. Make sure that the next token
    #             you provide is the token returned by a previous call.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The nonce was specified in an invalid format.</p>
    class InvalidNonceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidNonceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The stage declaration was specified in an invalid format.</p>
    class InvalidStageDeclarationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidStageDeclarationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The structure was specified in an invalid format.</p>
    class InvalidStructureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidStructureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource tags are invalid.</p>
    class InvalidTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified authentication type is in an invalid format.</p>
    class InvalidWebhookAuthenticationParametersException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidWebhookAuthenticationParametersException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified event filter rule is in an invalid format.</p>
    class InvalidWebhookFilterPatternException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::InvalidWebhookFilterPatternException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The job was specified in an invalid format or cannot be found.</p>
    class JobNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::JobNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of pipelines associated with the Amazon Web Services account has exceeded
    #             the limit allowed for the account.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The stage has failed in a later run of the pipeline and the
    #                 <code>pipelineExecutionId</code> associated with the request is out of
    #             date.</p>
    class NotLatestPipelineExecutionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::NotLatestPipelineExecutionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Exceeded the total size limit for all variables in the pipeline.</p>
    class OutputVariablesSizeExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::OutputVariablesSizeExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The pipeline execution was specified in an invalid format or cannot be found, or an
    #             execution ID does not belong to the specified pipeline. </p>
    class PipelineExecutionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::PipelineExecutionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Unable to stop the pipeline execution. The execution might already be in a
    #                 <code>Stopped</code> state, or it might no longer be in progress.</p>
    class PipelineExecutionNotStoppableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::PipelineExecutionNotStoppableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified pipeline execution is outdated and cannot be used as a target pipeline
    #             execution for rollback.</p>
    class PipelineExecutionOutdatedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::PipelineExecutionOutdatedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified pipeline name is already in use.</p>
    class PipelineNameInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::PipelineNameInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pipeline was specified in an invalid format or cannot be found.</p>
    class PipelineNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::PipelineNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pipeline version was specified in an invalid format or cannot be
    #             found.</p>
    class PipelineVersionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::PipelineVersionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request failed because of an unknown error, exception, or failure.</p>
    class RequestFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::RequestFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource was specified in an invalid format.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The stage was specified in an invalid format or cannot be found.</p>
    class StageNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::StageNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Unable to retry. The pipeline structure or stage state might have changed while
    #             actions awaited retry, or the stage contains no failed
    #             actions.</p>
    class StageNotRetryableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::StageNotRetryableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The tags limit for a resource has been exceeded.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to roll back the stage. The cause might be if the pipeline version has changed
    #             since the target pipeline execution was deployed, the stage is currently running, or an
    #             incorrect target pipeline execution ID was provided.</p>
    class UnableToRollbackStageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::UnableToRollbackStageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The validation was specified in an invalid format.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided to the user in the event of an exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified webhook was entered in an invalid format or cannot be
    #             found.</p>
    class WebhookNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodePipeline::Types::WebhookNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end
  end
end
