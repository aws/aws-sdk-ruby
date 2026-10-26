# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerTrainingSessionRuntime
  # This module contains the types returned by client operations.
  module Types

    # <p>The Adam optimizer hyperparameters used during an optimizer step.</p>
    # @!attribute learning_rate
    #   <p>The learning rate for the optimizer. Must be greater than 0.</p>
    #   @return [Float]
    # @!attribute beta1
    #   <p>The exponential decay rate for the first moment estimates.</p>
    #   @return [Float]
    # @!attribute beta2
    #   <p>The exponential decay rate for the second moment estimates.</p>
    #   @return [Float]
    # @!attribute eps
    #   <p>A small constant added to the denominator for numerical stability.</p>
    #   @return [Float]
    # @!attribute weight_decay
    #   <p>The weight decay (L2 regularization) coefficient.</p>
    #   @return [Float]
    # @!attribute grad_clip_norm
    #   <p>The maximum gradient norm for gradient clipping. Gradients are scaled down if their norm exceeds this value.</p>
    #   @return [Float]
    # @!attribute lora_plus_lr_ratio
    #   <p>The learning rate multiplier for LoRA+ B matrices relative to A matrices. When set, B matrices use <code>learningRate * loraPlusLrRatio</code> while A matrices use the base learning rate.</p>
    #   @return [Float]
    class AdamParamsConfig < Struct.new(
      nil,
      :learning_rate,
      :beta1,
      :beta2,
      :eps,
      :weight_decay,
      :grad_clip_norm,
      :lora_plus_lr_ratio,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:beta1] = 0.9 unless options.key?(:beta1)
        options[:beta2] = 0.95 unless options.key?(:beta2)
        options[:eps] = 1.0e-08 unless options.key?(:eps)
        options[:weight_decay] = 0 unless options.key?(:weight_decay)
        options[:grad_clip_norm] = 1 unless options.key?(:grad_clip_norm)
        super
      end
    end

    # <p>The configuration for computing log-probabilities of prompt tokens without generating new text.</p>
    # @!attribute prompt
    #   <p>The input prompt whose token log-probabilities will be computed.</p>
    #   @return [Types::ModelInput]
    # @!attribute model_package_arn
    #   <p>The ARN of the model package whose checkpoint this operation should run against. Must be a valid SageMaker model package ARN in the format <code>arn:aws:sagemaker:REGION:ACCOUNT:model-package/PACKAGE_NAME/VERSION</code>. When absent, the operation runs against the session's latest checkpoint.</p>
    #   @return [String]
    class ComputeLogprobsConfig < Struct.new(
      nil,
      :prompt,
      :model_package_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a compute-logprobs operation.</p>
    # @!attribute logprobs
    #   <p>The per-token log-probabilities for the input prompt.</p>
    #   @return [Array<Float>]
    class ComputeLogprobsResult < Struct.new(
      nil,
      :logprobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The training session is in a state that cannot accept new operations. The session must be in <code>Running</code> or <code>Blocked</code> state to accept requests.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single training datum containing model input and optional loss function inputs.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute model_input
    #   <p>The tokenized input to feed to the model.</p>
    #   @return [Types::ModelInput]
    # @!attribute loss_fn_inputs
    #   <p>The tensor inputs for the loss function, keyed by name. Unsupported keys are rejected. Supported keys: <code>target_tokens</code>, <code>weights</code>, <code>advantages</code>, <code>logprobs</code>, <code>ref_log_prob</code>, <code>temperature</code>. Required keys depend on the loss function type: SFT (<code>cross_entropy</code>) requires <code>target_tokens</code> and <code>weights</code>; RL (<code>ppo</code>, <code>cispo</code>, <code>importance_sampling</code>) requires <code>target_tokens</code>, <code>weights</code>, <code>advantages</code>, and <code>logprobs</code>.</p>
    #   @return [Hash<String, Types::TensorData>]
    class Datum < Struct.new(
      nil,
      :model_input,
      :loss_fn_inputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A chunk of pre-tokenized text represented as a list of token IDs.</p>
    # @!attribute tokens
    #   <p>The token IDs representing the encoded text.</p>
    #   @return [Array<Integer>]
    # @!attribute type
    #   <p>The type of the chunk encoding.</p>
    #   @return [String]
    class EncodedTextChunk < Struct.new(
      nil,
      :tokens,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_session_name
    #   <p>The name of the training session to sample from.</p>
    #   @return [String]
    # @!attribute operation_config
    #   <p>The configuration for the sample operation. Specify either a sample configuration to generate text or a computeLogprobs configuration to compute token log-probabilities.</p>
    #   @return [Types::SampleOperationConfig]
    class ExecuteSamplingOperationInput < Struct.new(
      nil,
      :training_session_name,
      :operation_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for the submitted sample operation. Use this identifier with <code>GetSamplingOperationResult</code> to retrieve the operation status and result.</p>
    #   @return [String]
    class ExecuteSamplingOperationOutput < Struct.new(
      nil,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_session_name
    #   <p>The name of the training session to submit the operation to.</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>The monotonically increasing sequence number that determines execution order. The training session processes operations strictly in sequence number order. If a gap exists, the session blocks until the missing operation arrives or times out. Must be at least 1.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service ignores the request but does not return an error.</p>
    #   @return [String]
    # @!attribute operation_config
    #   <p>The configuration that specifies the type and parameters of the training operation. Exactly one member of the union must be set.</p>
    #   @return [Types::OperationConfig]
    class ExecuteTrainingOperationInput < Struct.new(
      nil,
      :training_session_name,
      :sequence_number,
      :client_token,
      :operation_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for the submitted operation. Use this identifier with <code>GetTrainingOperationResult</code> to retrieve the operation status and result.</p>
    #   @return [String]
    class ExecuteTrainingOperationOutput < Struct.new(
      nil,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a forward and backward pass through the model. This computes both loss values and gradients for use in subsequent optimizer steps.</p>
    # @!attribute loss_fn_name
    #   <p>The name of the loss function to evaluate during the forward-backward pass.</p>
    #   @return [String]
    # @!attribute datum_list
    #   <p>The list of input data to feed through the model. Must contain at least one datum, and each datum must have a non-empty modelInput with at least one chunk.</p>
    #   @return [Array<Types::Datum>]
    # @!attribute loss_fn_config
    #   <p>Additional loss function configuration passed to the engine. Supported keys are <code>clip_low_threshold</code> (valid range: 0 to 1) and <code>clip_high_threshold</code> (valid range: 1 to 10). Unsupported keys are rejected.</p>
    #   @return [JSON]
    class ForwardBackwardConfig < Struct.new(
      nil,
      :loss_fn_name,
      :datum_list,
      :loss_fn_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a forward and backward pass through the model, including computed gradients.</p>
    # @!attribute loss_fn_output_type
    #   <p>The data type of the loss function output tensors.</p>
    #   @return [String]
    # @!attribute loss_fn_outputs
    #   <p>The loss function output tensors, keyed by name.</p>
    #   @return [Array<Hash<String, Types::TensorData>>]
    # @!attribute metrics
    #   <p>The training metrics emitted by the engine, such as loss values.</p>
    #   @return [Hash<String, Float>]
    # @!attribute token_usage
    #   <p>The token usage statistics for metering.</p>
    #   @return [Types::TrainingTokenUsage]
    class ForwardBackwardResult < Struct.new(
      nil,
      :loss_fn_output_type,
      :loss_fn_outputs,
      :metrics,
      :token_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a forward-only pass through the model. This computes loss values without computing gradients.</p>
    # @!attribute loss_fn_name
    #   <p>The name of the loss function to evaluate during the forward pass.</p>
    #   @return [String]
    # @!attribute datum_list
    #   <p>The list of input data to feed through the model. Must contain at least one datum, and each datum must have a non-empty modelInput with at least one chunk.</p>
    #   @return [Array<Types::Datum>]
    # @!attribute loss_fn_config
    #   <p>Additional loss function configuration passed to the engine. Supported keys are <code>clip_low_threshold</code> (valid range: 0 to 1) and <code>clip_high_threshold</code> (valid range: 1 to 10). Unsupported keys are rejected.</p>
    #   @return [JSON]
    class ForwardConfig < Struct.new(
      nil,
      :loss_fn_name,
      :datum_list,
      :loss_fn_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a forward-only pass through the model.</p>
    # @!attribute loss_fn_output_type
    #   <p>The data type of the loss function output tensors.</p>
    #   @return [String]
    # @!attribute loss_fn_outputs
    #   <p>The loss function output tensors, keyed by name.</p>
    #   @return [Array<Hash<String, Types::TensorData>>]
    # @!attribute metrics
    #   <p>The training metrics emitted by the engine, such as loss values.</p>
    #   @return [Hash<String, Float>]
    # @!attribute token_usage
    #   <p>The token usage statistics for metering.</p>
    #   @return [Types::TrainingTokenUsage]
    class ForwardResult < Struct.new(
      nil,
      :loss_fn_output_type,
      :loss_fn_outputs,
      :metrics,
      :token_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_session_name
    #   <p>The name of the training session that owns the sample operation.</p>
    #   @return [String]
    # @!attribute operation_id
    #   <p>The unique identifier of the sample operation to retrieve, returned by <code>ExecuteSamplingOperation</code>.</p>
    #   @return [String]
    class GetSamplingOperationResultInput < Struct.new(
      nil,
      :training_session_name,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the sample operation. Possible values are <code>Pending</code>, <code>InProgress</code>, <code>Completed</code>, or <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute operation_result
    #   <p>The result payload of the sample operation. The service populates this field only when the status is <code>Completed</code>.</p>
    #   @return [Types::SampleOperationResult]
    # @!attribute error_details
    #   <p>A message describing why the sample operation failed. The service populates this field only when the status is <code>Failed</code>.</p>
    #   @return [String]
    class GetSamplingOperationResultOutput < Struct.new(
      nil,
      :status,
      :operation_result,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_session_name
    #   <p>The name of the training session that owns the operation.</p>
    #   @return [String]
    # @!attribute operation_id
    #   <p>The unique identifier of the operation to retrieve, returned by <code>ExecuteTrainingOperation</code>.</p>
    #   @return [String]
    class GetTrainingOperationResultInput < Struct.new(
      nil,
      :training_session_name,
      :operation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the operation. Possible values are <code>Pending</code>, <code>InProgress</code>, <code>Completed</code>, <code>Failed</code>, or <code>Skipped</code>.</p>
    #   @return [String]
    # @!attribute operation_result
    #   <p>The result payload of the operation. The service populates this field only when the status is <code>Completed</code>. The populated member of the union corresponds to the operation type that was submitted.</p>
    #   @return [Types::OperationResult]
    # @!attribute error_details
    #   <p>A message describing why the operation failed. The service populates this field only when the status is <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute token_usage
    #   <p>The token usage statistics for metering purposes. The service populates this field for forward and forwardBackward operations upon completion.</p>
    #   @return [Types::TrainingTokenUsage]
    class GetTrainingOperationResultOutput < Struct.new(
      nil,
      :status,
      :operation_result,
      :error_details,
      :token_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal service error occurred. Retry the request using exponential backoff.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for loading training state from a previously saved checkpoint. This restores model weights and optionally optimizer state.</p>
    # @!attribute model_package_arn
    #   <p>The ARN of the model package containing the checkpoint to load. Must be a valid SageMaker model package ARN in the format <code>arn:aws:sagemaker:REGION:ACCOUNT:model-package/PACKAGE_NAME/VERSION</code>. Model package group ARNs are not accepted.</p>
    #   @return [String]
    # @!attribute load_optimizer
    #   <p>Specifies whether to also restore the optimizer state alongside model weights. When true, optimizer state is restored to resume training from where it left off.</p>
    #   @return [Boolean]
    class LoadStateConfig < Struct.new(
      nil,
      :model_package_arn,
      :load_optimizer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of loading training state. An empty response indicates success.</p>
    class LoadStateResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for loading model weights for inference and sampling without restoring optimizer state.</p>
    # @!attribute model_package_arn
    #   <p>The ARN of the model package containing the weights to load for sampling. Must be a valid SageMaker model package ARN in the format <code>arn:aws:sagemaker:REGION:ACCOUNT:model-package/PACKAGE_NAME/VERSION</code>. The model package must belong to the same AWS account as the training session.</p>
    #   @return [String]
    class LoadWeightsForSamplingConfig < Struct.new(
      nil,
      :model_package_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of loading weights for sampling. An empty response indicates success.</p>
    class LoadWeightsForSamplingResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tokenized model input composed of ordered encoded text chunks.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute chunks
    #   <p>The ordered list of encoded text chunks forming the input sequence.</p>
    #   @return [Array<Types::EncodedTextChunk>]
    class ModelInput < Struct.new(
      nil,
      :chunks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a training operation. Exactly one member must be set to specify the operation type and its parameters.</p>
    # @!attribute forward
    #   <p>The configuration for a forward-only pass through the model without gradient computation.</p>
    #   @return [Types::ForwardConfig]
    # @!attribute forward_backward
    #   <p>The configuration for a forward and backward pass that computes gradients.</p>
    #   @return [Types::ForwardBackwardConfig]
    # @!attribute optimizer_step
    #   <p>The configuration for an optimizer step that updates model weights using accumulated gradients.</p>
    #   @return [Types::OptimizerStepConfig]
    # @!attribute save_weights
    #   <p>The configuration for saving model weights as a checkpoint.</p>
    #   @return [Types::SaveWeightsConfig]
    # @!attribute save_state
    #   <p>The configuration for saving full training state, including model weights and optimizer state.</p>
    #   @return [Types::SaveStateConfig]
    # @!attribute load_state
    #   <p>The configuration for loading training state from a previously saved checkpoint.</p>
    #   @return [Types::LoadStateConfig]
    class OperationConfig < Struct.new(
      :forward,
      :forward_backward,
      :optimizer_step,
      :save_weights,
      :save_state,
      :load_state,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Forward < OperationConfig; end
      class ForwardBackward < OperationConfig; end
      class OptimizerStep < OperationConfig; end
      class SaveWeights < OperationConfig; end
      class SaveState < OperationConfig; end
      class LoadState < OperationConfig; end
      class Unknown < OperationConfig; end
    end

    # <p>The result of a completed training operation. Exactly one member is populated, corresponding to the operation type that was submitted.</p>
    # @!attribute forward
    #   <p>The result from a forward-only pass.</p>
    #   @return [Types::ForwardResult]
    # @!attribute forward_backward
    #   <p>The result from a forward and backward pass.</p>
    #   @return [Types::ForwardBackwardResult]
    # @!attribute optimizer_step
    #   <p>The result from an optimizer step.</p>
    #   @return [Types::OptimizerStepResult]
    # @!attribute save_weights
    #   <p>The result from saving model weights.</p>
    #   @return [Types::SaveWeightsResult]
    # @!attribute save_state
    #   <p>The result from saving full training state.</p>
    #   @return [Types::SaveStateResult]
    # @!attribute load_state
    #   <p>The result from loading training state.</p>
    #   @return [Types::LoadStateResult]
    class OperationResult < Struct.new(
      :forward,
      :forward_backward,
      :optimizer_step,
      :save_weights,
      :save_state,
      :load_state,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Forward < OperationResult; end
      class ForwardBackward < OperationResult; end
      class OptimizerStep < OperationResult; end
      class SaveWeights < OperationResult; end
      class SaveState < OperationResult; end
      class LoadState < OperationResult; end
      class Unknown < OperationResult; end
    end

    # <p>The configuration for an optimizer step that updates model weights using gradients accumulated from previous forward-backward passes.</p>
    # @!attribute adam_params_config
    #   <p>The Adam optimizer hyperparameters for this step.</p>
    #   @return [Types::AdamParamsConfig]
    class OptimizerStepConfig < Struct.new(
      nil,
      :adam_params_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of an optimizer step.</p>
    # @!attribute metrics
    #   <p>The training metrics emitted by the engine after the optimizer step.</p>
    #   @return [Hash<String, Float>]
    class OptimizerStepResult < Struct.new(
      nil,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified training session or operation does not exist, or the operation does not belong to the specified training session.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for generating text samples from the model.</p>
    # @!attribute prompt
    #   <p>The input prompt to send to the model for text generation.</p>
    #   @return [Types::ModelInput]
    # @!attribute num_samples
    #   <p>The number of independent samples to generate for the prompt.</p>
    #   @return [Integer]
    # @!attribute sampling_params
    #   <p>The parameters controlling the sampling strategy.</p>
    #   @return [Types::SamplingParams]
    # @!attribute include_prompt_logprobs
    #   <p>Specifies whether to include per-token log-probabilities for the input prompt in the response.</p>
    #   @return [Boolean]
    # @!attribute topk_prompt_logprobs
    #   <p>The number of top-k log-probabilities to return per prompt token.</p>
    #   @return [Integer]
    # @!attribute model_package_arn
    #   <p>The ARN of the model package whose checkpoint this sample should run against. Must be a valid SageMaker model package ARN in the format <code>arn:aws:sagemaker:REGION:ACCOUNT:model-package/PACKAGE_NAME/VERSION</code>. When absent, the sample runs against the session's latest checkpoint.</p>
    #   @return [String]
    class SampleConfig < Struct.new(
      nil,
      :prompt,
      :num_samples,
      :sampling_params,
      :include_prompt_logprobs,
      :topk_prompt_logprobs,
      :model_package_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_prompt_logprobs] = false unless options.key?(:include_prompt_logprobs)
        options[:topk_prompt_logprobs] = 0 unless options.key?(:topk_prompt_logprobs)
        super
      end
    end

    # <p>The configuration for a sampling operation. Exactly one member must be set to specify the operation type.</p>
    # @!attribute sample
    #   <p>The configuration for generating text samples from the model.</p>
    #   @return [Types::SampleConfig]
    # @!attribute compute_logprobs
    #   <p>The configuration for computing log-probabilities of prompt tokens without generating new text.</p>
    #   @return [Types::ComputeLogprobsConfig]
    # @!attribute load_weights_for_sampling
    #   <p>The configuration for loading model weights for inference and sampling without restoring optimizer state.</p>
    #   @return [Types::LoadWeightsForSamplingConfig]
    class SampleOperationConfig < Struct.new(
      :sample,
      :compute_logprobs,
      :load_weights_for_sampling,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Sample < SampleOperationConfig; end
      class ComputeLogprobs < SampleOperationConfig; end
      class LoadWeightsForSampling < SampleOperationConfig; end
      class Unknown < SampleOperationConfig; end
    end

    # <p>The result of a completed sampling operation. Exactly one member is populated, corresponding to the operation type that was submitted.</p>
    # @!attribute sample
    #   <p>The generated text samples from the model.</p>
    #   @return [Types::SampleResponse]
    # @!attribute compute_logprobs
    #   <p>The computed log-probabilities for the prompt tokens.</p>
    #   @return [Types::ComputeLogprobsResult]
    # @!attribute load_weights_for_sampling
    #   <p>The result from loading weights for sampling.</p>
    #   @return [Types::LoadWeightsForSamplingResult]
    class SampleOperationResult < Struct.new(
      :sample,
      :compute_logprobs,
      :load_weights_for_sampling,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Sample < SampleOperationResult; end
      class ComputeLogprobs < SampleOperationResult; end
      class LoadWeightsForSampling < SampleOperationResult; end
      class Unknown < SampleOperationResult; end
    end

    # <p>The response containing generated samples and optional log-probabilities.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute sequences
    #   <p>The list of generated sequences.</p>
    #   @return [Array<Types::SampledSequence>]
    # @!attribute prompt_logprobs
    #   <p>The per-token log-probabilities for the input prompt. Populated only when <code>includePromptLogprobs</code> is true.</p>
    #   @return [Array<Float>]
    # @!attribute topk_prompt_logprobs
    #   <p>The top-k log-probabilities per prompt token, as a list of lists. Populated only when <code>topkPromptLogprobs</code> is greater than 0.</p>
    #   @return [Array<Array<Types::TokenLogprob>>]
    class SampleResponse < Struct.new(
      nil,
      :sequences,
      :prompt_logprobs,
      :topk_prompt_logprobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The token usage statistics for a sample generation.</p>
    # @!attribute prefill
    #   <p>The number of tokens in the input prompt (prefill phase).</p>
    #   @return [Integer]
    # @!attribute decode
    #   <p>The number of tokens generated (decode phase).</p>
    #   @return [Integer]
    class SampleTokenUsage < Struct.new(
      nil,
      :prefill,
      :decode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_session_name
    #   <p>The name of the training session whose model to invoke.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type of the inference body in the response.</p>
    #   @return [String]
    # @!attribute model_package_arn
    #   <p>The ARN of the model package whose checkpoint to invoke.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The raw inference request body.</p>
    #   @return [String]
    class SampleTrainingSessionInput < Struct.new(
      nil,
      :training_session_name,
      :content_type,
      :accept,
      :model_package_arn,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>The MIME type of the inference result in the response body.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The raw inference response body from the model.</p>
    #   @return [String]
    class SampleTrainingSessionOutput < Struct.new(
      nil,
      :content_type,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute training_session_name
    #   <p>The name of the training session whose model to invoke.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type of the inference body in the response.</p>
    #   @return [String]
    # @!attribute model_package_arn
    #   <p>The ARN of the model package whose checkpoint to invoke.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The raw inference request body.</p>
    #   @return [String]
    class SampleTrainingSessionWithResponseStreamInput < Struct.new(
      nil,
      :training_session_name,
      :content_type,
      :accept,
      :model_package_arn,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>The MIME type of the streaming inference result.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The streaming inference response from the model, delivered as a series of chunks.</p>
    #   @return [String]
    class SampleTrainingSessionWithResponseStreamOutput < Struct.new(
      nil,
      :content_type,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single generated sequence from the model.</p>
    # @!attribute stop_reason
    #   <p>The reason why generation stopped. A value of <code>stop</code> indicates a stop sequence was encountered. A value of <code>length</code> indicates the maximum token limit was reached.</p>
    #   @return [String]
    # @!attribute tokens
    #   <p>The token IDs of the generated sequence.</p>
    #   @return [Array<Integer>]
    # @!attribute logprobs
    #   <p>The per-token log-probabilities for the generated tokens.</p>
    #   @return [Array<Float>]
    # @!attribute token_usage
    #   <p>The token usage statistics for this individual sample.</p>
    #   @return [Types::SampleTokenUsage]
    class SampledSequence < Struct.new(
      nil,
      :stop_reason,
      :tokens,
      :logprobs,
      :token_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters controlling the text generation sampling strategy.</p>
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to generate per sample.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The sampling temperature controlling randomness. Higher values produce more diverse outputs.</p>
    #   @return [Float]
    # @!attribute top_k
    #   <p>The number of highest-probability vocabulary tokens to keep for top-k filtering. Set to -1 to disable.</p>
    #   @return [Integer]
    # @!attribute top_p
    #   <p>The cumulative probability threshold for nucleus (top-p) sampling. Only tokens with cumulative probability below this threshold are considered.</p>
    #   @return [Float]
    # @!attribute seed
    #   <p>The random seed for reproducible sampling. When set, the same seed with the same input produces deterministic outputs.</p>
    #   @return [Integer]
    # @!attribute stop
    #   <p>The list of stop sequences that terminate generation when encountered in the output.</p>
    #   @return [Array<String>]
    class SamplingParams < Struct.new(
      nil,
      :max_tokens,
      :temperature,
      :top_k,
      :top_p,
      :seed,
      :stop,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:temperature] = 1 unless options.key?(:temperature)
        options[:top_k] = -1 unless options.key?(:top_k)
        options[:top_p] = 1 unless options.key?(:top_p)
        super
      end
    end

    # <p>The configuration for saving full training state, including model weights and optimizer state. Use this to create resumable checkpoints.</p>
    # @!attribute description
    #   <p>A human-readable description for the saved state checkpoint.</p>
    #   @return [String]
    class SaveStateConfig < Struct.new(
      nil,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of saving full training state.</p>
    # @!attribute model_package_arn
    #   <p>The ARN of the model package created for the saved state checkpoint.</p>
    #   @return [String]
    class SaveStateResult < Struct.new(
      nil,
      :model_package_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for saving model weights as a checkpoint.</p>
    # @!attribute merge_weights
    #   <p>Specifies whether to merge LoRA adapter weights into the base model before saving. When true, the saved checkpoint contains the full merged model weights.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A human-readable description for the saved checkpoint.</p>
    #   @return [String]
    class SaveWeightsConfig < Struct.new(
      nil,
      :merge_weights,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of saving model weights.</p>
    # @!attribute model_package_arn
    #   <p>The ARN of the model package created for the saved weights.</p>
    #   @return [String]
    class SaveWeightsResult < Struct.new(
      nil,
      :model_package_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tensor with data, data type, and shape metadata.</p>
    # @!attribute data
    #   <p>The raw tensor data as JSON. The format is determined by the <code>dtype</code> field: integer arrays for <code>int64</code>, floating-point arrays for <code>float32</code>.</p>
    #   @return [JSON]
    # @!attribute dtype
    #   <p>The data type of the tensor elements, such as <code>int64</code> or <code>float32</code>.</p>
    #   @return [String]
    # @!attribute shape
    #   <p>The dimensions of the tensor, such as [batch_size, seq_length].</p>
    #   @return [Array<Integer>]
    class TensorData < Struct.new(
      nil,
      :data,
      :dtype,
      :shape,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled. Retry the request after a brief wait using exponential backoff.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log-probability for a single token.</p>
    # @!attribute token_id
    #   <p>The vocabulary token ID.</p>
    #   @return [Integer]
    # @!attribute logprob
    #   <p>The log-probability of the token.</p>
    #   @return [Float]
    class TokenLogprob < Struct.new(
      nil,
      :token_id,
      :logprob,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The token usage statistics for training operations.</p>
    # @!attribute training_tokens
    #   <p>The number of training tokens consumed by the operation.</p>
    #   @return [Integer]
    class TrainingTokenUsage < Struct.new(
      nil,
      :training_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not valid. Check the request syntax and parameters. Examples include invalid sequence numbers, malformed client tokens, missing required fields, or invalid operation configuration.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
