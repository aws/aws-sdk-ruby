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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InternalServerExceptionReason.add_member(:failed_to_generate_sbom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_TO_GENERATE_SBOM", traits: {"smithy.api#enumValue" => "FAILED_TO_GENERATE_SBOM"}))
    InternalServerExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    OutputFormat.add_member(:cyclone_dx_1_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CYCLONE_DX_1_5", traits: {"smithy.api#enumValue" => "CYCLONE_DX_1_5"}))
    OutputFormat.add_member(:inspector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSPECTOR", traits: {"smithy.api#enumValue" => "INSPECTOR"}))
    OutputFormat.add_member(:inspector_alt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSPECTOR_ALT", traits: {"smithy.api#enumValue" => "INSPECTOR_ALT"}))
    ScanSbomRequest.add_member(:sbom, ::Smithy::Schema::Shapes::MemberShape.new(target: Sbom, name: "sbom", traits: {"smithy.api#required" => {}}))
    ScanSbomRequest.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "outputFormat"))
    ScanSbomRequest.type = Types::ScanSbomRequest
    ScanSbomResponse.add_member(:sbom, ::Smithy::Schema::Shapes::MemberShape.new(target: Sbom, name: "sbom"))
    ScanSbomResponse.type = Types::ScanSbomResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFields, name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:unsupported_sbom_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_SBOM_TYPE", traits: {"smithy.api#enumValue" => "UNSUPPORTED_SBOM_TYPE"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))

    InspectorScan = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.inspectorscan#InspectorScan"
      service.name = "InspectorScan"
      service.version = "2023-08-08"
      service.traits = {"aws.api#service" => {"sdkId" => "Inspector Scan", "arnNamespace" => "inspector-scan", "cloudTrailEventSource" => "inspector-scan.amazonaws.com", "cloudFormationName" => "InspectorScan"}, "aws.auth#sigv4" => {"name" => "inspector-scan"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Inspector Scan", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://inspector-scan-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://inspector-scan-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://inspector-scan.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://inspector-scan.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
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
