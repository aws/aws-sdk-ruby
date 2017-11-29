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
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')

    InvokeEndpointInput.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "EndpointName"))
    InvokeEndpointInput.add_member(:body, Shapes::ShapeRef.new(shape: BodyBlob, required: true, location_name: "Body"))
    InvokeEndpointInput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Content-Type"))
    InvokeEndpointInput.add_member(:accept, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Accept"))
    InvokeEndpointInput.struct_class = Types::InvokeEndpointInput
    InvokeEndpointInput[:payload] = :body
    InvokeEndpointInput[:payload_member] = InvokeEndpointInput.member(:body)

    InvokeEndpointOutput.add_member(:body, Shapes::ShapeRef.new(shape: BodyBlob, required: true, location_name: "Body"))
    InvokeEndpointOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "Content-Type"))
    InvokeEndpointOutput.add_member(:invoked_production_variant, Shapes::ShapeRef.new(shape: Header, location: "header", location_name: "x-Amzn-Invoked-Production-Variant"))
    InvokeEndpointOutput.struct_class = Types::InvokeEndpointOutput
    InvokeEndpointOutput[:payload] = :body
    InvokeEndpointOutput[:payload_member] = InvokeEndpointOutput.member(:body)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-05-13"

      api.metadata = {
        "endpointPrefix" => "runtime.sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon SageMaker Runtime",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
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
