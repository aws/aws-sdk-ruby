# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Braket
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AlgorithmSpecification = Shapes::StructureShape.new(name: 'AlgorithmSpecification')
    CancelJobRequest = Shapes::StructureShape.new(name: 'CancelJobRequest')
    CancelJobResponse = Shapes::StructureShape.new(name: 'CancelJobResponse')
    CancelQuantumTaskRequest = Shapes::StructureShape.new(name: 'CancelQuantumTaskRequest')
    CancelQuantumTaskResponse = Shapes::StructureShape.new(name: 'CancelQuantumTaskResponse')
    CancellationStatus = Shapes::StringShape.new(name: 'CancellationStatus')
    CompressionType = Shapes::StringShape.new(name: 'CompressionType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContainerImage = Shapes::StructureShape.new(name: 'ContainerImage')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobRequestInputDataConfigList = Shapes::ListShape.new(name: 'CreateJobRequestInputDataConfigList')
    CreateJobRequestJobNameString = Shapes::StringShape.new(name: 'CreateJobRequestJobNameString')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreateQuantumTaskRequest = Shapes::StructureShape.new(name: 'CreateQuantumTaskRequest')
    CreateQuantumTaskRequestDeviceParametersString = Shapes::StringShape.new(name: 'CreateQuantumTaskRequestDeviceParametersString')
    CreateQuantumTaskRequestOutputS3BucketString = Shapes::StringShape.new(name: 'CreateQuantumTaskRequestOutputS3BucketString')
    CreateQuantumTaskRequestOutputS3KeyPrefixString = Shapes::StringShape.new(name: 'CreateQuantumTaskRequestOutputS3KeyPrefixString')
    CreateQuantumTaskRequestShotsLong = Shapes::IntegerShape.new(name: 'CreateQuantumTaskRequestShotsLong')
    CreateQuantumTaskResponse = Shapes::StructureShape.new(name: 'CreateQuantumTaskResponse')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DeviceArn = Shapes::StringShape.new(name: 'DeviceArn')
    DeviceConfig = Shapes::StructureShape.new(name: 'DeviceConfig')
    DeviceOfflineException = Shapes::StructureShape.new(name: 'DeviceOfflineException')
    DeviceRetiredException = Shapes::StructureShape.new(name: 'DeviceRetiredException')
    DeviceStatus = Shapes::StringShape.new(name: 'DeviceStatus')
    DeviceSummary = Shapes::StructureShape.new(name: 'DeviceSummary')
    DeviceSummaryList = Shapes::ListShape.new(name: 'DeviceSummaryList')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    GetDeviceRequest = Shapes::StructureShape.new(name: 'GetDeviceRequest')
    GetDeviceResponse = Shapes::StructureShape.new(name: 'GetDeviceResponse')
    GetJobRequest = Shapes::StructureShape.new(name: 'GetJobRequest')
    GetJobResponse = Shapes::StructureShape.new(name: 'GetJobResponse')
    GetJobResponseJobNameString = Shapes::StringShape.new(name: 'GetJobResponseJobNameString')
    GetQuantumTaskRequest = Shapes::StructureShape.new(name: 'GetQuantumTaskRequest')
    GetQuantumTaskResponse = Shapes::StructureShape.new(name: 'GetQuantumTaskResponse')
    HyperParameters = Shapes::MapShape.new(name: 'HyperParameters')
    HyperParametersValueString = Shapes::StringShape.new(name: 'HyperParametersValueString')
    InputConfigList = Shapes::ListShape.new(name: 'InputConfigList')
    InputFileConfig = Shapes::StructureShape.new(name: 'InputFileConfig')
    InputFileConfigChannelNameString = Shapes::StringShape.new(name: 'InputFileConfigChannelNameString')
    InstanceConfig = Shapes::StructureShape.new(name: 'InstanceConfig')
    InstanceConfigInstanceCountInteger = Shapes::IntegerShape.new(name: 'InstanceConfigInstanceCountInteger')
    InstanceConfigVolumeSizeInGbInteger = Shapes::IntegerShape.new(name: 'InstanceConfigVolumeSizeInGbInteger')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    JobArn = Shapes::StringShape.new(name: 'JobArn')
    JobCheckpointConfig = Shapes::StructureShape.new(name: 'JobCheckpointConfig')
    JobEventDetails = Shapes::StructureShape.new(name: 'JobEventDetails')
    JobEventDetailsMessageString = Shapes::StringShape.new(name: 'JobEventDetailsMessageString')
    JobEventType = Shapes::StringShape.new(name: 'JobEventType')
    JobEvents = Shapes::ListShape.new(name: 'JobEvents')
    JobOutputDataConfig = Shapes::StructureShape.new(name: 'JobOutputDataConfig')
    JobPrimaryStatus = Shapes::StringShape.new(name: 'JobPrimaryStatus')
    JobStoppingCondition = Shapes::StructureShape.new(name: 'JobStoppingCondition')
    JobStoppingConditionMaxRuntimeInSecondsInteger = Shapes::IntegerShape.new(name: 'JobStoppingConditionMaxRuntimeInSecondsInteger')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobSummaryList = Shapes::ListShape.new(name: 'JobSummaryList')
    JobToken = Shapes::StringShape.new(name: 'JobToken')
    JsonValue = Shapes::StringShape.new(name: 'JsonValue')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    QuantumTaskArn = Shapes::StringShape.new(name: 'QuantumTaskArn')
    QuantumTaskStatus = Shapes::StringShape.new(name: 'QuantumTaskStatus')
    QuantumTaskSummary = Shapes::StructureShape.new(name: 'QuantumTaskSummary')
    QuantumTaskSummaryList = Shapes::ListShape.new(name: 'QuantumTaskSummaryList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3DataSource = Shapes::StructureShape.new(name: 'S3DataSource')
    S3Path = Shapes::StringShape.new(name: 'S3Path')
    ScriptModeConfig = Shapes::StructureShape.new(name: 'ScriptModeConfig')
    SearchDevicesFilter = Shapes::StructureShape.new(name: 'SearchDevicesFilter')
    SearchDevicesFilterNameString = Shapes::StringShape.new(name: 'SearchDevicesFilterNameString')
    SearchDevicesFilterValuesList = Shapes::ListShape.new(name: 'SearchDevicesFilterValuesList')
    SearchDevicesRequest = Shapes::StructureShape.new(name: 'SearchDevicesRequest')
    SearchDevicesRequestFiltersList = Shapes::ListShape.new(name: 'SearchDevicesRequestFiltersList')
    SearchDevicesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchDevicesRequestMaxResultsInteger')
    SearchDevicesResponse = Shapes::StructureShape.new(name: 'SearchDevicesResponse')
    SearchJobsFilter = Shapes::StructureShape.new(name: 'SearchJobsFilter')
    SearchJobsFilterOperator = Shapes::StringShape.new(name: 'SearchJobsFilterOperator')
    SearchJobsFilterValuesList = Shapes::ListShape.new(name: 'SearchJobsFilterValuesList')
    SearchJobsRequest = Shapes::StructureShape.new(name: 'SearchJobsRequest')
    SearchJobsRequestFiltersList = Shapes::ListShape.new(name: 'SearchJobsRequestFiltersList')
    SearchJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchJobsRequestMaxResultsInteger')
    SearchJobsResponse = Shapes::StructureShape.new(name: 'SearchJobsResponse')
    SearchQuantumTasksFilter = Shapes::StructureShape.new(name: 'SearchQuantumTasksFilter')
    SearchQuantumTasksFilterOperator = Shapes::StringShape.new(name: 'SearchQuantumTasksFilterOperator')
    SearchQuantumTasksFilterValuesList = Shapes::ListShape.new(name: 'SearchQuantumTasksFilterValuesList')
    SearchQuantumTasksRequest = Shapes::StructureShape.new(name: 'SearchQuantumTasksRequest')
    SearchQuantumTasksRequestFiltersList = Shapes::ListShape.new(name: 'SearchQuantumTasksRequestFiltersList')
    SearchQuantumTasksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchQuantumTasksRequestMaxResultsInteger')
    SearchQuantumTasksResponse = Shapes::StructureShape.new(name: 'SearchQuantumTasksResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    String1024 = Shapes::StringShape.new(name: 'String1024')
    String2048 = Shapes::StringShape.new(name: 'String2048')
    String256 = Shapes::StringShape.new(name: 'String256')
    String4096 = Shapes::StringShape.new(name: 'String4096')
    String64 = Shapes::StringShape.new(name: 'String64')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    Uri = Shapes::StringShape.new(name: 'Uri')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AlgorithmSpecification.add_member(:container_image, Shapes::ShapeRef.new(shape: ContainerImage, location_name: "containerImage"))
    AlgorithmSpecification.add_member(:script_mode_config, Shapes::ShapeRef.new(shape: ScriptModeConfig, location_name: "scriptModeConfig"))
    AlgorithmSpecification.struct_class = Types::AlgorithmSpecification

    CancelJobRequest.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location: "uri", location_name: "jobArn"))
    CancelJobRequest.struct_class = Types::CancelJobRequest

    CancelJobResponse.add_member(:cancellation_status, Shapes::ShapeRef.new(shape: CancellationStatus, required: true, location_name: "cancellationStatus"))
    CancelJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "jobArn"))
    CancelJobResponse.struct_class = Types::CancelJobResponse

    CancelQuantumTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CancelQuantumTaskRequest.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location: "uri", location_name: "quantumTaskArn"))
    CancelQuantumTaskRequest.struct_class = Types::CancelQuantumTaskRequest

    CancelQuantumTaskResponse.add_member(:cancellation_status, Shapes::ShapeRef.new(shape: CancellationStatus, required: true, location_name: "cancellationStatus"))
    CancelQuantumTaskResponse.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location_name: "quantumTaskArn"))
    CancelQuantumTaskResponse.struct_class = Types::CancelQuantumTaskResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContainerImage.add_member(:uri, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "uri"))
    ContainerImage.struct_class = Types::ContainerImage

    CreateJobRequest.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, required: true, location_name: "algorithmSpecification"))
    CreateJobRequest.add_member(:checkpoint_config, Shapes::ShapeRef.new(shape: JobCheckpointConfig, location_name: "checkpointConfig"))
    CreateJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateJobRequest.add_member(:device_config, Shapes::ShapeRef.new(shape: DeviceConfig, required: true, location_name: "deviceConfig"))
    CreateJobRequest.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "hyperParameters"))
    CreateJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: CreateJobRequestInputDataConfigList, location_name: "inputDataConfig"))
    CreateJobRequest.add_member(:instance_config, Shapes::ShapeRef.new(shape: InstanceConfig, required: true, location_name: "instanceConfig"))
    CreateJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: CreateJobRequestJobNameString, required: true, location_name: "jobName"))
    CreateJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: JobOutputDataConfig, required: true, location_name: "outputDataConfig"))
    CreateJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateJobRequest.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: JobStoppingCondition, location_name: "stoppingCondition"))
    CreateJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobRequestInputDataConfigList.member = Shapes::ShapeRef.new(shape: InputFileConfig)

    CreateJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "jobArn"))
    CreateJobResponse.struct_class = Types::CreateJobResponse

    CreateQuantumTaskRequest.add_member(:action, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "action", metadata: {"jsonvalue"=>true}))
    CreateQuantumTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateQuantumTaskRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    CreateQuantumTaskRequest.add_member(:device_parameters, Shapes::ShapeRef.new(shape: CreateQuantumTaskRequestDeviceParametersString, location_name: "deviceParameters", metadata: {"jsonvalue"=>true}))
    CreateQuantumTaskRequest.add_member(:job_token, Shapes::ShapeRef.new(shape: JobToken, location_name: "jobToken"))
    CreateQuantumTaskRequest.add_member(:output_s3_bucket, Shapes::ShapeRef.new(shape: CreateQuantumTaskRequestOutputS3BucketString, required: true, location_name: "outputS3Bucket"))
    CreateQuantumTaskRequest.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: CreateQuantumTaskRequestOutputS3KeyPrefixString, required: true, location_name: "outputS3KeyPrefix"))
    CreateQuantumTaskRequest.add_member(:shots, Shapes::ShapeRef.new(shape: CreateQuantumTaskRequestShotsLong, required: true, location_name: "shots"))
    CreateQuantumTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateQuantumTaskRequest.struct_class = Types::CreateQuantumTaskRequest

    CreateQuantumTaskResponse.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location_name: "quantumTaskArn"))
    CreateQuantumTaskResponse.struct_class = Types::CreateQuantumTaskResponse

    DataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: S3DataSource, required: true, location_name: "s3DataSource"))
    DataSource.struct_class = Types::DataSource

    DeviceConfig.add_member(:device, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "device"))
    DeviceConfig.struct_class = Types::DeviceConfig

    DeviceOfflineException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DeviceOfflineException.struct_class = Types::DeviceOfflineException

    DeviceRetiredException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DeviceRetiredException.struct_class = Types::DeviceRetiredException

    DeviceSummary.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    DeviceSummary.add_member(:device_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "deviceName"))
    DeviceSummary.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, required: true, location_name: "deviceStatus"))
    DeviceSummary.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, required: true, location_name: "deviceType"))
    DeviceSummary.add_member(:provider_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "providerName"))
    DeviceSummary.struct_class = Types::DeviceSummary

    DeviceSummaryList.member = Shapes::ShapeRef.new(shape: DeviceSummary)

    GetDeviceRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location: "uri", location_name: "deviceArn"))
    GetDeviceRequest.struct_class = Types::GetDeviceRequest

    GetDeviceResponse.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    GetDeviceResponse.add_member(:device_capabilities, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "deviceCapabilities", metadata: {"jsonvalue"=>true}))
    GetDeviceResponse.add_member(:device_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "deviceName"))
    GetDeviceResponse.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, required: true, location_name: "deviceStatus"))
    GetDeviceResponse.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, required: true, location_name: "deviceType"))
    GetDeviceResponse.add_member(:provider_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "providerName"))
    GetDeviceResponse.struct_class = Types::GetDeviceResponse

    GetJobRequest.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location: "uri", location_name: "jobArn"))
    GetJobRequest.struct_class = Types::GetJobRequest

    GetJobResponse.add_member(:algorithm_specification, Shapes::ShapeRef.new(shape: AlgorithmSpecification, required: true, location_name: "algorithmSpecification"))
    GetJobResponse.add_member(:billable_duration, Shapes::ShapeRef.new(shape: Integer, location_name: "billableDuration"))
    GetJobResponse.add_member(:checkpoint_config, Shapes::ShapeRef.new(shape: JobCheckpointConfig, location_name: "checkpointConfig"))
    GetJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetJobResponse.add_member(:device_config, Shapes::ShapeRef.new(shape: DeviceConfig, location_name: "deviceConfig"))
    GetJobResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endedAt"))
    GetJobResponse.add_member(:events, Shapes::ShapeRef.new(shape: JobEvents, location_name: "events"))
    GetJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String1024, location_name: "failureReason"))
    GetJobResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: HyperParameters, location_name: "hyperParameters"))
    GetJobResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputConfigList, location_name: "inputDataConfig"))
    GetJobResponse.add_member(:instance_config, Shapes::ShapeRef.new(shape: InstanceConfig, required: true, location_name: "instanceConfig"))
    GetJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "jobArn"))
    GetJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: GetJobResponseJobNameString, required: true, location_name: "jobName"))
    GetJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: JobOutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetJobResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startedAt"))
    GetJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: JobPrimaryStatus, required: true, location_name: "status"))
    GetJobResponse.add_member(:stopping_condition, Shapes::ShapeRef.new(shape: JobStoppingCondition, location_name: "stoppingCondition"))
    GetJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetJobResponse.struct_class = Types::GetJobResponse

    GetQuantumTaskRequest.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location: "uri", location_name: "quantumTaskArn"))
    GetQuantumTaskRequest.struct_class = Types::GetQuantumTaskRequest

    GetQuantumTaskResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetQuantumTaskResponse.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    GetQuantumTaskResponse.add_member(:device_parameters, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "deviceParameters", metadata: {"jsonvalue"=>true}))
    GetQuantumTaskResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endedAt"))
    GetQuantumTaskResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetQuantumTaskResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "jobArn"))
    GetQuantumTaskResponse.add_member(:output_s3_bucket, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputS3Bucket"))
    GetQuantumTaskResponse.add_member(:output_s3_directory, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputS3Directory"))
    GetQuantumTaskResponse.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location_name: "quantumTaskArn"))
    GetQuantumTaskResponse.add_member(:shots, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "shots"))
    GetQuantumTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: QuantumTaskStatus, required: true, location_name: "status"))
    GetQuantumTaskResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetQuantumTaskResponse.struct_class = Types::GetQuantumTaskResponse

    HyperParameters.key = Shapes::ShapeRef.new(shape: String256)
    HyperParameters.value = Shapes::ShapeRef.new(shape: HyperParametersValueString)

    InputConfigList.member = Shapes::ShapeRef.new(shape: InputFileConfig)

    InputFileConfig.add_member(:channel_name, Shapes::ShapeRef.new(shape: InputFileConfigChannelNameString, required: true, location_name: "channelName"))
    InputFileConfig.add_member(:content_type, Shapes::ShapeRef.new(shape: String256, location_name: "contentType"))
    InputFileConfig.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, required: true, location_name: "dataSource"))
    InputFileConfig.struct_class = Types::InputFileConfig

    InstanceConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: InstanceConfigInstanceCountInteger, location_name: "instanceCount"))
    InstanceConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    InstanceConfig.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: InstanceConfigVolumeSizeInGbInteger, required: true, location_name: "volumeSizeInGb"))
    InstanceConfig.struct_class = Types::InstanceConfig

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    JobCheckpointConfig.add_member(:local_path, Shapes::ShapeRef.new(shape: String4096, location_name: "localPath"))
    JobCheckpointConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "s3Uri"))
    JobCheckpointConfig.struct_class = Types::JobCheckpointConfig

    JobEventDetails.add_member(:event_type, Shapes::ShapeRef.new(shape: JobEventType, location_name: "eventType"))
    JobEventDetails.add_member(:message, Shapes::ShapeRef.new(shape: JobEventDetailsMessageString, location_name: "message"))
    JobEventDetails.add_member(:time_of_event, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timeOfEvent"))
    JobEventDetails.struct_class = Types::JobEventDetails

    JobEvents.member = Shapes::ShapeRef.new(shape: JobEventDetails)

    JobOutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String2048, location_name: "kmsKeyId"))
    JobOutputDataConfig.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "s3Path"))
    JobOutputDataConfig.struct_class = Types::JobOutputDataConfig

    JobStoppingCondition.add_member(:max_runtime_in_seconds, Shapes::ShapeRef.new(shape: JobStoppingConditionMaxRuntimeInSecondsInteger, location_name: "maxRuntimeInSeconds"))
    JobStoppingCondition.struct_class = Types::JobStoppingCondition

    JobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    JobSummary.add_member(:device, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "device"))
    JobSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endedAt"))
    JobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "jobArn"))
    JobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobName"))
    JobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startedAt"))
    JobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobPrimaryStatus, required: true, location_name: "status"))
    JobSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    JobSummary.struct_class = Types::JobSummary

    JobSummaryList.member = Shapes::ShapeRef.new(shape: JobSummary)

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    QuantumTaskSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    QuantumTaskSummary.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    QuantumTaskSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endedAt"))
    QuantumTaskSummary.add_member(:output_s3_bucket, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputS3Bucket"))
    QuantumTaskSummary.add_member(:output_s3_directory, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputS3Directory"))
    QuantumTaskSummary.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location_name: "quantumTaskArn"))
    QuantumTaskSummary.add_member(:shots, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "shots"))
    QuantumTaskSummary.add_member(:status, Shapes::ShapeRef.new(shape: QuantumTaskStatus, required: true, location_name: "status"))
    QuantumTaskSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    QuantumTaskSummary.struct_class = Types::QuantumTaskSummary

    QuantumTaskSummaryList.member = Shapes::ShapeRef.new(shape: QuantumTaskSummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "s3Uri"))
    S3DataSource.struct_class = Types::S3DataSource

    ScriptModeConfig.add_member(:compression_type, Shapes::ShapeRef.new(shape: CompressionType, location_name: "compressionType"))
    ScriptModeConfig.add_member(:entry_point, Shapes::ShapeRef.new(shape: String, required: true, location_name: "entryPoint"))
    ScriptModeConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "s3Uri"))
    ScriptModeConfig.struct_class = Types::ScriptModeConfig

    SearchDevicesFilter.add_member(:name, Shapes::ShapeRef.new(shape: SearchDevicesFilterNameString, required: true, location_name: "name"))
    SearchDevicesFilter.add_member(:values, Shapes::ShapeRef.new(shape: SearchDevicesFilterValuesList, required: true, location_name: "values"))
    SearchDevicesFilter.struct_class = Types::SearchDevicesFilter

    SearchDevicesFilterValuesList.member = Shapes::ShapeRef.new(shape: String256)

    SearchDevicesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchDevicesRequestFiltersList, required: true, location_name: "filters"))
    SearchDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchDevicesRequestMaxResultsInteger, location_name: "maxResults"))
    SearchDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchDevicesRequest.struct_class = Types::SearchDevicesRequest

    SearchDevicesRequestFiltersList.member = Shapes::ShapeRef.new(shape: SearchDevicesFilter)

    SearchDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceSummaryList, required: true, location_name: "devices"))
    SearchDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchDevicesResponse.struct_class = Types::SearchDevicesResponse

    SearchJobsFilter.add_member(:name, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "name"))
    SearchJobsFilter.add_member(:operator, Shapes::ShapeRef.new(shape: SearchJobsFilterOperator, required: true, location_name: "operator"))
    SearchJobsFilter.add_member(:values, Shapes::ShapeRef.new(shape: SearchJobsFilterValuesList, required: true, location_name: "values"))
    SearchJobsFilter.struct_class = Types::SearchJobsFilter

    SearchJobsFilterValuesList.member = Shapes::ShapeRef.new(shape: String256)

    SearchJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchJobsRequestFiltersList, required: true, location_name: "filters"))
    SearchJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchJobsRequestMaxResultsInteger, location_name: "maxResults"))
    SearchJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchJobsRequest.struct_class = Types::SearchJobsRequest

    SearchJobsRequestFiltersList.member = Shapes::ShapeRef.new(shape: SearchJobsFilter)

    SearchJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobSummaryList, required: true, location_name: "jobs"))
    SearchJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchJobsResponse.struct_class = Types::SearchJobsResponse

    SearchQuantumTasksFilter.add_member(:name, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "name"))
    SearchQuantumTasksFilter.add_member(:operator, Shapes::ShapeRef.new(shape: SearchQuantumTasksFilterOperator, required: true, location_name: "operator"))
    SearchQuantumTasksFilter.add_member(:values, Shapes::ShapeRef.new(shape: SearchQuantumTasksFilterValuesList, required: true, location_name: "values"))
    SearchQuantumTasksFilter.struct_class = Types::SearchQuantumTasksFilter

    SearchQuantumTasksFilterValuesList.member = Shapes::ShapeRef.new(shape: String256)

    SearchQuantumTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchQuantumTasksRequestFiltersList, required: true, location_name: "filters"))
    SearchQuantumTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchQuantumTasksRequestMaxResultsInteger, location_name: "maxResults"))
    SearchQuantumTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchQuantumTasksRequest.struct_class = Types::SearchQuantumTasksRequest

    SearchQuantumTasksRequestFiltersList.member = Shapes::ShapeRef.new(shape: SearchQuantumTasksFilter)

    SearchQuantumTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchQuantumTasksResponse.add_member(:quantum_tasks, Shapes::ShapeRef.new(shape: QuantumTaskSummaryList, required: true, location_name: "quantumTasks"))
    SearchQuantumTasksResponse.struct_class = Types::SearchQuantumTasksResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-09-01"

      api.metadata = {
        "apiVersion" => "2019-09-01",
        "endpointPrefix" => "braket",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Braket",
        "serviceId" => "Braket",
        "signatureVersion" => "v4",
        "signingName" => "braket",
        "uid" => "braket-2019-09-01",
      }

      api.add_operation(:cancel_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJob"
        o.http_method = "PUT"
        o.http_request_uri = "/job/{jobArn}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:cancel_quantum_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelQuantumTask"
        o.http_method = "PUT"
        o.http_request_uri = "/quantum-task/{quantumTaskArn}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelQuantumTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelQuantumTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/job"
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceRetiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_quantum_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQuantumTask"
        o.http_method = "POST"
        o.http_request_uri = "/quantum-task"
        o.input = Shapes::ShapeRef.new(shape: CreateQuantumTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQuantumTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceOfflineException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceRetiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevice"
        o.http_method = "GET"
        o.http_request_uri = "/device/{deviceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJob"
        o.http_method = "GET"
        o.http_request_uri = "/job/{jobArn}"
        o.input = Shapes::ShapeRef.new(shape: GetJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_quantum_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQuantumTask"
        o.http_method = "GET"
        o.http_request_uri = "/quantum-task/{quantumTaskArn}"
        o.input = Shapes::ShapeRef.new(shape: GetQuantumTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQuantumTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:search_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDevices"
        o.http_method = "POST"
        o.http_request_uri = "/devices"
        o.input = Shapes::ShapeRef.new(shape: SearchDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchJobs"
        o.http_method = "POST"
        o.http_request_uri = "/jobs"
        o.input = Shapes::ShapeRef.new(shape: SearchJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_quantum_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchQuantumTasks"
        o.http_method = "POST"
        o.http_request_uri = "/quantum-tasks"
        o.input = Shapes::ShapeRef.new(shape: SearchQuantumTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchQuantumTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
