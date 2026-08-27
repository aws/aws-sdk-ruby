# frozen_string_literal: true

# This is generated code!

module Aws::Braket
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ActionMetadata", name: "ActionMetadata")
    AlgorithmSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#AlgorithmSpecification", name: "AlgorithmSpecification")
    Association = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#Association", name: "Association")
    AssociationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#AssociationType", name: "AssociationType", traits: {"smithy.api#enum" => [{"value" => "RESERVATION_TIME_WINDOW_ARN", "name" => "RESERVATION_TIME_WINDOW_ARN"}]})
    Associations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#Associations", name: "Associations")
    BraketResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#BraketResourceArn", name: "BraketResourceArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z\\-]*:braket:[a-z0-9\\-]*:[0-9]{12}:.*$"})
    CancelJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#CancelJobInput", name: "CancelJobInput")
    CancelJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#CancelJobOutput", name: "CancelJobOutput")
    CancelQuantumTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#CancelQuantumTaskInput", name: "CancelQuantumTaskInput")
    CancelQuantumTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#CancelQuantumTaskOutput", name: "CancelQuantumTaskOutput")
    CancellationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#CancellationStatus", name: "CancellationStatus", traits: {"smithy.api#enum" => [{"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    CompressionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#CompressionType", name: "CompressionType", traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "GZIP", "name" => "GZIP"}]})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContainerImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ContainerImage", name: "ContainerImage")
    CreateJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#CreateJobInput", name: "CreateJobInput")
    CreateJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#CreateJobOutput", name: "CreateJobOutput")
    CreateQuantumTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#CreateQuantumTaskInput", name: "CreateQuantumTaskInput")
    CreateQuantumTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#CreateQuantumTaskOutput", name: "CreateQuantumTaskOutput")
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#DataSource", name: "DataSource")
    DeviceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#DeviceArn", name: "DeviceArn", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.braket#Braket", "resource" => "com.amazonaws.braket#DeviceResource"}, "smithy.api#length" => {"min" => 1, "max" => 256}})
    DeviceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#DeviceConfig", name: "DeviceConfig")
    DeviceOfflineException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#DeviceOfflineException", name: "DeviceOfflineException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    DeviceQueueInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#DeviceQueueInfo", name: "DeviceQueueInfo")
    DeviceQueueInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#DeviceQueueInfoList", name: "DeviceQueueInfoList")
    DeviceRetiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#DeviceRetiredException", name: "DeviceRetiredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    DeviceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#DeviceStatus", name: "DeviceStatus", traits: {"smithy.api#enum" => [{"value" => "ONLINE", "name" => "ONLINE"}, {"value" => "OFFLINE", "name" => "OFFLINE"}, {"value" => "RETIRED", "name" => "RETIRED"}]})
    DeviceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#DeviceSummary", name: "DeviceSummary")
    DeviceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#DeviceSummaryList", name: "DeviceSummaryList")
    DeviceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#DeviceType", name: "DeviceType", traits: {"smithy.api#enum" => [{"value" => "QPU", "name" => "QPU"}, {"value" => "SIMULATOR", "name" => "SIMULATOR"}]})
    GetDeviceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#GetDeviceInput", name: "GetDeviceInput")
    GetDeviceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#GetDeviceOutput", name: "GetDeviceOutput")
    GetJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#GetJobInput", name: "GetJobInput")
    GetJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#GetJobOutput", name: "GetJobOutput")
    GetQuantumTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#GetQuantumTaskInput", name: "GetQuantumTaskInput")
    GetQuantumTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#GetQuantumTaskOutput", name: "GetQuantumTaskOutput")
    HybridJobAdditionalAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#HybridJobAdditionalAttributeName", name: "HybridJobAdditionalAttributeName", traits: {"smithy.api#enum" => [{"value" => "QueueInfo", "name" => "QUEUE_INFO"}]})
    HybridJobAdditionalAttributeNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#HybridJobAdditionalAttributeNamesList", name: "HybridJobAdditionalAttributeNamesList")
    HybridJobQueueInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#HybridJobQueueInfo", name: "HybridJobQueueInfo")
    HyperParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.braket#HyperParameters", name: "HyperParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    InputConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#InputConfigList", name: "InputConfigList")
    InputFileConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#InputFileConfig", name: "InputFileConfig")
    InstanceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#InstanceConfig", name: "InstanceConfig")
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#InstanceType", name: "InstanceType", traits: {"smithy.api#enum" => [{"value" => "ml.m4.xlarge", "name" => "ML_M4_XLARGE"}, {"value" => "ml.m4.2xlarge", "name" => "ML_M4_2XLARGE"}, {"value" => "ml.m4.4xlarge", "name" => "ML_M4_4XLARGE"}, {"value" => "ml.m4.10xlarge", "name" => "ML_M4_10XLARGE"}, {"value" => "ml.m4.16xlarge", "name" => "ML_M4_16XLARGE"}, {"value" => "ml.g4dn.xlarge", "name" => "ML_G4DN_XLARGE"}, {"value" => "ml.g4dn.2xlarge", "name" => "ML_G4DN_2XLARGE"}, {"value" => "ml.g4dn.4xlarge", "name" => "ML_G4DN_4XLARGE"}, {"value" => "ml.g4dn.8xlarge", "name" => "ML_G4DN_8XLARGE"}, {"value" => "ml.g4dn.12xlarge", "name" => "ML_G4DN_12XLARGE"}, {"value" => "ml.g4dn.16xlarge", "name" => "ML_G4DN_16XLARGE"}, {"value" => "ml.m5.large", "name" => "ML_M5_LARGE"}, {"value" => "ml.m5.xlarge", "name" => "ML_M5_XLARGE"}, {"value" => "ml.m5.2xlarge", "name" => "ML_M5_2XLARGE"}, {"value" => "ml.m5.4xlarge", "name" => "ML_M5_4XLARGE"}, {"value" => "ml.m5.12xlarge", "name" => "ML_M5_12XLARGE"}, {"value" => "ml.m5.24xlarge", "name" => "ML_M5_24XLARGE"}, {"value" => "ml.c4.xlarge", "name" => "ML_C4_XLARGE"}, {"value" => "ml.c4.2xlarge", "name" => "ML_C4_2XLARGE"}, {"value" => "ml.c4.4xlarge", "name" => "ML_C4_4XLARGE"}, {"value" => "ml.c4.8xlarge", "name" => "ML_C4_8XLARGE"}, {"value" => "ml.p2.xlarge", "name" => "ML_P2_XLARGE"}, {"value" => "ml.p2.8xlarge", "name" => "ML_P2_8XLARGE"}, {"value" => "ml.p2.16xlarge", "name" => "ML_P2_16XLARGE"}, {"value" => "ml.p3.2xlarge", "name" => "ML_P3_2XLARGE"}, {"value" => "ml.p3.8xlarge", "name" => "ML_P3_8XLARGE"}, {"value" => "ml.p3.16xlarge", "name" => "ML_P3_16XLARGE"}, {"value" => "ml.p3dn.24xlarge", "name" => "ML_P3DN_24XLARGE"}, {"value" => "ml.p4d.24xlarge", "name" => "ML_P4D_24XLARGE"}, {"value" => "ml.c5.xlarge", "name" => "ML_C5_XLARGE"}, {"value" => "ml.c5.2xlarge", "name" => "ML_C5_2XLARGE"}, {"value" => "ml.c5.4xlarge", "name" => "ML_C5_4XLARGE"}, {"value" => "ml.c5.9xlarge", "name" => "ML_C5_9XLARGE"}, {"value" => "ml.c5.18xlarge", "name" => "ML_C5_18XLARGE"}, {"value" => "ml.c5n.xlarge", "name" => "ML_C5N_XLARGE"}, {"value" => "ml.c5n.2xlarge", "name" => "ML_C5N_2XLARGE"}, {"value" => "ml.c5n.4xlarge", "name" => "ML_C5N_4XLARGE"}, {"value" => "ml.c5n.9xlarge", "name" => "ML_C5N_9XLARGE"}, {"value" => "ml.c5n.18xlarge", "name" => "ML_C5N_18XLARGE"}]})
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#JobArn", name: "JobArn", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.braket#Braket", "resource" => "com.amazonaws.braket#JobResource"}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:braket:[a-z0-9\\-]+:[0-9]{12}:job/.*$"})
    JobCheckpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#JobCheckpointConfig", name: "JobCheckpointConfig")
    JobEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#JobEventDetails", name: "JobEventDetails")
    JobEventType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#JobEventType", name: "JobEventType", traits: {"smithy.api#enum" => [{"value" => "WAITING_FOR_PRIORITY", "name" => "WAITING_FOR_PRIORITY"}, {"value" => "QUEUED_FOR_EXECUTION", "name" => "QUEUED_FOR_EXECUTION"}, {"value" => "STARTING_INSTANCE", "name" => "STARTING_INSTANCE"}, {"value" => "DOWNLOADING_DATA", "name" => "DOWNLOADING_DATA"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "DEPRIORITIZED_DUE_TO_INACTIVITY", "name" => "DEPRIORITIZED_DUE_TO_INACTIVITY"}, {"value" => "UPLOADING_RESULTS", "name" => "UPLOADING_RESULTS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "MAX_RUNTIME_EXCEEDED", "name" => "MAX_RUNTIME_EXCEEDED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    JobEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#JobEvents", name: "JobEvents", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    JobOutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#JobOutputDataConfig", name: "JobOutputDataConfig")
    JobPrimaryStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#JobPrimaryStatus", name: "JobPrimaryStatus", traits: {"smithy.api#enum" => [{"value" => "QUEUED", "name" => "QUEUED"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    JobStoppingCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#JobStoppingCondition", name: "JobStoppingCondition")
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#JobSummary", name: "JobSummary")
    JobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#JobSummaryList", name: "JobSummaryList")
    JobToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#JobToken", name: "JobToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    JsonValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#JsonValue", name: "JsonValue", traits: {"smithy.api#mediaType" => "application/json"})
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ProgramSetValidationFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ProgramSetValidationFailure", name: "ProgramSetValidationFailure")
    ProgramSetValidationFailuresList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#ProgramSetValidationFailuresList", name: "ProgramSetValidationFailuresList")
    ProgramValidationFailuresList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#ProgramValidationFailuresList", name: "ProgramValidationFailuresList")
    QuantumTaskAdditionalAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#QuantumTaskAdditionalAttributeName", name: "QuantumTaskAdditionalAttributeName", traits: {"smithy.api#enum" => [{"value" => "QueueInfo", "name" => "QUEUE_INFO"}]})
    QuantumTaskAdditionalAttributeNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#QuantumTaskAdditionalAttributeNamesList", name: "QuantumTaskAdditionalAttributeNamesList")
    QuantumTaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#QuantumTaskArn", name: "QuantumTaskArn", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.braket#Braket", "resource" => "com.amazonaws.braket#QuantumTaskResource"}, "smithy.api#length" => {"min" => 0, "max" => 256}})
    QuantumTaskQueueInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#QuantumTaskQueueInfo", name: "QuantumTaskQueueInfo")
    QuantumTaskStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#QuantumTaskStatus", name: "QuantumTaskStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "QUEUED", "name" => "QUEUED"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    QuantumTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#QuantumTaskSummary", name: "QuantumTaskSummary")
    QuantumTaskSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#QuantumTaskSummaryList", name: "QuantumTaskSummaryList")
    QueueName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#QueueName", name: "QueueName", traits: {"smithy.api#enum" => [{"value" => "QUANTUM_TASKS_QUEUE", "name" => "QUANTUM_TASKS_QUEUE"}, {"value" => "JOBS_QUEUE", "name" => "JOBS_QUEUE"}]})
    QueuePriority = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#QueuePriority", name: "QueuePriority", traits: {"smithy.api#enum" => [{"value" => "Normal", "name" => "NORMAL"}, {"value" => "Priority", "name" => "PRIORITY"}]})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#RoleArn", name: "RoleArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#S3DataSource", name: "S3DataSource")
    S3Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#S3Path", name: "S3Path", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^(https|s3)://([^/]+)/?(.*)$"})
    ScriptModeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ScriptModeConfig", name: "ScriptModeConfig")
    SearchDevicesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchDevicesFilter", name: "SearchDevicesFilter")
    SearchDevicesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#SearchDevicesFilterList", name: "SearchDevicesFilterList")
    SearchDevicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchDevicesInput", name: "SearchDevicesInput")
    SearchDevicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchDevicesOutput", name: "SearchDevicesOutput")
    SearchJobsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchJobsFilter", name: "SearchJobsFilter")
    SearchJobsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#SearchJobsFilterList", name: "SearchJobsFilterList")
    SearchJobsFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#SearchJobsFilterOperator", name: "SearchJobsFilterOperator", traits: {"smithy.api#enum" => [{"value" => "LT", "name" => "LT"}, {"value" => "LTE", "name" => "LTE"}, {"value" => "EQUAL", "name" => "EQUAL"}, {"value" => "GT", "name" => "GT"}, {"value" => "GTE", "name" => "GTE"}, {"value" => "BETWEEN", "name" => "BETWEEN"}, {"value" => "CONTAINS", "name" => "CONTAINS"}]})
    SearchJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchJobsInput", name: "SearchJobsInput")
    SearchJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchJobsOutput", name: "SearchJobsOutput")
    SearchQuantumTasksFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchQuantumTasksFilter", name: "SearchQuantumTasksFilter")
    SearchQuantumTasksFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#SearchQuantumTasksFilterList", name: "SearchQuantumTasksFilterList")
    SearchQuantumTasksFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#SearchQuantumTasksFilterOperator", name: "SearchQuantumTasksFilterOperator", traits: {"smithy.api#enum" => [{"value" => "LT", "name" => "LT"}, {"value" => "LTE", "name" => "LTE"}, {"value" => "EQUAL", "name" => "EQUAL"}, {"value" => "GT", "name" => "GT"}, {"value" => "GTE", "name" => "GTE"}, {"value" => "BETWEEN", "name" => "BETWEEN"}]})
    SearchQuantumTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchQuantumTasksInput", name: "SearchQuantumTasksInput")
    SearchQuantumTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#SearchQuantumTasksOutput", name: "SearchQuantumTasksOutput")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#String1024", name: "String1024", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    String2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#String2048", name: "String2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    String256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#String256", name: "String256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    String256List = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#String256List", name: "String256List")
    String4096 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#String4096", name: "String4096", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    String64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#String64", name: "String64", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.braket#TagKeys", name: "TagKeys")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#TagResourceOutput", name: "TagResourceOutput")
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.braket#TagsMap", name: "TagsMap")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#UntagResourceOutput", name: "UntagResourceOutput")
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#Uri", name: "Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\d{10,14}\\.dkr\\.ecr.[a-z0-9-]+\\.amazonaws\\.com\\/.+(@sha256)?:.+$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.braket#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.braket#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "ProgramSetValidationFailed", "name" => "PROGRAM_SET_VALIDATION_FAILED"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionMetadata.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionType", traits: {"smithy.api#required" => {}}))
    ActionMetadata.add_member(:program_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "programCount"))
    ActionMetadata.add_member(:executable_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "executableCount"))
    ActionMetadata.type = Types::ActionMetadata
    AlgorithmSpecification.add_member(:script_mode_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptModeConfig, name: "scriptModeConfig"))
    AlgorithmSpecification.add_member(:container_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImage, name: "containerImage"))
    AlgorithmSpecification.type = Types::AlgorithmSpecification
    Association.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BraketResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    Association.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "type", traits: {"smithy.api#required" => {}}))
    Association.type = Types::Association
    Associations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "member")
    CancelJobInput.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJobInput.type = Types::CancelJobInput
    CancelJobOutput.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn", traits: {"smithy.api#required" => {}}))
    CancelJobOutput.add_member(:cancellation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CancellationStatus, name: "cancellationStatus", traits: {"smithy.api#required" => {}}))
    CancelJobOutput.type = Types::CancelJobOutput
    CancelQuantumTaskInput.add_member(:quantum_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskArn, name: "quantumTaskArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelQuantumTaskInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CancelQuantumTaskInput.type = Types::CancelQuantumTaskInput
    CancelQuantumTaskOutput.add_member(:quantum_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskArn, name: "quantumTaskArn", traits: {"smithy.api#required" => {}}))
    CancelQuantumTaskOutput.add_member(:cancellation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CancellationStatus, name: "cancellationStatus", traits: {"smithy.api#required" => {}}))
    CancelQuantumTaskOutput.type = Types::CancelQuantumTaskOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    ContainerImage.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    ContainerImage.type = Types::ContainerImage
    CreateJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateJobInput.add_member(:algorithm_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AlgorithmSpecification, name: "algorithmSpecification", traits: {"smithy.api#required" => {}}))
    CreateJobInput.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConfigList, name: "inputDataConfig", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}}))
    CreateJobInput.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: JobOutputDataConfig, name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    CreateJobInput.add_member(:checkpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: JobCheckpointConfig, name: "checkpointConfig"))
    CreateJobInput.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "jobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,50}$", "smithy.api#required" => {}}))
    CreateJobInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateJobInput.add_member(:stopping_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStoppingCondition, name: "stoppingCondition"))
    CreateJobInput.add_member(:instance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfig, name: "instanceConfig", traits: {"smithy.api#required" => {}}))
    CreateJobInput.add_member(:hyper_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameters, name: "hyperParameters"))
    CreateJobInput.add_member(:device_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceConfig, name: "deviceConfig", traits: {"smithy.api#required" => {}}))
    CreateJobInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateJobInput.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: Associations, name: "associations", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    CreateJobInput.type = Types::CreateJobInput
    CreateJobOutput.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn", traits: {"smithy.api#required" => {}}))
    CreateJobOutput.type = Types::CreateJobOutput
    CreateQuantumTaskInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateQuantumTaskInput.add_member(:device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "deviceArn", traits: {"smithy.api#required" => {}}))
    CreateQuantumTaskInput.add_member(:device_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonValue, name: "deviceParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 48000}}))
    CreateQuantumTaskInput.add_member(:shots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "shots", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CreateQuantumTaskInput.add_member(:output_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "outputS3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#required" => {}}))
    CreateQuantumTaskInput.add_member(:output_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "outputS3KeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    CreateQuantumTaskInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonValue, name: "action", traits: {"smithy.api#required" => {}}))
    CreateQuantumTaskInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateQuantumTaskInput.add_member(:job_token, ::Smithy::Schema::Shapes::MemberShape.new(target: JobToken, name: "jobToken"))
    CreateQuantumTaskInput.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: Associations, name: "associations", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    CreateQuantumTaskInput.type = Types::CreateQuantumTaskInput
    CreateQuantumTaskOutput.add_member(:quantum_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskArn, name: "quantumTaskArn", traits: {"smithy.api#required" => {}}))
    CreateQuantumTaskOutput.type = Types::CreateQuantumTaskOutput
    DataSource.add_member(:s3_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataSource, name: "s3DataSource", traits: {"smithy.api#required" => {}}))
    DataSource.type = Types::DataSource
    DeviceConfig.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "device", traits: {"smithy.api#required" => {}}))
    DeviceConfig.type = Types::DeviceConfig
    DeviceOfflineException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    DeviceOfflineException.type = Types::DeviceOfflineException
    DeviceQueueInfo.add_member(:queue, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueName, name: "queue", traits: {"smithy.api#required" => {}}))
    DeviceQueueInfo.add_member(:queue_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "queueSize", traits: {"smithy.api#required" => {}}))
    DeviceQueueInfo.add_member(:queue_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: QueuePriority, name: "queuePriority"))
    DeviceQueueInfo.type = Types::DeviceQueueInfo
    DeviceQueueInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceQueueInfo, name: "member")
    DeviceRetiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    DeviceRetiredException.type = Types::DeviceRetiredException
    DeviceSummary.add_member(:device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "deviceArn", traits: {"smithy.api#required" => {}}))
    DeviceSummary.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "deviceName", traits: {"smithy.api#required" => {}}))
    DeviceSummary.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "providerName", traits: {"smithy.api#required" => {}}))
    DeviceSummary.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "deviceType", traits: {"smithy.api#required" => {}}))
    DeviceSummary.add_member(:device_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceStatus, name: "deviceStatus", traits: {"smithy.api#required" => {}}))
    DeviceSummary.type = Types::DeviceSummary
    DeviceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSummary, name: "member")
    GetDeviceInput.add_member(:device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "deviceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceInput.type = Types::GetDeviceInput
    GetDeviceOutput.add_member(:device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "deviceArn", traits: {"smithy.api#required" => {}}))
    GetDeviceOutput.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "deviceName", traits: {"smithy.api#required" => {}}))
    GetDeviceOutput.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "providerName", traits: {"smithy.api#required" => {}}))
    GetDeviceOutput.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "deviceType", traits: {"smithy.api#required" => {}}))
    GetDeviceOutput.add_member(:device_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceStatus, name: "deviceStatus", traits: {"smithy.api#required" => {}}))
    GetDeviceOutput.add_member(:device_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonValue, name: "deviceCapabilities", traits: {"smithy.api#required" => {}}))
    GetDeviceOutput.add_member(:device_queue_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceQueueInfoList, name: "deviceQueueInfo"))
    GetDeviceOutput.type = Types::GetDeviceOutput
    GetJobInput.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobInput.add_member(:additional_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridJobAdditionalAttributeNamesList, name: "additionalAttributeNames", traits: {"smithy.api#httpQuery" => "additionalAttributeNames"}))
    GetJobInput.type = Types::GetJobInput
    GetJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPrimaryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetJobOutput.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn", traits: {"smithy.api#required" => {}}))
    GetJobOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetJobOutput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "failureReason"))
    GetJobOutput.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "jobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,50}$", "smithy.api#required" => {}}))
    GetJobOutput.add_member(:hyper_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HyperParameters, name: "hyperParameters"))
    GetJobOutput.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConfigList, name: "inputDataConfig"))
    GetJobOutput.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: JobOutputDataConfig, name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    GetJobOutput.add_member(:stopping_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStoppingCondition, name: "stoppingCondition"))
    GetJobOutput.add_member(:checkpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: JobCheckpointConfig, name: "checkpointConfig"))
    GetJobOutput.add_member(:algorithm_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AlgorithmSpecification, name: "algorithmSpecification", traits: {"smithy.api#required" => {}}))
    GetJobOutput.add_member(:instance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfig, name: "instanceConfig", traits: {"smithy.api#required" => {}}))
    GetJobOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetJobOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetJobOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetJobOutput.add_member(:billable_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "billableDuration"))
    GetJobOutput.add_member(:device_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceConfig, name: "deviceConfig"))
    GetJobOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEvents, name: "events"))
    GetJobOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetJobOutput.add_member(:queue_info, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridJobQueueInfo, name: "queueInfo"))
    GetJobOutput.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: Associations, name: "associations"))
    GetJobOutput.type = Types::GetJobOutput
    GetQuantumTaskInput.add_member(:quantum_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskArn, name: "quantumTaskArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQuantumTaskInput.add_member(:additional_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskAdditionalAttributeNamesList, name: "additionalAttributeNames", traits: {"smithy.api#httpQuery" => "additionalAttributeNames"}))
    GetQuantumTaskInput.type = Types::GetQuantumTaskInput
    GetQuantumTaskOutput.add_member(:quantum_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskArn, name: "quantumTaskArn", traits: {"smithy.api#required" => {}}))
    GetQuantumTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetQuantumTaskOutput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureReason"))
    GetQuantumTaskOutput.add_member(:device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "deviceArn", traits: {"smithy.api#required" => {}}))
    GetQuantumTaskOutput.add_member(:device_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonValue, name: "deviceParameters", traits: {"smithy.api#required" => {}}))
    GetQuantumTaskOutput.add_member(:shots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "shots", traits: {"smithy.api#required" => {}}))
    GetQuantumTaskOutput.add_member(:output_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "outputS3Bucket", traits: {"smithy.api#required" => {}}))
    GetQuantumTaskOutput.add_member(:output_s3_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "outputS3Directory", traits: {"smithy.api#required" => {}}))
    GetQuantumTaskOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetQuantumTaskOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetQuantumTaskOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetQuantumTaskOutput.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn"))
    GetQuantumTaskOutput.add_member(:queue_info, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskQueueInfo, name: "queueInfo"))
    GetQuantumTaskOutput.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: Associations, name: "associations"))
    GetQuantumTaskOutput.add_member(:num_successful_shots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "numSuccessfulShots"))
    GetQuantumTaskOutput.add_member(:action_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionMetadata, name: "actionMetadata"))
    GetQuantumTaskOutput.type = Types::GetQuantumTaskOutput
    HybridJobAdditionalAttributeNamesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HybridJobAdditionalAttributeName, name: "member")
    HybridJobQueueInfo.add_member(:queue, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueName, name: "queue", traits: {"smithy.api#required" => {}}))
    HybridJobQueueInfo.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "position", traits: {"smithy.api#required" => {}}))
    HybridJobQueueInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    HybridJobQueueInfo.type = Types::HybridJobQueueInfo
    HyperParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "key")
    HyperParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}, "smithy.api#pattern" => "^.*$"})
    InputConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InputFileConfig, name: "member")
    InputFileConfig.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "channelName", traits: {"smithy.api#pattern" => "^[A-Za-z0-9\\.\\-_]+$", "smithy.api#required" => {}}))
    InputFileConfig.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "contentType"))
    InputFileConfig.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "dataSource", traits: {"smithy.api#required" => {}}))
    InputFileConfig.type = Types::InputFileConfig
    InstanceConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType", traits: {"smithy.api#required" => {}}))
    InstanceConfig.add_member(:volume_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "volumeSizeInGb", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    InstanceConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "instanceCount", traits: {"smithy.api#range" => {"min" => 1}}))
    InstanceConfig.type = Types::InstanceConfig
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServiceException.type = Types::InternalServiceException
    JobCheckpointConfig.add_member(:local_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String4096, name: "localPath"))
    JobCheckpointConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "s3Uri", traits: {"smithy.api#required" => {}}))
    JobCheckpointConfig.type = Types::JobCheckpointConfig
    JobEventDetails.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEventType, name: "eventType"))
    JobEventDetails.add_member(:time_of_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timeOfEvent", traits: {"smithy.api#timestampFormat" => "date-time"}))
    JobEventDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#length" => {"min" => 0, "max" => 2500}}))
    JobEventDetails.type = Types::JobEventDetails
    JobEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobEventDetails, name: "member")
    JobOutputDataConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, name: "kmsKeyId"))
    JobOutputDataConfig.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "s3Path", traits: {"smithy.api#required" => {}}))
    JobOutputDataConfig.type = Types::JobOutputDataConfig
    JobStoppingCondition.add_member(:max_runtime_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxRuntimeInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 432000}}))
    JobStoppingCondition.type = Types::JobStoppingCondition
    JobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPrimaryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "jobName", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "device", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    JobSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    JobSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    JobSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    JobSummary.type = Types::JobSummary
    JobSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, name: "member")
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ProgramSetValidationFailure.add_member(:program_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "programIndex", traits: {"smithy.api#required" => {}}))
    ProgramSetValidationFailure.add_member(:inputs_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "inputsIndex"))
    ProgramSetValidationFailure.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramValidationFailuresList, name: "errors"))
    ProgramSetValidationFailure.type = Types::ProgramSetValidationFailure
    ProgramSetValidationFailuresList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramSetValidationFailure, name: "member")
    ProgramValidationFailuresList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    QuantumTaskAdditionalAttributeNamesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskAdditionalAttributeName, name: "member")
    QuantumTaskQueueInfo.add_member(:queue, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueName, name: "queue", traits: {"smithy.api#required" => {}}))
    QuantumTaskQueueInfo.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "position", traits: {"smithy.api#required" => {}}))
    QuantumTaskQueueInfo.add_member(:queue_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: QueuePriority, name: "queuePriority"))
    QuantumTaskQueueInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    QuantumTaskQueueInfo.type = Types::QuantumTaskQueueInfo
    QuantumTaskSummary.add_member(:quantum_task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskArn, name: "quantumTaskArn", traits: {"smithy.api#required" => {}}))
    QuantumTaskSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QuantumTaskSummary.add_member(:device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "deviceArn", traits: {"smithy.api#required" => {}}))
    QuantumTaskSummary.add_member(:shots, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "shots", traits: {"smithy.api#required" => {}}))
    QuantumTaskSummary.add_member(:output_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "outputS3Bucket", traits: {"smithy.api#required" => {}}))
    QuantumTaskSummary.add_member(:output_s3_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "outputS3Directory", traits: {"smithy.api#required" => {}}))
    QuantumTaskSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    QuantumTaskSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    QuantumTaskSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    QuantumTaskSummary.type = Types::QuantumTaskSummary
    QuantumTaskSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskSummary, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DataSource.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "s3Uri", traits: {"smithy.api#required" => {}}))
    S3DataSource.type = Types::S3DataSource
    ScriptModeConfig.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "entryPoint", traits: {"smithy.api#required" => {}}))
    ScriptModeConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "s3Uri", traits: {"smithy.api#required" => {}}))
    ScriptModeConfig.add_member(:compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionType, name: "compressionType"))
    ScriptModeConfig.type = Types::ScriptModeConfig
    SearchDevicesFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    SearchDevicesFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: String256List, name: "values", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchDevicesFilter.type = Types::SearchDevicesFilter
    SearchDevicesFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchDevicesFilter, name: "member")
    SearchDevicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    SearchDevicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchDevicesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchDevicesFilterList, name: "filters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}, "smithy.api#required" => {}}))
    SearchDevicesInput.type = Types::SearchDevicesInput
    SearchDevicesOutput.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSummaryList, name: "devices", traits: {"smithy.api#required" => {}}))
    SearchDevicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    SearchDevicesOutput.type = Types::SearchDevicesOutput
    SearchJobsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "name", traits: {"smithy.api#required" => {}}))
    SearchJobsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: String256List, name: "values", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchJobsFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchJobsFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    SearchJobsFilter.type = Types::SearchJobsFilter
    SearchJobsFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchJobsFilter, name: "member")
    SearchJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    SearchJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchJobsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchJobsFilterList, name: "filters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}, "smithy.api#required" => {}}))
    SearchJobsInput.type = Types::SearchJobsInput
    SearchJobsOutput.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummaryList, name: "jobs", traits: {"smithy.api#required" => {}}))
    SearchJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    SearchJobsOutput.type = Types::SearchJobsOutput
    SearchQuantumTasksFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "name", traits: {"smithy.api#required" => {}}))
    SearchQuantumTasksFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: String256List, name: "values", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    SearchQuantumTasksFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQuantumTasksFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    SearchQuantumTasksFilter.type = Types::SearchQuantumTasksFilter
    SearchQuantumTasksFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQuantumTasksFilter, name: "member")
    SearchQuantumTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    SearchQuantumTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchQuantumTasksInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQuantumTasksFilterList, name: "filters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}, "smithy.api#required" => {}}))
    SearchQuantumTasksInput.type = Types::SearchQuantumTasksInput
    SearchQuantumTasksOutput.add_member(:quantum_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: QuantumTaskSummaryList, name: "quantumTasks", traits: {"smithy.api#required" => {}}))
    SearchQuantumTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    SearchQuantumTasksOutput.type = Types::SearchQuantumTasksOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    String256List.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "member")
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    TagsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:program_set_validation_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramSetValidationFailuresList, name: "programSetValidationFailures"))
    ValidationException.type = Types::ValidationException

    Braket = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.braket#Braket"
      service.name = "Braket"
      service.version = "2019-09-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Braket", "cloudTrailEventSource" => "braket.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "braket"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Braket"}
      service.add_operation(:cancel_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#CancelJob"
        operation.name = "CancelJob"
        operation.input = CancelJobInput
        operation.output = CancelJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/job/{jobArn}/cancel", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_quantum_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#CancelQuantumTask"
        operation.name = "CancelQuantumTask"
        operation.input = CancelQuantumTaskInput
        operation.output = CancelQuantumTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/quantum-task/{quantumTaskArn}/cancel", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#CreateJob"
        operation.name = "CreateJob"
        operation.input = CreateJobInput
        operation.output = CreateJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DeviceOfflineException
        operation.errors << DeviceRetiredException
        operation.errors << InternalServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/job", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_quantum_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#CreateQuantumTask"
        operation.name = "CreateQuantumTask"
        operation.input = CreateQuantumTaskInput
        operation.output = CreateQuantumTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << DeviceOfflineException
        operation.errors << DeviceRetiredException
        operation.errors << InternalServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/quantum-task", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:get_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#GetDevice"
        operation.name = "GetDevice"
        operation.input = GetDeviceInput
        operation.output = GetDeviceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/device/{deviceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#GetJob"
        operation.name = "GetJob"
        operation.input = GetJobInput
        operation.output = GetJobOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/job/{jobArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_quantum_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#GetQuantumTask"
        operation.name = "GetQuantumTask"
        operation.input = GetQuantumTaskInput
        operation.output = GetQuantumTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/quantum-task/{quantumTaskArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:search_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#SearchDevices"
        operation.name = "SearchDevices"
        operation.input = SearchDevicesInput
        operation.output = SearchDevicesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/devices", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchDevices.new
      end)
      service.add_operation(:search_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#SearchJobs"
        operation.name = "SearchJobs"
        operation.input = SearchJobsInput
        operation.output = SearchJobsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/jobs", "method" => "POST"}}
        operation[:paginator] = Paginators::SearchJobs.new
      end)
      service.add_operation(:search_quantum_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#SearchQuantumTasks"
        operation.name = "SearchQuantumTasks"
        operation.input = SearchQuantumTasksInput
        operation.output = SearchQuantumTasksOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/quantum-tasks", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchQuantumTasks.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.braket#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServiceException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
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
