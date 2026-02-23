# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SignerData
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    CertificateHash = Shapes::StringShape.new(name: 'CertificateHash')
    CertificateHashes = Shapes::ListShape.new(name: 'CertificateHashes')
    GetRevocationStatusRequest = Shapes::StructureShape.new(name: 'GetRevocationStatusRequest')
    GetRevocationStatusResponse = Shapes::StructureShape.new(name: 'GetRevocationStatusResponse')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    PlatformId = Shapes::StringShape.new(name: 'PlatformId')
    RevokedEntities = Shapes::ListShape.new(name: 'RevokedEntities')
    RevokedEntity = Shapes::StringShape.new(name: 'RevokedEntity')
    String = Shapes::StringShape.new(name: 'String')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CertificateHashes.member = Shapes::ShapeRef.new(shape: CertificateHash)

    GetRevocationStatusRequest.add_member(:signature_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "signatureTimestamp"))
    GetRevocationStatusRequest.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, required: true, location: "querystring", location_name: "platformId"))
    GetRevocationStatusRequest.add_member(:profile_version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "profileVersionArn"))
    GetRevocationStatusRequest.add_member(:job_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "jobArn"))
    GetRevocationStatusRequest.add_member(:certificate_hashes, Shapes::ShapeRef.new(shape: CertificateHashes, required: true, location: "querystring", location_name: "certificateHashes"))
    GetRevocationStatusRequest.struct_class = Types::GetRevocationStatusRequest

    GetRevocationStatusResponse.add_member(:revoked_entities, Shapes::ShapeRef.new(shape: RevokedEntities, location_name: "revokedEntities"))
    GetRevocationStatusResponse.struct_class = Types::GetRevocationStatusResponse

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServiceErrorException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    RevokedEntities.member = Shapes::ShapeRef.new(shape: RevokedEntity)

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyRequestsException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-08-25"

      api.metadata = {
        "apiVersion" => "2017-08-25",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "data-signer",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Signer Data Plane",
        "serviceId" => "Signer Data",
        "signatureVersion" => "v4",
        "signingName" => "signer",
        "uid" => "signer-data-2017-08-25",
      }

      api.add_operation(:get_revocation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRevocationStatus"
        o.http_method = "GET"
        o.http_request_uri = "/revocations"
        o.input = Shapes::ShapeRef.new(shape: GetRevocationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRevocationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)
    end

  end
end
