# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerTrainingSessionRuntime
  module Types

    # The Adam optimizer hyperparameters used during an optimizer step.
    #
    # @!attribute [rw] learning_rate
    #   The learning rate for the optimizer. Must be greater than 0.
    #   @return [Float]
    #
    # @!attribute [rw] beta1
    #   The exponential decay rate for the first moment estimates.
    #   @return [Float]
    #
    # @!attribute [rw] beta2
    #   The exponential decay rate for the second moment estimates.
    #   @return [Float]
    #
    # @!attribute [rw] eps
    #   A small constant added to the denominator for numerical stability.
    #   @return [Float]
    #
    # @!attribute [rw] weight_decay
    #   The weight decay (L2 regularization) coefficient.
    #   @return [Float]
    #
    # @!attribute [rw] grad_clip_norm
    #   The maximum gradient norm for gradient clipping. Gradients are
    #   scaled down if their norm exceeds this value.
    #   @return [Float]
    #
    # @!attribute [rw] lora_plus_lr_ratio
    #   The learning rate multiplier for LoRA+ B matrices relative to A
    #   matrices. When set, B matrices use `learningRate * loraPlusLrRatio`
    #   while A matrices use the base learning rate.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/AdamParamsConfig AWS API Documentation
    #
    class AdamParamsConfig < Struct.new(
      :learning_rate,
      :beta1,
      :beta2,
      :eps,
      :weight_decay,
      :grad_clip_norm,
      :lora_plus_lr_ratio)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for computing log-probabilities of prompt tokens
    # without generating new text.
    #
    # @!attribute [rw] prompt
    #   The input prompt whose token log-probabilities will be computed.
    #   @return [Types::ModelInput]
    #
    # @!attribute [rw] model_package_arn
    #   The ARN of the model package whose checkpoint this operation should
    #   run against. Must be a valid SageMaker model package ARN in the
    #   format
    #   `arn:aws:sagemaker:REGION:ACCOUNT:model-package/PACKAGE_NAME/VERSION`.
    #   When absent, the operation runs against the session's latest
    #   checkpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ComputeLogprobsConfig AWS API Documentation
    #
    class ComputeLogprobsConfig < Struct.new(
      :prompt,
      :model_package_arn)
      SENSITIVE = [:prompt]
      include Aws::Structure
    end

    # The result of a compute-logprobs operation.
    #
    # @!attribute [rw] logprobs
    #   The per-token log-probabilities for the input prompt.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ComputeLogprobsResult AWS API Documentation
    #
    class ComputeLogprobsResult < Struct.new(
      :logprobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training session is in a state that cannot accept new operations.
    # The session must be in `Running` or `Blocked` state to accept
    # requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single training datum containing model input and optional loss
    # function inputs.
    #
    # @!attribute [rw] model_input
    #   The tokenized input to feed to the model.
    #   @return [Types::ModelInput]
    #
    # @!attribute [rw] loss_fn_inputs
    #   The tensor inputs for the loss function, keyed by name. Unsupported
    #   keys are rejected. Supported keys: `target_tokens`, `weights`,
    #   `advantages`, `logprobs`, `ref_log_prob`, `temperature`. Required
    #   keys depend on the loss function type: SFT (`cross_entropy`)
    #   requires `target_tokens` and `weights`; RL (`ppo`, `cispo`,
    #   `importance_sampling`) requires `target_tokens`, `weights`,
    #   `advantages`, and `logprobs`.
    #   @return [Hash<String,Types::TensorData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/Datum AWS API Documentation
    #
    class Datum < Struct.new(
      :model_input,
      :loss_fn_inputs)
      SENSITIVE = [:model_input]
      include Aws::Structure
    end

    # A chunk of pre-tokenized text represented as a list of token IDs.
    #
    # @!attribute [rw] tokens
    #   The token IDs representing the encoded text.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] type
    #   The type of the chunk encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/EncodedTextChunk AWS API Documentation
    #
    class EncodedTextChunk < Struct.new(
      :tokens,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_session_name
    #   The name of the training session to sample from.
    #   @return [String]
    #
    # @!attribute [rw] operation_config
    #   The configuration for the sample operation. Specify either a sample
    #   configuration to generate text or a computeLogprobs configuration to
    #   compute token log-probabilities.
    #   @return [Types::SampleOperationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ExecuteSamplingOperationInput AWS API Documentation
    #
    class ExecuteSamplingOperationInput < Struct.new(
      :training_session_name,
      :operation_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for the submitted sample operation. Use this
    #   identifier with `GetSamplingOperationResult` to retrieve the
    #   operation status and result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ExecuteSamplingOperationOutput AWS API Documentation
    #
    class ExecuteSamplingOperationOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_session_name
    #   The name of the training session to submit the operation to.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   The monotonically increasing sequence number that determines
    #   execution order. The training session processes operations strictly
    #   in sequence number order. If a gap exists, the session blocks until
    #   the missing operation arrives or times out. Must be at least 1.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If you retry a
    #   request with the same client token and the same parameters, the
    #   service ignores the request but does not return an error.
    #   @return [String]
    #
    # @!attribute [rw] operation_config
    #   The configuration that specifies the type and parameters of the
    #   training operation. Exactly one member of the union must be set.
    #   @return [Types::OperationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ExecuteTrainingOperationInput AWS API Documentation
    #
    class ExecuteTrainingOperationInput < Struct.new(
      :training_session_name,
      :sequence_number,
      :client_token,
      :operation_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for the submitted operation. Use this
    #   identifier with `GetTrainingOperationResult` to retrieve the
    #   operation status and result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ExecuteTrainingOperationOutput AWS API Documentation
    #
    class ExecuteTrainingOperationOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a forward and backward pass through the model.
    # This computes both loss values and gradients for use in subsequent
    # optimizer steps.
    #
    # @!attribute [rw] loss_fn_name
    #   The name of the loss function to evaluate during the
    #   forward-backward pass.
    #   @return [String]
    #
    # @!attribute [rw] datum_list
    #   The list of input data to feed through the model. Must contain at
    #   least one datum, and each datum must have a non-empty modelInput
    #   with at least one chunk.
    #   @return [Array<Types::Datum>]
    #
    # @!attribute [rw] loss_fn_config
    #   Additional loss function configuration passed to the engine.
    #   Supported keys are `clip_low_threshold` (valid range: 0 to 1) and
    #   `clip_high_threshold` (valid range: 1 to 10). Unsupported keys are
    #   rejected.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ForwardBackwardConfig AWS API Documentation
    #
    class ForwardBackwardConfig < Struct.new(
      :loss_fn_name,
      :datum_list,
      :loss_fn_config)
      SENSITIVE = [:datum_list]
      include Aws::Structure
    end

    # The result of a forward and backward pass through the model, including
    # computed gradients.
    #
    # @!attribute [rw] loss_fn_output_type
    #   The data type of the loss function output tensors.
    #   @return [String]
    #
    # @!attribute [rw] loss_fn_outputs
    #   The loss function output tensors, keyed by name.
    #   @return [Array<Hash<String,Types::TensorData>>]
    #
    # @!attribute [rw] metrics
    #   The training metrics emitted by the engine, such as loss values.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] token_usage
    #   The token usage statistics for metering.
    #   @return [Types::TrainingTokenUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ForwardBackwardResult AWS API Documentation
    #
    class ForwardBackwardResult < Struct.new(
      :loss_fn_output_type,
      :loss_fn_outputs,
      :metrics,
      :token_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a forward-only pass through the model. This
    # computes loss values without computing gradients.
    #
    # @!attribute [rw] loss_fn_name
    #   The name of the loss function to evaluate during the forward pass.
    #   @return [String]
    #
    # @!attribute [rw] datum_list
    #   The list of input data to feed through the model. Must contain at
    #   least one datum, and each datum must have a non-empty modelInput
    #   with at least one chunk.
    #   @return [Array<Types::Datum>]
    #
    # @!attribute [rw] loss_fn_config
    #   Additional loss function configuration passed to the engine.
    #   Supported keys are `clip_low_threshold` (valid range: 0 to 1) and
    #   `clip_high_threshold` (valid range: 1 to 10). Unsupported keys are
    #   rejected.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ForwardConfig AWS API Documentation
    #
    class ForwardConfig < Struct.new(
      :loss_fn_name,
      :datum_list,
      :loss_fn_config)
      SENSITIVE = [:datum_list]
      include Aws::Structure
    end

    # The result of a forward-only pass through the model.
    #
    # @!attribute [rw] loss_fn_output_type
    #   The data type of the loss function output tensors.
    #   @return [String]
    #
    # @!attribute [rw] loss_fn_outputs
    #   The loss function output tensors, keyed by name.
    #   @return [Array<Hash<String,Types::TensorData>>]
    #
    # @!attribute [rw] metrics
    #   The training metrics emitted by the engine, such as loss values.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] token_usage
    #   The token usage statistics for metering.
    #   @return [Types::TrainingTokenUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ForwardResult AWS API Documentation
    #
    class ForwardResult < Struct.new(
      :loss_fn_output_type,
      :loss_fn_outputs,
      :metrics,
      :token_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_session_name
    #   The name of the training session that owns the sample operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The unique identifier of the sample operation to retrieve, returned
    #   by `ExecuteSamplingOperation`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/GetSamplingOperationResultInput AWS API Documentation
    #
    class GetSamplingOperationResultInput < Struct.new(
      :training_session_name,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the sample operation. Possible values are
    #   `Pending`, `InProgress`, `Completed`, or `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] operation_result
    #   The result payload of the sample operation. The service populates
    #   this field only when the status is `Completed`.
    #   @return [Types::SampleOperationResult]
    #
    # @!attribute [rw] error_details
    #   A message describing why the sample operation failed. The service
    #   populates this field only when the status is `Failed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/GetSamplingOperationResultOutput AWS API Documentation
    #
    class GetSamplingOperationResultOutput < Struct.new(
      :status,
      :operation_result,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_session_name
    #   The name of the training session that owns the operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The unique identifier of the operation to retrieve, returned by
    #   `ExecuteTrainingOperation`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/GetTrainingOperationResultInput AWS API Documentation
    #
    class GetTrainingOperationResultInput < Struct.new(
      :training_session_name,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the operation. Possible values are `Pending`,
    #   `InProgress`, `Completed`, `Failed`, or `Skipped`.
    #   @return [String]
    #
    # @!attribute [rw] operation_result
    #   The result payload of the operation. The service populates this
    #   field only when the status is `Completed`. The populated member of
    #   the union corresponds to the operation type that was submitted.
    #   @return [Types::OperationResult]
    #
    # @!attribute [rw] error_details
    #   A message describing why the operation failed. The service populates
    #   this field only when the status is `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] token_usage
    #   The token usage statistics for metering purposes. The service
    #   populates this field for forward and forwardBackward operations upon
    #   completion.
    #   @return [Types::TrainingTokenUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/GetTrainingOperationResultOutput AWS API Documentation
    #
    class GetTrainingOperationResultOutput < Struct.new(
      :status,
      :operation_result,
      :error_details,
      :token_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred. Retry the request using
    # exponential backoff.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for loading training state from a previously saved
    # checkpoint. This restores model weights and optionally optimizer
    # state.
    #
    # @!attribute [rw] model_package_arn
    #   The ARN of the model package containing the checkpoint to load. Must
    #   be a valid SageMaker model package ARN in the format
    #   `arn:aws:sagemaker:REGION:ACCOUNT:model-package/PACKAGE_NAME/VERSION`.
    #   Model package group ARNs are not accepted.
    #   @return [String]
    #
    # @!attribute [rw] load_optimizer
    #   Specifies whether to also restore the optimizer state alongside
    #   model weights. When true, optimizer state is restored to resume
    #   training from where it left off.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/LoadStateConfig AWS API Documentation
    #
    class LoadStateConfig < Struct.new(
      :model_package_arn,
      :load_optimizer)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of loading training state. An empty response indicates
    # success.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/LoadStateResult AWS API Documentation
    #
    class LoadStateResult < Aws::EmptyStructure; end

    # The configuration for loading model weights for inference and sampling
    # without restoring optimizer state.
    #
    # @!attribute [rw] model_package_arn
    #   The ARN of the model package containing the weights to load for
    #   sampling. Must be a valid SageMaker model package ARN in the format
    #   `arn:aws:sagemaker:REGION:ACCOUNT:model-package/PACKAGE_NAME/VERSION`.
    #   The model package must belong to the same AWS account as the
    #   training session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/LoadWeightsForSamplingConfig AWS API Documentation
    #
    class LoadWeightsForSamplingConfig < Struct.new(
      :model_package_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of loading weights for sampling. An empty response
    # indicates success.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/LoadWeightsForSamplingResult AWS API Documentation
    #
    class LoadWeightsForSamplingResult < Aws::EmptyStructure; end

    # The tokenized model input composed of ordered encoded text chunks.
    #
    # @!attribute [rw] chunks
    #   The ordered list of encoded text chunks forming the input sequence.
    #   @return [Array<Types::EncodedTextChunk>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ModelInput AWS API Documentation
    #
    class ModelInput < Struct.new(
      :chunks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a training operation. Exactly one member must be
    # set to specify the operation type and its parameters.
    #
    # @note OperationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] forward
    #   The configuration for a forward-only pass through the model without
    #   gradient computation.
    #   @return [Types::ForwardConfig]
    #
    # @!attribute [rw] forward_backward
    #   The configuration for a forward and backward pass that computes
    #   gradients.
    #   @return [Types::ForwardBackwardConfig]
    #
    # @!attribute [rw] optimizer_step
    #   The configuration for an optimizer step that updates model weights
    #   using accumulated gradients.
    #   @return [Types::OptimizerStepConfig]
    #
    # @!attribute [rw] save_weights
    #   The configuration for saving model weights as a checkpoint.
    #   @return [Types::SaveWeightsConfig]
    #
    # @!attribute [rw] save_state
    #   The configuration for saving full training state, including model
    #   weights and optimizer state.
    #   @return [Types::SaveStateConfig]
    #
    # @!attribute [rw] load_state
    #   The configuration for loading training state from a previously saved
    #   checkpoint.
    #   @return [Types::LoadStateConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/OperationConfig AWS API Documentation
    #
    class OperationConfig < Struct.new(
      :forward,
      :forward_backward,
      :optimizer_step,
      :save_weights,
      :save_state,
      :load_state,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Forward < OperationConfig; end
      class ForwardBackward < OperationConfig; end
      class OptimizerStep < OperationConfig; end
      class SaveWeights < OperationConfig; end
      class SaveState < OperationConfig; end
      class LoadState < OperationConfig; end
      class Unknown < OperationConfig; end
    end

    # The result of a completed training operation. Exactly one member is
    # populated, corresponding to the operation type that was submitted.
    #
    # @note OperationResult is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OperationResult corresponding to the set member.
    #
    # @!attribute [rw] forward
    #   The result from a forward-only pass.
    #   @return [Types::ForwardResult]
    #
    # @!attribute [rw] forward_backward
    #   The result from a forward and backward pass.
    #   @return [Types::ForwardBackwardResult]
    #
    # @!attribute [rw] optimizer_step
    #   The result from an optimizer step.
    #   @return [Types::OptimizerStepResult]
    #
    # @!attribute [rw] save_weights
    #   The result from saving model weights.
    #   @return [Types::SaveWeightsResult]
    #
    # @!attribute [rw] save_state
    #   The result from saving full training state.
    #   @return [Types::SaveStateResult]
    #
    # @!attribute [rw] load_state
    #   The result from loading training state.
    #   @return [Types::LoadStateResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/OperationResult AWS API Documentation
    #
    class OperationResult < Struct.new(
      :forward,
      :forward_backward,
      :optimizer_step,
      :save_weights,
      :save_state,
      :load_state,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Forward < OperationResult; end
      class ForwardBackward < OperationResult; end
      class OptimizerStep < OperationResult; end
      class SaveWeights < OperationResult; end
      class SaveState < OperationResult; end
      class LoadState < OperationResult; end
      class Unknown < OperationResult; end
    end

    # The configuration for an optimizer step that updates model weights
    # using gradients accumulated from previous forward-backward passes.
    #
    # @!attribute [rw] adam_params_config
    #   The Adam optimizer hyperparameters for this step.
    #   @return [Types::AdamParamsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/OptimizerStepConfig AWS API Documentation
    #
    class OptimizerStepConfig < Struct.new(
      :adam_params_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of an optimizer step.
    #
    # @!attribute [rw] metrics
    #   The training metrics emitted by the engine after the optimizer step.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/OptimizerStepResult AWS API Documentation
    #
    class OptimizerStepResult < Struct.new(
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified training session or operation does not exist, or the
    # operation does not belong to the specified training session.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for generating text samples from the model.
    #
    # @!attribute [rw] prompt
    #   The input prompt to send to the model for text generation.
    #   @return [Types::ModelInput]
    #
    # @!attribute [rw] num_samples
    #   The number of independent samples to generate for the prompt.
    #   @return [Integer]
    #
    # @!attribute [rw] sampling_params
    #   The parameters controlling the sampling strategy.
    #   @return [Types::SamplingParams]
    #
    # @!attribute [rw] include_prompt_logprobs
    #   Specifies whether to include per-token log-probabilities for the
    #   input prompt in the response.
    #   @return [Boolean]
    #
    # @!attribute [rw] topk_prompt_logprobs
    #   The number of top-k log-probabilities to return per prompt token.
    #   @return [Integer]
    #
    # @!attribute [rw] model_package_arn
    #   The ARN of the model package whose checkpoint this sample should run
    #   against. Must be a valid SageMaker model package ARN in the format
    #   `arn:aws:sagemaker:REGION:ACCOUNT:model-package/PACKAGE_NAME/VERSION`.
    #   When absent, the sample runs against the session's latest
    #   checkpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleConfig AWS API Documentation
    #
    class SampleConfig < Struct.new(
      :prompt,
      :num_samples,
      :sampling_params,
      :include_prompt_logprobs,
      :topk_prompt_logprobs,
      :model_package_arn)
      SENSITIVE = [:prompt]
      include Aws::Structure
    end

    # The configuration for a sampling operation. Exactly one member must be
    # set to specify the operation type.
    #
    # @note SampleOperationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] sample
    #   The configuration for generating text samples from the model.
    #   @return [Types::SampleConfig]
    #
    # @!attribute [rw] compute_logprobs
    #   The configuration for computing log-probabilities of prompt tokens
    #   without generating new text.
    #   @return [Types::ComputeLogprobsConfig]
    #
    # @!attribute [rw] load_weights_for_sampling
    #   The configuration for loading model weights for inference and
    #   sampling without restoring optimizer state.
    #   @return [Types::LoadWeightsForSamplingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleOperationConfig AWS API Documentation
    #
    class SampleOperationConfig < Struct.new(
      :sample,
      :compute_logprobs,
      :load_weights_for_sampling,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Sample < SampleOperationConfig; end
      class ComputeLogprobs < SampleOperationConfig; end
      class LoadWeightsForSampling < SampleOperationConfig; end
      class Unknown < SampleOperationConfig; end
    end

    # The result of a completed sampling operation. Exactly one member is
    # populated, corresponding to the operation type that was submitted.
    #
    # @note SampleOperationResult is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SampleOperationResult corresponding to the set member.
    #
    # @!attribute [rw] sample
    #   The generated text samples from the model.
    #   @return [Types::SampleResponse]
    #
    # @!attribute [rw] compute_logprobs
    #   The computed log-probabilities for the prompt tokens.
    #   @return [Types::ComputeLogprobsResult]
    #
    # @!attribute [rw] load_weights_for_sampling
    #   The result from loading weights for sampling.
    #   @return [Types::LoadWeightsForSamplingResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleOperationResult AWS API Documentation
    #
    class SampleOperationResult < Struct.new(
      :sample,
      :compute_logprobs,
      :load_weights_for_sampling,
      :unknown)
      SENSITIVE = [:sample]
      include Aws::Structure
      include Aws::Structure::Union

      class Sample < SampleOperationResult; end
      class ComputeLogprobs < SampleOperationResult; end
      class LoadWeightsForSampling < SampleOperationResult; end
      class Unknown < SampleOperationResult; end
    end

    # The response containing generated samples and optional
    # log-probabilities.
    #
    # @!attribute [rw] sequences
    #   The list of generated sequences.
    #   @return [Array<Types::SampledSequence>]
    #
    # @!attribute [rw] prompt_logprobs
    #   The per-token log-probabilities for the input prompt. Populated only
    #   when `includePromptLogprobs` is true.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] topk_prompt_logprobs
    #   The top-k log-probabilities per prompt token, as a list of lists.
    #   Populated only when `topkPromptLogprobs` is greater than 0.
    #   @return [Array<Array<Types::TokenLogprob>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleResponse AWS API Documentation
    #
    class SampleResponse < Struct.new(
      :sequences,
      :prompt_logprobs,
      :topk_prompt_logprobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The token usage statistics for a sample generation.
    #
    # @!attribute [rw] prefill
    #   The number of tokens in the input prompt (prefill phase).
    #   @return [Integer]
    #
    # @!attribute [rw] decode
    #   The number of tokens generated (decode phase).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleTokenUsage AWS API Documentation
    #
    class SampleTokenUsage < Struct.new(
      :prefill,
      :decode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] training_session_name
    #   The name of the training session whose model to invoke.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request body.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type of the inference body in the response.
    #   @return [String]
    #
    # @!attribute [rw] model_package_arn
    #   The ARN of the model package whose checkpoint to invoke.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The raw inference request body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleTrainingSessionInput AWS API Documentation
    #
    class SampleTrainingSessionInput < Struct.new(
      :training_session_name,
      :content_type,
      :accept,
      :model_package_arn,
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The MIME type of the inference result in the response body.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The raw inference response body from the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleTrainingSessionOutput AWS API Documentation
    #
    class SampleTrainingSessionOutput < Struct.new(
      :content_type,
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] training_session_name
    #   The name of the training session whose model to invoke.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request body.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type of the inference body in the response.
    #   @return [String]
    #
    # @!attribute [rw] model_package_arn
    #   The ARN of the model package whose checkpoint to invoke.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The raw inference request body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleTrainingSessionWithResponseStreamInput AWS API Documentation
    #
    class SampleTrainingSessionWithResponseStreamInput < Struct.new(
      :training_session_name,
      :content_type,
      :accept,
      :model_package_arn,
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The MIME type of the streaming inference result.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The streaming inference response from the model, delivered as a
    #   series of chunks.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampleTrainingSessionWithResponseStreamOutput AWS API Documentation
    #
    class SampleTrainingSessionWithResponseStreamOutput < Struct.new(
      :content_type,
      :body)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # A single generated sequence from the model.
    #
    # @!attribute [rw] stop_reason
    #   The reason why generation stopped. A value of `stop` indicates a
    #   stop sequence was encountered. A value of `length` indicates the
    #   maximum token limit was reached.
    #   @return [String]
    #
    # @!attribute [rw] tokens
    #   The token IDs of the generated sequence.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] logprobs
    #   The per-token log-probabilities for the generated tokens.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] token_usage
    #   The token usage statistics for this individual sample.
    #   @return [Types::SampleTokenUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SampledSequence AWS API Documentation
    #
    class SampledSequence < Struct.new(
      :stop_reason,
      :tokens,
      :logprobs,
      :token_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters controlling the text generation sampling strategy.
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to generate per sample.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The sampling temperature controlling randomness. Higher values
    #   produce more diverse outputs.
    #   @return [Float]
    #
    # @!attribute [rw] top_k
    #   The number of highest-probability vocabulary tokens to keep for
    #   top-k filtering. Set to -1 to disable.
    #   @return [Integer]
    #
    # @!attribute [rw] top_p
    #   The cumulative probability threshold for nucleus (top-p) sampling.
    #   Only tokens with cumulative probability below this threshold are
    #   considered.
    #   @return [Float]
    #
    # @!attribute [rw] seed
    #   The random seed for reproducible sampling. When set, the same seed
    #   with the same input produces deterministic outputs.
    #   @return [Integer]
    #
    # @!attribute [rw] stop
    #   The list of stop sequences that terminate generation when
    #   encountered in the output.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SamplingParams AWS API Documentation
    #
    class SamplingParams < Struct.new(
      :max_tokens,
      :temperature,
      :top_k,
      :top_p,
      :seed,
      :stop)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for saving full training state, including model
    # weights and optimizer state. Use this to create resumable checkpoints.
    #
    # @!attribute [rw] description
    #   A human-readable description for the saved state checkpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SaveStateConfig AWS API Documentation
    #
    class SaveStateConfig < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of saving full training state.
    #
    # @!attribute [rw] model_package_arn
    #   The ARN of the model package created for the saved state checkpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SaveStateResult AWS API Documentation
    #
    class SaveStateResult < Struct.new(
      :model_package_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for saving model weights as a checkpoint.
    #
    # @!attribute [rw] merge_weights
    #   Specifies whether to merge LoRA adapter weights into the base model
    #   before saving. When true, the saved checkpoint contains the full
    #   merged model weights.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A human-readable description for the saved checkpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SaveWeightsConfig AWS API Documentation
    #
    class SaveWeightsConfig < Struct.new(
      :merge_weights,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of saving model weights.
    #
    # @!attribute [rw] model_package_arn
    #   The ARN of the model package created for the saved weights.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/SaveWeightsResult AWS API Documentation
    #
    class SaveWeightsResult < Struct.new(
      :model_package_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tensor with data, data type, and shape metadata.
    #
    # @!attribute [rw] data
    #   The raw tensor data as JSON. The format is determined by the `dtype`
    #   field: integer arrays for `int64`, floating-point arrays for
    #   `float32`.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] dtype
    #   The data type of the tensor elements, such as `int64` or `float32`.
    #   @return [String]
    #
    # @!attribute [rw] shape
    #   The dimensions of the tensor, such as \[batch\_size, seq\_length\].
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/TensorData AWS API Documentation
    #
    class TensorData < Struct.new(
      :data,
      :dtype,
      :shape)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled. Retry the request after a brief wait using
    # exponential backoff.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log-probability for a single token.
    #
    # @!attribute [rw] token_id
    #   The vocabulary token ID.
    #   @return [Integer]
    #
    # @!attribute [rw] logprob
    #   The log-probability of the token.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/TokenLogprob AWS API Documentation
    #
    class TokenLogprob < Struct.new(
      :token_id,
      :logprob)
      SENSITIVE = []
      include Aws::Structure
    end

    # The token usage statistics for training operations.
    #
    # @!attribute [rw] training_tokens
    #   The number of training tokens consumed by the operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/TrainingTokenUsage AWS API Documentation
    #
    class TrainingTokenUsage < Struct.new(
      :training_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid. Check the request syntax and parameters.
    # Examples include invalid sequence numbers, malformed client tokens,
    # missing required fields, or invalid operation configuration.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemakertrainingsessionruntime-2025-02-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

