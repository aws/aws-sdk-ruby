# frozen_string_literal: true

# This is generated code!

module Aws::InspectorScan
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspectorscan#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspectorscan#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InternalServerExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspectorscan#InternalServerExceptionReason", name: "InternalServerExceptionReason")
    OutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspectorscan#OutputFormat", name: "OutputFormat")
    Sbom = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.inspectorscan#Sbom", name: "Sbom")
    ScanSbomRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspectorscan#ScanSbomRequest", name: "ScanSbomRequest")
    ScanSbomResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspectorscan#ScanSbomResponse", name: "ScanSbomResponse")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspectorscan#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspectorscan#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.inspectorscan#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.inspectorscan#ValidationExceptionFields", name: "ValidationExceptionFields")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.inspectorscan#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InternalServerExceptionReason.add_member(:failed_to_generate_sbom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_TO_GENERATE_SBOM", traits: {"smithy.api#enumValue" => "FAILED_TO_GENERATE_SBOM"}))
    InternalServerExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    OutputFormat.add_member(:cyclone_dx_1_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CYCLONE_DX_1_5", traits: {"smithy.api#enumValue" => "CYCLONE_DX_1_5"}))
    OutputFormat.add_member(:inspector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSPECTOR", traits: {"smithy.api#enumValue" => "INSPECTOR"}))
    ScanSbomRequest.add_member(:sbom, ::Smithy::Schema::Shapes::MemberShape.new(target: Sbom, location_name: "sbom", traits: {"smithy.api#required" => {}}))
    ScanSbomRequest.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, location_name: "outputFormat"))
    ScanSbomRequest.type = Types::ScanSbomRequest
    ScanSbomResponse.add_member(:sbom, ::Smithy::Schema::Shapes::MemberShape.new(target: Sbom, location_name: "sbom"))
    ScanSbomResponse.type = Types::ScanSbomResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFields, location_name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:unsupported_sbom_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED_SBOM_TYPE", traits: {"smithy.api#enumValue" => "UNSUPPORTED_SBOM_TYPE"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))

    InspectorScan = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.inspectorscan#InspectorScan"
      service.name = "InspectorScan"
      service.version = "2023-08-08"
      service.traits = {"aws.api#service" => {"sdkId" => "Inspector Scan", "arnNamespace" => "inspector-scan", "cloudTrailEventSource" => "inspector-scan.amazonaws.com", "cloudFormationName" => "InspectorScan"}, "aws.auth#sigv4" => {"name" => "inspector-scan"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Inspector Scan"}
      service.add_operation(:scan_sbom, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspectorscan#ScanSbom"
        operation.name = "ScanSbom"
        operation.input = ScanSbomRequest
        operation.output = ScanSbomResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/scan/sbom"}, "smithy.api#idempotent" => {}}
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
