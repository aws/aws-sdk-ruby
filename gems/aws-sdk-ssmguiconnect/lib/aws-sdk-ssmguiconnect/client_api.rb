# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SSMGuiConnect
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionRecordingPreferences = Shapes::StructureShape.new(name: 'ConnectionRecordingPreferences')
    ConnectionRecordingPreferencesKMSKeyArnString = Shapes::StringShape.new(name: 'ConnectionRecordingPreferencesKMSKeyArnString')
    DeleteConnectionRecordingPreferencesRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRecordingPreferencesRequest')
    DeleteConnectionRecordingPreferencesResponse = Shapes::StructureShape.new(name: 'DeleteConnectionRecordingPreferencesResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetConnectionRecordingPreferencesResponse = Shapes::StructureShape.new(name: 'GetConnectionRecordingPreferencesResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    RecordingDestinations = Shapes::StructureShape.new(name: 'RecordingDestinations')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Bucket = Shapes::StructureShape.new(name: 'S3Bucket')
    S3Buckets = Shapes::ListShape.new(name: 'S3Buckets')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateConnectionRecordingPreferencesRequest = Shapes::StructureShape.new(name: 'UpdateConnectionRecordingPreferencesRequest')
    UpdateConnectionRecordingPreferencesResponse = Shapes::StructureShape.new(name: 'UpdateConnectionRecordingPreferencesResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectionRecordingPreferences.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ConnectionRecordingPreferencesKMSKeyArnString, required: true, location_name: "KMSKeyArn"))
    ConnectionRecordingPreferences.add_member(:recording_destinations, Shapes::ShapeRef.new(shape: RecordingDestinations, required: true, location_name: "RecordingDestinations"))
    ConnectionRecordingPreferences.struct_class = Types::ConnectionRecordingPreferences

    DeleteConnectionRecordingPreferencesRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    DeleteConnectionRecordingPreferencesRequest.struct_class = Types::DeleteConnectionRecordingPreferencesRequest

    DeleteConnectionRecordingPreferencesResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    DeleteConnectionRecordingPreferencesResponse.struct_class = Types::DeleteConnectionRecordingPreferencesResponse

    GetConnectionRecordingPreferencesResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    GetConnectionRecordingPreferencesResponse.add_member(:connection_recording_preferences, Shapes::ShapeRef.new(shape: ConnectionRecordingPreferences, location_name: "ConnectionRecordingPreferences"))
    GetConnectionRecordingPreferencesResponse.struct_class = Types::GetConnectionRecordingPreferencesResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    RecordingDestinations.add_member(:s3_buckets, Shapes::ShapeRef.new(shape: S3Buckets, required: true, location_name: "S3Buckets"))
    RecordingDestinations.struct_class = Types::RecordingDestinations

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Bucket.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "BucketName"))
    S3Bucket.add_member(:bucket_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "BucketOwner"))
    S3Bucket.struct_class = Types::S3Bucket

    S3Buckets.member = Shapes::ShapeRef.new(shape: S3Bucket)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateConnectionRecordingPreferencesRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateConnectionRecordingPreferencesRequest.add_member(:connection_recording_preferences, Shapes::ShapeRef.new(shape: ConnectionRecordingPreferences, required: true, location_name: "ConnectionRecordingPreferences"))
    UpdateConnectionRecordingPreferencesRequest.struct_class = Types::UpdateConnectionRecordingPreferencesRequest

    UpdateConnectionRecordingPreferencesResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    UpdateConnectionRecordingPreferencesResponse.add_member(:connection_recording_preferences, Shapes::ShapeRef.new(shape: ConnectionRecordingPreferences, location_name: "ConnectionRecordingPreferences"))
    UpdateConnectionRecordingPreferencesResponse.struct_class = Types::UpdateConnectionRecordingPreferencesResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-05-01"

      api.metadata = {
        "apiVersion" => "2021-05-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "ssm-guiconnect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS SSM-GUIConnect",
        "serviceId" => "SSM GuiConnect",
        "signatureVersion" => "v4",
        "signingName" => "ssm-guiconnect",
        "uid" => "ssm-guiconnect-2021-05-01",
      }

      api.add_operation(:delete_connection_recording_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectionRecordingPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteConnectionRecordingPreferences"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionRecordingPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionRecordingPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_connection_recording_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectionRecordingPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/GetConnectionRecordingPreferences"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetConnectionRecordingPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_connection_recording_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectionRecordingPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateConnectionRecordingPreferences"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectionRecordingPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectionRecordingPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
