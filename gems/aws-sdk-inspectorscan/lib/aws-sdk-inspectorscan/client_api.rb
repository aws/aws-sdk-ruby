# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::InspectorScan
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternalServerExceptionReason = Shapes::StringShape.new(name: 'InternalServerExceptionReason')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    Sbom = Shapes::DocumentShape.new(name: 'Sbom', document: true)
    ScanSbomRequest = Shapes::StructureShape.new(name: 'ScanSbomRequest')
    ScanSbomResponse = Shapes::StructureShape.new(name: 'ScanSbomResponse')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFields = Shapes::ListShape.new(name: 'ValidationExceptionFields')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:reason, Shapes::ShapeRef.new(shape: InternalServerExceptionReason, required: true, location_name: "reason"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ScanSbomRequest.add_member(:sbom, Shapes::ShapeRef.new(shape: Sbom, required: true, location_name: "sbom"))
    ScanSbomRequest.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "outputFormat"))
    ScanSbomRequest.struct_class = Types::ScanSbomRequest

    ScanSbomResponse.add_member(:sbom, Shapes::ShapeRef.new(shape: Sbom, location_name: "sbom"))
    ScanSbomResponse.struct_class = Types::ScanSbomResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: "fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFields.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-08-08"

      api.metadata = {
        "apiVersion" => "2023-08-08",
        "endpointPrefix" => "inspector-scan",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "inspector-scan",
        "serviceFullName" => "Inspector Scan",
        "serviceId" => "Inspector Scan",
        "signatureVersion" => "v4",
        "signingName" => "inspector-scan",
        "uid" => "inspector-scan-2023-08-08",
      }

      api.add_operation(:scan_sbom, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ScanSbom"
        o.http_method = "POST"
        o.http_request_uri = "/scan/sbom"
        o.input = Shapes::ShapeRef.new(shape: ScanSbomRequest)
        o.output = Shapes::ShapeRef.new(shape: ScanSbomResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
