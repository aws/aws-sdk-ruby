# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SageMakerInferenceRouterRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionMessageString = Shapes::StringShape.new(name: 'AccessDeniedExceptionMessageString')
    CustomAttributesHeader = Shapes::StringShape.new(name: 'CustomAttributesHeader')
    InferenceRouterBodyBlob = Shapes::BlobShape.new(name: 'InferenceRouterBodyBlob')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalDependencyException = Shapes::StructureShape.new(name: 'InternalDependencyException')
    InternalDependencyExceptionMessageString = Shapes::StringShape.new(name: 'InternalDependencyExceptionMessageString')
    InternalFailure = Shapes::StructureShape.new(name: 'InternalFailure')
    InternalFailureMessageString = Shapes::StringShape.new(name: 'InternalFailureMessageString')
    InvokeInferenceRouterAsyncInput = Shapes::StructureShape.new(name: 'InvokeInferenceRouterAsyncInput')
    InvokeInferenceRouterAsyncInputAcceptString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncInputAcceptString')
    InvokeInferenceRouterAsyncInputContentTypeString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncInputContentTypeString')
    InvokeInferenceRouterAsyncInputFilenameString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncInputFilenameString')
    InvokeInferenceRouterAsyncInputInferenceIdString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncInputInferenceIdString')
    InvokeInferenceRouterAsyncInputInferenceRouterNameString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncInputInferenceRouterNameString')
    InvokeInferenceRouterAsyncInputInputLocationString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncInputInputLocationString')
    InvokeInferenceRouterAsyncInputInvocationTimeoutSecondsInteger = Shapes::IntegerShape.new(name: 'InvokeInferenceRouterAsyncInputInvocationTimeoutSecondsInteger')
    InvokeInferenceRouterAsyncInputRequestTTLSecondsInteger = Shapes::IntegerShape.new(name: 'InvokeInferenceRouterAsyncInputRequestTTLSecondsInteger')
    InvokeInferenceRouterAsyncInputRoutingTargetNameString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncInputRoutingTargetNameString')
    InvokeInferenceRouterAsyncInputS3OutputPathExtensionString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncInputS3OutputPathExtensionString')
    InvokeInferenceRouterAsyncOutput = Shapes::StructureShape.new(name: 'InvokeInferenceRouterAsyncOutput')
    InvokeInferenceRouterAsyncOutputFailureLocationString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncOutputFailureLocationString')
    InvokeInferenceRouterAsyncOutputInferenceIdString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncOutputInferenceIdString')
    InvokeInferenceRouterAsyncOutputOutputLocationString = Shapes::StringShape.new(name: 'InvokeInferenceRouterAsyncOutputOutputLocationString')
    InvokeInferenceRouterInput = Shapes::StructureShape.new(name: 'InvokeInferenceRouterInput')
    InvokeInferenceRouterInputAcceptString = Shapes::StringShape.new(name: 'InvokeInferenceRouterInputAcceptString')
    InvokeInferenceRouterInputContentTypeString = Shapes::StringShape.new(name: 'InvokeInferenceRouterInputContentTypeString')
    InvokeInferenceRouterInputInferenceIdString = Shapes::StringShape.new(name: 'InvokeInferenceRouterInputInferenceIdString')
    InvokeInferenceRouterInputInferenceRouterNameString = Shapes::StringShape.new(name: 'InvokeInferenceRouterInputInferenceRouterNameString')
    InvokeInferenceRouterInputPrefixAwareIdString = Shapes::StringShape.new(name: 'InvokeInferenceRouterInputPrefixAwareIdString')
    InvokeInferenceRouterInputRoutingTargetNameString = Shapes::StringShape.new(name: 'InvokeInferenceRouterInputRoutingTargetNameString')
    InvokeInferenceRouterOutput = Shapes::StructureShape.new(name: 'InvokeInferenceRouterOutput')
    InvokeInferenceRouterOutputContentTypeString = Shapes::StringShape.new(name: 'InvokeInferenceRouterOutputContentTypeString')
    InvokeInferenceRouterOutputInvokedProductionVariantString = Shapes::StringShape.new(name: 'InvokeInferenceRouterOutputInvokedProductionVariantString')
    InvokeInferenceRouterOutputInvokedRoutedResourceArnString = Shapes::StringShape.new(name: 'InvokeInferenceRouterOutputInvokedRoutedResourceArnString')
    InvokeInferenceRouterOutputRoutingReasonString = Shapes::StringShape.new(name: 'InvokeInferenceRouterOutputRoutingReasonString')
    ModelError = Shapes::StructureShape.new(name: 'ModelError')
    ModelErrorMessageString = Shapes::StringShape.new(name: 'ModelErrorMessageString')
    ModelNotReadyException = Shapes::StructureShape.new(name: 'ModelNotReadyException')
    ModelNotReadyExceptionMessageString = Shapes::StringShape.new(name: 'ModelNotReadyExceptionMessageString')
    RequestTimeoutException = Shapes::StructureShape.new(name: 'RequestTimeoutException')
    RequestTimeoutExceptionMessageString = Shapes::StringShape.new(name: 'RequestTimeoutExceptionMessageString')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    ServiceUnavailableExceptionMessageString = Shapes::StringShape.new(name: 'ServiceUnavailableExceptionMessageString')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ThrottlingExceptionMessageString = Shapes::StringShape.new(name: 'ThrottlingExceptionMessageString')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionMessageString = Shapes::StringShape.new(name: 'ValidationExceptionMessageString')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: AccessDeniedExceptionMessageString, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    InternalDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: InternalDependencyExceptionMessageString, location_name: "Message"))
    InternalDependencyException.struct_class = Types::InternalDependencyException

    InternalFailure.add_member(:message, Shapes::ShapeRef.new(shape: InternalFailureMessageString, location_name: "Message"))
    InternalFailure.struct_class = Types::InternalFailure

    InvokeInferenceRouterAsyncInput.add_member(:inference_router_name, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputInferenceRouterNameString, required: true, location: "uri", location_name: "InferenceRouterName"))
    InvokeInferenceRouterAsyncInput.add_member(:routing_target_name, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputRoutingTargetNameString, required: true, location: "header", location_name: "X-Amzn-SageMaker-Routing-Target-Name"))
    InvokeInferenceRouterAsyncInput.add_member(:content_type, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputContentTypeString, location: "header", location_name: "X-Amzn-SageMaker-Content-Type"))
    InvokeInferenceRouterAsyncInput.add_member(:accept, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputAcceptString, location: "header", location_name: "X-Amzn-SageMaker-Accept"))
    InvokeInferenceRouterAsyncInput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeInferenceRouterAsyncInput.add_member(:inference_id, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputInferenceIdString, location: "header", location_name: "X-Amzn-SageMaker-Inference-Id"))
    InvokeInferenceRouterAsyncInput.add_member(:input_location, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputInputLocationString, required: true, location: "header", location_name: "X-Amzn-SageMaker-InputLocation"))
    InvokeInferenceRouterAsyncInput.add_member(:s3_output_path_extension, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputS3OutputPathExtensionString, location: "header", location_name: "X-Amzn-SageMaker-S3OutputPathExtension"))
    InvokeInferenceRouterAsyncInput.add_member(:filename, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputFilenameString, location: "header", location_name: "X-Amzn-SageMaker-Filename"))
    InvokeInferenceRouterAsyncInput.add_member(:request_ttl_seconds, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputRequestTTLSecondsInteger, location: "header", location_name: "X-Amzn-SageMaker-RequestTTLSeconds"))
    InvokeInferenceRouterAsyncInput.add_member(:invocation_timeout_seconds, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInputInvocationTimeoutSecondsInteger, location: "header", location_name: "X-Amzn-SageMaker-InvocationTimeoutSeconds"))
    InvokeInferenceRouterAsyncInput.struct_class = Types::InvokeInferenceRouterAsyncInput

    InvokeInferenceRouterAsyncOutput.add_member(:inference_id, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncOutputInferenceIdString, location_name: "InferenceId"))
    InvokeInferenceRouterAsyncOutput.add_member(:output_location, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncOutputOutputLocationString, location: "header", location_name: "X-Amzn-SageMaker-OutputLocation"))
    InvokeInferenceRouterAsyncOutput.add_member(:failure_location, Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncOutputFailureLocationString, location: "header", location_name: "X-Amzn-SageMaker-FailureLocation"))
    InvokeInferenceRouterAsyncOutput.struct_class = Types::InvokeInferenceRouterAsyncOutput

    InvokeInferenceRouterInput.add_member(:inference_router_name, Shapes::ShapeRef.new(shape: InvokeInferenceRouterInputInferenceRouterNameString, required: true, location: "uri", location_name: "InferenceRouterName"))
    InvokeInferenceRouterInput.add_member(:routing_target_name, Shapes::ShapeRef.new(shape: InvokeInferenceRouterInputRoutingTargetNameString, required: true, location: "header", location_name: "X-Amzn-SageMaker-Routing-Target-Name"))
    InvokeInferenceRouterInput.add_member(:content_type, Shapes::ShapeRef.new(shape: InvokeInferenceRouterInputContentTypeString, location: "header", location_name: "Content-Type"))
    InvokeInferenceRouterInput.add_member(:accept, Shapes::ShapeRef.new(shape: InvokeInferenceRouterInputAcceptString, location: "header", location_name: "Accept"))
    InvokeInferenceRouterInput.add_member(:inference_id, Shapes::ShapeRef.new(shape: InvokeInferenceRouterInputInferenceIdString, location: "header", location_name: "X-Amzn-SageMaker-Inference-Id"))
    InvokeInferenceRouterInput.add_member(:prefix_aware_id, Shapes::ShapeRef.new(shape: InvokeInferenceRouterInputPrefixAwareIdString, location: "header", location_name: "X-Amzn-SageMaker-Prefix-Aware-Id"))
    InvokeInferenceRouterInput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeInferenceRouterInput.add_member(:body, Shapes::ShapeRef.new(shape: InferenceRouterBodyBlob, required: true, location_name: "Body"))
    InvokeInferenceRouterInput.struct_class = Types::InvokeInferenceRouterInput
    InvokeInferenceRouterInput[:payload] = :body
    InvokeInferenceRouterInput[:payload_member] = InvokeInferenceRouterInput.member(:body)

    InvokeInferenceRouterOutput.add_member(:body, Shapes::ShapeRef.new(shape: InferenceRouterBodyBlob, location_name: "Body"))
    InvokeInferenceRouterOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: InvokeInferenceRouterOutputContentTypeString, location: "header", location_name: "Content-Type"))
    InvokeInferenceRouterOutput.add_member(:invoked_routed_resource_arn, Shapes::ShapeRef.new(shape: InvokeInferenceRouterOutputInvokedRoutedResourceArnString, location: "header", location_name: "X-Amzn-SageMaker-Invoked-Routed-Resource-Arn"))
    InvokeInferenceRouterOutput.add_member(:routing_reason, Shapes::ShapeRef.new(shape: InvokeInferenceRouterOutputRoutingReasonString, location: "header", location_name: "X-Amzn-SageMaker-Invoked-Routing-Reason"))
    InvokeInferenceRouterOutput.add_member(:invoked_production_variant, Shapes::ShapeRef.new(shape: InvokeInferenceRouterOutputInvokedProductionVariantString, location: "header", location_name: "X-Amzn-Invoked-Production-Variant"))
    InvokeInferenceRouterOutput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeInferenceRouterOutput.struct_class = Types::InvokeInferenceRouterOutput
    InvokeInferenceRouterOutput[:payload] = :body
    InvokeInferenceRouterOutput[:payload_member] = InvokeInferenceRouterOutput.member(:body)

    ModelError.add_member(:message, Shapes::ShapeRef.new(shape: ModelErrorMessageString, location_name: "Message"))
    ModelError.add_member(:original_status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "OriginalStatusCode"))
    ModelError.add_member(:original_message, Shapes::ShapeRef.new(shape: String, location_name: "OriginalMessage"))
    ModelError.add_member(:log_stream_arn, Shapes::ShapeRef.new(shape: String, location_name: "LogStreamArn"))
    ModelError.struct_class = Types::ModelError

    ModelNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: ModelNotReadyExceptionMessageString, location_name: "Message"))
    ModelNotReadyException.struct_class = Types::ModelNotReadyException

    RequestTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: RequestTimeoutExceptionMessageString, location_name: "Message"))
    RequestTimeoutException.struct_class = Types::RequestTimeoutException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceUnavailableExceptionMessageString, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ThrottlingExceptionMessageString, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ValidationExceptionMessageString, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-01-01"

      api.metadata = {
        "apiVersion" => "2026-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "inferencerouter-runtime.sagemaker",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon SageMaker Inference Router Runtime",
        "serviceId" => "SageMaker Inference Router Runtime",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemaker-inference-router-runtime-2026-01-01",
      }

      api.add_operation(:invoke_inference_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeInferenceRouter"
        o.http_method = "POST"
        o.http_request_uri = "/inference-routers/{InferenceRouterName}/invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeInferenceRouterInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeInferenceRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ModelError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
      end)

      api.add_operation(:invoke_inference_router_async, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeInferenceRouterAsync"
        o.http_method = "POST"
        o.http_request_uri = "/inference-routers/{InferenceRouterName}/async-invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeInferenceRouterAsyncOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
      end)
    end

  end
end
