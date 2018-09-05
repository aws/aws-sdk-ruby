# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CognitoSync
  # @api private
  module ClientApi

    include Seahorse::Model

    AlreadyStreamedException = Shapes::StructureShape.new(name: 'AlreadyStreamedException')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationArnList = Shapes::ListShape.new(name: 'ApplicationArnList')
    AssumeRoleArn = Shapes::StringShape.new(name: 'AssumeRoleArn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BulkPublishRequest = Shapes::StructureShape.new(name: 'BulkPublishRequest')
    BulkPublishResponse = Shapes::StructureShape.new(name: 'BulkPublishResponse')
    BulkPublishStatus = Shapes::StringShape.new(name: 'BulkPublishStatus')
    ClientContext = Shapes::StringShape.new(name: 'ClientContext')
    CognitoEventType = Shapes::StringShape.new(name: 'CognitoEventType')
    CognitoStreams = Shapes::StructureShape.new(name: 'CognitoStreams')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    Dataset = Shapes::StructureShape.new(name: 'Dataset')
    DatasetList = Shapes::ListShape.new(name: 'DatasetList')
    DatasetName = Shapes::StringShape.new(name: 'DatasetName')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDatasetResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeIdentityPoolUsageRequest = Shapes::StructureShape.new(name: 'DescribeIdentityPoolUsageRequest')
    DescribeIdentityPoolUsageResponse = Shapes::StructureShape.new(name: 'DescribeIdentityPoolUsageResponse')
    DescribeIdentityUsageRequest = Shapes::StructureShape.new(name: 'DescribeIdentityUsageRequest')
    DescribeIdentityUsageResponse = Shapes::StructureShape.new(name: 'DescribeIdentityUsageResponse')
    DeviceId = Shapes::StringShape.new(name: 'DeviceId')
    DuplicateRequestException = Shapes::StructureShape.new(name: 'DuplicateRequestException')
    Events = Shapes::MapShape.new(name: 'Events')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    GetBulkPublishDetailsRequest = Shapes::StructureShape.new(name: 'GetBulkPublishDetailsRequest')
    GetBulkPublishDetailsResponse = Shapes::StructureShape.new(name: 'GetBulkPublishDetailsResponse')
    GetCognitoEventsRequest = Shapes::StructureShape.new(name: 'GetCognitoEventsRequest')
    GetCognitoEventsResponse = Shapes::StructureShape.new(name: 'GetCognitoEventsResponse')
    GetIdentityPoolConfigurationRequest = Shapes::StructureShape.new(name: 'GetIdentityPoolConfigurationRequest')
    GetIdentityPoolConfigurationResponse = Shapes::StructureShape.new(name: 'GetIdentityPoolConfigurationResponse')
    IdentityId = Shapes::StringShape.new(name: 'IdentityId')
    IdentityPoolId = Shapes::StringShape.new(name: 'IdentityPoolId')
    IdentityPoolUsage = Shapes::StructureShape.new(name: 'IdentityPoolUsage')
    IdentityPoolUsageList = Shapes::ListShape.new(name: 'IdentityPoolUsageList')
    IdentityUsage = Shapes::StructureShape.new(name: 'IdentityUsage')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerString = Shapes::IntegerShape.new(name: 'IntegerString')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidConfigurationException = Shapes::StructureShape.new(name: 'InvalidConfigurationException')
    InvalidLambdaFunctionOutputException = Shapes::StructureShape.new(name: 'InvalidLambdaFunctionOutputException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    LambdaFunctionArn = Shapes::StringShape.new(name: 'LambdaFunctionArn')
    LambdaThrottledException = Shapes::StructureShape.new(name: 'LambdaThrottledException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListIdentityPoolUsageRequest = Shapes::StructureShape.new(name: 'ListIdentityPoolUsageRequest')
    ListIdentityPoolUsageResponse = Shapes::StructureShape.new(name: 'ListIdentityPoolUsageResponse')
    ListRecordsRequest = Shapes::StructureShape.new(name: 'ListRecordsRequest')
    ListRecordsResponse = Shapes::StructureShape.new(name: 'ListRecordsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MergedDatasetNameList = Shapes::ListShape.new(name: 'MergedDatasetNameList')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    Operation = Shapes::StringShape.new(name: 'Operation')
    Platform = Shapes::StringShape.new(name: 'Platform')
    PushSync = Shapes::StructureShape.new(name: 'PushSync')
    PushToken = Shapes::StringShape.new(name: 'PushToken')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordKey = Shapes::StringShape.new(name: 'RecordKey')
    RecordList = Shapes::ListShape.new(name: 'RecordList')
    RecordPatch = Shapes::StructureShape.new(name: 'RecordPatch')
    RecordPatchList = Shapes::ListShape.new(name: 'RecordPatchList')
    RecordValue = Shapes::StringShape.new(name: 'RecordValue')
    RegisterDeviceRequest = Shapes::StructureShape.new(name: 'RegisterDeviceRequest')
    RegisterDeviceResponse = Shapes::StructureShape.new(name: 'RegisterDeviceResponse')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SetCognitoEventsRequest = Shapes::StructureShape.new(name: 'SetCognitoEventsRequest')
    SetIdentityPoolConfigurationRequest = Shapes::StructureShape.new(name: 'SetIdentityPoolConfigurationRequest')
    SetIdentityPoolConfigurationResponse = Shapes::StructureShape.new(name: 'SetIdentityPoolConfigurationResponse')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    StreamingStatus = Shapes::StringShape.new(name: 'StreamingStatus')
    String = Shapes::StringShape.new(name: 'String')
    SubscribeToDatasetRequest = Shapes::StructureShape.new(name: 'SubscribeToDatasetRequest')
    SubscribeToDatasetResponse = Shapes::StructureShape.new(name: 'SubscribeToDatasetResponse')
    SyncSessionToken = Shapes::StringShape.new(name: 'SyncSessionToken')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnsubscribeFromDatasetRequest = Shapes::StructureShape.new(name: 'UnsubscribeFromDatasetRequest')
    UnsubscribeFromDatasetResponse = Shapes::StructureShape.new(name: 'UnsubscribeFromDatasetResponse')
    UpdateRecordsRequest = Shapes::StructureShape.new(name: 'UpdateRecordsRequest')
    UpdateRecordsResponse = Shapes::StructureShape.new(name: 'UpdateRecordsResponse')

    ApplicationArnList.member = Shapes::ShapeRef.new(shape: ApplicationArn)

    BulkPublishRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    BulkPublishRequest.struct_class = Types::BulkPublishRequest

    BulkPublishResponse.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    BulkPublishResponse.struct_class = Types::BulkPublishResponse

    CognitoStreams.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    CognitoStreams.add_member(:role_arn, Shapes::ShapeRef.new(shape: AssumeRoleArn, location_name: "RoleArn"))
    CognitoStreams.add_member(:streaming_status, Shapes::ShapeRef.new(shape: StreamingStatus, location_name: "StreamingStatus"))
    CognitoStreams.struct_class = Types::CognitoStreams

    Dataset.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    Dataset.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, location_name: "DatasetName"))
    Dataset.add_member(:creation_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDate"))
    Dataset.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Dataset.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedBy"))
    Dataset.add_member(:data_storage, Shapes::ShapeRef.new(shape: Long, location_name: "DataStorage"))
    Dataset.add_member(:num_records, Shapes::ShapeRef.new(shape: Long, location_name: "NumRecords"))
    Dataset.struct_class = Types::Dataset

    DatasetList.member = Shapes::ShapeRef.new(shape: Dataset)

    DeleteDatasetRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    DeleteDatasetRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    DeleteDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "DatasetName"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: Dataset, location_name: "Dataset"))
    DeleteDatasetResponse.struct_class = Types::DeleteDatasetResponse

    DescribeDatasetRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    DescribeDatasetRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    DescribeDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "DatasetName"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:dataset, Shapes::ShapeRef.new(shape: Dataset, location_name: "Dataset"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeIdentityPoolUsageRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    DescribeIdentityPoolUsageRequest.struct_class = Types::DescribeIdentityPoolUsageRequest

    DescribeIdentityPoolUsageResponse.add_member(:identity_pool_usage, Shapes::ShapeRef.new(shape: IdentityPoolUsage, location_name: "IdentityPoolUsage"))
    DescribeIdentityPoolUsageResponse.struct_class = Types::DescribeIdentityPoolUsageResponse

    DescribeIdentityUsageRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    DescribeIdentityUsageRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    DescribeIdentityUsageRequest.struct_class = Types::DescribeIdentityUsageRequest

    DescribeIdentityUsageResponse.add_member(:identity_usage, Shapes::ShapeRef.new(shape: IdentityUsage, location_name: "IdentityUsage"))
    DescribeIdentityUsageResponse.struct_class = Types::DescribeIdentityUsageResponse

    Events.key = Shapes::ShapeRef.new(shape: CognitoEventType)
    Events.value = Shapes::ShapeRef.new(shape: LambdaFunctionArn)

    GetBulkPublishDetailsRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    GetBulkPublishDetailsRequest.struct_class = Types::GetBulkPublishDetailsRequest

    GetBulkPublishDetailsResponse.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "BulkPublishStartTime"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_complete_time, Shapes::ShapeRef.new(shape: Date, location_name: "BulkPublishCompleteTime"))
    GetBulkPublishDetailsResponse.add_member(:bulk_publish_status, Shapes::ShapeRef.new(shape: BulkPublishStatus, location_name: "BulkPublishStatus"))
    GetBulkPublishDetailsResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    GetBulkPublishDetailsResponse.struct_class = Types::GetBulkPublishDetailsResponse

    GetCognitoEventsRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    GetCognitoEventsRequest.struct_class = Types::GetCognitoEventsRequest

    GetCognitoEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: Events, location_name: "Events"))
    GetCognitoEventsResponse.struct_class = Types::GetCognitoEventsResponse

    GetIdentityPoolConfigurationRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    GetIdentityPoolConfigurationRequest.struct_class = Types::GetIdentityPoolConfigurationRequest

    GetIdentityPoolConfigurationResponse.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    GetIdentityPoolConfigurationResponse.add_member(:push_sync, Shapes::ShapeRef.new(shape: PushSync, location_name: "PushSync"))
    GetIdentityPoolConfigurationResponse.add_member(:cognito_streams, Shapes::ShapeRef.new(shape: CognitoStreams, location_name: "CognitoStreams"))
    GetIdentityPoolConfigurationResponse.struct_class = Types::GetIdentityPoolConfigurationResponse

    IdentityPoolUsage.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    IdentityPoolUsage.add_member(:sync_sessions_count, Shapes::ShapeRef.new(shape: Long, location_name: "SyncSessionsCount"))
    IdentityPoolUsage.add_member(:data_storage, Shapes::ShapeRef.new(shape: Long, location_name: "DataStorage"))
    IdentityPoolUsage.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    IdentityPoolUsage.struct_class = Types::IdentityPoolUsage

    IdentityPoolUsageList.member = Shapes::ShapeRef.new(shape: IdentityPoolUsage)

    IdentityUsage.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    IdentityUsage.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    IdentityUsage.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    IdentityUsage.add_member(:dataset_count, Shapes::ShapeRef.new(shape: Integer, location_name: "DatasetCount"))
    IdentityUsage.add_member(:data_storage, Shapes::ShapeRef.new(shape: Long, location_name: "DataStorage"))
    IdentityUsage.struct_class = Types::IdentityUsage

    ListDatasetsRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    ListDatasetsRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerString, location: "querystring", location_name: "maxResults"))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: DatasetList, location_name: "Datasets"))
    ListDatasetsResponse.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListIdentityPoolUsageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListIdentityPoolUsageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerString, location: "querystring", location_name: "maxResults"))
    ListIdentityPoolUsageRequest.struct_class = Types::ListIdentityPoolUsageRequest

    ListIdentityPoolUsageResponse.add_member(:identity_pool_usages, Shapes::ShapeRef.new(shape: IdentityPoolUsageList, location_name: "IdentityPoolUsages"))
    ListIdentityPoolUsageResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    ListIdentityPoolUsageResponse.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    ListIdentityPoolUsageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIdentityPoolUsageResponse.struct_class = Types::ListIdentityPoolUsageResponse

    ListRecordsRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    ListRecordsRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    ListRecordsRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "DatasetName"))
    ListRecordsRequest.add_member(:last_sync_count, Shapes::ShapeRef.new(shape: Long, location: "querystring", location_name: "lastSyncCount"))
    ListRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerString, location: "querystring", location_name: "maxResults"))
    ListRecordsRequest.add_member(:sync_session_token, Shapes::ShapeRef.new(shape: SyncSessionToken, location: "querystring", location_name: "syncSessionToken"))
    ListRecordsRequest.struct_class = Types::ListRecordsRequest

    ListRecordsResponse.add_member(:records, Shapes::ShapeRef.new(shape: RecordList, location_name: "Records"))
    ListRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRecordsResponse.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    ListRecordsResponse.add_member(:dataset_sync_count, Shapes::ShapeRef.new(shape: Long, location_name: "DatasetSyncCount"))
    ListRecordsResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedBy"))
    ListRecordsResponse.add_member(:merged_dataset_names, Shapes::ShapeRef.new(shape: MergedDatasetNameList, location_name: "MergedDatasetNames"))
    ListRecordsResponse.add_member(:dataset_exists, Shapes::ShapeRef.new(shape: Boolean, location_name: "DatasetExists"))
    ListRecordsResponse.add_member(:dataset_deleted_after_requested_sync_count, Shapes::ShapeRef.new(shape: Boolean, location_name: "DatasetDeletedAfterRequestedSyncCount"))
    ListRecordsResponse.add_member(:sync_session_token, Shapes::ShapeRef.new(shape: String, location_name: "SyncSessionToken"))
    ListRecordsResponse.struct_class = Types::ListRecordsResponse

    MergedDatasetNameList.member = Shapes::ShapeRef.new(shape: String)

    PushSync.add_member(:application_arns, Shapes::ShapeRef.new(shape: ApplicationArnList, location_name: "ApplicationArns"))
    PushSync.add_member(:role_arn, Shapes::ShapeRef.new(shape: AssumeRoleArn, location_name: "RoleArn"))
    PushSync.struct_class = Types::PushSync

    Record.add_member(:key, Shapes::ShapeRef.new(shape: RecordKey, location_name: "Key"))
    Record.add_member(:value, Shapes::ShapeRef.new(shape: RecordValue, location_name: "Value"))
    Record.add_member(:sync_count, Shapes::ShapeRef.new(shape: Long, location_name: "SyncCount"))
    Record.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedDate"))
    Record.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedBy"))
    Record.add_member(:device_last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "DeviceLastModifiedDate"))
    Record.struct_class = Types::Record

    RecordList.member = Shapes::ShapeRef.new(shape: Record)

    RecordPatch.add_member(:op, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "Op"))
    RecordPatch.add_member(:key, Shapes::ShapeRef.new(shape: RecordKey, required: true, location_name: "Key"))
    RecordPatch.add_member(:value, Shapes::ShapeRef.new(shape: RecordValue, location_name: "Value"))
    RecordPatch.add_member(:sync_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "SyncCount"))
    RecordPatch.add_member(:device_last_modified_date, Shapes::ShapeRef.new(shape: Date, location_name: "DeviceLastModifiedDate"))
    RecordPatch.struct_class = Types::RecordPatch

    RecordPatchList.member = Shapes::ShapeRef.new(shape: RecordPatch)

    RegisterDeviceRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    RegisterDeviceRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    RegisterDeviceRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "Platform"))
    RegisterDeviceRequest.add_member(:token, Shapes::ShapeRef.new(shape: PushToken, required: true, location_name: "Token"))
    RegisterDeviceRequest.struct_class = Types::RegisterDeviceRequest

    RegisterDeviceResponse.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    RegisterDeviceResponse.struct_class = Types::RegisterDeviceResponse

    SetCognitoEventsRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    SetCognitoEventsRequest.add_member(:events, Shapes::ShapeRef.new(shape: Events, required: true, location_name: "Events"))
    SetCognitoEventsRequest.struct_class = Types::SetCognitoEventsRequest

    SetIdentityPoolConfigurationRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    SetIdentityPoolConfigurationRequest.add_member(:push_sync, Shapes::ShapeRef.new(shape: PushSync, location_name: "PushSync"))
    SetIdentityPoolConfigurationRequest.add_member(:cognito_streams, Shapes::ShapeRef.new(shape: CognitoStreams, location_name: "CognitoStreams"))
    SetIdentityPoolConfigurationRequest.struct_class = Types::SetIdentityPoolConfigurationRequest

    SetIdentityPoolConfigurationResponse.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    SetIdentityPoolConfigurationResponse.add_member(:push_sync, Shapes::ShapeRef.new(shape: PushSync, location_name: "PushSync"))
    SetIdentityPoolConfigurationResponse.add_member(:cognito_streams, Shapes::ShapeRef.new(shape: CognitoStreams, location_name: "CognitoStreams"))
    SetIdentityPoolConfigurationResponse.struct_class = Types::SetIdentityPoolConfigurationResponse

    SubscribeToDatasetRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    SubscribeToDatasetRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    SubscribeToDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "DatasetName"))
    SubscribeToDatasetRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "DeviceId"))
    SubscribeToDatasetRequest.struct_class = Types::SubscribeToDatasetRequest

    SubscribeToDatasetResponse.struct_class = Types::SubscribeToDatasetResponse

    UnsubscribeFromDatasetRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    UnsubscribeFromDatasetRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    UnsubscribeFromDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "DatasetName"))
    UnsubscribeFromDatasetRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "DeviceId"))
    UnsubscribeFromDatasetRequest.struct_class = Types::UnsubscribeFromDatasetRequest

    UnsubscribeFromDatasetResponse.struct_class = Types::UnsubscribeFromDatasetResponse

    UpdateRecordsRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location: "uri", location_name: "IdentityPoolId"))
    UpdateRecordsRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location: "uri", location_name: "IdentityId"))
    UpdateRecordsRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location: "uri", location_name: "DatasetName"))
    UpdateRecordsRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    UpdateRecordsRequest.add_member(:record_patches, Shapes::ShapeRef.new(shape: RecordPatchList, location_name: "RecordPatches"))
    UpdateRecordsRequest.add_member(:sync_session_token, Shapes::ShapeRef.new(shape: SyncSessionToken, required: true, location_name: "SyncSessionToken"))
    UpdateRecordsRequest.add_member(:client_context, Shapes::ShapeRef.new(shape: ClientContext, location: "header", location_name: "x-amz-Client-Context"))
    UpdateRecordsRequest.struct_class = Types::UpdateRecordsRequest

    UpdateRecordsResponse.add_member(:records, Shapes::ShapeRef.new(shape: RecordList, location_name: "Records"))
    UpdateRecordsResponse.struct_class = Types::UpdateRecordsResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-06-30"

      api.metadata = {
        "apiVersion" => "2014-06-30",
        "endpointPrefix" => "cognito-sync",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Cognito Sync",
        "signatureVersion" => "v4",
        "uid" => "cognito-sync-2014-06-30",
      }

      api.add_operation(:bulk_publish, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BulkPublish"
        o.http_method = "POST"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/bulkpublish"
        o.input = Shapes::ShapeRef.new(shape: BulkPublishRequest)
        o.output = Shapes::ShapeRef.new(shape: BulkPublishResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyStreamedException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "GET"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_identity_pool_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIdentityPoolUsage"
        o.http_method = "GET"
        o.http_request_uri = "/identitypools/{IdentityPoolId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeIdentityPoolUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIdentityPoolUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_identity_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIdentityUsage"
        o.http_method = "GET"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identities/{IdentityId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeIdentityUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIdentityUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_bulk_publish_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBulkPublishDetails"
        o.http_method = "POST"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/getBulkPublishDetails"
        o.input = Shapes::ShapeRef.new(shape: GetBulkPublishDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBulkPublishDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_cognito_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCognitoEvents"
        o.http_method = "GET"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/events"
        o.input = Shapes::ShapeRef.new(shape: GetCognitoEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCognitoEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_identity_pool_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdentityPoolConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetIdentityPoolConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIdentityPoolConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "GET"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_identity_pool_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentityPoolUsage"
        o.http_method = "GET"
        o.http_request_uri = "/identitypools"
        o.input = Shapes::ShapeRef.new(shape: ListIdentityPoolUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIdentityPoolUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecords"
        o.http_method = "GET"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records"
        o.input = Shapes::ShapeRef.new(shape: ListRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:register_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDevice"
        o.http_method = "POST"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device"
        o.input = Shapes::ShapeRef.new(shape: RegisterDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:set_cognito_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetCognitoEvents"
        o.http_method = "POST"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/events"
        o.input = Shapes::ShapeRef.new(shape: SetCognitoEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:set_identity_pool_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetIdentityPoolConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/configuration"
        o.input = Shapes::ShapeRef.new(shape: SetIdentityPoolConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: SetIdentityPoolConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:subscribe_to_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubscribeToDataset"
        o.http_method = "POST"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}"
        o.input = Shapes::ShapeRef.new(shape: SubscribeToDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: SubscribeToDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:unsubscribe_from_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnsubscribeFromDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}"
        o.input = Shapes::ShapeRef.new(shape: UnsubscribeFromDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: UnsubscribeFromDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecords"
        o.http_method = "POST"
        o.http_request_uri = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionOutputException)
        o.errors << Shapes::ShapeRef.new(shape: LambdaThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)
    end

  end
end
