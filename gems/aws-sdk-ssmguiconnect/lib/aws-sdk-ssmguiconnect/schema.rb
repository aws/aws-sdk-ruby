# frozen_string_literal: true

# This is generated code!

module Aws::SSMGuiConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmguiconnect#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmguiconnect#BucketName", name: "BucketName", traits: {"smithy.api#pattern" => "(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmguiconnect#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionRecordingPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#ConnectionRecordingPreferences", name: "ConnectionRecordingPreferences")
    DeleteConnectionRecordingPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#DeleteConnectionRecordingPreferencesRequest", name: "DeleteConnectionRecordingPreferencesRequest")
    DeleteConnectionRecordingPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#DeleteConnectionRecordingPreferencesResponse", name: "DeleteConnectionRecordingPreferencesResponse")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmguiconnect#ErrorMessage", name: "ErrorMessage")
    GetConnectionRecordingPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#GetConnectionRecordingPreferencesResponse", name: "GetConnectionRecordingPreferencesResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    RecordingDestinations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#RecordingDestinations", name: "RecordingDestinations")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Bucket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#S3Bucket", name: "S3Bucket")
    S3Buckets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmguiconnect#S3Buckets", name: "S3Buckets", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateConnectionRecordingPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#UpdateConnectionRecordingPreferencesRequest", name: "UpdateConnectionRecordingPreferencesRequest")
    UpdateConnectionRecordingPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#UpdateConnectionRecordingPreferencesResponse", name: "UpdateConnectionRecordingPreferencesResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmguiconnect#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionRecordingPreferences.add_member(:recording_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingDestinations, location_name: "RecordingDestinations", traits: {"smithy.api#required" => {}}))
    ConnectionRecordingPreferences.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "KMSKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    ConnectionRecordingPreferences.type = Types::ConnectionRecordingPreferences
    DeleteConnectionRecordingPreferencesRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteConnectionRecordingPreferencesRequest.type = Types::DeleteConnectionRecordingPreferencesRequest
    DeleteConnectionRecordingPreferencesResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken"))
    DeleteConnectionRecordingPreferencesResponse.type = Types::DeleteConnectionRecordingPreferencesResponse
    GetConnectionRecordingPreferencesResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken"))
    GetConnectionRecordingPreferencesResponse.add_member(:connection_recording_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionRecordingPreferences, location_name: "ConnectionRecordingPreferences"))
    GetConnectionRecordingPreferencesResponse.type = Types::GetConnectionRecordingPreferencesResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    RecordingDestinations.add_member(:s3_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Buckets, location_name: "S3Buckets", traits: {"smithy.api#required" => {}}))
    RecordingDestinations.type = Types::RecordingDestinations
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Bucket.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "BucketOwner", traits: {"smithy.api#required" => {}}))
    S3Bucket.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3Bucket.type = Types::S3Bucket
    S3Buckets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateConnectionRecordingPreferencesRequest.add_member(:connection_recording_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionRecordingPreferences, location_name: "ConnectionRecordingPreferences", traits: {"smithy.api#required" => {}}))
    UpdateConnectionRecordingPreferencesRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateConnectionRecordingPreferencesRequest.type = Types::UpdateConnectionRecordingPreferencesRequest
    UpdateConnectionRecordingPreferencesResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken"))
    UpdateConnectionRecordingPreferencesResponse.add_member(:connection_recording_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionRecordingPreferences, location_name: "ConnectionRecordingPreferences"))
    UpdateConnectionRecordingPreferencesResponse.type = Types::UpdateConnectionRecordingPreferencesResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    SSMGuiConnect = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssmguiconnect#SSMGuiConnect"
      service.name = "SSMGuiConnect"
      service.version = "2021-05-01"
      service.traits = {"aws.api#controlPlane" => {}, "aws.api#service" => {"sdkId" => "SSM GuiConnect", "arnNamespace" => "ssm-guiconnect"}, "aws.auth#sigv4" => {"name" => "ssm-guiconnect"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS SSM-GUIConnect"}
      service.add_operation(:delete_connection_recording_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmguiconnect#DeleteConnectionRecordingPreferences"
        operation.name = "DeleteConnectionRecordingPreferences"
        operation.input = DeleteConnectionRecordingPreferencesRequest
        operation.output = DeleteConnectionRecordingPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteConnectionRecordingPreferences", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DeleteConnectionRecordingPreferencesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_connection_recording_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmguiconnect#GetConnectionRecordingPreferences"
        operation.name = "GetConnectionRecordingPreferences"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetConnectionRecordingPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetConnectionRecordingPreferences", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetConnectionRecordingPreferencesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:update_connection_recording_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmguiconnect#UpdateConnectionRecordingPreferences"
        operation.name = "UpdateConnectionRecordingPreferences"
        operation.input = UpdateConnectionRecordingPreferencesRequest
        operation.output = UpdateConnectionRecordingPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateConnectionRecordingPreferences", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UpdateConnectionRecordingPreferencesSuccess", "params" => {"ConnectionRecordingPreferences" => {"RecordingDestinations" => {"S3Buckets" => [{"BucketOwner" => "111122223333", "BucketName" => "test-bucket"}]}, "KMSKeyArn" => "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"}}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
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
