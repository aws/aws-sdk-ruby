# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AsyncBodyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sagemakerruntime#AsyncBodyBlob", name: "AsyncBodyBlob", traits: {"smithy.api#length" => {"min" => 0, "max" => 128000}, "smithy.api#sensitive" => {}})
    BodyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sagemakerruntime#BodyBlob", name: "BodyBlob", traits: {"smithy.api#length" => {"min" => 0, "max" => 6291456}, "smithy.api#sensitive" => {}})
    CustomAttributesHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#CustomAttributesHeader", name: "CustomAttributesHeader", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\p{ASCII}*$", "smithy.api#sensitive" => {}})
    EnableExplanationsHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#EnableExplanationsHeader", name: "EnableExplanationsHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*"})
    EndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#EndpointName", name: "EndpointName", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#ErrorCode", name: "ErrorCode")
    FilenameHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#FilenameHeader", name: "FilenameHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!.*\\..*\\.)[a-zA-Z0-9][a-zA-Z0-9-_\\.]*$"})
    Header = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#Header", name: "Header", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\p{ASCII}*$"})
    InferenceComponentHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#InferenceComponentHeader", name: "InferenceComponentHeader", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9]([\\-a-zA-Z0-9]*[a-zA-Z0-9])?$"})
    InferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#InferenceId", name: "InferenceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\A\\S[\\p{Print}]*\\z$"})
    InputLocationHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#InputLocationHeader", name: "InputLocationHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(https|s3)://([^/]+)/?(.*)$"})
    InternalDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InternalDependencyException", name: "InternalDependencyException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 530})
    InternalFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InternalFailure", name: "InternalFailure", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternalStreamFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InternalStreamFailure", name: "InternalStreamFailure", traits: {"smithy.api#error" => "server"})
    InvocationTimeoutSecondsHeader = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakerruntime#InvocationTimeoutSecondsHeader", name: "InvocationTimeoutSecondsHeader", traits: {"smithy.api#range" => {"min" => 1, "max" => 3600}})
    InvokeEndpointAsyncInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InvokeEndpointAsyncInput", name: "InvokeEndpointAsyncInput")
    InvokeEndpointAsyncOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InvokeEndpointAsyncOutput", name: "InvokeEndpointAsyncOutput")
    InvokeEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InvokeEndpointInput", name: "InvokeEndpointInput")
    InvokeEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InvokeEndpointOutput", name: "InvokeEndpointOutput")
    InvokeEndpointWithResponseStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InvokeEndpointWithResponseStreamInput", name: "InvokeEndpointWithResponseStreamInput")
    InvokeEndpointWithResponseStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#InvokeEndpointWithResponseStreamOutput", name: "InvokeEndpointWithResponseStreamOutput")
    LogStreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#LogStreamArn", name: "LogStreamArn")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ModelError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#ModelError", name: "ModelError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    ModelNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#ModelNotReadyException", name: "ModelNotReadyException", traits: {"aws.protocols#awsQueryError" => {"code" => "ModelNotReadyException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ModelStreamError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#ModelStreamError", name: "ModelStreamError", traits: {"smithy.api#error" => "client"})
    NewSessionResponseHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#NewSessionResponseHeader", name: "NewSessionResponseHeader", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*;\\sExpires=[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z$"})
    PartBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sagemakerruntime#PartBlob", name: "PartBlob", traits: {"smithy.api#sensitive" => {}})
    PayloadPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#PayloadPart", name: "PayloadPart")
    PrefixAwareIdHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#PrefixAwareIdHeader", name: "PrefixAwareIdHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\A\\S[\\p{Print}]*\\z$"})
    RequestTTLSecondsHeader = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakerruntime#RequestTTLSecondsHeader", name: "RequestTTLSecondsHeader", traits: {"smithy.api#range" => {"min" => 60, "max" => 21600}})
    ResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.sagemakerruntime#ResponseStream", name: "ResponseStream", traits: {"smithy.api#streaming" => {}})
    S3OutputPathExtensionHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#S3OutputPathExtensionHeader", name: "S3OutputPathExtensionHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^(?!s3:|https:)[a-zA-Z0-9!_.*'()/-]+$"})
    ServiceUnavailable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#ServiceUnavailable", name: "ServiceUnavailable", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionIdHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#SessionIdHeader", name: "SessionIdHeader", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    SessionIdOrNewSessionConstantHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#SessionIdOrNewSessionConstantHeader", name: "SessionIdOrNewSessionConstantHeader", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(NEW_SESSION)$|^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    StatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakerruntime#StatusCode", name: "StatusCode")
    TargetContainerHostnameHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#TargetContainerHostnameHeader", name: "TargetContainerHostnameHeader", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    TargetModelHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#TargetModelHeader", name: "TargetModelHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\A\\S[\\p{Print}]*\\z$"})
    TargetVariantHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerruntime#TargetVariantHeader", name: "TargetVariantHeader", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerruntime#ValidationError", name: "ValidationError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    InternalDependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InternalDependencyException.type = Types::InternalDependencyException
    InternalFailure.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InternalFailure.type = Types::InternalFailure
    InternalStreamFailure.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InternalStreamFailure.type = Types::InternalStreamFailure
    InvokeEndpointAsyncInput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "EndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeEndpointAsyncInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "ContentType", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Content-Type"}))
    InvokeEndpointAsyncInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "Accept", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Accept"}))
    InvokeEndpointAsyncInput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributesHeader, name: "CustomAttributes", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointAsyncInput.add_member(:inference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceId, name: "InferenceId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Id"}))
    InvokeEndpointAsyncInput.add_member(:input_location, ::Smithy::Schema::Shapes::MemberShape.new(target: InputLocationHeader, name: "InputLocation", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-InputLocation"}))
    InvokeEndpointAsyncInput.add_member(:s3_output_path_extension, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutputPathExtensionHeader, name: "S3OutputPathExtension", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-S3OutputPathExtension"}))
    InvokeEndpointAsyncInput.add_member(:filename, ::Smithy::Schema::Shapes::MemberShape.new(target: FilenameHeader, name: "Filename", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Filename"}))
    InvokeEndpointAsyncInput.add_member(:request_ttl_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTTLSecondsHeader, name: "RequestTTLSeconds", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-RequestTTLSeconds"}))
    InvokeEndpointAsyncInput.add_member(:invocation_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationTimeoutSecondsHeader, name: "InvocationTimeoutSeconds", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-InvocationTimeoutSeconds"}))
    InvokeEndpointAsyncInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncBodyBlob, name: "Body", traits: {"smithy.api#httpPayload" => {}}))
    InvokeEndpointAsyncInput[:http_payload] = :body
    InvokeEndpointAsyncInput[:http_payload_member] = InvokeEndpointAsyncInput.member(:body)
    InvokeEndpointAsyncInput.type = Types::InvokeEndpointAsyncInput
    InvokeEndpointAsyncOutput.add_member(:inference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "InferenceId"))
    InvokeEndpointAsyncOutput.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "OutputLocation", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-OutputLocation"}))
    InvokeEndpointAsyncOutput.add_member(:failure_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "FailureLocation", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-FailureLocation"}))
    InvokeEndpointAsyncOutput.type = Types::InvokeEndpointAsyncOutput
    InvokeEndpointInput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "EndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeEndpointInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: BodyBlob, name: "Body", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeEndpointInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeEndpointInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "Accept", traits: {"smithy.api#httpHeader" => "Accept"}))
    InvokeEndpointInput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributesHeader, name: "CustomAttributes", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointInput.add_member(:target_model, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetModelHeader, name: "TargetModel", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Model"}))
    InvokeEndpointInput.add_member(:target_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetVariantHeader, name: "TargetVariant", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Variant"}))
    InvokeEndpointInput.add_member(:target_container_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetContainerHostnameHeader, name: "TargetContainerHostname", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Container-Hostname"}))
    InvokeEndpointInput.add_member(:inference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceId, name: "InferenceId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Id"}))
    InvokeEndpointInput.add_member(:enable_explanations, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableExplanationsHeader, name: "EnableExplanations", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Enable-Explanations"}))
    InvokeEndpointInput.add_member(:inference_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceComponentHeader, name: "InferenceComponentName", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Component"}))
    InvokeEndpointInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdOrNewSessionConstantHeader, name: "SessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Session-Id"}))
    InvokeEndpointInput.add_member(:prefix_aware_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixAwareIdHeader, name: "PrefixAwareId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Prefix-Aware-Id"}))
    InvokeEndpointInput[:http_payload] = :body
    InvokeEndpointInput[:http_payload_member] = InvokeEndpointInput.member(:body)
    InvokeEndpointInput.type = Types::InvokeEndpointInput
    InvokeEndpointOutput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: BodyBlob, name: "Body", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeEndpointOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeEndpointOutput.add_member(:invoked_production_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "InvokedProductionVariant", traits: {"smithy.api#httpHeader" => "x-Amzn-Invoked-Production-Variant"}))
    InvokeEndpointOutput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributesHeader, name: "CustomAttributes", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointOutput.add_member(:new_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NewSessionResponseHeader, name: "NewSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-New-Session-Id"}))
    InvokeEndpointOutput.add_member(:closed_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdHeader, name: "ClosedSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Closed-Session-Id"}))
    InvokeEndpointOutput[:http_payload] = :body
    InvokeEndpointOutput[:http_payload_member] = InvokeEndpointOutput.member(:body)
    InvokeEndpointOutput.type = Types::InvokeEndpointOutput
    InvokeEndpointWithResponseStreamInput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "EndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeEndpointWithResponseStreamInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: BodyBlob, name: "Body", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeEndpointWithResponseStreamInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeEndpointWithResponseStreamInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "Accept", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Accept"}))
    InvokeEndpointWithResponseStreamInput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributesHeader, name: "CustomAttributes", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointWithResponseStreamInput.add_member(:target_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetVariantHeader, name: "TargetVariant", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Variant"}))
    InvokeEndpointWithResponseStreamInput.add_member(:target_container_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetContainerHostnameHeader, name: "TargetContainerHostname", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Target-Container-Hostname"}))
    InvokeEndpointWithResponseStreamInput.add_member(:inference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceId, name: "InferenceId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Id"}))
    InvokeEndpointWithResponseStreamInput.add_member(:inference_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceComponentHeader, name: "InferenceComponentName", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Inference-Component"}))
    InvokeEndpointWithResponseStreamInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdHeader, name: "SessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Session-Id"}))
    InvokeEndpointWithResponseStreamInput.add_member(:prefix_aware_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixAwareIdHeader, name: "PrefixAwareId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Prefix-Aware-Id"}))
    InvokeEndpointWithResponseStreamInput[:http_payload] = :body
    InvokeEndpointWithResponseStreamInput[:http_payload_member] = InvokeEndpointWithResponseStreamInput.member(:body)
    InvokeEndpointWithResponseStreamInput.type = Types::InvokeEndpointWithResponseStreamInput
    InvokeEndpointWithResponseStreamOutput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStream, name: "Body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeEndpointWithResponseStreamOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "ContentType", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Content-Type"}))
    InvokeEndpointWithResponseStreamOutput.add_member(:invoked_production_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "InvokedProductionVariant", traits: {"smithy.api#httpHeader" => "x-Amzn-Invoked-Production-Variant"}))
    InvokeEndpointWithResponseStreamOutput.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributesHeader, name: "CustomAttributes", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Custom-Attributes"}))
    InvokeEndpointWithResponseStreamOutput[:http_payload] = :body
    InvokeEndpointWithResponseStreamOutput[:http_payload_member] = InvokeEndpointWithResponseStreamOutput.member(:body)
    InvokeEndpointWithResponseStreamOutput.type = Types::InvokeEndpointWithResponseStreamOutput
    ModelError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ModelError.add_member(:original_status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "OriginalStatusCode"))
    ModelError.add_member(:original_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "OriginalMessage"))
    ModelError.add_member(:log_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamArn, name: "LogStreamArn"))
    ModelError.type = Types::ModelError
    ModelNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ModelNotReadyException.type = Types::ModelNotReadyException
    ModelStreamError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ModelStreamError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    ModelStreamError.type = Types::ModelStreamError
    PayloadPart.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PartBlob, name: "Bytes", traits: {"smithy.api#eventPayload" => {}}))
    PayloadPart.type = Types::PayloadPart
    ResponseStream.add_member(:payload_part, Types::ResponseStream::PayloadPart, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadPart, name: "PayloadPart"))
    ResponseStream.add_member(:model_stream_error, Types::ResponseStream::ModelStreamError, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStreamError, name: "ModelStreamError"))
    ResponseStream.add_member(:internal_stream_failure, Types::ResponseStream::InternalStreamFailure, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalStreamFailure, name: "InternalStreamFailure"))
    ResponseStream.add_member(:unknown, Types::ResponseStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResponseStream.type = Types::ResponseStream
    ServiceUnavailable.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ServiceUnavailable.type = Types::ServiceUnavailable
    ValidationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ValidationError.type = Types::ValidationError

    AmazonSageMakerRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakerruntime#AmazonSageMakerRuntime"
      service.name = "AmazonSageMakerRuntime"
      service.version = "2017-05-13"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker Runtime", "arnNamespace" => "sagemaker", "cloudFormationName" => "SageMakerRuntime", "cloudTrailEventSource" => "sagemakerruntime.amazonaws.com", "docId" => "runtime.sagemaker-2017-05-13", "endpointPrefix" => "runtime.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon SageMaker Runtime", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://runtime.sagemaker-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://runtime-fips.sagemaker.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://runtime.sagemaker.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://runtime.sagemaker-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://runtime.sagemaker.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://runtime.sagemaker.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 15, "nodes" => "/////wAAAAH/////AAAAAAAAAA4AAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEMAAAABQX14QoF9eELAAAABAAAAAwAAAAJAAAABgAAAAoF9eEJAAAABwX14QYAAAALAAAACAX14QcF9eEIAAAABQAAAA0F9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAPAAAABAX14QIF9eED"}}
      service.add_operation(:invoke_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerruntime#InvokeEndpoint"
        operation.name = "InvokeEndpoint"
        operation.input = InvokeEndpointInput
        operation.output = InvokeEndpointOutput
        operation.errors << InternalDependencyException
        operation.errors << InternalFailure
        operation.errors << ModelError
        operation.errors << ModelNotReadyException
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/endpoints/{EndpointName}/invocations", "code" => 200}}
      end)
      service.add_operation(:invoke_endpoint_async, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerruntime#InvokeEndpointAsync"
        operation.name = "InvokeEndpointAsync"
        operation.input = InvokeEndpointAsyncInput
        operation.output = InvokeEndpointAsyncOutput
        operation.errors << InternalFailure
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/endpoints/{EndpointName}/async-invocations", "code" => 202}}
      end)
      service.add_operation(:invoke_endpoint_with_response_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerruntime#InvokeEndpointWithResponseStream"
        operation.name = "InvokeEndpointWithResponseStream"
        operation.input = InvokeEndpointWithResponseStreamInput
        operation.output = InvokeEndpointWithResponseStreamOutput
        operation.errors << InternalFailure
        operation.errors << InternalStreamFailure
        operation.errors << ModelError
        operation.errors << ModelStreamError
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/endpoints/{EndpointName}/invocations-response-stream", "code" => 200}}
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
