# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    BodyBlob = Shapes::BlobShape.new(name: 'BodyBlob')
    CustomAttributesHeader = Shapes::StringShape.new(name: 'CustomAttributesHeader')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    Header = Shapes::StringShape.new(name: 'Header')
    InternalFailure = Shapes::StructureShape.new(name: 'InternalFailure')
    InvokeEndpointInput = Shapes::StructureShape.new(name: 'InvokeEndpointInput')
    InvokeEndpointOutput = Shapes::StructureShape.new(name: 'InvokeEndpointOutput')
    LogStreamArn = Shapes::StringShape.new(name: 'LogStreamArn')
    Message = Shapes::StringShape.new(name: 'Message')
    ModelError = Shapes::StructureShape.new(name: 'ModelError')
    ServiceUnavailable = Shapes::StructureShape.new(name: 'ServiceUnavailable')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    TargetModelHeader = Shapes::StringShape.new(name: 'TargetModelHeader')
    TargetVariantHeader = Shapes::StringShape.new(name: 'TargetVariantHeader')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')

    InternalFailure.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalFailure.struct_class = Types::InternalFailure

    InvokeEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "EndpointName"))
    InvokeEndpointInput.add_member(:body, Shapes::ShapeRef.new(shape: BodyBlob, required: true, location_name: "Body"))
    InvokeEndpointInput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Content-Type"))
    InvokeEndpointInput.add_member(:accept, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Accept"))
    InvokeEndpointInput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeEndpointInput.add_member(:target_model, Shapes::ShapeRef.new(shape: TargetModelHeader, location: "header", location_name: "X-Amzn-SageMaker-Target-Model"))
    InvokeEndpointInput.add_member(:target_variant, Shapes::ShapeRef.new(shape: TargetVariantHeader, location: "header", location_name: "X-Amzn-SageMaker-Target-Variant"))
    InvokeEndpointInput.struct_class = Types::InvokeEndpointInput
    InvokeEndpointInput[:payload] = :body
    InvokeEndpointInput[:payload_member] = InvokeEndpointInput.member(:body)

    InvokeEndpointOutput.add_member(:body, Shapes::ShapeRef.new(shape: BodyBlob, required: true, location_name: "Body"))
    InvokeEndpointOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Content-Type"))
    InvokeEndpointOutput.add_member(:invoked_production_variant, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "x-Amzn-Invoked-Production-Variant"))
    InvokeEndpointOutput.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesHeader, location: "header", location_name: "X-Amzn-SageMaker-Custom-Attributes"))
    InvokeEndpointOutput.struct_class = Types::InvokeEndpointOutput
    InvokeEndpointOutput[:payload] = :body
    InvokeEndpointOutput[:payload_member] = InvokeEndpointOutput.member(:body)

    ModelError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ModelError.add_member(:original_status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "OriginalStatusCode"))
    ModelError.add_member(:original_message, Shapes::ShapeRef.new(shape: Message, location_name: "OriginalMessage"))
    ModelError.add_member(:log_stream_arn, Shapes::ShapeRef.new(shape: LogStreamArn, location_name: "LogStreamArn"))
    ModelError.struct_class = Types::ModelError

    ServiceUnavailable.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServiceUnavailable.struct_class = Types::ServiceUnavailable

    ValidationError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationError.struct_class = Types::ValidationError


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-05-13"

      api.metadata = {
        "apiVersion" => "2017-05-13",
        "endpointPrefix" => "runtime.sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon SageMaker Runtime",
        "serviceId" => "SageMaker Runtime",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "runtime.sagemaker-2017-05-13",
      }

      api.add_operation(:invoke_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/endpoints/{EndpointName}/invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: InvokeEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: ModelError)
      end)
    end

  end
end
