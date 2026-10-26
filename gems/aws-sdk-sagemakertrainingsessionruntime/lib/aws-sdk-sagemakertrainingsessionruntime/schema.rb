# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerTrainingSessionRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AdamParamsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#AdamParamsConfig", name: "AdamParamsConfig")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ComputeLogprobsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ComputeLogprobsConfig", name: "ComputeLogprobsConfig")
    ComputeLogprobsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ComputeLogprobsResult", name: "ComputeLogprobsResult")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Datum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#Datum", name: "Datum", traits: {"smithy.api#sensitive" => {}})
    DatumList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#DatumList", name: "DatumList")
    DoubleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#DoubleList", name: "DoubleList")
    EncodedTextChunk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#EncodedTextChunk", name: "EncodedTextChunk")
    EncodedTextChunkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#EncodedTextChunkList", name: "EncodedTextChunkList")
    EncodedTextChunkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#EncodedTextChunkType", name: "EncodedTextChunkType")
    ExecuteSamplingOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ExecuteSamplingOperationInput", name: "ExecuteSamplingOperationInput")
    ExecuteSamplingOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ExecuteSamplingOperationOutput", name: "ExecuteSamplingOperationOutput")
    ExecuteTrainingOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ExecuteTrainingOperationInput", name: "ExecuteTrainingOperationInput")
    ExecuteTrainingOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ExecuteTrainingOperationOutput", name: "ExecuteTrainingOperationOutput")
    ForwardBackwardConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ForwardBackwardConfig", name: "ForwardBackwardConfig")
    ForwardBackwardResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ForwardBackwardResult", name: "ForwardBackwardResult")
    ForwardConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ForwardConfig", name: "ForwardConfig")
    ForwardResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ForwardResult", name: "ForwardResult")
    GetSamplingOperationResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#GetSamplingOperationResultInput", name: "GetSamplingOperationResultInput")
    GetSamplingOperationResultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#GetSamplingOperationResultOutput", name: "GetSamplingOperationResultOutput")
    GetTrainingOperationResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#GetTrainingOperationResultInput", name: "GetTrainingOperationResultInput")
    GetTrainingOperationResultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#GetTrainingOperationResultOutput", name: "GetTrainingOperationResultOutput")
    InferenceBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#InferenceBody", name: "InferenceBody", traits: {"smithy.api#sensitive" => {}})
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#IntegerList", name: "IntegerList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LoadStateConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#LoadStateConfig", name: "LoadStateConfig")
    LoadStateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#LoadStateResult", name: "LoadStateResult")
    LoadWeightsForSamplingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#LoadWeightsForSamplingConfig", name: "LoadWeightsForSamplingConfig")
    LoadWeightsForSamplingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#LoadWeightsForSamplingResult", name: "LoadWeightsForSamplingResult")
    LossFnName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#LossFnName", name: "LossFnName")
    MetricsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#MetricsMap", name: "MetricsMap")
    ModelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ModelInput", name: "ModelInput", traits: {"smithy.api#sensitive" => {}})
    OperationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#OperationConfig", name: "OperationConfig")
    OperationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#OperationId", name: "OperationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    OperationResult = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#OperationResult", name: "OperationResult")
    OptimizerStepConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#OptimizerStepConfig", name: "OptimizerStepConfig")
    OptimizerStepResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#OptimizerStepResult", name: "OptimizerStepResult")
    RequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#RequestStatus", name: "RequestStatus")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SampleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleConfig", name: "SampleConfig")
    SampleOperationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleOperationConfig", name: "SampleOperationConfig")
    SampleOperationResult = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleOperationResult", name: "SampleOperationResult")
    SampleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleResponse", name: "SampleResponse", traits: {"smithy.api#sensitive" => {}})
    SampleResponseStream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleResponseStream", name: "SampleResponseStream", traits: {"smithy.api#mediaType" => "text/event-stream", "smithy.api#sensitive" => {}, "smithy.api#streaming" => {}})
    SampleTokenUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleTokenUsage", name: "SampleTokenUsage")
    SampleTrainingSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleTrainingSessionInput", name: "SampleTrainingSessionInput")
    SampleTrainingSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleTrainingSessionOutput", name: "SampleTrainingSessionOutput")
    SampleTrainingSessionWithResponseStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleTrainingSessionWithResponseStreamInput", name: "SampleTrainingSessionWithResponseStreamInput")
    SampleTrainingSessionWithResponseStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampleTrainingSessionWithResponseStreamOutput", name: "SampleTrainingSessionWithResponseStreamOutput")
    SampledSequence = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampledSequence", name: "SampledSequence")
    SampledSequenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SampledSequenceList", name: "SampledSequenceList")
    SamplingParams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SamplingParams", name: "SamplingParams")
    SaveStateConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SaveStateConfig", name: "SaveStateConfig")
    SaveStateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SaveStateResult", name: "SaveStateResult")
    SaveWeightsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SaveWeightsConfig", name: "SaveWeightsConfig")
    SaveWeightsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SaveWeightsResult", name: "SaveWeightsResult")
    SequenceNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#SequenceNumber", name: "SequenceNumber", traits: {"smithy.api#range" => {"min" => 1}})
    StopReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#StopReason", name: "StopReason")
    StopSequenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#StopSequenceList", name: "StopSequenceList")
    TensorData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#TensorData", name: "TensorData")
    TensorDataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#TensorDataMap", name: "TensorDataMap")
    TensorDataMapList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#TensorDataMapList", name: "TensorDataMapList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TokenLogprob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#TokenLogprob", name: "TokenLogprob")
    TokenLogprobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#TokenLogprobList", name: "TokenLogprobList")
    TopkPromptLogprobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#TopkPromptLogprobsList", name: "TopkPromptLogprobsList")
    TrainingSessionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#TrainingSessionName", name: "TrainingSessionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    TrainingTokenUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#TrainingTokenUsage", name: "TrainingTokenUsage")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakertrainingsessionruntime#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AdamParamsConfig.add_member(:learning_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "learningRate", traits: {"smithy.api#range" => {"min" => 0, "max" => 0.01}, "smithy.api#required" => {}}))
    AdamParamsConfig.add_member(:beta1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "beta1", traits: {"smithy.api#default" => 0.9, "smithy.api#range" => {"min" => 0, "max" => 0.999999}}))
    AdamParamsConfig.add_member(:beta2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "beta2", traits: {"smithy.api#default" => 0.95, "smithy.api#range" => {"min" => 0, "max" => 0.999999}}))
    AdamParamsConfig.add_member(:eps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "eps", traits: {"smithy.api#default" => 1.0e-08, "smithy.api#range" => {"min" => 1.0e-16, "max" => 0.01}}))
    AdamParamsConfig.add_member(:weight_decay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "weightDecay", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}}))
    AdamParamsConfig.add_member(:grad_clip_norm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "gradClipNorm", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 0, "max" => 100}}))
    AdamParamsConfig.add_member(:lora_plus_lr_ratio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "loraPlusLrRatio", traits: {"smithy.api#range" => {"min" => 1.0, "max" => 100.0}}))
    AdamParamsConfig.type = Types::AdamParamsConfig
    ComputeLogprobsConfig.add_member(:prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInput, name: "prompt", traits: {"smithy.api#required" => {}}))
    ComputeLogprobsConfig.add_member(:model_package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelPackageArn"))
    ComputeLogprobsConfig.type = Types::ComputeLogprobsConfig
    ComputeLogprobsResult.add_member(:logprobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleList, name: "logprobs", traits: {"smithy.api#required" => {}}))
    ComputeLogprobsResult.type = Types::ComputeLogprobsResult
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    Datum.add_member(:model_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInput, name: "modelInput", traits: {"smithy.api#required" => {}}))
    Datum.add_member(:loss_fn_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: TensorDataMap, name: "lossFnInputs"))
    Datum.type = Types::Datum
    DatumList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Datum, name: "member"))
    DoubleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "member"))
    EncodedTextChunk.add_member(:tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "tokens", traits: {"smithy.api#required" => {}}))
    EncodedTextChunk.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodedTextChunkType, name: "type", traits: {"smithy.api#required" => {}}))
    EncodedTextChunk.type = Types::EncodedTextChunk
    EncodedTextChunkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodedTextChunk, name: "member"))
    EncodedTextChunkType.add_member(:encoded_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCODED_TEXT", traits: {"smithy.api#enumValue" => "encoded_text"}))
    ExecuteSamplingOperationInput.add_member(:training_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingSessionName, name: "trainingSessionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExecuteSamplingOperationInput.add_member(:operation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleOperationConfig, name: "operationConfig", traits: {"smithy.api#required" => {}}))
    ExecuteSamplingOperationInput.type = Types::ExecuteSamplingOperationInput
    ExecuteSamplingOperationOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "operationId", traits: {"smithy.api#required" => {}}))
    ExecuteSamplingOperationOutput.type = Types::ExecuteSamplingOperationOutput
    ExecuteTrainingOperationInput.add_member(:training_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingSessionName, name: "trainingSessionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExecuteTrainingOperationInput.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "sequenceNumber", traits: {"smithy.api#required" => {}}))
    ExecuteTrainingOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    ExecuteTrainingOperationInput.add_member(:operation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationConfig, name: "operationConfig", traits: {"smithy.api#required" => {}}))
    ExecuteTrainingOperationInput.type = Types::ExecuteTrainingOperationInput
    ExecuteTrainingOperationOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "operationId", traits: {"smithy.api#required" => {}}))
    ExecuteTrainingOperationOutput.type = Types::ExecuteTrainingOperationOutput
    ForwardBackwardConfig.add_member(:loss_fn_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LossFnName, name: "lossFnName", traits: {"smithy.api#required" => {}}))
    ForwardBackwardConfig.add_member(:datum_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DatumList, name: "datumList", traits: {"smithy.api#required" => {}}))
    ForwardBackwardConfig.add_member(:loss_fn_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "lossFnConfig"))
    ForwardBackwardConfig.type = Types::ForwardBackwardConfig
    ForwardBackwardResult.add_member(:loss_fn_output_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lossFnOutputType"))
    ForwardBackwardResult.add_member(:loss_fn_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: TensorDataMapList, name: "lossFnOutputs"))
    ForwardBackwardResult.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsMap, name: "metrics"))
    ForwardBackwardResult.add_member(:token_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingTokenUsage, name: "tokenUsage"))
    ForwardBackwardResult.type = Types::ForwardBackwardResult
    ForwardConfig.add_member(:loss_fn_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LossFnName, name: "lossFnName", traits: {"smithy.api#required" => {}}))
    ForwardConfig.add_member(:datum_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DatumList, name: "datumList", traits: {"smithy.api#required" => {}}))
    ForwardConfig.add_member(:loss_fn_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "lossFnConfig"))
    ForwardConfig.type = Types::ForwardConfig
    ForwardResult.add_member(:loss_fn_output_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lossFnOutputType"))
    ForwardResult.add_member(:loss_fn_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: TensorDataMapList, name: "lossFnOutputs"))
    ForwardResult.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsMap, name: "metrics"))
    ForwardResult.add_member(:token_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingTokenUsage, name: "tokenUsage"))
    ForwardResult.type = Types::ForwardResult
    GetSamplingOperationResultInput.add_member(:training_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingSessionName, name: "trainingSessionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSamplingOperationResultInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "operationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSamplingOperationResultInput.type = Types::GetSamplingOperationResultInput
    GetSamplingOperationResultOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetSamplingOperationResultOutput.add_member(:operation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleOperationResult, name: "operationResult"))
    GetSamplingOperationResultOutput.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorDetails"))
    GetSamplingOperationResultOutput.type = Types::GetSamplingOperationResultOutput
    GetTrainingOperationResultInput.add_member(:training_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingSessionName, name: "trainingSessionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrainingOperationResultInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "operationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrainingOperationResultInput.type = Types::GetTrainingOperationResultInput
    GetTrainingOperationResultOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetTrainingOperationResultOutput.add_member(:operation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationResult, name: "operationResult"))
    GetTrainingOperationResultOutput.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorDetails"))
    GetTrainingOperationResultOutput.add_member(:token_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingTokenUsage, name: "tokenUsage"))
    GetTrainingOperationResultOutput.type = Types::GetTrainingOperationResultOutput
    IntegerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LoadStateConfig.add_member(:model_package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelPackageArn", traits: {"smithy.api#required" => {}}))
    LoadStateConfig.add_member(:load_optimizer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "loadOptimizer", traits: {"smithy.api#required" => {}}))
    LoadStateConfig.type = Types::LoadStateConfig
    LoadStateResult.type = Types::LoadStateResult
    LoadWeightsForSamplingConfig.add_member(:model_package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelPackageArn", traits: {"smithy.api#required" => {}}))
    LoadWeightsForSamplingConfig.type = Types::LoadWeightsForSamplingConfig
    LoadWeightsForSamplingResult.type = Types::LoadWeightsForSamplingResult
    LossFnName.add_member(:cross_entropy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_ENTROPY", traits: {"smithy.api#enumValue" => "cross_entropy"}))
    LossFnName.add_member(:importance_sampling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTANCE_SAMPLING", traits: {"smithy.api#enumValue" => "importance_sampling"}))
    LossFnName.add_member(:ppo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PPO", traits: {"smithy.api#enumValue" => "ppo"}))
    LossFnName.add_member(:cispo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CISPO", traits: {"smithy.api#enumValue" => "cispo"}))
    MetricsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    MetricsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "value"))
    ModelInput.add_member(:chunks, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodedTextChunkList, name: "chunks", traits: {"smithy.api#required" => {}}))
    ModelInput.type = Types::ModelInput
    OperationConfig.add_member(:forward, Types::OperationConfig::Forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardConfig, name: "forward"))
    OperationConfig.add_member(:forward_backward, Types::OperationConfig::ForwardBackward, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardBackwardConfig, name: "forwardBackward"))
    OperationConfig.add_member(:optimizer_step, Types::OperationConfig::OptimizerStep, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizerStepConfig, name: "optimizerStep"))
    OperationConfig.add_member(:save_weights, Types::OperationConfig::SaveWeights, ::Smithy::Schema::Shapes::MemberShape.new(target: SaveWeightsConfig, name: "saveWeights"))
    OperationConfig.add_member(:save_state, Types::OperationConfig::SaveState, ::Smithy::Schema::Shapes::MemberShape.new(target: SaveStateConfig, name: "saveState"))
    OperationConfig.add_member(:load_state, Types::OperationConfig::LoadState, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadStateConfig, name: "loadState"))
    OperationConfig.add_member(:unknown, Types::OperationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OperationConfig.type = Types::OperationConfig
    OperationResult.add_member(:forward, Types::OperationResult::Forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardResult, name: "forward"))
    OperationResult.add_member(:forward_backward, Types::OperationResult::ForwardBackward, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardBackwardResult, name: "forwardBackward"))
    OperationResult.add_member(:optimizer_step, Types::OperationResult::OptimizerStep, ::Smithy::Schema::Shapes::MemberShape.new(target: OptimizerStepResult, name: "optimizerStep"))
    OperationResult.add_member(:save_weights, Types::OperationResult::SaveWeights, ::Smithy::Schema::Shapes::MemberShape.new(target: SaveWeightsResult, name: "saveWeights"))
    OperationResult.add_member(:save_state, Types::OperationResult::SaveState, ::Smithy::Schema::Shapes::MemberShape.new(target: SaveStateResult, name: "saveState"))
    OperationResult.add_member(:load_state, Types::OperationResult::LoadState, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadStateResult, name: "loadState"))
    OperationResult.add_member(:unknown, Types::OperationResult::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OperationResult.type = Types::OperationResult
    OptimizerStepConfig.add_member(:adam_params_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AdamParamsConfig, name: "adamParamsConfig", traits: {"smithy.api#required" => {}}))
    OptimizerStepConfig.type = Types::OptimizerStepConfig
    OptimizerStepResult.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsMap, name: "metrics"))
    OptimizerStepResult.type = Types::OptimizerStepResult
    RequestStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    RequestStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    RequestStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    RequestStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    RequestStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "Skipped"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SampleConfig.add_member(:prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInput, name: "prompt", traits: {"smithy.api#required" => {}}))
    SampleConfig.add_member(:num_samples, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numSamples", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}, "smithy.api#required" => {}}))
    SampleConfig.add_member(:sampling_params, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingParams, name: "samplingParams", traits: {"smithy.api#required" => {}}))
    SampleConfig.add_member(:include_prompt_logprobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includePromptLogprobs", traits: {"smithy.api#default" => false}))
    SampleConfig.add_member(:topk_prompt_logprobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "topkPromptLogprobs", traits: {"smithy.api#default" => 0}))
    SampleConfig.add_member(:model_package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelPackageArn"))
    SampleConfig.type = Types::SampleConfig
    SampleOperationConfig.add_member(:sample, Types::SampleOperationConfig::Sample, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleConfig, name: "sample"))
    SampleOperationConfig.add_member(:compute_logprobs, Types::SampleOperationConfig::ComputeLogprobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeLogprobsConfig, name: "computeLogprobs"))
    SampleOperationConfig.add_member(:load_weights_for_sampling, Types::SampleOperationConfig::LoadWeightsForSampling, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadWeightsForSamplingConfig, name: "loadWeightsForSampling"))
    SampleOperationConfig.add_member(:unknown, Types::SampleOperationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SampleOperationConfig.type = Types::SampleOperationConfig
    SampleOperationResult.add_member(:sample, Types::SampleOperationResult::Sample, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleResponse, name: "sample"))
    SampleOperationResult.add_member(:compute_logprobs, Types::SampleOperationResult::ComputeLogprobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeLogprobsResult, name: "computeLogprobs"))
    SampleOperationResult.add_member(:load_weights_for_sampling, Types::SampleOperationResult::LoadWeightsForSampling, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadWeightsForSamplingResult, name: "loadWeightsForSampling"))
    SampleOperationResult.add_member(:unknown, Types::SampleOperationResult::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SampleOperationResult.type = Types::SampleOperationResult
    SampleResponse.add_member(:sequences, ::Smithy::Schema::Shapes::MemberShape.new(target: SampledSequenceList, name: "sequences", traits: {"smithy.api#required" => {}}))
    SampleResponse.add_member(:prompt_logprobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleList, name: "promptLogprobs"))
    SampleResponse.add_member(:topk_prompt_logprobs, ::Smithy::Schema::Shapes::MemberShape.new(target: TopkPromptLogprobsList, name: "topkPromptLogprobs"))
    SampleResponse.type = Types::SampleResponse
    SampleTokenUsage.add_member(:prefill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "prefill", traits: {"smithy.api#required" => {}}))
    SampleTokenUsage.add_member(:decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "decode", traits: {"smithy.api#required" => {}}))
    SampleTokenUsage.type = Types::SampleTokenUsage
    SampleTrainingSessionInput.add_member(:training_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingSessionName, name: "trainingSessionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SampleTrainingSessionInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    SampleTrainingSessionInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accept", traits: {"smithy.api#httpHeader" => "Accept"}))
    SampleTrainingSessionInput.add_member(:model_package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelPackageArn", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Model-Package"}))
    SampleTrainingSessionInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceBody, name: "body", traits: {"smithy.api#httpPayload" => {}}))
    SampleTrainingSessionInput[:http_payload] = :body
    SampleTrainingSessionInput[:http_payload_member] = SampleTrainingSessionInput.member(:body)
    SampleTrainingSessionInput.type = Types::SampleTrainingSessionInput
    SampleTrainingSessionOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    SampleTrainingSessionOutput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceBody, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SampleTrainingSessionOutput[:http_payload] = :body
    SampleTrainingSessionOutput[:http_payload_member] = SampleTrainingSessionOutput.member(:body)
    SampleTrainingSessionOutput.type = Types::SampleTrainingSessionOutput
    SampleTrainingSessionWithResponseStreamInput.add_member(:training_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingSessionName, name: "trainingSessionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SampleTrainingSessionWithResponseStreamInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    SampleTrainingSessionWithResponseStreamInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accept", traits: {"smithy.api#httpHeader" => "Accept"}))
    SampleTrainingSessionWithResponseStreamInput.add_member(:model_package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelPackageArn", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Model-Package"}))
    SampleTrainingSessionWithResponseStreamInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceBody, name: "body", traits: {"smithy.api#httpPayload" => {}}))
    SampleTrainingSessionWithResponseStreamInput[:http_payload] = :body
    SampleTrainingSessionWithResponseStreamInput[:http_payload_member] = SampleTrainingSessionWithResponseStreamInput.member(:body)
    SampleTrainingSessionWithResponseStreamInput.type = Types::SampleTrainingSessionWithResponseStreamInput
    SampleTrainingSessionWithResponseStreamOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    SampleTrainingSessionWithResponseStreamOutput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleResponseStream, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SampleTrainingSessionWithResponseStreamOutput[:http_payload] = :body
    SampleTrainingSessionWithResponseStreamOutput[:http_payload_member] = SampleTrainingSessionWithResponseStreamOutput.member(:body)
    SampleTrainingSessionWithResponseStreamOutput.type = Types::SampleTrainingSessionWithResponseStreamOutput
    SampledSequence.add_member(:stop_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StopReason, name: "stopReason", traits: {"smithy.api#required" => {}}))
    SampledSequence.add_member(:tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "tokens", traits: {"smithy.api#required" => {}}))
    SampledSequence.add_member(:logprobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleList, name: "logprobs"))
    SampledSequence.add_member(:token_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleTokenUsage, name: "tokenUsage"))
    SampledSequence.type = Types::SampledSequence
    SampledSequenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SampledSequence, name: "member"))
    SamplingParams.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxTokens", traits: {"smithy.api#range" => {"min" => 512, "max" => 131072}, "smithy.api#required" => {}}))
    SamplingParams.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "temperature", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 0, "max" => 2}}))
    SamplingParams.add_member(:top_k, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "topK", traits: {"smithy.api#default" => -1}))
    SamplingParams.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "topP", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 0, "max" => 1}}))
    SamplingParams.add_member(:seed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "seed"))
    SamplingParams.add_member(:stop, ::Smithy::Schema::Shapes::MemberShape.new(target: StopSequenceList, name: "stop"))
    SamplingParams.type = Types::SamplingParams
    SaveStateConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1024}}))
    SaveStateConfig.type = Types::SaveStateConfig
    SaveStateResult.add_member(:model_package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelPackageArn", traits: {"smithy.api#required" => {}}))
    SaveStateResult.type = Types::SaveStateResult
    SaveWeightsConfig.add_member(:merge_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "mergeWeights"))
    SaveWeightsConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1024}}))
    SaveWeightsConfig.type = Types::SaveWeightsConfig
    SaveWeightsResult.add_member(:model_package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelPackageArn"))
    SaveWeightsResult.type = Types::SaveWeightsResult
    StopReason.add_member(:stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP", traits: {"smithy.api#enumValue" => "stop"}))
    StopReason.add_member(:length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LENGTH", traits: {"smithy.api#enumValue" => "length"}))
    StopSequenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TensorData.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "data", traits: {"smithy.api#required" => {}}))
    TensorData.add_member(:dtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dtype", traits: {"smithy.api#required" => {}}))
    TensorData.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "shape"))
    TensorData.type = Types::TensorData
    TensorDataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TensorDataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TensorData, name: "value"))
    TensorDataMapList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TensorDataMap, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TokenLogprob.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "tokenId", traits: {"smithy.api#required" => {}}))
    TokenLogprob.add_member(:logprob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "logprob", traits: {"smithy.api#required" => {}}))
    TokenLogprob.type = Types::TokenLogprob
    TokenLogprobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenLogprob, name: "member"))
    TopkPromptLogprobsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenLogprobList, name: "member"))
    TrainingTokenUsage.add_member(:training_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "trainingTokens"))
    TrainingTokenUsage.type = Types::TrainingTokenUsage
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    LegoRouterService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakertrainingsessionruntime#LegoRouterService"
      service.name = "LegoRouterService"
      service.version = "2025-02-10"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMakerTrainingSessionRuntime", "arnNamespace" => "sagemaker", "endpointPrefix" => "training-session-runtime.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {"partitionSpecialCases" => {"aws" => [{"endpoint" => "https://training-session-runtime.sagemaker.{region}.{dualStackDnsSuffix}", "dualStack" => true}], "aws-cn" => [{"endpoint" => "https://training-session-runtime.sagemaker.{region}.{dualStackDnsSuffix}", "dualStack" => true}], "aws-us-gov" => [{"endpoint" => "https://training-session-runtime.sagemaker.{region}.{dualStackDnsSuffix}", "dualStack" => true}]}}, "aws.protocols#restJson1" => {"http" => ["h2", "http/1.1"]}, "smithy.api#title" => "SageMaker Training Session Runtime", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://training-session-runtime.sagemaker.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://training-session-runtime.sagemaker-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QQF9eEDAAAAAwX14QEF9eEC"}}
      service.add_operation(:execute_sampling_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakertrainingsessionruntime#ExecuteSamplingOperation"
        operation.name = "ExecuteSamplingOperation"
        operation.input = ExecuteSamplingOperationInput
        operation.output = ExecuteSamplingOperationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/training-sessions/{trainingSessionName}/sampling-operations", "method" => "POST"}, "smithy.test#smokeTests" => [{"id" => "ExecuteSamplingOperationSample", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "operationConfig" => {"sample" => {"prompt" => {"chunks" => [{"tokens" => [1, 2, 3], "type" => "encoded_text"}]}, "numSamples" => 1, "samplingParams" => {"maxTokens" => 512}}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}, {"id" => "ExecuteSamplingOperationComputeLogprobs", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "operationConfig" => {"computeLogprobs" => {"prompt" => {"chunks" => [{"tokens" => [1, 2, 3], "type" => "encoded_text"}]}}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}, {"id" => "ExecuteSamplingOperationLoadWeightsForSampling", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "operationConfig" => {"loadWeightsForSampling" => {"modelPackageArn" => "arn:aws:sagemaker:us-west-2:123456789012:model-package/smoke-test/1"}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:execute_training_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakertrainingsessionruntime#ExecuteTrainingOperation"
        operation.name = "ExecuteTrainingOperation"
        operation.input = ExecuteTrainingOperationInput
        operation.output = ExecuteTrainingOperationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/training-sessions/{trainingSessionName}/operations", "method" => "POST"}, "smithy.test#smokeTests" => [{"id" => "ExecuteTrainingOperationForward", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "sequenceNumber" => 1, "operationConfig" => {"forward" => {"lossFnName" => "cross_entropy", "datumList" => [{"modelInput" => {"chunks" => [{"tokens" => [1, 2, 3], "type" => "encoded_text"}]}}]}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}, {"id" => "ExecuteTrainingOperationForwardBackward", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "sequenceNumber" => 1, "operationConfig" => {"forwardBackward" => {"lossFnName" => "importance_sampling", "datumList" => [{"modelInput" => {"chunks" => [{"tokens" => [1, 2, 3], "type" => "encoded_text"}]}}]}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}, {"id" => "ExecuteTrainingOperationOptimizerStep", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "sequenceNumber" => 1, "operationConfig" => {"optimizerStep" => {"adamParamsConfig" => {"learningRate" => 0.001}}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}, {"id" => "ExecuteTrainingOperationSaveWeights", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "sequenceNumber" => 1, "operationConfig" => {"saveWeights" => {}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}, {"id" => "ExecuteTrainingOperationSaveState", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "sequenceNumber" => 1, "operationConfig" => {"saveState" => {}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}, {"id" => "ExecuteTrainingOperationLoadState", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "sequenceNumber" => 1, "operationConfig" => {"loadState" => {"modelPackageArn" => "arn:aws:sagemaker:us-west-2:123456789012:model-package/smoke-test", "loadOptimizer" => true}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_sampling_operation_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakertrainingsessionruntime#GetSamplingOperationResult"
        operation.name = "GetSamplingOperationResult"
        operation.input = GetSamplingOperationResultInput
        operation.output = GetSamplingOperationResultOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/training-sessions/{trainingSessionName}/sampling-operations/{operationId}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetSamplingOperationResultFailure", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "operationId" => "smoke-test-nonexistent-operation"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_training_operation_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakertrainingsessionruntime#GetTrainingOperationResult"
        operation.name = "GetTrainingOperationResult"
        operation.input = GetTrainingOperationResultInput
        operation.output = GetTrainingOperationResultOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/training-sessions/{trainingSessionName}/operations/{operationId}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTrainingOperationResultFailure", "params" => {"trainingSessionName" => "smoke-test-nonexistent-session", "operationId" => "smoke-test-nonexistent-operation"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}, "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:sample_training_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakertrainingsessionruntime#SampleTrainingSession"
        operation.name = "SampleTrainingSession"
        operation.input = SampleTrainingSessionInput
        operation.output = SampleTrainingSessionOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/training-sessions/{trainingSessionName}/sample", "method" => "POST"}}
      end)
      service.add_operation(:sample_training_session_with_response_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakertrainingsessionruntime#SampleTrainingSessionWithResponseStream"
        operation.name = "SampleTrainingSessionWithResponseStream"
        operation.input = SampleTrainingSessionWithResponseStreamInput
        operation.output = SampleTrainingSessionWithResponseStreamOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/training-sessions/{trainingSessionName}/sample-with-response-stream", "method" => "POST"}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
