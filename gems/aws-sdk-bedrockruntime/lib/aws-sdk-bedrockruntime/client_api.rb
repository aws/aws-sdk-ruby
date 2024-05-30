# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AnyToolChoice = Shapes::StructureShape.new(name: 'AnyToolChoice')
    AutoToolChoice = Shapes::StructureShape.new(name: 'AutoToolChoice')
    Body = Shapes::BlobShape.new(name: 'Body')
    ContentBlock = Shapes::UnionShape.new(name: 'ContentBlock')
    ContentBlockDelta = Shapes::UnionShape.new(name: 'ContentBlockDelta')
    ContentBlockDeltaEvent = Shapes::StructureShape.new(name: 'ContentBlockDeltaEvent')
    ContentBlockStart = Shapes::UnionShape.new(name: 'ContentBlockStart')
    ContentBlockStartEvent = Shapes::StructureShape.new(name: 'ContentBlockStartEvent')
    ContentBlockStopEvent = Shapes::StructureShape.new(name: 'ContentBlockStopEvent')
    ContentBlocks = Shapes::ListShape.new(name: 'ContentBlocks')
    ConversationRole = Shapes::StringShape.new(name: 'ConversationRole')
    ConversationalModelId = Shapes::StringShape.new(name: 'ConversationalModelId')
    ConverseMetrics = Shapes::StructureShape.new(name: 'ConverseMetrics')
    ConverseOutput = Shapes::UnionShape.new(name: 'ConverseOutput')
    ConverseRequest = Shapes::StructureShape.new(name: 'ConverseRequest')
    ConverseRequestAdditionalModelResponseFieldPathsList = Shapes::ListShape.new(name: 'ConverseRequestAdditionalModelResponseFieldPathsList')
    ConverseRequestAdditionalModelResponseFieldPathsListMemberString = Shapes::StringShape.new(name: 'ConverseRequestAdditionalModelResponseFieldPathsListMemberString')
    ConverseResponse = Shapes::StructureShape.new(name: 'ConverseResponse')
    ConverseStreamMetadataEvent = Shapes::StructureShape.new(name: 'ConverseStreamMetadataEvent')
    ConverseStreamMetrics = Shapes::StructureShape.new(name: 'ConverseStreamMetrics')
    ConverseStreamOutput = Shapes::StructureShape.new(name: 'ConverseStreamOutput')
    ConverseStreamRequest = Shapes::StructureShape.new(name: 'ConverseStreamRequest')
    ConverseStreamRequestAdditionalModelResponseFieldPathsList = Shapes::ListShape.new(name: 'ConverseStreamRequestAdditionalModelResponseFieldPathsList')
    ConverseStreamRequestAdditionalModelResponseFieldPathsListMemberString = Shapes::StringShape.new(name: 'ConverseStreamRequestAdditionalModelResponseFieldPathsListMemberString')
    ConverseStreamResponse = Shapes::StructureShape.new(name: 'ConverseStreamResponse')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    GuardrailIdentifier = Shapes::StringShape.new(name: 'GuardrailIdentifier')
    GuardrailVersion = Shapes::StringShape.new(name: 'GuardrailVersion')
    ImageBlock = Shapes::StructureShape.new(name: 'ImageBlock')
    ImageFormat = Shapes::StringShape.new(name: 'ImageFormat')
    ImageSource = Shapes::UnionShape.new(name: 'ImageSource')
    ImageSourceBytesBlob = Shapes::BlobShape.new(name: 'ImageSourceBytesBlob')
    InferenceConfiguration = Shapes::StructureShape.new(name: 'InferenceConfiguration')
    InferenceConfigurationMaxTokensInteger = Shapes::IntegerShape.new(name: 'InferenceConfigurationMaxTokensInteger')
    InferenceConfigurationStopSequencesList = Shapes::ListShape.new(name: 'InferenceConfigurationStopSequencesList')
    InferenceConfigurationTemperatureFloat = Shapes::FloatShape.new(name: 'InferenceConfigurationTemperatureFloat')
    InferenceConfigurationTopPFloat = Shapes::FloatShape.new(name: 'InferenceConfigurationTopPFloat')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvokeModelIdentifier = Shapes::StringShape.new(name: 'InvokeModelIdentifier')
    InvokeModelRequest = Shapes::StructureShape.new(name: 'InvokeModelRequest')
    InvokeModelResponse = Shapes::StructureShape.new(name: 'InvokeModelResponse')
    InvokeModelWithResponseStreamRequest = Shapes::StructureShape.new(name: 'InvokeModelWithResponseStreamRequest')
    InvokeModelWithResponseStreamResponse = Shapes::StructureShape.new(name: 'InvokeModelWithResponseStreamResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageStartEvent = Shapes::StructureShape.new(name: 'MessageStartEvent')
    MessageStopEvent = Shapes::StructureShape.new(name: 'MessageStopEvent')
    Messages = Shapes::ListShape.new(name: 'Messages')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    ModelErrorException = Shapes::StructureShape.new(name: 'ModelErrorException')
    ModelNotReadyException = Shapes::StructureShape.new(name: 'ModelNotReadyException')
    ModelStreamErrorException = Shapes::StructureShape.new(name: 'ModelStreamErrorException')
    ModelTimeoutException = Shapes::StructureShape.new(name: 'ModelTimeoutException')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    PartBody = Shapes::BlobShape.new(name: 'PartBody')
    PayloadPart = Shapes::StructureShape.new(name: 'PayloadPart')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SpecificToolChoice = Shapes::StructureShape.new(name: 'SpecificToolChoice')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    StopReason = Shapes::StringShape.new(name: 'StopReason')
    String = Shapes::StringShape.new(name: 'String')
    SystemContentBlock = Shapes::UnionShape.new(name: 'SystemContentBlock')
    SystemContentBlocks = Shapes::ListShape.new(name: 'SystemContentBlocks')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TokenUsage = Shapes::StructureShape.new(name: 'TokenUsage')
    TokenUsageInputTokensInteger = Shapes::IntegerShape.new(name: 'TokenUsageInputTokensInteger')
    TokenUsageOutputTokensInteger = Shapes::IntegerShape.new(name: 'TokenUsageOutputTokensInteger')
    TokenUsageTotalTokensInteger = Shapes::IntegerShape.new(name: 'TokenUsageTotalTokensInteger')
    Tool = Shapes::UnionShape.new(name: 'Tool')
    ToolChoice = Shapes::UnionShape.new(name: 'ToolChoice')
    ToolConfiguration = Shapes::StructureShape.new(name: 'ToolConfiguration')
    ToolConfigurationToolsList = Shapes::ListShape.new(name: 'ToolConfigurationToolsList')
    ToolInputSchema = Shapes::UnionShape.new(name: 'ToolInputSchema')
    ToolName = Shapes::StringShape.new(name: 'ToolName')
    ToolResultBlock = Shapes::StructureShape.new(name: 'ToolResultBlock')
    ToolResultContentBlock = Shapes::UnionShape.new(name: 'ToolResultContentBlock')
    ToolResultContentBlocks = Shapes::ListShape.new(name: 'ToolResultContentBlocks')
    ToolResultStatus = Shapes::StringShape.new(name: 'ToolResultStatus')
    ToolSpecification = Shapes::StructureShape.new(name: 'ToolSpecification')
    ToolUseBlock = Shapes::StructureShape.new(name: 'ToolUseBlock')
    ToolUseBlockDelta = Shapes::StructureShape.new(name: 'ToolUseBlockDelta')
    ToolUseBlockStart = Shapes::StructureShape.new(name: 'ToolUseBlockStart')
    ToolUseId = Shapes::StringShape.new(name: 'ToolUseId')
    Trace = Shapes::StringShape.new(name: 'Trace')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AnyToolChoice.struct_class = Types::AnyToolChoice

    AutoToolChoice.struct_class = Types::AutoToolChoice

    ContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ContentBlock.add_member(:image, Shapes::ShapeRef.new(shape: ImageBlock, location_name: "image"))
    ContentBlock.add_member(:tool_use, Shapes::ShapeRef.new(shape: ToolUseBlock, location_name: "toolUse"))
    ContentBlock.add_member(:tool_result, Shapes::ShapeRef.new(shape: ToolResultBlock, location_name: "toolResult"))
    ContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentBlock.add_member_subclass(:text, Types::ContentBlock::Text)
    ContentBlock.add_member_subclass(:image, Types::ContentBlock::Image)
    ContentBlock.add_member_subclass(:tool_use, Types::ContentBlock::ToolUse)
    ContentBlock.add_member_subclass(:tool_result, Types::ContentBlock::ToolResult)
    ContentBlock.add_member_subclass(:unknown, Types::ContentBlock::Unknown)
    ContentBlock.struct_class = Types::ContentBlock

    ContentBlockDelta.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ContentBlockDelta.add_member(:tool_use, Shapes::ShapeRef.new(shape: ToolUseBlockDelta, location_name: "toolUse"))
    ContentBlockDelta.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentBlockDelta.add_member_subclass(:text, Types::ContentBlockDelta::Text)
    ContentBlockDelta.add_member_subclass(:tool_use, Types::ContentBlockDelta::ToolUse)
    ContentBlockDelta.add_member_subclass(:unknown, Types::ContentBlockDelta::Unknown)
    ContentBlockDelta.struct_class = Types::ContentBlockDelta

    ContentBlockDeltaEvent.add_member(:delta, Shapes::ShapeRef.new(shape: ContentBlockDelta, required: true, location_name: "delta"))
    ContentBlockDeltaEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: NonNegativeInteger, required: true, location_name: "contentBlockIndex"))
    ContentBlockDeltaEvent.struct_class = Types::ContentBlockDeltaEvent

    ContentBlockStart.add_member(:tool_use, Shapes::ShapeRef.new(shape: ToolUseBlockStart, location_name: "toolUse"))
    ContentBlockStart.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentBlockStart.add_member_subclass(:tool_use, Types::ContentBlockStart::ToolUse)
    ContentBlockStart.add_member_subclass(:unknown, Types::ContentBlockStart::Unknown)
    ContentBlockStart.struct_class = Types::ContentBlockStart

    ContentBlockStartEvent.add_member(:start, Shapes::ShapeRef.new(shape: ContentBlockStart, required: true, location_name: "start"))
    ContentBlockStartEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: NonNegativeInteger, required: true, location_name: "contentBlockIndex"))
    ContentBlockStartEvent.struct_class = Types::ContentBlockStartEvent

    ContentBlockStopEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: NonNegativeInteger, required: true, location_name: "contentBlockIndex"))
    ContentBlockStopEvent.struct_class = Types::ContentBlockStopEvent

    ContentBlocks.member = Shapes::ShapeRef.new(shape: ContentBlock)

    ConverseMetrics.add_member(:latency_ms, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "latencyMs"))
    ConverseMetrics.struct_class = Types::ConverseMetrics

    ConverseOutput.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ConverseOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConverseOutput.add_member_subclass(:message, Types::ConverseOutput::Message)
    ConverseOutput.add_member_subclass(:unknown, Types::ConverseOutput::Unknown)
    ConverseOutput.struct_class = Types::ConverseOutput

    ConverseRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ConversationalModelId, required: true, location: "uri", location_name: "modelId"))
    ConverseRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, required: true, location_name: "messages"))
    ConverseRequest.add_member(:system, Shapes::ShapeRef.new(shape: SystemContentBlocks, location_name: "system"))
    ConverseRequest.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfig"))
    ConverseRequest.add_member(:tool_config, Shapes::ShapeRef.new(shape: ToolConfiguration, location_name: "toolConfig"))
    ConverseRequest.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelRequestFields"))
    ConverseRequest.add_member(:additional_model_response_field_paths, Shapes::ShapeRef.new(shape: ConverseRequestAdditionalModelResponseFieldPathsList, location_name: "additionalModelResponseFieldPaths"))
    ConverseRequest.struct_class = Types::ConverseRequest

    ConverseRequestAdditionalModelResponseFieldPathsList.member = Shapes::ShapeRef.new(shape: ConverseRequestAdditionalModelResponseFieldPathsListMemberString)

    ConverseResponse.add_member(:output, Shapes::ShapeRef.new(shape: ConverseOutput, required: true, location_name: "output"))
    ConverseResponse.add_member(:stop_reason, Shapes::ShapeRef.new(shape: StopReason, required: true, location_name: "stopReason"))
    ConverseResponse.add_member(:usage, Shapes::ShapeRef.new(shape: TokenUsage, required: true, location_name: "usage"))
    ConverseResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: ConverseMetrics, required: true, location_name: "metrics"))
    ConverseResponse.add_member(:additional_model_response_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelResponseFields"))
    ConverseResponse.struct_class = Types::ConverseResponse

    ConverseStreamMetadataEvent.add_member(:usage, Shapes::ShapeRef.new(shape: TokenUsage, required: true, location_name: "usage"))
    ConverseStreamMetadataEvent.add_member(:metrics, Shapes::ShapeRef.new(shape: ConverseStreamMetrics, required: true, location_name: "metrics"))
    ConverseStreamMetadataEvent.struct_class = Types::ConverseStreamMetadataEvent

    ConverseStreamMetrics.add_member(:latency_ms, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "latencyMs"))
    ConverseStreamMetrics.struct_class = Types::ConverseStreamMetrics

    ConverseStreamOutput.add_member(:message_start, Shapes::ShapeRef.new(shape: MessageStartEvent, event: true, location_name: "messageStart"))
    ConverseStreamOutput.add_member(:content_block_start, Shapes::ShapeRef.new(shape: ContentBlockStartEvent, event: true, location_name: "contentBlockStart"))
    ConverseStreamOutput.add_member(:content_block_delta, Shapes::ShapeRef.new(shape: ContentBlockDeltaEvent, event: true, location_name: "contentBlockDelta"))
    ConverseStreamOutput.add_member(:content_block_stop, Shapes::ShapeRef.new(shape: ContentBlockStopEvent, event: true, location_name: "contentBlockStop"))
    ConverseStreamOutput.add_member(:message_stop, Shapes::ShapeRef.new(shape: MessageStopEvent, event: true, location_name: "messageStop"))
    ConverseStreamOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: ConverseStreamMetadataEvent, event: true, location_name: "metadata"))
    ConverseStreamOutput.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    ConverseStreamOutput.add_member(:model_stream_error_exception, Shapes::ShapeRef.new(shape: ModelStreamErrorException, location_name: "modelStreamErrorException"))
    ConverseStreamOutput.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    ConverseStreamOutput.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    ConverseStreamOutput.struct_class = Types::ConverseStreamOutput

    ConverseStreamRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ConversationalModelId, required: true, location: "uri", location_name: "modelId"))
    ConverseStreamRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, required: true, location_name: "messages"))
    ConverseStreamRequest.add_member(:system, Shapes::ShapeRef.new(shape: SystemContentBlocks, location_name: "system"))
    ConverseStreamRequest.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfig"))
    ConverseStreamRequest.add_member(:tool_config, Shapes::ShapeRef.new(shape: ToolConfiguration, location_name: "toolConfig"))
    ConverseStreamRequest.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelRequestFields"))
    ConverseStreamRequest.add_member(:additional_model_response_field_paths, Shapes::ShapeRef.new(shape: ConverseStreamRequestAdditionalModelResponseFieldPathsList, location_name: "additionalModelResponseFieldPaths"))
    ConverseStreamRequest.struct_class = Types::ConverseStreamRequest

    ConverseStreamRequestAdditionalModelResponseFieldPathsList.member = Shapes::ShapeRef.new(shape: ConverseStreamRequestAdditionalModelResponseFieldPathsListMemberString)

    ConverseStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: ConverseStreamOutput, eventstream: true, location_name: "stream"))
    ConverseStreamResponse.struct_class = Types::ConverseStreamResponse
    ConverseStreamResponse[:payload] = :stream
    ConverseStreamResponse[:payload_member] = ConverseStreamResponse.member(:stream)

    ImageBlock.add_member(:format, Shapes::ShapeRef.new(shape: ImageFormat, required: true, location_name: "format"))
    ImageBlock.add_member(:source, Shapes::ShapeRef.new(shape: ImageSource, required: true, location_name: "source"))
    ImageBlock.struct_class = Types::ImageBlock

    ImageSource.add_member(:bytes, Shapes::ShapeRef.new(shape: ImageSourceBytesBlob, location_name: "bytes"))
    ImageSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ImageSource.add_member_subclass(:bytes, Types::ImageSource::Bytes)
    ImageSource.add_member_subclass(:unknown, Types::ImageSource::Unknown)
    ImageSource.struct_class = Types::ImageSource

    InferenceConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: InferenceConfigurationMaxTokensInteger, location_name: "maxTokens"))
    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: InferenceConfigurationTemperatureFloat, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: InferenceConfigurationTopPFloat, location_name: "topP"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: InferenceConfigurationStopSequencesList, location_name: "stopSequences"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    InferenceConfigurationStopSequencesList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvokeModelRequest.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "body"))
    InvokeModelRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeModelRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Accept"))
    InvokeModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: InvokeModelIdentifier, required: true, location: "uri", location_name: "modelId"))
    InvokeModelRequest.add_member(:trace, Shapes::ShapeRef.new(shape: Trace, location: "header", location_name: "X-Amzn-Bedrock-Trace"))
    InvokeModelRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location: "header", location_name: "X-Amzn-Bedrock-GuardrailIdentifier"))
    InvokeModelRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location: "header", location_name: "X-Amzn-Bedrock-GuardrailVersion"))
    InvokeModelRequest.struct_class = Types::InvokeModelRequest
    InvokeModelRequest[:payload] = :body
    InvokeModelRequest[:payload_member] = InvokeModelRequest.member(:body)

    InvokeModelResponse.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "body"))
    InvokeModelResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "Content-Type"))
    InvokeModelResponse.struct_class = Types::InvokeModelResponse
    InvokeModelResponse[:payload] = :body
    InvokeModelResponse[:payload_member] = InvokeModelResponse.member(:body)

    InvokeModelWithResponseStreamRequest.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "body"))
    InvokeModelWithResponseStreamRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeModelWithResponseStreamRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "X-Amzn-Bedrock-Accept"))
    InvokeModelWithResponseStreamRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: InvokeModelIdentifier, required: true, location: "uri", location_name: "modelId"))
    InvokeModelWithResponseStreamRequest.add_member(:trace, Shapes::ShapeRef.new(shape: Trace, location: "header", location_name: "X-Amzn-Bedrock-Trace"))
    InvokeModelWithResponseStreamRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location: "header", location_name: "X-Amzn-Bedrock-GuardrailIdentifier"))
    InvokeModelWithResponseStreamRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location: "header", location_name: "X-Amzn-Bedrock-GuardrailVersion"))
    InvokeModelWithResponseStreamRequest.struct_class = Types::InvokeModelWithResponseStreamRequest
    InvokeModelWithResponseStreamRequest[:payload] = :body
    InvokeModelWithResponseStreamRequest[:payload_member] = InvokeModelWithResponseStreamRequest.member(:body)

    InvokeModelWithResponseStreamResponse.add_member(:body, Shapes::ShapeRef.new(shape: ResponseStream, required: true, eventstream: true, location_name: "body"))
    InvokeModelWithResponseStreamResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "X-Amzn-Bedrock-Content-Type"))
    InvokeModelWithResponseStreamResponse.struct_class = Types::InvokeModelWithResponseStreamResponse
    InvokeModelWithResponseStreamResponse[:payload] = :body
    InvokeModelWithResponseStreamResponse[:payload_member] = InvokeModelWithResponseStreamResponse.member(:body)

    Message.add_member(:role, Shapes::ShapeRef.new(shape: ConversationRole, required: true, location_name: "role"))
    Message.add_member(:content, Shapes::ShapeRef.new(shape: ContentBlocks, required: true, location_name: "content"))
    Message.struct_class = Types::Message

    MessageStartEvent.add_member(:role, Shapes::ShapeRef.new(shape: ConversationRole, required: true, location_name: "role"))
    MessageStartEvent.struct_class = Types::MessageStartEvent

    MessageStopEvent.add_member(:stop_reason, Shapes::ShapeRef.new(shape: StopReason, required: true, location_name: "stopReason"))
    MessageStopEvent.add_member(:additional_model_response_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelResponseFields"))
    MessageStopEvent.struct_class = Types::MessageStopEvent

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    ModelErrorException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelErrorException.add_member(:original_status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "originalStatusCode"))
    ModelErrorException.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "resourceName"))
    ModelErrorException.struct_class = Types::ModelErrorException

    ModelNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelNotReadyException.struct_class = Types::ModelNotReadyException

    ModelStreamErrorException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelStreamErrorException.add_member(:original_status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "originalStatusCode"))
    ModelStreamErrorException.add_member(:original_message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "originalMessage"))
    ModelStreamErrorException.struct_class = Types::ModelStreamErrorException

    ModelTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelTimeoutException.struct_class = Types::ModelTimeoutException

    PayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBody, location_name: "bytes"))
    PayloadPart.struct_class = Types::PayloadPart

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseStream.add_member(:chunk, Shapes::ShapeRef.new(shape: PayloadPart, event: true, location_name: "chunk"))
    ResponseStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    ResponseStream.add_member(:model_stream_error_exception, Shapes::ShapeRef.new(shape: ModelStreamErrorException, location_name: "modelStreamErrorException"))
    ResponseStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    ResponseStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    ResponseStream.add_member(:model_timeout_exception, Shapes::ShapeRef.new(shape: ModelTimeoutException, location_name: "modelTimeoutException"))
    ResponseStream.struct_class = Types::ResponseStream

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SpecificToolChoice.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    SpecificToolChoice.struct_class = Types::SpecificToolChoice

    SystemContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "text"))
    SystemContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SystemContentBlock.add_member_subclass(:text, Types::SystemContentBlock::Text)
    SystemContentBlock.add_member_subclass(:unknown, Types::SystemContentBlock::Unknown)
    SystemContentBlock.struct_class = Types::SystemContentBlock

    SystemContentBlocks.member = Shapes::ShapeRef.new(shape: SystemContentBlock)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TokenUsage.add_member(:input_tokens, Shapes::ShapeRef.new(shape: TokenUsageInputTokensInteger, required: true, location_name: "inputTokens"))
    TokenUsage.add_member(:output_tokens, Shapes::ShapeRef.new(shape: TokenUsageOutputTokensInteger, required: true, location_name: "outputTokens"))
    TokenUsage.add_member(:total_tokens, Shapes::ShapeRef.new(shape: TokenUsageTotalTokensInteger, required: true, location_name: "totalTokens"))
    TokenUsage.struct_class = Types::TokenUsage

    Tool.add_member(:tool_spec, Shapes::ShapeRef.new(shape: ToolSpecification, location_name: "toolSpec"))
    Tool.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Tool.add_member_subclass(:tool_spec, Types::Tool::ToolSpec)
    Tool.add_member_subclass(:unknown, Types::Tool::Unknown)
    Tool.struct_class = Types::Tool

    ToolChoice.add_member(:auto, Shapes::ShapeRef.new(shape: AutoToolChoice, location_name: "auto"))
    ToolChoice.add_member(:any, Shapes::ShapeRef.new(shape: AnyToolChoice, location_name: "any"))
    ToolChoice.add_member(:tool, Shapes::ShapeRef.new(shape: SpecificToolChoice, location_name: "tool"))
    ToolChoice.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolChoice.add_member_subclass(:auto, Types::ToolChoice::Auto)
    ToolChoice.add_member_subclass(:any, Types::ToolChoice::Any)
    ToolChoice.add_member_subclass(:tool, Types::ToolChoice::Tool)
    ToolChoice.add_member_subclass(:unknown, Types::ToolChoice::Unknown)
    ToolChoice.struct_class = Types::ToolChoice

    ToolConfiguration.add_member(:tools, Shapes::ShapeRef.new(shape: ToolConfigurationToolsList, required: true, location_name: "tools"))
    ToolConfiguration.add_member(:tool_choice, Shapes::ShapeRef.new(shape: ToolChoice, location_name: "toolChoice"))
    ToolConfiguration.struct_class = Types::ToolConfiguration

    ToolConfigurationToolsList.member = Shapes::ShapeRef.new(shape: Tool)

    ToolInputSchema.add_member(:json, Shapes::ShapeRef.new(shape: Document, location_name: "json"))
    ToolInputSchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolInputSchema.add_member_subclass(:json, Types::ToolInputSchema::Json)
    ToolInputSchema.add_member_subclass(:unknown, Types::ToolInputSchema::Unknown)
    ToolInputSchema.struct_class = Types::ToolInputSchema

    ToolResultBlock.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: ToolUseId, required: true, location_name: "toolUseId"))
    ToolResultBlock.add_member(:content, Shapes::ShapeRef.new(shape: ToolResultContentBlocks, required: true, location_name: "content"))
    ToolResultBlock.add_member(:status, Shapes::ShapeRef.new(shape: ToolResultStatus, location_name: "status"))
    ToolResultBlock.struct_class = Types::ToolResultBlock

    ToolResultContentBlock.add_member(:json, Shapes::ShapeRef.new(shape: Document, location_name: "json"))
    ToolResultContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ToolResultContentBlock.add_member(:image, Shapes::ShapeRef.new(shape: ImageBlock, location_name: "image"))
    ToolResultContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolResultContentBlock.add_member_subclass(:json, Types::ToolResultContentBlock::Json)
    ToolResultContentBlock.add_member_subclass(:text, Types::ToolResultContentBlock::Text)
    ToolResultContentBlock.add_member_subclass(:image, Types::ToolResultContentBlock::Image)
    ToolResultContentBlock.add_member_subclass(:unknown, Types::ToolResultContentBlock::Unknown)
    ToolResultContentBlock.struct_class = Types::ToolResultContentBlock

    ToolResultContentBlocks.member = Shapes::ShapeRef.new(shape: ToolResultContentBlock)

    ToolSpecification.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    ToolSpecification.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ToolSpecification.add_member(:input_schema, Shapes::ShapeRef.new(shape: ToolInputSchema, required: true, location_name: "inputSchema"))
    ToolSpecification.struct_class = Types::ToolSpecification

    ToolUseBlock.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: ToolUseId, required: true, location_name: "toolUseId"))
    ToolUseBlock.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    ToolUseBlock.add_member(:input, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "input"))
    ToolUseBlock.struct_class = Types::ToolUseBlock

    ToolUseBlockDelta.add_member(:input, Shapes::ShapeRef.new(shape: String, required: true, location_name: "input"))
    ToolUseBlockDelta.struct_class = Types::ToolUseBlockDelta

    ToolUseBlockStart.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: ToolUseId, required: true, location_name: "toolUseId"))
    ToolUseBlockStart.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    ToolUseBlockStart.struct_class = Types::ToolUseBlockStart

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-30"

      api.metadata = {
        "apiVersion" => "2023-09-30",
        "endpointPrefix" => "bedrock-runtime",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Bedrock Runtime",
        "serviceId" => "Bedrock Runtime",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-runtime-2023-09-30",
      }

      api.add_operation(:converse, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Converse"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/converse"
        o.input = Shapes::ShapeRef.new(shape: ConverseRequest)
        o.output = Shapes::ShapeRef.new(shape: ConverseResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)

      api.add_operation(:converse_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConverseStream"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/converse-stream"
        o.input = Shapes::ShapeRef.new(shape: ConverseStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: ConverseStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)

      api.add_operation(:invoke_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeModel"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/invoke"
        o.input = Shapes::ShapeRef.new(shape: InvokeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)

      api.add_operation(:invoke_model_with_response_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeModelWithResponseStream"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/invoke-with-response-stream"
        o.input = Shapes::ShapeRef.new(shape: InvokeModelWithResponseStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeModelWithResponseStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ModelStreamErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)
    end

  end
end
