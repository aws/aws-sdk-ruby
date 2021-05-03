# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FinSpaceData
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ChangesetInfo = Shapes::StructureShape.new(name: 'ChangesetInfo')
    ChangesetStatus = Shapes::StringShape.new(name: 'ChangesetStatus')
    CreateChangesetRequest = Shapes::StructureShape.new(name: 'CreateChangesetRequest')
    CreateChangesetResponse = Shapes::StructureShape.new(name: 'CreateChangesetResponse')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    ErrorCategory = Shapes::StringShape.new(name: 'ErrorCategory')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    FormatType = Shapes::StringShape.new(name: 'FormatType')
    GetProgrammaticAccessCredentialsRequest = Shapes::StructureShape.new(name: 'GetProgrammaticAccessCredentialsRequest')
    GetProgrammaticAccessCredentialsResponse = Shapes::StructureShape.new(name: 'GetProgrammaticAccessCredentialsResponse')
    GetWorkingLocationRequest = Shapes::StructureShape.new(name: 'GetWorkingLocationRequest')
    GetWorkingLocationResponse = Shapes::StructureShape.new(name: 'GetWorkingLocationResponse')
    IdType = Shapes::StringShape.new(name: 'IdType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SessionDuration = Shapes::IntegerShape.new(name: 'SessionDuration')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    arn = Shapes::StringShape.new(name: 'arn')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    locationType = Shapes::StringShape.new(name: 'locationType')
    stringMap = Shapes::MapShape.new(name: 'stringMap')
    stringMapKey = Shapes::StringShape.new(name: 'stringMapKey')
    stringMapValue = Shapes::StringShape.new(name: 'stringMapValue')
    stringValue = Shapes::StringShape.new(name: 'stringValue')
    stringValueLength1to1024 = Shapes::StringShape.new(name: 'stringValueLength1to1024')
    stringValueLength1to255 = Shapes::StringShape.new(name: 'stringValueLength1to255')
    stringValueLength1to63 = Shapes::StringShape.new(name: 'stringValueLength1to63')
    stringValueMaxLength1000 = Shapes::StringShape.new(name: 'stringValueMaxLength1000')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ChangesetInfo.add_member(:id, Shapes::ShapeRef.new(shape: IdType, location_name: "id"))
    ChangesetInfo.add_member(:changeset_arn, Shapes::ShapeRef.new(shape: arn, location_name: "changesetArn"))
    ChangesetInfo.add_member(:dataset_id, Shapes::ShapeRef.new(shape: IdType, location_name: "datasetId"))
    ChangesetInfo.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "changeType"))
    ChangesetInfo.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "sourceType"))
    ChangesetInfo.add_member(:source_params, Shapes::ShapeRef.new(shape: stringMap, location_name: "sourceParams"))
    ChangesetInfo.add_member(:format_type, Shapes::ShapeRef.new(shape: FormatType, location_name: "formatType"))
    ChangesetInfo.add_member(:format_params, Shapes::ShapeRef.new(shape: stringMap, location_name: "formatParams"))
    ChangesetInfo.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTimestamp"))
    ChangesetInfo.add_member(:status, Shapes::ShapeRef.new(shape: ChangesetStatus, location_name: "status"))
    ChangesetInfo.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "errorInfo"))
    ChangesetInfo.add_member(:changeset_labels, Shapes::ShapeRef.new(shape: stringMap, location_name: "changesetLabels"))
    ChangesetInfo.add_member(:updates_changeset_id, Shapes::ShapeRef.new(shape: stringValue, location_name: "updatesChangesetId"))
    ChangesetInfo.add_member(:updated_by_changeset_id, Shapes::ShapeRef.new(shape: stringValue, location_name: "updatedByChangesetId"))
    ChangesetInfo.struct_class = Types::ChangesetInfo

    CreateChangesetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "datasetId"))
    CreateChangesetRequest.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, required: true, location_name: "changeType"))
    CreateChangesetRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, required: true, location_name: "sourceType"))
    CreateChangesetRequest.add_member(:source_params, Shapes::ShapeRef.new(shape: stringMap, required: true, location_name: "sourceParams"))
    CreateChangesetRequest.add_member(:format_type, Shapes::ShapeRef.new(shape: FormatType, location_name: "formatType"))
    CreateChangesetRequest.add_member(:format_params, Shapes::ShapeRef.new(shape: stringMap, location_name: "formatParams"))
    CreateChangesetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: stringMap, location_name: "tags"))
    CreateChangesetRequest.struct_class = Types::CreateChangesetRequest

    CreateChangesetResponse.add_member(:changeset, Shapes::ShapeRef.new(shape: ChangesetInfo, location_name: "changeset"))
    CreateChangesetResponse.struct_class = Types::CreateChangesetResponse

    Credentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: stringValueLength1to255, location_name: "accessKeyId"))
    Credentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: stringValueMaxLength1000, location_name: "secretAccessKey"))
    Credentials.add_member(:session_token, Shapes::ShapeRef.new(shape: stringValueMaxLength1000, location_name: "sessionToken"))
    Credentials.struct_class = Types::Credentials

    ErrorInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: stringValueMaxLength1000, location_name: "errorMessage"))
    ErrorInfo.add_member(:error_category, Shapes::ShapeRef.new(shape: ErrorCategory, location_name: "errorCategory"))
    ErrorInfo.struct_class = Types::ErrorInfo

    GetProgrammaticAccessCredentialsRequest.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: SessionDuration, location: "querystring", location_name: "durationInMinutes"))
    GetProgrammaticAccessCredentialsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "querystring", location_name: "environmentId"))
    GetProgrammaticAccessCredentialsRequest.struct_class = Types::GetProgrammaticAccessCredentialsRequest

    GetProgrammaticAccessCredentialsResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "credentials"))
    GetProgrammaticAccessCredentialsResponse.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: SessionDuration, location_name: "durationInMinutes"))
    GetProgrammaticAccessCredentialsResponse.struct_class = Types::GetProgrammaticAccessCredentialsResponse

    GetWorkingLocationRequest.add_member(:location_type, Shapes::ShapeRef.new(shape: locationType, location_name: "locationType"))
    GetWorkingLocationRequest.struct_class = Types::GetWorkingLocationRequest

    GetWorkingLocationResponse.add_member(:s3_uri, Shapes::ShapeRef.new(shape: stringValueLength1to1024, location_name: "s3Uri"))
    GetWorkingLocationResponse.add_member(:s3_path, Shapes::ShapeRef.new(shape: stringValueLength1to1024, location_name: "s3Path"))
    GetWorkingLocationResponse.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: stringValueLength1to63, location_name: "s3Bucket"))
    GetWorkingLocationResponse.struct_class = Types::GetWorkingLocationResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    stringMap.key = Shapes::ShapeRef.new(shape: stringMapKey)
    stringMap.value = Shapes::ShapeRef.new(shape: stringMapValue)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-13"

      api.metadata = {
        "apiVersion" => "2020-07-13",
        "endpointPrefix" => "finspace-api",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "FinSpace Data",
        "serviceFullName" => "FinSpace Public API",
        "serviceId" => "finspace data",
        "signatureVersion" => "v4",
        "signingName" => "finspace-api",
        "uid" => "finspace-2020-07-13",
      }

      api.add_operation(:create_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChangeset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/changesets"
        o.input = Shapes::ShapeRef.new(shape: CreateChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_programmatic_access_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProgrammaticAccessCredentials"
        o.http_method = "GET"
        o.http_request_uri = "/credentials/programmatic"
        o.input = Shapes::ShapeRef.new(shape: GetProgrammaticAccessCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProgrammaticAccessCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_working_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkingLocation"
        o.http_method = "POST"
        o.http_request_uri = "/workingLocationV1"
        o.input = Shapes::ShapeRef.new(shape: GetWorkingLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkingLocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
