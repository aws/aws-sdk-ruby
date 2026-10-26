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

    AlreadyStreamedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    AlreadyStreamedException.type = Types::AlreadyStreamedException
    ApplicationArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "member"))
    BulkPublishRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BulkPublishRequest.type = Types::BulkPublishRequest
    BulkPublishResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId"))
    BulkPublishResponse.type = Types::BulkPublishResponse
    BulkPublishStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    BulkPublishStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BulkPublishStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BulkPublishStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CognitoStreams.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    CognitoStreams.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssumeRoleArn, name: "RoleArn"))
    CognitoStreams.add_member(:streaming_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingStatus, name: "StreamingStatus"))
    CognitoStreams.type = Types::CognitoStreams
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    Dataset.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId"))
    Dataset.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "DatasetName"))
    Dataset.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDate"))
    Dataset.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedDate"))
    Dataset.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedBy"))
    Dataset.add_member(:data_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DataStorage"))
    Dataset.add_member(:num_records, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumRecords"))
    Dataset.type = Types::Dataset
    DatasetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dataset, name: "member"))
    DeleteDatasetRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: Dataset, name: "Dataset"))
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DescribeDatasetRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: Dataset, name: "Dataset"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeIdentityPoolUsageRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIdentityPoolUsageRequest.type = Types::DescribeIdentityPoolUsageRequest
    DescribeIdentityPoolUsageResponse.add_member(:identity_pool_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolUsage, name: "IdentityPoolUsage"))
    DescribeIdentityPoolUsageResponse.type = Types::DescribeIdentityPoolUsageResponse
    DescribeIdentityUsageRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIdentityUsageRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIdentityUsageRequest.type = Types::DescribeIdentityUsageRequest
    DescribeIdentityUsageResponse.add_member(:identity_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityUsage, name: "IdentityUsage"))
    DescribeIdentityUsageResponse.type = Types::DescribeIdentityUsageResponse
    DuplicateRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    DuplicateRequestException.type = Types::DuplicateRequestException
    Events.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoEventType, name: "key"))
    Events.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionArn, name: "value"))
    GetBulkPublishDetailsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBulkPublishDetailsRequest.type = Types::GetBulkPublishDetailsRequest
    GetBulkPublishDetailsResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "BulkPublishStartTime"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_complete_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "BulkPublishCompleteTime"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkPublishStatus, name: "BulkPublishStatus"))
    GetBulkPublishDetailsResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureMessage"))
    GetBulkPublishDetailsResponse.type = Types::GetBulkPublishDetailsResponse
    GetCognitoEventsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCognitoEventsRequest.type = Types::GetCognitoEventsRequest
    GetCognitoEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: Events, name: "Events"))
    GetCognitoEventsResponse.type = Types::GetCognitoEventsResponse
    GetIdentityPoolConfigurationRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdentityPoolConfigurationRequest.type = Types::GetIdentityPoolConfigurationRequest
    GetIdentityPoolConfigurationResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId"))
    GetIdentityPoolConfigurationResponse.add_member(:push_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: PushSync, name: "PushSync"))
    GetIdentityPoolConfigurationResponse.add_member(:cognito_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoStreams, name: "CognitoStreams"))
    GetIdentityPoolConfigurationResponse.type = Types::GetIdentityPoolConfigurationResponse
    IdentityPoolUsage.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId"))
    IdentityPoolUsage.add_member(:sync_sessions_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SyncSessionsCount"))
    IdentityPoolUsage.add_member(:data_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DataStorage"))
    IdentityPoolUsage.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedDate"))
    IdentityPoolUsage.type = Types::IdentityPoolUsage
    IdentityPoolUsageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolUsage, name: "member"))
    IdentityUsage.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId"))
    IdentityUsage.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId"))
    IdentityUsage.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedDate"))
    IdentityUsage.add_member(:dataset_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DatasetCount", traits: {"smithy.api#default" => 0}))
    IdentityUsage.add_member(:data_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DataStorage"))
    IdentityUsage.type = Types::IdentityUsage
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InternalErrorException.type = Types::InternalErrorException
    InvalidConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidConfigurationException.type = Types::InvalidConfigurationException
    InvalidLambdaFunctionOutputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidLambdaFunctionOutputException.type = Types::InvalidLambdaFunctionOutputException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    LambdaThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    LambdaThrottledException.type = Types::LambdaThrottledException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    LimitExceededException.type = Types::LimitExceededException
    ListDatasetsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetsRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerString, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetList, name: "Datasets"))
    ListDatasetsResponse.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListIdentityPoolUsageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdentityPoolUsageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerString, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIdentityPoolUsageRequest.type = Types::ListIdentityPoolUsageRequest
    ListIdentityPoolUsageResponse.add_member(:identity_pool_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolUsageList, name: "IdentityPoolUsages"))
    ListIdentityPoolUsageResponse.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListIdentityPoolUsageResponse.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    ListIdentityPoolUsageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListIdentityPoolUsageResponse.type = Types::ListIdentityPoolUsageResponse
    ListRecordsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecordsRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecordsRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecordsRequest.add_member(:last_sync_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LastSyncCount", traits: {"smithy.api#httpQuery" => "lastSyncCount"}))
    ListRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerString, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecordsRequest.add_member(:sync_session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSessionToken, name: "SyncSessionToken", traits: {"smithy.api#httpQuery" => "syncSessionToken"}))
    ListRecordsRequest.type = Types::ListRecordsRequest
    ListRecordsResponse.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordList, name: "Records"))
    ListRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRecordsResponse.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    ListRecordsResponse.add_member(:dataset_sync_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DatasetSyncCount"))
    ListRecordsResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedBy"))
    ListRecordsResponse.add_member(:merged_dataset_names, ::Smithy::Schema::Shapes::MemberShape.new(target: MergedDatasetNameList, name: "MergedDatasetNames"))
    ListRecordsResponse.add_member(:dataset_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DatasetExists", traits: {"smithy.api#default" => false}))
    ListRecordsResponse.add_member(:dataset_deleted_after_requested_sync_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DatasetDeletedAfterRequestedSyncCount", traits: {"smithy.api#default" => false}))
    ListRecordsResponse.add_member(:sync_session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SyncSessionToken"))
    ListRecordsResponse.type = Types::ListRecordsResponse
    MergedDatasetNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    NotAuthorizedException.type = Types::NotAuthorizedException
    Operation.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "replace", traits: {"smithy.api#enumValue" => "replace"}))
    Operation.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "remove", traits: {"smithy.api#enumValue" => "remove"}))
    Platform.add_member(:apns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APNS", traits: {"smithy.api#enumValue" => "APNS"}))
    Platform.add_member(:apns_sandbox, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APNS_SANDBOX", traits: {"smithy.api#enumValue" => "APNS_SANDBOX"}))
    Platform.add_member(:gcm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GCM", traits: {"smithy.api#enumValue" => "GCM"}))
    Platform.add_member(:adm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADM", traits: {"smithy.api#enumValue" => "ADM"}))
    PushSync.add_member(:application_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArnList, name: "ApplicationArns"))
    PushSync.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssumeRoleArn, name: "RoleArn"))
    PushSync.type = Types::PushSync
    Record.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordKey, name: "Key"))
    Record.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordValue, name: "Value"))
    Record.add_member(:sync_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SyncCount"))
    Record.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedDate"))
    Record.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedBy"))
    Record.add_member(:device_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "DeviceLastModifiedDate"))
    Record.type = Types::Record
    RecordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member"))
    RecordPatch.add_member(:op, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Op", traits: {"smithy.api#required" => {}}))
    RecordPatch.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordKey, name: "Key", traits: {"smithy.api#required" => {}}))
    RecordPatch.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordValue, name: "Value"))
    RecordPatch.add_member(:sync_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SyncCount", traits: {"smithy.api#required" => {}}))
    RecordPatch.add_member(:device_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "DeviceLastModifiedDate"))
    RecordPatch.type = Types::RecordPatch
    RecordPatchList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordPatch, name: "member"))
    RegisterDeviceRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterDeviceRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterDeviceRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "Platform", traits: {"smithy.api#required" => {}}))
    RegisterDeviceRequest.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: PushToken, name: "Token", traits: {"smithy.api#required" => {}}))
    RegisterDeviceRequest.type = Types::RegisterDeviceRequest
    RegisterDeviceResponse.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    RegisterDeviceResponse.type = Types::RegisterDeviceResponse
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SetCognitoEventsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetCognitoEventsRequest.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: Events, name: "Events", traits: {"smithy.api#required" => {}}))
    SetCognitoEventsRequest.type = Types::SetCognitoEventsRequest
    SetIdentityPoolConfigurationRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetIdentityPoolConfigurationRequest.add_member(:push_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: PushSync, name: "PushSync"))
    SetIdentityPoolConfigurationRequest.add_member(:cognito_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoStreams, name: "CognitoStreams"))
    SetIdentityPoolConfigurationRequest.type = Types::SetIdentityPoolConfigurationRequest
    SetIdentityPoolConfigurationResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId"))
    SetIdentityPoolConfigurationResponse.add_member(:push_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: PushSync, name: "PushSync"))
    SetIdentityPoolConfigurationResponse.add_member(:cognito_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoStreams, name: "CognitoStreams"))
    SetIdentityPoolConfigurationResponse.type = Types::SetIdentityPoolConfigurationResponse
    StreamingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    StreamingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SubscribeToDatasetRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubscribeToDatasetRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubscribeToDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubscribeToDatasetRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubscribeToDatasetRequest.type = Types::SubscribeToDatasetRequest
    SubscribeToDatasetResponse.type = Types::SubscribeToDatasetResponse
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnsubscribeFromDatasetRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnsubscribeFromDatasetRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnsubscribeFromDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnsubscribeFromDatasetRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnsubscribeFromDatasetRequest.type = Types::UnsubscribeFromDatasetRequest
    UnsubscribeFromDatasetResponse.type = Types::UnsubscribeFromDatasetResponse
    UpdateRecordsRequest.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityPoolId, name: "IdentityPoolId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecordsRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "IdentityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecordsRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetName, name: "DatasetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecordsRequest.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    UpdateRecordsRequest.add_member(:record_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordPatchList, name: "RecordPatches"))
    UpdateRecordsRequest.add_member(:sync_session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSessionToken, name: "SyncSessionToken", traits: {"smithy.api#required" => {}}))
    UpdateRecordsRequest.add_member(:client_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientContext, name: "ClientContext", traits: {"smithy.api#httpHeader" => "x-amz-Client-Context"}))
    UpdateRecordsRequest.type = Types::UpdateRecordsRequest
    UpdateRecordsResponse.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordList, name: "Records"))
    UpdateRecordsResponse.type = Types::UpdateRecordsResponse

    AWSCognitoSyncService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cognitosync#AWSCognitoSyncService"
      service.name = "AWSCognitoSyncService"
      service.version = "2014-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Cognito Sync", "arnNamespace" => "cognito-sync", "cloudFormationName" => "CognitoSync", "cloudTrailEventSource" => "cognitosync.amazonaws.com", "endpointPrefix" => "cognito-sync"}, "aws.auth#sigv4" => {"name" => "cognito-sync"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Cognito Sync", "smithy.api#xmlNamespace" => {"uri" => "http://cognito-sync.amazonaws.com/doc/2014-06-30/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://cognito-sync-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://cognito-sync-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://cognito-sync.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://cognito-sync.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:bulk_publish, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#BulkPublish"
        operation.name = "BulkPublish"
        operation.input = BulkPublishRequest
        operation.output = BulkPublishResponse
        operation.errors << AlreadyStreamedException
        operation.errors << DuplicateRequestException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/bulkpublish", "code" => 200}}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = DeleteDatasetResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", "code" => 200}}
      end)
      service.add_operation(:describe_identity_pool_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#DescribeIdentityPoolUsage"
        operation.name = "DescribeIdentityPoolUsage"
        operation.input = DescribeIdentityPoolUsageRequest
        operation.output = DescribeIdentityPoolUsageResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}", "code" => 200}}
      end)
      service.add_operation(:describe_identity_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#DescribeIdentityUsage"
        operation.name = "DescribeIdentityUsage"
        operation.input = DescribeIdentityUsageRequest
        operation.output = DescribeIdentityUsageResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}", "code" => 200}}
      end)
      service.add_operation(:get_bulk_publish_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#GetBulkPublishDetails"
        operation.name = "GetBulkPublishDetails"
        operation.input = GetBulkPublishDetailsRequest
        operation.output = GetBulkPublishDetailsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/getBulkPublishDetails", "code" => 200}}
      end)
      service.add_operation(:get_cognito_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#GetCognitoEvents"
        operation.name = "GetCognitoEvents"
        operation.input = GetCognitoEventsRequest
        operation.output = GetCognitoEventsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/events", "code" => 200}}
      end)
      service.add_operation(:get_identity_pool_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#GetIdentityPoolConfiguration"
        operation.name = "GetIdentityPoolConfiguration"
        operation.input = GetIdentityPoolConfigurationRequest
        operation.output = GetIdentityPoolConfigurationResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/configuration", "code" => 200}}
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", "code" => 200}}
      end)
      service.add_operation(:list_identity_pool_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#ListIdentityPoolUsage"
        operation.name = "ListIdentityPoolUsage"
        operation.input = ListIdentityPoolUsageRequest
        operation.output = ListIdentityPoolUsageResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools", "code" => 200}}
      end)
      service.add_operation(:list_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#ListRecords"
        operation.name = "ListRecords"
        operation.input = ListRecordsRequest
        operation.output = ListRecordsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", "code" => 200}}
      end)
      service.add_operation(:register_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#RegisterDevice"
        operation.name = "RegisterDevice"
        operation.input = RegisterDeviceRequest
        operation.output = RegisterDeviceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidConfigurationException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", "code" => 200}}
      end)
      service.add_operation(:set_cognito_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#SetCognitoEvents"
        operation.name = "SetCognitoEvents"
        operation.input = SetCognitoEventsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/events", "code" => 200}}
      end)
      service.add_operation(:set_identity_pool_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#SetIdentityPoolConfiguration"
        operation.name = "SetIdentityPoolConfiguration"
        operation.input = SetIdentityPoolConfigurationRequest
        operation.output = SetIdentityPoolConfigurationResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/configuration", "code" => 200}}
      end)
      service.add_operation(:subscribe_to_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#SubscribeToDataset"
        operation.name = "SubscribeToDataset"
        operation.input = SubscribeToDatasetRequest
        operation.output = SubscribeToDatasetResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidConfigurationException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:unsubscribe_from_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#UnsubscribeFromDataset"
        operation.name = "UnsubscribeFromDataset"
        operation.input = UnsubscribeFromDatasetRequest
        operation.output = UnsubscribeFromDatasetResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidConfigurationException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:update_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitosync#UpdateRecords"
        operation.name = "UpdateRecords"
        operation.input = UpdateRecordsRequest
        operation.output = UpdateRecordsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidLambdaFunctionOutputException
        operation.errors << InvalidParameterException
        operation.errors << LambdaThrottledException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
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
