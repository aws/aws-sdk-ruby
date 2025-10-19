# frozen_string_literal: true

# This is generated code!

module Aws::CognitoSync
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AlreadyStreamedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#AlreadyStreamedException", name: "AlreadyStreamedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AlreadyStreamed", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#ApplicationArn", name: "ApplicationArn", traits: {"smithy.api#pattern" => "^arn:aws:sns:[-0-9a-z]+:\\d+:app/[A-Z_]+/[a-zA-Z0-9_.-]+$"})
    ApplicationArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitosync#ApplicationArnList", name: "ApplicationArnList")
    AssumeRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#AssumeRoleArn", name: "AssumeRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::\\d+:role/"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cognitosync#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BulkPublishRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#BulkPublishRequest", name: "BulkPublishRequest")
    BulkPublishResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#BulkPublishResponse", name: "BulkPublishResponse")
    BulkPublishStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitosync#BulkPublishStatus", name: "BulkPublishStatus")
    ClientContext = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#ClientContext", name: "ClientContext")
    CognitoEventType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#CognitoEventType", name: "CognitoEventType")
    CognitoStreams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#CognitoStreams", name: "CognitoStreams")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentModification", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Dataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#Dataset", name: "Dataset")
    DatasetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitosync#DatasetList", name: "DatasetList")
    DatasetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#DatasetName", name: "DatasetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.:-]+$"})
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cognitosync#Date", name: "Date")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DeleteDatasetResponse", name: "DeleteDatasetResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeIdentityPoolUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DescribeIdentityPoolUsageRequest", name: "DescribeIdentityPoolUsageRequest")
    DescribeIdentityPoolUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DescribeIdentityPoolUsageResponse", name: "DescribeIdentityPoolUsageResponse")
    DescribeIdentityUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DescribeIdentityUsageRequest", name: "DescribeIdentityUsageRequest")
    DescribeIdentityUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DescribeIdentityUsageResponse", name: "DescribeIdentityUsageResponse")
    DeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#DeviceId", name: "DeviceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DuplicateRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#DuplicateRequestException", name: "DuplicateRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Events = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitosync#Events", name: "Events", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#ExceptionMessage", name: "ExceptionMessage")
    GetBulkPublishDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#GetBulkPublishDetailsRequest", name: "GetBulkPublishDetailsRequest")
    GetBulkPublishDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#GetBulkPublishDetailsResponse", name: "GetBulkPublishDetailsResponse")
    GetCognitoEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#GetCognitoEventsRequest", name: "GetCognitoEventsRequest")
    GetCognitoEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#GetCognitoEventsResponse", name: "GetCognitoEventsResponse")
    GetIdentityPoolConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#GetIdentityPoolConfigurationRequest", name: "GetIdentityPoolConfigurationRequest")
    GetIdentityPoolConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#GetIdentityPoolConfigurationResponse", name: "GetIdentityPoolConfigurationResponse")
    IdentityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#IdentityId", name: "IdentityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+:[0-9a-f-]+$"})
    IdentityPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#IdentityPoolId", name: "IdentityPoolId", traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+:[0-9a-f-]+$"})
    IdentityPoolUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#IdentityPoolUsage", name: "IdentityPoolUsage")
    IdentityPoolUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitosync#IdentityPoolUsageList", name: "IdentityPoolUsageList")
    IdentityUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#IdentityUsage", name: "IdentityUsage")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitosync#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegerString = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitosync#IntegerString", name: "IntegerString")
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#InternalErrorException", name: "InternalErrorException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#InvalidConfigurationException", name: "InvalidConfigurationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidConfiguration", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLambdaFunctionOutputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#InvalidLambdaFunctionOutputException", name: "InvalidLambdaFunctionOutputException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidLambdaFunctionOutput", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#InvalidParameterException", name: "InvalidParameterException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LambdaFunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#LambdaFunctionArn", name: "LambdaFunctionArn")
    LambdaThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#LambdaThrottledException", name: "LambdaThrottledException", traits: {"aws.protocols#awsQueryError" => {"code" => "LambdaThrottled", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#LimitExceededException", name: "LimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListIdentityPoolUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ListIdentityPoolUsageRequest", name: "ListIdentityPoolUsageRequest")
    ListIdentityPoolUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ListIdentityPoolUsageResponse", name: "ListIdentityPoolUsageResponse")
    ListRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ListRecordsRequest", name: "ListRecordsRequest")
    ListRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ListRecordsResponse", name: "ListRecordsResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitosync#Long", name: "Long")
    MergedDatasetNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitosync#MergedDatasetNameList", name: "MergedDatasetNameList")
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#NotAuthorizedException", name: "NotAuthorizedException", traits: {"aws.protocols#awsQueryError" => {"code" => "NotAuthorizedError", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Operation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitosync#Operation", name: "Operation")
    Platform = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitosync#Platform", name: "Platform")
    PushSync = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#PushSync", name: "PushSync")
    PushToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#PushToken", name: "PushToken")
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#Record", name: "Record")
    RecordKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#RecordKey", name: "RecordKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    RecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitosync#RecordList", name: "RecordList")
    RecordPatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#RecordPatch", name: "RecordPatch")
    RecordPatchList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitosync#RecordPatchList", name: "RecordPatchList")
    RecordValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#RecordValue", name: "RecordValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1048575}})
    RegisterDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#RegisterDeviceRequest", name: "RegisterDeviceRequest")
    RegisterDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#RegisterDeviceResponse", name: "RegisterDeviceResponse")
    ResourceConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ResourceConflictException", name: "ResourceConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceConflict", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SetCognitoEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#SetCognitoEventsRequest", name: "SetCognitoEventsRequest")
    SetIdentityPoolConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#SetIdentityPoolConfigurationRequest", name: "SetIdentityPoolConfigurationRequest")
    SetIdentityPoolConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#SetIdentityPoolConfigurationResponse", name: "SetIdentityPoolConfigurationResponse")
    StreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#StreamName", name: "StreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    StreamingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitosync#StreamingStatus", name: "StreamingStatus")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#String", name: "String")
    SubscribeToDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#SubscribeToDatasetRequest", name: "SubscribeToDatasetRequest")
    SubscribeToDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#SubscribeToDatasetResponse", name: "SubscribeToDatasetResponse")
    SyncSessionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitosync#SyncSessionToken", name: "SyncSessionToken")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#TooManyRequestsException", name: "TooManyRequestsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyRequests", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnsubscribeFromDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#UnsubscribeFromDatasetRequest", name: "UnsubscribeFromDatasetRequest")
    UnsubscribeFromDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#UnsubscribeFromDatasetResponse", name: "UnsubscribeFromDatasetResponse")
    UpdateRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#UpdateRecordsRequest", name: "UpdateRecordsRequest")
    UpdateRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitosync#UpdateRecordsResponse", name: "UpdateRecordsResponse")

    AlreadyStreamedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    AlreadyStreamedException.type = Types::AlreadyStreamedException
    ApplicationArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn)
    BulkPublishRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BulkPublishRequest.type = Types::BulkPublishRequest
    BulkPublishResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    BulkPublishResponse.type = Types::BulkPublishResponse
    BulkPublishStatus.add_member(:not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    BulkPublishStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BulkPublishStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BulkPublishStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CognitoStreams.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    CognitoStreams.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeRoleArn, location_name: "RoleArn"))
    CognitoStreams.add_member(:streaming_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingStatus, location_name: "StreamingStatus"))
    CognitoStreams.type = Types::CognitoStreams
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    Dataset.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    Dataset.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    Dataset.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "CreationDate"))
    Dataset.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Dataset.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedBy"))
    Dataset.add_member(:data_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "DataStorage"))
    Dataset.add_member(:num_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "NumRecords"))
    Dataset.type = Types::Dataset
    DatasetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dataset)
    DeleteDatasetRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dataset, location_name: "Dataset"))
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DescribeDatasetRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dataset, location_name: "Dataset"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeIdentityPoolUsageRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIdentityPoolUsageRequest.type = Types::DescribeIdentityPoolUsageRequest
    DescribeIdentityPoolUsageResponse.add_member(:identity_pool_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolUsage, location_name: "IdentityPoolUsage"))
    DescribeIdentityPoolUsageResponse.type = Types::DescribeIdentityPoolUsageResponse
    DescribeIdentityUsageRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIdentityUsageRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIdentityUsageRequest.type = Types::DescribeIdentityUsageRequest
    DescribeIdentityUsageResponse.add_member(:identity_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityUsage, location_name: "IdentityUsage"))
    DescribeIdentityUsageResponse.type = Types::DescribeIdentityUsageResponse
    DuplicateRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    DuplicateRequestException.type = Types::DuplicateRequestException
    Events.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoEventType)
    Events.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionArn)
    GetBulkPublishDetailsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBulkPublishDetailsRequest.type = Types::GetBulkPublishDetailsRequest
    GetBulkPublishDetailsResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "BulkPublishStartTime"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_complete_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "BulkPublishCompleteTime"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BulkPublishStatus, location_name: "BulkPublishStatus"))
    GetBulkPublishDetailsResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    GetBulkPublishDetailsResponse.type = Types::GetBulkPublishDetailsResponse
    GetCognitoEventsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCognitoEventsRequest.type = Types::GetCognitoEventsRequest
    GetCognitoEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: "Events"))
    GetCognitoEventsResponse.type = Types::GetCognitoEventsResponse
    GetIdentityPoolConfigurationRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdentityPoolConfigurationRequest.type = Types::GetIdentityPoolConfigurationRequest
    GetIdentityPoolConfigurationResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    GetIdentityPoolConfigurationResponse.add_member(:push_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushSync, location_name: "PushSync"))
    GetIdentityPoolConfigurationResponse.add_member(:cognito_streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoStreams, location_name: "CognitoStreams"))
    GetIdentityPoolConfigurationResponse.type = Types::GetIdentityPoolConfigurationResponse
    IdentityPoolUsage.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    IdentityPoolUsage.add_member(:sync_sessions_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "SyncSessionsCount"))
    IdentityPoolUsage.add_member(:data_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "DataStorage"))
    IdentityPoolUsage.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    IdentityPoolUsage.type = Types::IdentityPoolUsage
    IdentityPoolUsageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolUsage)
    IdentityUsage.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    IdentityUsage.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    IdentityUsage.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    IdentityUsage.add_member(:dataset_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "DatasetCount", traits: {"smithy.api#default" => 0}))
    IdentityUsage.add_member(:data_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "DataStorage"))
    IdentityUsage.type = Types::IdentityUsage
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalErrorException.type = Types::InternalErrorException
    InvalidConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InvalidConfigurationException.type = Types::InvalidConfigurationException
    InvalidLambdaFunctionOutputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InvalidLambdaFunctionOutputException.type = Types::InvalidLambdaFunctionOutputException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    LambdaThrottledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    LambdaThrottledException.type = Types::LambdaThrottledException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    LimitExceededException.type = Types::LimitExceededException
    ListDatasetsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetsRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerString, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetList, location_name: "Datasets"))
    ListDatasetsResponse.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Count", traits: {"smithy.api#default" => 0}))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListIdentityPoolUsageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdentityPoolUsageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerString, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIdentityPoolUsageRequest.type = Types::ListIdentityPoolUsageRequest
    ListIdentityPoolUsageResponse.add_member(:identity_pool_usages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolUsageList, location_name: "IdentityPoolUsages"))
    ListIdentityPoolUsageResponse.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListIdentityPoolUsageResponse.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Count", traits: {"smithy.api#default" => 0}))
    ListIdentityPoolUsageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIdentityPoolUsageResponse.type = Types::ListIdentityPoolUsageResponse
    ListRecordsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecordsRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecordsRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecordsRequest.add_member(:last_sync_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "LastSyncCount", traits: {"smithy.api#httpQuery" => "lastSyncCount"}))
    ListRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerString, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecordsRequest.add_member(:sync_session_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSessionToken, location_name: "SyncSessionToken", traits: {"smithy.api#httpQuery" => "syncSessionToken"}))
    ListRecordsRequest.type = Types::ListRecordsRequest
    ListRecordsResponse.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordList, location_name: "Records"))
    ListRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRecordsResponse.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Count", traits: {"smithy.api#default" => 0}))
    ListRecordsResponse.add_member(:dataset_sync_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "DatasetSyncCount"))
    ListRecordsResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedBy"))
    ListRecordsResponse.add_member(:merged_dataset_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergedDatasetNameList, location_name: "MergedDatasetNames"))
    ListRecordsResponse.add_member(:dataset_exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DatasetExists", traits: {"smithy.api#default" => false}))
    ListRecordsResponse.add_member(:dataset_deleted_after_requested_sync_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DatasetDeletedAfterRequestedSyncCount", traits: {"smithy.api#default" => false}))
    ListRecordsResponse.add_member(:sync_session_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "SyncSessionToken"))
    ListRecordsResponse.type = Types::ListRecordsResponse
    MergedDatasetNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    NotAuthorizedException.type = Types::NotAuthorizedException
    Operation.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "replace", traits: {"smithy.api#enumValue" => "replace"}))
    Operation.add_member(:remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "remove", traits: {"smithy.api#enumValue" => "remove"}))
    Platform.add_member(:apns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APNS", traits: {"smithy.api#enumValue" => "APNS"}))
    Platform.add_member(:apns_sandbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APNS_SANDBOX", traits: {"smithy.api#enumValue" => "APNS_SANDBOX"}))
    Platform.add_member(:gcm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GCM", traits: {"smithy.api#enumValue" => "GCM"}))
    Platform.add_member(:adm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADM", traits: {"smithy.api#enumValue" => "ADM"}))
    PushSync.add_member(:application_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArnList, location_name: "ApplicationArns"))
    PushSync.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeRoleArn, location_name: "RoleArn"))
    PushSync.type = Types::PushSync
    Record.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordKey, location_name: "Key"))
    Record.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordValue, location_name: "Value"))
    Record.add_member(:sync_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "SyncCount"))
    Record.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Record.add_member(:last_modified_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedBy"))
    Record.add_member(:device_last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "DeviceLastModifiedDate"))
    Record.type = Types::Record
    RecordList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Record)
    RecordPatch.add_member(:op, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "Op", traits: {"smithy.api#required" => {}}))
    RecordPatch.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    RecordPatch.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordValue, location_name: "Value"))
    RecordPatch.add_member(:sync_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "SyncCount", traits: {"smithy.api#required" => {}}))
    RecordPatch.add_member(:device_last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "DeviceLastModifiedDate"))
    RecordPatch.type = Types::RecordPatch
    RecordPatchList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordPatch)
    RegisterDeviceRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterDeviceRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterDeviceRequest.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: "Platform", traits: {"smithy.api#required" => {}}))
    RegisterDeviceRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushToken, location_name: "Token", traits: {"smithy.api#required" => {}}))
    RegisterDeviceRequest.type = Types::RegisterDeviceRequest
    RegisterDeviceResponse.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    RegisterDeviceResponse.type = Types::RegisterDeviceResponse
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SetCognitoEventsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetCognitoEventsRequest.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Events, location_name: "Events", traits: {"smithy.api#required" => {}}))
    SetCognitoEventsRequest.type = Types::SetCognitoEventsRequest
    SetIdentityPoolConfigurationRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetIdentityPoolConfigurationRequest.add_member(:push_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushSync, location_name: "PushSync"))
    SetIdentityPoolConfigurationRequest.add_member(:cognito_streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoStreams, location_name: "CognitoStreams"))
    SetIdentityPoolConfigurationRequest.type = Types::SetIdentityPoolConfigurationRequest
    SetIdentityPoolConfigurationResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    SetIdentityPoolConfigurationResponse.add_member(:push_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushSync, location_name: "PushSync"))
    SetIdentityPoolConfigurationResponse.add_member(:cognito_streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoStreams, location_name: "CognitoStreams"))
    SetIdentityPoolConfigurationResponse.type = Types::SetIdentityPoolConfigurationResponse
    StreamingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    StreamingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SubscribeToDatasetRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubscribeToDatasetRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubscribeToDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubscribeToDatasetRequest.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubscribeToDatasetRequest.type = Types::SubscribeToDatasetRequest
    SubscribeToDatasetResponse.type = Types::SubscribeToDatasetResponse
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnsubscribeFromDatasetRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnsubscribeFromDatasetRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnsubscribeFromDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnsubscribeFromDatasetRequest.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnsubscribeFromDatasetRequest.type = Types::UnsubscribeFromDatasetRequest
    UnsubscribeFromDatasetResponse.type = Types::UnsubscribeFromDatasetResponse
    UpdateRecordsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecordsRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecordsRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecordsRequest.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    UpdateRecordsRequest.add_member(:record_patches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordPatchList, location_name: "RecordPatches"))
    UpdateRecordsRequest.add_member(:sync_session_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSessionToken, location_name: "SyncSessionToken", traits: {"smithy.api#required" => {}}))
    UpdateRecordsRequest.add_member(:client_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientContext, location_name: "ClientContext", traits: {"smithy.api#httpHeader" => "x-amz-Client-Context"}))
    UpdateRecordsRequest.type = Types::UpdateRecordsRequest
    UpdateRecordsResponse.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordList, location_name: "Records"))
    UpdateRecordsResponse.type = Types::UpdateRecordsResponse

    AWSCognitoSyncService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cognitosync#AWSCognitoSyncService"
      service.name = "AWSCognitoSyncService"
      service.version = "2014-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Cognito Sync", "arnNamespace" => "cognito-sync", "cloudFormationName" => "CognitoSync", "cloudTrailEventSource" => "cognitosync.amazonaws.com", "endpointPrefix" => "cognito-sync"}, "aws.auth#sigv4" => {"name" => "cognito-sync"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Cognito Sync", "smithy.api#xmlNamespace" => {"uri" => "http://cognito-sync.amazonaws.com/doc/2014-06-30/"}}
      service.add_operation(:bulk_publish, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#BulkPublish"
        operation.name = "BulkPublish"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BulkPublishRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BulkPublishResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyStreamedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/bulkpublish", "code" => 200}}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", "code" => 200}}
      end)
      service.add_operation(:describe_identity_pool_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#DescribeIdentityPoolUsage"
        operation.name = "DescribeIdentityPoolUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityPoolUsageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityPoolUsageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}", "code" => 200}}
      end)
      service.add_operation(:describe_identity_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#DescribeIdentityUsage"
        operation.name = "DescribeIdentityUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityUsageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityUsageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}", "code" => 200}}
      end)
      service.add_operation(:get_bulk_publish_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#GetBulkPublishDetails"
        operation.name = "GetBulkPublishDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBulkPublishDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBulkPublishDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/getBulkPublishDetails", "code" => 200}}
      end)
      service.add_operation(:get_cognito_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#GetCognitoEvents"
        operation.name = "GetCognitoEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCognitoEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCognitoEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/events", "code" => 200}}
      end)
      service.add_operation(:get_identity_pool_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#GetIdentityPoolConfiguration"
        operation.name = "GetIdentityPoolConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityPoolConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityPoolConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/configuration", "code" => 200}}
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", "code" => 200}}
      end)
      service.add_operation(:list_identity_pool_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#ListIdentityPoolUsage"
        operation.name = "ListIdentityPoolUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityPoolUsageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityPoolUsageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools", "code" => 200}}
      end)
      service.add_operation(:list_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#ListRecords"
        operation.name = "ListRecords"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", "code" => 200}}
      end)
      service.add_operation(:register_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#RegisterDevice"
        operation.name = "RegisterDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterDeviceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", "code" => 200}}
      end)
      service.add_operation(:set_cognito_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#SetCognitoEvents"
        operation.name = "SetCognitoEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetCognitoEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/events", "code" => 200}}
      end)
      service.add_operation(:set_identity_pool_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#SetIdentityPoolConfiguration"
        operation.name = "SetIdentityPoolConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityPoolConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityPoolConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/configuration", "code" => 200}}
      end)
      service.add_operation(:subscribe_to_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#SubscribeToDataset"
        operation.name = "SubscribeToDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribeToDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribeToDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:unsubscribe_from_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#UnsubscribeFromDataset"
        operation.name = "UnsubscribeFromDataset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeFromDatasetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeFromDatasetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:update_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#UpdateRecords"
        operation.name = "UpdateRecords"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecordsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRecordsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaFunctionOutputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", "code" => 200}}
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
