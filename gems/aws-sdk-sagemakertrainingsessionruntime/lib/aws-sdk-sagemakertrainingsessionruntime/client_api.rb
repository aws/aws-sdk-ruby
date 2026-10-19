# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SageMakerTrainingSessionRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AdamParamsConfig = Shapes::StructureShape.new(name: 'AdamParamsConfig')
    AdamParamsConfigBeta1Double = Shapes::FloatShape.new(name: 'AdamParamsConfigBeta1Double')
    AdamParamsConfigBeta2Double = Shapes::FloatShape.new(name: 'AdamParamsConfigBeta2Double')
    AdamParamsConfigEpsDouble = Shapes::FloatShape.new(name: 'AdamParamsConfigEpsDouble')
    AdamParamsConfigGradClipNormDouble = Shapes::FloatShape.new(name: 'AdamParamsConfigGradClipNormDouble')
    AdamParamsConfigLearningRateDouble = Shapes::FloatShape.new(name: 'AdamParamsConfigLearningRateDouble')
    AdamParamsConfigLoraPlusLrRatioDouble = Shapes::FloatShape.new(name: 'AdamParamsConfigLoraPlusLrRatioDouble')
    AdamParamsConfigWeightDecayDouble = Shapes::FloatShape.new(name: 'AdamParamsConfigWeightDecayDouble')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ComputeLogprobsConfig = Shapes::StructureShape.new(name: 'ComputeLogprobsConfig')
    ComputeLogprobsResult = Shapes::StructureShape.new(name: 'ComputeLogprobsResult')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Datum = Shapes::StructureShape.new(name: 'Datum')
    DatumList = Shapes::ListShape.new(name: 'DatumList')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleList = Shapes::ListShape.new(name: 'DoubleList')
    EncodedTextChunk = Shapes::StructureShape.new(name: 'EncodedTextChunk')
    EncodedTextChunkList = Shapes::ListShape.new(name: 'EncodedTextChunkList')
    EncodedTextChunkType = Shapes::StringShape.new(name: 'EncodedTextChunkType')
    ExecuteSamplingOperationInput = Shapes::StructureShape.new(name: 'ExecuteSamplingOperationInput')
    ExecuteSamplingOperationOutput = Shapes::StructureShape.new(name: 'ExecuteSamplingOperationOutput')
    ExecuteTrainingOperationInput = Shapes::StructureShape.new(name: 'ExecuteTrainingOperationInput')
    ExecuteTrainingOperationOutput = Shapes::StructureShape.new(name: 'ExecuteTrainingOperationOutput')
    ForwardBackwardConfig = Shapes::StructureShape.new(name: 'ForwardBackwardConfig')
    ForwardBackwardResult = Shapes::StructureShape.new(name: 'ForwardBackwardResult')
    ForwardConfig = Shapes::StructureShape.new(name: 'ForwardConfig')
    ForwardResult = Shapes::StructureShape.new(name: 'ForwardResult')
    GetSamplingOperationResultInput = Shapes::StructureShape.new(name: 'GetSamplingOperationResultInput')
    GetSamplingOperationResultOutput = Shapes::StructureShape.new(name: 'GetSamplingOperationResultOutput')
    GetTrainingOperationResultInput = Shapes::StructureShape.new(name: 'GetTrainingOperationResultInput')
    GetTrainingOperationResultOutput = Shapes::StructureShape.new(name: 'GetTrainingOperationResultOutput')
    InferenceBody = Shapes::BlobShape.new(name: 'InferenceBody')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LoadStateConfig = Shapes::StructureShape.new(name: 'LoadStateConfig')
    LoadStateResult = Shapes::StructureShape.new(name: 'LoadStateResult')
    LoadWeightsForSamplingConfig = Shapes::StructureShape.new(name: 'LoadWeightsForSamplingConfig')
    LoadWeightsForSamplingResult = Shapes::StructureShape.new(name: 'LoadWeightsForSamplingResult')
    LossFnName = Shapes::StringShape.new(name: 'LossFnName')
    MetricsMap = Shapes::MapShape.new(name: 'MetricsMap')
    ModelInput = Shapes::StructureShape.new(name: 'ModelInput')
    OperationConfig = Shapes::UnionShape.new(name: 'OperationConfig')
    OperationId = Shapes::StringShape.new(name: 'OperationId')
    OperationResult = Shapes::UnionShape.new(name: 'OperationResult')
    OptimizerStepConfig = Shapes::StructureShape.new(name: 'OptimizerStepConfig')
    OptimizerStepResult = Shapes::StructureShape.new(name: 'OptimizerStepResult')
    RequestStatus = Shapes::StringShape.new(name: 'RequestStatus')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SampleConfig = Shapes::StructureShape.new(name: 'SampleConfig')
    SampleConfigNumSamplesInteger = Shapes::IntegerShape.new(name: 'SampleConfigNumSamplesInteger')
    SampleOperationConfig = Shapes::UnionShape.new(name: 'SampleOperationConfig')
    SampleOperationResult = Shapes::UnionShape.new(name: 'SampleOperationResult')
    SampleResponse = Shapes::StructureShape.new(name: 'SampleResponse')
    SampleResponseStream = Shapes::BlobShape.new(name: 'SampleResponseStream', streaming: true)
    SampleTokenUsage = Shapes::StructureShape.new(name: 'SampleTokenUsage')
    SampleTrainingSessionInput = Shapes::StructureShape.new(name: 'SampleTrainingSessionInput')
    SampleTrainingSessionOutput = Shapes::StructureShape.new(name: 'SampleTrainingSessionOutput')
    SampleTrainingSessionWithResponseStreamInput = Shapes::StructureShape.new(name: 'SampleTrainingSessionWithResponseStreamInput')
    SampleTrainingSessionWithResponseStreamOutput = Shapes::StructureShape.new(name: 'SampleTrainingSessionWithResponseStreamOutput')
    SampledSequence = Shapes::StructureShape.new(name: 'SampledSequence')
    SampledSequenceList = Shapes::ListShape.new(name: 'SampledSequenceList')
    SamplingParams = Shapes::StructureShape.new(name: 'SamplingParams')
    SamplingParamsMaxTokensInteger = Shapes::IntegerShape.new(name: 'SamplingParamsMaxTokensInteger')
    SamplingParamsTemperatureDouble = Shapes::FloatShape.new(name: 'SamplingParamsTemperatureDouble')
    SamplingParamsTopPDouble = Shapes::FloatShape.new(name: 'SamplingParamsTopPDouble')
    SaveStateConfig = Shapes::StructureShape.new(name: 'SaveStateConfig')
    SaveStateConfigDescriptionString = Shapes::StringShape.new(name: 'SaveStateConfigDescriptionString')
    SaveStateResult = Shapes::StructureShape.new(name: 'SaveStateResult')
    SaveWeightsConfig = Shapes::StructureShape.new(name: 'SaveWeightsConfig')
    SaveWeightsConfigDescriptionString = Shapes::StringShape.new(name: 'SaveWeightsConfigDescriptionString')
    SaveWeightsResult = Shapes::StructureShape.new(name: 'SaveWeightsResult')
    SequenceNumber = Shapes::IntegerShape.new(name: 'SequenceNumber')
    StopReason = Shapes::StringShape.new(name: 'StopReason')
    StopSequenceList = Shapes::ListShape.new(name: 'StopSequenceList')
    String = Shapes::StringShape.new(name: 'String')
    TensorData = Shapes::StructureShape.new(name: 'TensorData')
    TensorDataMap = Shapes::MapShape.new(name: 'TensorDataMap')
    TensorDataMapList = Shapes::ListShape.new(name: 'TensorDataMapList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TokenLogprob = Shapes::StructureShape.new(name: 'TokenLogprob')
    TokenLogprobList = Shapes::ListShape.new(name: 'TokenLogprobList')
    TopkPromptLogprobsList = Shapes::ListShape.new(name: 'TopkPromptLogprobsList')
    TrainingSessionName = Shapes::StringShape.new(name: 'TrainingSessionName')
    TrainingTokenUsage = Shapes::StructureShape.new(name: 'TrainingTokenUsage')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AdamParamsConfig.add_member(:learning_rate, Shapes::ShapeRef.new(shape: AdamParamsConfigLearningRateDouble, required: true, location_name: "learningRate"))
    AdamParamsConfig.add_member(:beta1, Shapes::ShapeRef.new(shape: AdamParamsConfigBeta1Double, location_name: "beta1"))
    AdamParamsConfig.add_member(:beta2, Shapes::ShapeRef.new(shape: AdamParamsConfigBeta2Double, location_name: "beta2"))
    AdamParamsConfig.add_member(:eps, Shapes::ShapeRef.new(shape: AdamParamsConfigEpsDouble, location_name: "eps"))
    AdamParamsConfig.add_member(:weight_decay, Shapes::ShapeRef.new(shape: AdamParamsConfigWeightDecayDouble, location_name: "weightDecay"))
    AdamParamsConfig.add_member(:grad_clip_norm, Shapes::ShapeRef.new(shape: AdamParamsConfigGradClipNormDouble, location_name: "gradClipNorm"))
    AdamParamsConfig.add_member(:lora_plus_lr_ratio, Shapes::ShapeRef.new(shape: AdamParamsConfigLoraPlusLrRatioDouble, location_name: "loraPlusLrRatio"))
    AdamParamsConfig.struct_class = Types::AdamParamsConfig

    ComputeLogprobsConfig.add_member(:prompt, Shapes::ShapeRef.new(shape: ModelInput, required: true, location_name: "prompt"))
    ComputeLogprobsConfig.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: String, location_name: "modelPackageArn"))
    ComputeLogprobsConfig.struct_class = Types::ComputeLogprobsConfig

    ComputeLogprobsResult.add_member(:logprobs, Shapes::ShapeRef.new(shape: DoubleList, required: true, location_name: "logprobs"))
    ComputeLogprobsResult.struct_class = Types::ComputeLogprobsResult

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    Datum.add_member(:model_input, Shapes::ShapeRef.new(shape: ModelInput, required: true, location_name: "modelInput"))
    Datum.add_member(:loss_fn_inputs, Shapes::ShapeRef.new(shape: TensorDataMap, location_name: "lossFnInputs"))
    Datum.struct_class = Types::Datum

    DatumList.member = Shapes::ShapeRef.new(shape: Datum)

    DoubleList.member = Shapes::ShapeRef.new(shape: Double)

    EncodedTextChunk.add_member(:tokens, Shapes::ShapeRef.new(shape: IntegerList, required: true, location_name: "tokens"))
    EncodedTextChunk.add_member(:type, Shapes::ShapeRef.new(shape: EncodedTextChunkType, required: true, location_name: "type"))
    EncodedTextChunk.struct_class = Types::EncodedTextChunk

    EncodedTextChunkList.member = Shapes::ShapeRef.new(shape: EncodedTextChunk)

    ExecuteSamplingOperationInput.add_member(:training_session_name, Shapes::ShapeRef.new(shape: TrainingSessionName, required: true, location: "uri", location_name: "trainingSessionName"))
    ExecuteSamplingOperationInput.add_member(:operation_config, Shapes::ShapeRef.new(shape: SampleOperationConfig, required: true, location_name: "operationConfig"))
    ExecuteSamplingOperationInput.struct_class = Types::ExecuteSamplingOperationInput

    ExecuteSamplingOperationOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "operationId"))
    ExecuteSamplingOperationOutput.struct_class = Types::ExecuteSamplingOperationOutput

    ExecuteTrainingOperationInput.add_member(:training_session_name, Shapes::ShapeRef.new(shape: TrainingSessionName, required: true, location: "uri", location_name: "trainingSessionName"))
    ExecuteTrainingOperationInput.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "sequenceNumber"))
    ExecuteTrainingOperationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    ExecuteTrainingOperationInput.add_member(:operation_config, Shapes::ShapeRef.new(shape: OperationConfig, required: true, location_name: "operationConfig"))
    ExecuteTrainingOperationInput.struct_class = Types::ExecuteTrainingOperationInput

    ExecuteTrainingOperationOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "operationId"))
    ExecuteTrainingOperationOutput.struct_class = Types::ExecuteTrainingOperationOutput

    ForwardBackwardConfig.add_member(:loss_fn_name, Shapes::ShapeRef.new(shape: LossFnName, required: true, location_name: "lossFnName"))
    ForwardBackwardConfig.add_member(:datum_list, Shapes::ShapeRef.new(shape: DatumList, required: true, location_name: "datumList"))
    ForwardBackwardConfig.add_member(:loss_fn_config, Shapes::ShapeRef.new(shape: Document, location_name: "lossFnConfig"))
    ForwardBackwardConfig.struct_class = Types::ForwardBackwardConfig

    ForwardBackwardResult.add_member(:loss_fn_output_type, Shapes::ShapeRef.new(shape: String, location_name: "lossFnOutputType"))
    ForwardBackwardResult.add_member(:loss_fn_outputs, Shapes::ShapeRef.new(shape: TensorDataMapList, location_name: "lossFnOutputs"))
    ForwardBackwardResult.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricsMap, location_name: "metrics"))
    ForwardBackwardResult.add_member(:token_usage, Shapes::ShapeRef.new(shape: TrainingTokenUsage, location_name: "tokenUsage"))
    ForwardBackwardResult.struct_class = Types::ForwardBackwardResult

    ForwardConfig.add_member(:loss_fn_name, Shapes::ShapeRef.new(shape: LossFnName, required: true, location_name: "lossFnName"))
    ForwardConfig.add_member(:datum_list, Shapes::ShapeRef.new(shape: DatumList, required: true, location_name: "datumList"))
    ForwardConfig.add_member(:loss_fn_config, Shapes::ShapeRef.new(shape: Document, location_name: "lossFnConfig"))
    ForwardConfig.struct_class = Types::ForwardConfig

    ForwardResult.add_member(:loss_fn_output_type, Shapes::ShapeRef.new(shape: String, location_name: "lossFnOutputType"))
    ForwardResult.add_member(:loss_fn_outputs, Shapes::ShapeRef.new(shape: TensorDataMapList, location_name: "lossFnOutputs"))
    ForwardResult.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricsMap, location_name: "metrics"))
    ForwardResult.add_member(:token_usage, Shapes::ShapeRef.new(shape: TrainingTokenUsage, location_name: "tokenUsage"))
    ForwardResult.struct_class = Types::ForwardResult

    GetSamplingOperationResultInput.add_member(:training_session_name, Shapes::ShapeRef.new(shape: TrainingSessionName, required: true, location: "uri", location_name: "trainingSessionName"))
    GetSamplingOperationResultInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location: "uri", location_name: "operationId"))
    GetSamplingOperationResultInput.struct_class = Types::GetSamplingOperationResultInput

    GetSamplingOperationResultOutput.add_member(:status, Shapes::ShapeRef.new(shape: RequestStatus, required: true, location_name: "status"))
    GetSamplingOperationResultOutput.add_member(:operation_result, Shapes::ShapeRef.new(shape: SampleOperationResult, location_name: "operationResult"))
    GetSamplingOperationResultOutput.add_member(:error_details, Shapes::ShapeRef.new(shape: String, location_name: "errorDetails"))
    GetSamplingOperationResultOutput.struct_class = Types::GetSamplingOperationResultOutput

    GetTrainingOperationResultInput.add_member(:training_session_name, Shapes::ShapeRef.new(shape: TrainingSessionName, required: true, location: "uri", location_name: "trainingSessionName"))
    GetTrainingOperationResultInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location: "uri", location_name: "operationId"))
    GetTrainingOperationResultInput.struct_class = Types::GetTrainingOperationResultInput

    GetTrainingOperationResultOutput.add_member(:status, Shapes::ShapeRef.new(shape: RequestStatus, required: true, location_name: "status"))
    GetTrainingOperationResultOutput.add_member(:operation_result, Shapes::ShapeRef.new(shape: OperationResult, location_name: "operationResult"))
    GetTrainingOperationResultOutput.add_member(:error_details, Shapes::ShapeRef.new(shape: String, location_name: "errorDetails"))
    GetTrainingOperationResultOutput.add_member(:token_usage, Shapes::ShapeRef.new(shape: TrainingTokenUsage, location_name: "tokenUsage"))
    GetTrainingOperationResultOutput.struct_class = Types::GetTrainingOperationResultOutput

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LoadStateConfig.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelPackageArn"))
    LoadStateConfig.add_member(:load_optimizer, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "loadOptimizer"))
    LoadStateConfig.struct_class = Types::LoadStateConfig

    LoadStateResult.struct_class = Types::LoadStateResult

    LoadWeightsForSamplingConfig.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelPackageArn"))
    LoadWeightsForSamplingConfig.struct_class = Types::LoadWeightsForSamplingConfig

    LoadWeightsForSamplingResult.struct_class = Types::LoadWeightsForSamplingResult

    MetricsMap.key = Shapes::ShapeRef.new(shape: String)
    MetricsMap.value = Shapes::ShapeRef.new(shape: Double)

    ModelInput.add_member(:chunks, Shapes::ShapeRef.new(shape: EncodedTextChunkList, required: true, location_name: "chunks"))
    ModelInput.struct_class = Types::ModelInput

    OperationConfig.add_member(:forward, Shapes::ShapeRef.new(shape: ForwardConfig, location_name: "forward"))
    OperationConfig.add_member(:forward_backward, Shapes::ShapeRef.new(shape: ForwardBackwardConfig, location_name: "forwardBackward"))
    OperationConfig.add_member(:optimizer_step, Shapes::ShapeRef.new(shape: OptimizerStepConfig, location_name: "optimizerStep"))
    OperationConfig.add_member(:save_weights, Shapes::ShapeRef.new(shape: SaveWeightsConfig, location_name: "saveWeights"))
    OperationConfig.add_member(:save_state, Shapes::ShapeRef.new(shape: SaveStateConfig, location_name: "saveState"))
    OperationConfig.add_member(:load_state, Shapes::ShapeRef.new(shape: LoadStateConfig, location_name: "loadState"))
    OperationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OperationConfig.add_member_subclass(:forward, Types::OperationConfig::Forward)
    OperationConfig.add_member_subclass(:forward_backward, Types::OperationConfig::ForwardBackward)
    OperationConfig.add_member_subclass(:optimizer_step, Types::OperationConfig::OptimizerStep)
    OperationConfig.add_member_subclass(:save_weights, Types::OperationConfig::SaveWeights)
    OperationConfig.add_member_subclass(:save_state, Types::OperationConfig::SaveState)
    OperationConfig.add_member_subclass(:load_state, Types::OperationConfig::LoadState)
    OperationConfig.add_member_subclass(:unknown, Types::OperationConfig::Unknown)
    OperationConfig.struct_class = Types::OperationConfig

    OperationResult.add_member(:forward, Shapes::ShapeRef.new(shape: ForwardResult, location_name: "forward"))
    OperationResult.add_member(:forward_backward, Shapes::ShapeRef.new(shape: ForwardBackwardResult, location_name: "forwardBackward"))
    OperationResult.add_member(:optimizer_step, Shapes::ShapeRef.new(shape: OptimizerStepResult, location_name: "optimizerStep"))
    OperationResult.add_member(:save_weights, Shapes::ShapeRef.new(shape: SaveWeightsResult, location_name: "saveWeights"))
    OperationResult.add_member(:save_state, Shapes::ShapeRef.new(shape: SaveStateResult, location_name: "saveState"))
    OperationResult.add_member(:load_state, Shapes::ShapeRef.new(shape: LoadStateResult, location_name: "loadState"))
    OperationResult.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OperationResult.add_member_subclass(:forward, Types::OperationResult::Forward)
    OperationResult.add_member_subclass(:forward_backward, Types::OperationResult::ForwardBackward)
    OperationResult.add_member_subclass(:optimizer_step, Types::OperationResult::OptimizerStep)
    OperationResult.add_member_subclass(:save_weights, Types::OperationResult::SaveWeights)
    OperationResult.add_member_subclass(:save_state, Types::OperationResult::SaveState)
    OperationResult.add_member_subclass(:load_state, Types::OperationResult::LoadState)
    OperationResult.add_member_subclass(:unknown, Types::OperationResult::Unknown)
    OperationResult.struct_class = Types::OperationResult

    OptimizerStepConfig.add_member(:adam_params_config, Shapes::ShapeRef.new(shape: AdamParamsConfig, required: true, location_name: "adamParamsConfig"))
    OptimizerStepConfig.struct_class = Types::OptimizerStepConfig

    OptimizerStepResult.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricsMap, location_name: "metrics"))
    OptimizerStepResult.struct_class = Types::OptimizerStepResult

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SampleConfig.add_member(:prompt, Shapes::ShapeRef.new(shape: ModelInput, required: true, location_name: "prompt"))
    SampleConfig.add_member(:num_samples, Shapes::ShapeRef.new(shape: SampleConfigNumSamplesInteger, required: true, location_name: "numSamples"))
    SampleConfig.add_member(:sampling_params, Shapes::ShapeRef.new(shape: SamplingParams, required: true, location_name: "samplingParams"))
    SampleConfig.add_member(:include_prompt_logprobs, Shapes::ShapeRef.new(shape: Boolean, location_name: "includePromptLogprobs"))
    SampleConfig.add_member(:topk_prompt_logprobs, Shapes::ShapeRef.new(shape: Integer, location_name: "topkPromptLogprobs"))
    SampleConfig.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: String, location_name: "modelPackageArn"))
    SampleConfig.struct_class = Types::SampleConfig

    SampleOperationConfig.add_member(:sample, Shapes::ShapeRef.new(shape: SampleConfig, location_name: "sample"))
    SampleOperationConfig.add_member(:compute_logprobs, Shapes::ShapeRef.new(shape: ComputeLogprobsConfig, location_name: "computeLogprobs"))
    SampleOperationConfig.add_member(:load_weights_for_sampling, Shapes::ShapeRef.new(shape: LoadWeightsForSamplingConfig, location_name: "loadWeightsForSampling"))
    SampleOperationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SampleOperationConfig.add_member_subclass(:sample, Types::SampleOperationConfig::Sample)
    SampleOperationConfig.add_member_subclass(:compute_logprobs, Types::SampleOperationConfig::ComputeLogprobs)
    SampleOperationConfig.add_member_subclass(:load_weights_for_sampling, Types::SampleOperationConfig::LoadWeightsForSampling)
    SampleOperationConfig.add_member_subclass(:unknown, Types::SampleOperationConfig::Unknown)
    SampleOperationConfig.struct_class = Types::SampleOperationConfig

    SampleOperationResult.add_member(:sample, Shapes::ShapeRef.new(shape: SampleResponse, location_name: "sample"))
    SampleOperationResult.add_member(:compute_logprobs, Shapes::ShapeRef.new(shape: ComputeLogprobsResult, location_name: "computeLogprobs"))
    SampleOperationResult.add_member(:load_weights_for_sampling, Shapes::ShapeRef.new(shape: LoadWeightsForSamplingResult, location_name: "loadWeightsForSampling"))
    SampleOperationResult.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SampleOperationResult.add_member_subclass(:sample, Types::SampleOperationResult::Sample)
    SampleOperationResult.add_member_subclass(:compute_logprobs, Types::SampleOperationResult::ComputeLogprobs)
    SampleOperationResult.add_member_subclass(:load_weights_for_sampling, Types::SampleOperationResult::LoadWeightsForSampling)
    SampleOperationResult.add_member_subclass(:unknown, Types::SampleOperationResult::Unknown)
    SampleOperationResult.struct_class = Types::SampleOperationResult

    SampleResponse.add_member(:sequences, Shapes::ShapeRef.new(shape: SampledSequenceList, required: true, location_name: "sequences"))
    SampleResponse.add_member(:prompt_logprobs, Shapes::ShapeRef.new(shape: DoubleList, location_name: "promptLogprobs"))
    SampleResponse.add_member(:topk_prompt_logprobs, Shapes::ShapeRef.new(shape: TopkPromptLogprobsList, location_name: "topkPromptLogprobs"))
    SampleResponse.struct_class = Types::SampleResponse

    SampleTokenUsage.add_member(:prefill, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "prefill"))
    SampleTokenUsage.add_member(:decode, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "decode"))
    SampleTokenUsage.struct_class = Types::SampleTokenUsage

    SampleTrainingSessionInput.add_member(:training_session_name, Shapes::ShapeRef.new(shape: TrainingSessionName, required: true, location: "uri", location_name: "trainingSessionName"))
    SampleTrainingSessionInput.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    SampleTrainingSessionInput.add_member(:accept, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Accept"))
    SampleTrainingSessionInput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amzn-SageMaker-Model-Package"))
    SampleTrainingSessionInput.add_member(:body, Shapes::ShapeRef.new(shape: InferenceBody, location_name: "body"))
    SampleTrainingSessionInput.struct_class = Types::SampleTrainingSessionInput
    SampleTrainingSessionInput[:payload] = :body
    SampleTrainingSessionInput[:payload_member] = SampleTrainingSessionInput.member(:body)

    SampleTrainingSessionOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    SampleTrainingSessionOutput.add_member(:body, Shapes::ShapeRef.new(shape: InferenceBody, required: true, location_name: "body"))
    SampleTrainingSessionOutput.struct_class = Types::SampleTrainingSessionOutput
    SampleTrainingSessionOutput[:payload] = :body
    SampleTrainingSessionOutput[:payload_member] = SampleTrainingSessionOutput.member(:body)

    SampleTrainingSessionWithResponseStreamInput.add_member(:training_session_name, Shapes::ShapeRef.new(shape: TrainingSessionName, required: true, location: "uri", location_name: "trainingSessionName"))
    SampleTrainingSessionWithResponseStreamInput.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    SampleTrainingSessionWithResponseStreamInput.add_member(:accept, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Accept"))
    SampleTrainingSessionWithResponseStreamInput.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amzn-SageMaker-Model-Package"))
    SampleTrainingSessionWithResponseStreamInput.add_member(:body, Shapes::ShapeRef.new(shape: InferenceBody, location_name: "body"))
    SampleTrainingSessionWithResponseStreamInput.struct_class = Types::SampleTrainingSessionWithResponseStreamInput
    SampleTrainingSessionWithResponseStreamInput[:payload] = :body
    SampleTrainingSessionWithResponseStreamInput[:payload_member] = SampleTrainingSessionWithResponseStreamInput.member(:body)

    SampleTrainingSessionWithResponseStreamOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    SampleTrainingSessionWithResponseStreamOutput.add_member(:body, Shapes::ShapeRef.new(shape: SampleResponseStream, required: true, location_name: "body"))
    SampleTrainingSessionWithResponseStreamOutput.struct_class = Types::SampleTrainingSessionWithResponseStreamOutput
    SampleTrainingSessionWithResponseStreamOutput[:payload] = :body
    SampleTrainingSessionWithResponseStreamOutput[:payload_member] = SampleTrainingSessionWithResponseStreamOutput.member(:body)

    SampledSequence.add_member(:stop_reason, Shapes::ShapeRef.new(shape: StopReason, required: true, location_name: "stopReason"))
    SampledSequence.add_member(:tokens, Shapes::ShapeRef.new(shape: IntegerList, required: true, location_name: "tokens"))
    SampledSequence.add_member(:logprobs, Shapes::ShapeRef.new(shape: DoubleList, location_name: "logprobs"))
    SampledSequence.add_member(:token_usage, Shapes::ShapeRef.new(shape: SampleTokenUsage, location_name: "tokenUsage"))
    SampledSequence.struct_class = Types::SampledSequence

    SampledSequenceList.member = Shapes::ShapeRef.new(shape: SampledSequence)

    SamplingParams.add_member(:max_tokens, Shapes::ShapeRef.new(shape: SamplingParamsMaxTokensInteger, required: true, location_name: "maxTokens"))
    SamplingParams.add_member(:temperature, Shapes::ShapeRef.new(shape: SamplingParamsTemperatureDouble, location_name: "temperature"))
    SamplingParams.add_member(:top_k, Shapes::ShapeRef.new(shape: Integer, location_name: "topK"))
    SamplingParams.add_member(:top_p, Shapes::ShapeRef.new(shape: SamplingParamsTopPDouble, location_name: "topP"))
    SamplingParams.add_member(:seed, Shapes::ShapeRef.new(shape: Integer, location_name: "seed"))
    SamplingParams.add_member(:stop, Shapes::ShapeRef.new(shape: StopSequenceList, location_name: "stop"))
    SamplingParams.struct_class = Types::SamplingParams

    SaveStateConfig.add_member(:description, Shapes::ShapeRef.new(shape: SaveStateConfigDescriptionString, location_name: "description"))
    SaveStateConfig.struct_class = Types::SaveStateConfig

    SaveStateResult.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelPackageArn"))
    SaveStateResult.struct_class = Types::SaveStateResult

    SaveWeightsConfig.add_member(:merge_weights, Shapes::ShapeRef.new(shape: Boolean, location_name: "mergeWeights"))
    SaveWeightsConfig.add_member(:description, Shapes::ShapeRef.new(shape: SaveWeightsConfigDescriptionString, location_name: "description"))
    SaveWeightsConfig.struct_class = Types::SaveWeightsConfig

    SaveWeightsResult.add_member(:model_package_arn, Shapes::ShapeRef.new(shape: String, location_name: "modelPackageArn"))
    SaveWeightsResult.struct_class = Types::SaveWeightsResult

    StopSequenceList.member = Shapes::ShapeRef.new(shape: String)

    TensorData.add_member(:data, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "data"))
    TensorData.add_member(:dtype, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dtype"))
    TensorData.add_member(:shape, Shapes::ShapeRef.new(shape: IntegerList, location_name: "shape"))
    TensorData.struct_class = Types::TensorData

    TensorDataMap.key = Shapes::ShapeRef.new(shape: String)
    TensorDataMap.value = Shapes::ShapeRef.new(shape: TensorData)

    TensorDataMapList.member = Shapes::ShapeRef.new(shape: TensorDataMap)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TokenLogprob.add_member(:token_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "tokenId"))
    TokenLogprob.add_member(:logprob, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "logprob"))
    TokenLogprob.struct_class = Types::TokenLogprob

    TokenLogprobList.member = Shapes::ShapeRef.new(shape: TokenLogprob)

    TopkPromptLogprobsList.member = Shapes::ShapeRef.new(shape: TokenLogprobList)

    TrainingTokenUsage.add_member(:training_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "trainingTokens"))
    TrainingTokenUsage.struct_class = Types::TrainingTokenUsage

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-02-10"

      api.metadata = {
        "apiVersion" => "2025-02-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "training-session-runtime.sagemaker",
        "protocol" => "rest-json",
        "protocolSettings" => {"h2" => "optional"},
        "protocols" => ["rest-json"],
        "serviceFullName" => "SageMaker Training Session Runtime",
        "serviceId" => "SageMakerTrainingSessionRuntime",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemakertrainingsessionruntime-2025-02-10",
      }

      api.add_operation(:execute_sampling_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteSamplingOperation"
        o.http_method = "POST"
        o.http_request_uri = "/v1/training-sessions/{trainingSessionName}/sampling-operations"
        o.input = Shapes::ShapeRef.new(shape: ExecuteSamplingOperationInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteSamplingOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:execute_training_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteTrainingOperation"
        o.http_method = "POST"
        o.http_request_uri = "/v1/training-sessions/{trainingSessionName}/operations"
        o.input = Shapes::ShapeRef.new(shape: ExecuteTrainingOperationInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteTrainingOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_sampling_operation_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSamplingOperationResult"
        o.http_method = "GET"
        o.http_request_uri = "/v1/training-sessions/{trainingSessionName}/sampling-operations/{operationId}"
        o.input = Shapes::ShapeRef.new(shape: GetSamplingOperationResultInput)
        o.output = Shapes::ShapeRef.new(shape: GetSamplingOperationResultOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_training_operation_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrainingOperationResult"
        o.http_method = "GET"
        o.http_request_uri = "/v1/training-sessions/{trainingSessionName}/operations/{operationId}"
        o.input = Shapes::ShapeRef.new(shape: GetTrainingOperationResultInput)
        o.output = Shapes::ShapeRef.new(shape: GetTrainingOperationResultOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:sample_training_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SampleTrainingSession"
        o.http_method = "POST"
        o.http_request_uri = "/training-sessions/{trainingSessionName}/sample"
        o.input = Shapes::ShapeRef.new(shape: SampleTrainingSessionInput)
        o.output = Shapes::ShapeRef.new(shape: SampleTrainingSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:sample_training_session_with_response_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SampleTrainingSessionWithResponseStream"
        o.http_method = "POST"
        o.http_request_uri = "/training-sessions/{trainingSessionName}/sample-with-response-stream"
        o.input = Shapes::ShapeRef.new(shape: SampleTrainingSessionWithResponseStreamInput)
        o.output = Shapes::ShapeRef.new(shape: SampleTrainingSessionWithResponseStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
