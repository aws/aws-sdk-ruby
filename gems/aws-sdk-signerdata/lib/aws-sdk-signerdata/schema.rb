# frozen_string_literal: true

# This is generated code!

module Aws::SignerData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signerdata#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signerdata#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    CertificateHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signerdata#CertificateHash", name: "CertificateHash", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    CertificateHashes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signerdata#CertificateHashes", name: "CertificateHashes")
    GetRevocationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signerdata#GetRevocationStatusRequest", name: "GetRevocationStatusRequest")
    GetRevocationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signerdata#GetRevocationStatusResponse", name: "GetRevocationStatusResponse")
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signerdata#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    PlatformId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signerdata#PlatformId", name: "PlatformId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    RevokedEntities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signerdata#RevokedEntities", name: "RevokedEntities")
    RevokedEntity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signerdata#RevokedEntity", name: "RevokedEntity", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signerdata#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signerdata#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code"))
    AccessDeniedException.type = Types::AccessDeniedException
    CertificateHashes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateHash, name: "member"))
    GetRevocationStatusRequest.add_member(:signature_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "signatureTimestamp", traits: {"smithy.api#httpQuery" => "signatureTimestamp", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId", traits: {"smithy.api#httpQuery" => "platformId", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "profileVersionArn", traits: {"smithy.api#httpQuery" => "profileVersionArn", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "jobArn", traits: {"smithy.api#httpQuery" => "jobArn", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:certificate_hashes, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateHashes, name: "certificateHashes", traits: {"smithy.api#httpQuery" => "certificateHashes", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.type = Types::GetRevocationStatusRequest
    GetRevocationStatusResponse.add_member(:revoked_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: RevokedEntities, name: "revokedEntities"))
    GetRevocationStatusResponse.type = Types::GetRevocationStatusResponse
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServiceErrorException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    RevokedEntities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevokedEntity, name: "member"))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    TooManyRequestsException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code"))
    ValidationException.type = Types::ValidationException

    SignerDataPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.signerdata#SignerDataPlane"
      service.name = "SignerDataPlane"
      service.version = "2017-08-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Signer Data", "arnNamespace" => "signer", "endpointPrefix" => "data-signer"}, "aws.auth#sigv4" => {"name" => "signer"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Signer Data Plane", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => true, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint.", "type" => "boolean"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}], "results" => [{"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-signer-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-signer-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-signer.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://data-signer.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAX14QEAAAADAAAAAQAAAAQF9eEAAAAAAgAAAAYAAAAFAAAAAwX14QQF9eEFAAAAAwX14QIF9eED"}}
      service.add_operation(:get_revocation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signerdata#GetRevocationStatus"
        operation.name = "GetRevocationStatus"
        operation.input = GetRevocationStatusRequest
        operation.output = GetRevocationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/revocations"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetRevocationStatusSuccess", "params" => {"signatureTimestamp" => 1700000000, "platformId" => "Notation-OCI-SHA384-ECDSA", "profileVersionArn" => "arn:aws:signer:us-east-1:123456789012:/signing-profiles/test-profile/v1", "jobArn" => "arn:aws:signer:us-east-1:123456789012:/signing-jobs/test-job", "certificateHashes" => ["0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"]}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
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
