# frozen_string_literal: true

# This is generated code!

module Aws::Pipes
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2,4}((-gov)|(-de)|(-iso([a-z]?)))?-[a-z]+(-\\d{1})?)?:(\\d{12})?:(.+)$"})
    ArnOrJsonPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#ArnOrJsonPath", name: "ArnOrJsonPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2,4}((-gov)|(-de)|(-iso([a-z]?)))?-[a-z]+(-\\d{1})?)?:(\\d{12})?:(.+)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$"})
    ArnOrUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#ArnOrUrl", name: "ArnOrUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^smk://(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9]):[0-9]{1,5}|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2,4}((-gov)|(-de)|(-iso([a-z]?)))?-[a-z]+(-\\d{1})?)?:(\\d{12})?:(.+)$"})
    AssignPublicIp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#AssignPublicIp", name: "AssignPublicIp", traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    AwsVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#AwsVpcConfiguration", name: "AwsVpcConfiguration")
    BatchArrayProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#BatchArrayProperties", name: "BatchArrayProperties")
    BatchArraySize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#BatchArraySize", name: "BatchArraySize", traits: {"smithy.api#range" => {"min" => 2, "max" => 10000}})
    BatchContainerOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#BatchContainerOverrides", name: "BatchContainerOverrides")
    BatchDependsOn = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#BatchDependsOn", name: "BatchDependsOn", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    BatchEnvironmentVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#BatchEnvironmentVariable", name: "BatchEnvironmentVariable")
    BatchEnvironmentVariableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#BatchEnvironmentVariableList", name: "BatchEnvironmentVariableList")
    BatchJobDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#BatchJobDependency", name: "BatchJobDependency")
    BatchJobDependencyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#BatchJobDependencyType", name: "BatchJobDependencyType", traits: {"smithy.api#enum" => [{"value" => "N_TO_N", "name" => "N_TO_N"}, {"value" => "SEQUENTIAL", "name" => "SEQUENTIAL"}]})
    BatchParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pipes#BatchParametersMap", name: "BatchParametersMap")
    BatchResourceRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#BatchResourceRequirement", name: "BatchResourceRequirement")
    BatchResourceRequirementType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#BatchResourceRequirementType", name: "BatchResourceRequirementType", traits: {"smithy.api#enum" => [{"value" => "GPU", "name" => "GPU"}, {"value" => "MEMORY", "name" => "MEMORY"}, {"value" => "VCPU", "name" => "VCPU"}]})
    BatchResourceRequirementsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#BatchResourceRequirementsList", name: "BatchResourceRequirementsList")
    BatchRetryAttempts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#BatchRetryAttempts", name: "BatchRetryAttempts", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    BatchRetryStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#BatchRetryStrategy", name: "BatchRetryStrategy")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.pipes#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CapacityProvider = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#CapacityProvider", name: "CapacityProvider", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    CapacityProviderStrategy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#CapacityProviderStrategy", name: "CapacityProviderStrategy", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    CapacityProviderStrategyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#CapacityProviderStrategyItem", name: "CapacityProviderStrategyItem")
    CapacityProviderStrategyItemBase = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#CapacityProviderStrategyItemBase", name: "CapacityProviderStrategyItemBase", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100000}})
    CapacityProviderStrategyItemWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#CapacityProviderStrategyItemWeight", name: "CapacityProviderStrategyItemWeight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    CloudwatchLogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#CloudwatchLogGroupArn", name: "CloudwatchLogGroupArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(^arn:aws([a-z]|\\-)*:logs:([a-z]{2,4}((-gov)|(-de)|(-iso([a-z]?)))?-[a-z]+(-\\d{1})?):(\\d{12}):log-group:[\\.\\-_/#A-Za-z0-9]{1,512}(:\\*)?)$"})
    CloudwatchLogsLogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#CloudwatchLogsLogDestination", name: "CloudwatchLogsLogDestination")
    CloudwatchLogsLogDestinationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#CloudwatchLogsLogDestinationParameters", name: "CloudwatchLogsLogDestinationParameters")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreatePipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#CreatePipeRequest", name: "CreatePipeRequest")
    CreatePipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#CreatePipeResponse", name: "CreatePipeResponse")
    Database = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#Database", name: "Database", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    DbUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#DbUser", name: "DbUser", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    DeadLetterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#DeadLetterConfig", name: "DeadLetterConfig")
    DeletePipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#DeletePipeRequest", name: "DeletePipeRequest")
    DeletePipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#DeletePipeResponse", name: "DeletePipeResponse")
    DescribePipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#DescribePipeRequest", name: "DescribePipeRequest")
    DescribePipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#DescribePipeResponse", name: "DescribePipeResponse")
    DimensionMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#DimensionMapping", name: "DimensionMapping")
    DimensionMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#DimensionMappings", name: "DimensionMappings", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#DimensionName", name: "DimensionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#DimensionValue", name: "DimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DimensionValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#DimensionValueType", name: "DimensionValueType", traits: {"smithy.api#enum" => [{"value" => "VARCHAR", "name" => "VARCHAR"}]})
    DynamoDBStreamStartPosition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#DynamoDBStreamStartPosition", name: "DynamoDBStreamStartPosition", traits: {"smithy.api#enum" => [{"value" => "TRIM_HORIZON", "name" => "TRIM_HORIZON"}, {"value" => "LATEST", "name" => "LATEST"}]})
    EcsContainerOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#EcsContainerOverride", name: "EcsContainerOverride")
    EcsContainerOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#EcsContainerOverrideList", name: "EcsContainerOverrideList")
    EcsEnvironmentFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#EcsEnvironmentFile", name: "EcsEnvironmentFile")
    EcsEnvironmentFileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#EcsEnvironmentFileList", name: "EcsEnvironmentFileList")
    EcsEnvironmentFileType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#EcsEnvironmentFileType", name: "EcsEnvironmentFileType", traits: {"smithy.api#enum" => [{"value" => "s3", "name" => "s3"}]})
    EcsEnvironmentVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#EcsEnvironmentVariable", name: "EcsEnvironmentVariable")
    EcsEnvironmentVariableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#EcsEnvironmentVariableList", name: "EcsEnvironmentVariableList")
    EcsEphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#EcsEphemeralStorage", name: "EcsEphemeralStorage")
    EcsInferenceAcceleratorOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#EcsInferenceAcceleratorOverride", name: "EcsInferenceAcceleratorOverride")
    EcsInferenceAcceleratorOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#EcsInferenceAcceleratorOverrideList", name: "EcsInferenceAcceleratorOverrideList")
    EcsResourceRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#EcsResourceRequirement", name: "EcsResourceRequirement")
    EcsResourceRequirementType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#EcsResourceRequirementType", name: "EcsResourceRequirementType", traits: {"smithy.api#enum" => [{"value" => "GPU", "name" => "GPU"}, {"value" => "InferenceAccelerator", "name" => "InferenceAccelerator"}]})
    EcsResourceRequirementsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#EcsResourceRequirementsList", name: "EcsResourceRequirementsList")
    EcsTaskOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#EcsTaskOverride", name: "EcsTaskOverride")
    EndpointString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#EndpointString", name: "EndpointString", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9]):[0-9]{1,5}$", "smithy.api#sensitive" => {}})
    EphemeralStorageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#EphemeralStorageSize", name: "EphemeralStorageSize", traits: {"smithy.api#range" => {"min" => 21, "max" => 200}})
    EpochTimeUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#EpochTimeUnit", name: "EpochTimeUnit", traits: {"smithy.api#enum" => [{"value" => "MILLISECONDS", "name" => "MILLISECONDS"}, {"value" => "SECONDS", "name" => "SECONDS"}, {"value" => "MICROSECONDS", "name" => "MICROSECONDS"}, {"value" => "NANOSECONDS", "name" => "NANOSECONDS"}]})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#ErrorMessage", name: "ErrorMessage")
    EventBridgeDetailType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#EventBridgeDetailType", name: "EventBridgeDetailType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    EventBridgeEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#EventBridgeEndpointId", name: "EventBridgeEndpointId", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9\\-]+[\\.][A-Za-z0-9\\-]+$", "smithy.api#sensitive" => {}})
    EventBridgeEventResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#EventBridgeEventResourceList", name: "EventBridgeEventResourceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EventBridgeEventSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#EventBridgeEventSource", name: "EventBridgeEventSource", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "(?=[/\\.\\-_A-Za-z0-9]+)((?!aws\\.).*)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)", "smithy.api#sensitive" => {}})
    EventPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#EventPattern", name: "EventPattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#Filter", name: "Filter")
    FilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#FilterCriteria", name: "FilterCriteria")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    FirehoseArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#FirehoseArn", name: "FirehoseArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(^arn:aws([a-z]|\\-)*:firehose:([a-z]{2,4}((-gov)|(-de)|(-iso([a-z]?)))?-[a-z]+(-\\d{1})?):(\\d{12}):deliverystream/[a-zA-Z0-9_.-]{1,64})$"})
    FirehoseLogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#FirehoseLogDestination", name: "FirehoseLogDestination")
    FirehoseLogDestinationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#FirehoseLogDestinationParameters", name: "FirehoseLogDestinationParameters")
    HeaderKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#HeaderKey", name: "HeaderKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[!\#$%&'*+-.^_`|~0-9a-zA-Z]+|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$"})
    HeaderParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pipes#HeaderParametersMap", name: "HeaderParametersMap")
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#HeaderValue", name: "HeaderValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[ \\t]*[\\x20-\\x7E]+([ \\t]+[\\x20-\\x7E]+)*[ \\t]*|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$", "smithy.api#sensitive" => {}})
    IncludeExecutionData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#IncludeExecutionData", name: "IncludeExecutionData", traits: {"smithy.api#uniqueItems" => {}})
    IncludeExecutionDataOption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#IncludeExecutionDataOption", name: "IncludeExecutionDataOption", traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL"}]})
    InputTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#InputTemplate", name: "InputTemplate", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#sensitive" => {}})
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#InternalException", name: "InternalException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JsonPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#JsonPath", name: "JsonPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*$"})
    KafkaBootstrapServers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#KafkaBootstrapServers", name: "KafkaBootstrapServers", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    KafkaTopicName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#KafkaTopicName", name: "KafkaTopicName", traits: {"smithy.api#length" => {"min" => 1, "max" => 249}, "smithy.api#pattern" => "^[^.]([a-zA-Z0-9\\-_.]+)$", "smithy.api#sensitive" => {}})
    KinesisPartitionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#KinesisPartitionKey", name: "KinesisPartitionKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    KinesisStreamStartPosition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#KinesisStreamStartPosition", name: "KinesisStreamStartPosition", traits: {"smithy.api#enum" => [{"value" => "TRIM_HORIZON", "name" => "TRIM_HORIZON"}, {"value" => "LATEST", "name" => "LATEST"}, {"value" => "AT_TIMESTAMP", "name" => "AT_TIMESTAMP"}]})
    KmsKeyIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#KmsKeyIdentifier", name: "KmsKeyIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-/:]*$"})
    LaunchType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#LaunchType", name: "LaunchType", traits: {"smithy.api#enum" => [{"value" => "EC2", "name" => "EC2"}, {"value" => "FARGATE", "name" => "FARGATE"}, {"value" => "EXTERNAL", "name" => "EXTERNAL"}]})
    LimitMax10 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#LimitMax10", name: "LimitMax10", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    LimitMax100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#LimitMax100", name: "LimitMax100", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    LimitMax10000 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#LimitMax10000", name: "LimitMax10000", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    LimitMin1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#LimitMin1", name: "LimitMin1", traits: {"smithy.api#range" => {"min" => 1}})
    ListPipesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ListPipesRequest", name: "ListPipesRequest")
    ListPipesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ListPipesResponse", name: "ListPipesResponse")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ListTagsForResourceInput", name: "ListTagsForResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pipes#PipeResource", "ids" => {"Name" => "resourceArn"}}]})
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    LogLevel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#LogLevel", name: "LogLevel", traits: {"smithy.api#enum" => [{"value" => "OFF", "name" => "OFF"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "INFO", "name" => "INFO"}, {"value" => "TRACE", "name" => "TRACE"}]})
    LogStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#LogStreamName", name: "LogStreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MQBrokerAccessCredentials = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.pipes#MQBrokerAccessCredentials", name: "MQBrokerAccessCredentials")
    MQBrokerQueueName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MQBrokerQueueName", name: "MQBrokerQueueName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    MSKAccessCredentials = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.pipes#MSKAccessCredentials", name: "MSKAccessCredentials")
    MSKStartPosition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MSKStartPosition", name: "MSKStartPosition", traits: {"smithy.api#enum" => [{"value" => "TRIM_HORIZON", "name" => "TRIM_HORIZON"}, {"value" => "LATEST", "name" => "LATEST"}]})
    MaximumBatchingWindowInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#MaximumBatchingWindowInSeconds", name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 300}})
    MaximumRecordAgeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#MaximumRecordAgeInSeconds", name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#range" => {"min" => -1, "max" => 604800}})
    MaximumRetryAttemptsESM = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pipes#MaximumRetryAttemptsESM", name: "MaximumRetryAttemptsESM", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}})
    MeasureName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MeasureName", name: "MeasureName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    MeasureValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MeasureValue", name: "MeasureValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MeasureValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MeasureValueType", name: "MeasureValueType", traits: {"smithy.api#enum" => [{"value" => "DOUBLE", "name" => "DOUBLE"}, {"value" => "BIGINT", "name" => "BIGINT"}, {"value" => "VARCHAR", "name" => "VARCHAR"}, {"value" => "BOOLEAN", "name" => "BOOLEAN"}, {"value" => "TIMESTAMP", "name" => "TIMESTAMP"}]})
    MessageDeduplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MessageDeduplicationId", name: "MessageDeduplicationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    MessageGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MessageGroupId", name: "MessageGroupId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    MultiMeasureAttributeMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#MultiMeasureAttributeMapping", name: "MultiMeasureAttributeMapping")
    MultiMeasureAttributeMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#MultiMeasureAttributeMappings", name: "MultiMeasureAttributeMappings", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MultiMeasureAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MultiMeasureAttributeName", name: "MultiMeasureAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MultiMeasureMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#MultiMeasureMapping", name: "MultiMeasureMapping")
    MultiMeasureMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#MultiMeasureMappings", name: "MultiMeasureMappings", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MultiMeasureName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#MultiMeasureName", name: "MultiMeasureName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#NetworkConfiguration", name: "NetworkConfiguration")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OnPartialBatchItemFailureStreams = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#OnPartialBatchItemFailureStreams", name: "OnPartialBatchItemFailureStreams", traits: {"smithy.api#enum" => [{"value" => "AUTOMATIC_BISECT", "name" => "AUTOMATIC_BISECT"}]})
    OptionalArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#OptionalArn", name: "OptionalArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => "^$|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2,4}((-gov)|(-de)|(-iso([a-z]?)))?-[a-z]+(-\\d{1})?)?:(\\d{12})?:(.+)$"})
    PathParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PathParameter", name: "PathParameter", traits: {"smithy.api#pattern" => "^(?!\\s*$).+|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$", "smithy.api#sensitive" => {}})
    PathParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#PathParameterList", name: "PathParameterList")
    Pipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#Pipe", name: "Pipe")
    PipeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PipeArn", name: "PipeArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws([a-z]|\\-)*:([a-zA-Z0-9\\-]+):([a-z]|\\d|\\-)*:([0-9]{12})?:(.+)$"})
    PipeDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PipeDescription", name: "PipeDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^.*$", "smithy.api#sensitive" => {}})
    PipeEnrichmentHttpParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeEnrichmentHttpParameters", name: "PipeEnrichmentHttpParameters")
    PipeEnrichmentParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeEnrichmentParameters", name: "PipeEnrichmentParameters")
    PipeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#PipeList", name: "PipeList")
    PipeLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeLogConfiguration", name: "PipeLogConfiguration")
    PipeLogConfigurationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeLogConfigurationParameters", name: "PipeLogConfigurationParameters")
    PipeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PipeName", name: "PipeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\.\\-_A-Za-z0-9]+$"})
    PipeSourceActiveMQBrokerParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeSourceActiveMQBrokerParameters", name: "PipeSourceActiveMQBrokerParameters")
    PipeSourceDynamoDBStreamParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeSourceDynamoDBStreamParameters", name: "PipeSourceDynamoDBStreamParameters")
    PipeSourceKinesisStreamParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeSourceKinesisStreamParameters", name: "PipeSourceKinesisStreamParameters")
    PipeSourceManagedStreamingKafkaParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeSourceManagedStreamingKafkaParameters", name: "PipeSourceManagedStreamingKafkaParameters")
    PipeSourceParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeSourceParameters", name: "PipeSourceParameters")
    PipeSourceRabbitMQBrokerParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeSourceRabbitMQBrokerParameters", name: "PipeSourceRabbitMQBrokerParameters")
    PipeSourceSelfManagedKafkaParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeSourceSelfManagedKafkaParameters", name: "PipeSourceSelfManagedKafkaParameters")
    PipeSourceSqsQueueParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeSourceSqsQueueParameters", name: "PipeSourceSqsQueueParameters")
    PipeState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PipeState", name: "PipeState", traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}, {"value" => "START_FAILED", "name" => "START_FAILED"}, {"value" => "STOP_FAILED", "name" => "STOP_FAILED"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "CREATE_ROLLBACK_FAILED", "name" => "CREATE_ROLLBACK_FAILED"}, {"value" => "DELETE_ROLLBACK_FAILED", "name" => "DELETE_ROLLBACK_FAILED"}, {"value" => "UPDATE_ROLLBACK_FAILED", "name" => "UPDATE_ROLLBACK_FAILED"}]})
    PipeStateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PipeStateReason", name: "PipeStateReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^.*$"})
    PipeTargetBatchJobParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetBatchJobParameters", name: "PipeTargetBatchJobParameters")
    PipeTargetCloudWatchLogsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetCloudWatchLogsParameters", name: "PipeTargetCloudWatchLogsParameters")
    PipeTargetEcsTaskParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetEcsTaskParameters", name: "PipeTargetEcsTaskParameters")
    PipeTargetEventBridgeEventBusParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetEventBridgeEventBusParameters", name: "PipeTargetEventBridgeEventBusParameters")
    PipeTargetHttpParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetHttpParameters", name: "PipeTargetHttpParameters")
    PipeTargetInvocationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PipeTargetInvocationType", name: "PipeTargetInvocationType", traits: {"smithy.api#enum" => [{"value" => "REQUEST_RESPONSE", "name" => "REQUEST_RESPONSE"}, {"value" => "FIRE_AND_FORGET", "name" => "FIRE_AND_FORGET"}]})
    PipeTargetKinesisStreamParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetKinesisStreamParameters", name: "PipeTargetKinesisStreamParameters")
    PipeTargetLambdaFunctionParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetLambdaFunctionParameters", name: "PipeTargetLambdaFunctionParameters")
    PipeTargetParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetParameters", name: "PipeTargetParameters")
    PipeTargetRedshiftDataParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetRedshiftDataParameters", name: "PipeTargetRedshiftDataParameters")
    PipeTargetSageMakerPipelineParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetSageMakerPipelineParameters", name: "PipeTargetSageMakerPipelineParameters")
    PipeTargetSqsQueueParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetSqsQueueParameters", name: "PipeTargetSqsQueueParameters")
    PipeTargetStateMachineParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetStateMachineParameters", name: "PipeTargetStateMachineParameters")
    PipeTargetTimestreamParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PipeTargetTimestreamParameters", name: "PipeTargetTimestreamParameters")
    PlacementConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PlacementConstraint", name: "PlacementConstraint")
    PlacementConstraintExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PlacementConstraintExpression", name: "PlacementConstraintExpression", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#sensitive" => {}})
    PlacementConstraintType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PlacementConstraintType", name: "PlacementConstraintType", traits: {"smithy.api#enum" => [{"value" => "distinctInstance", "name" => "DISTINCT_INSTANCE"}, {"value" => "memberOf", "name" => "MEMBER_OF"}]})
    PlacementConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#PlacementConstraints", name: "PlacementConstraints", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PlacementStrategies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#PlacementStrategies", name: "PlacementStrategies", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    PlacementStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#PlacementStrategy", name: "PlacementStrategy")
    PlacementStrategyField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PlacementStrategyField", name: "PlacementStrategyField", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#sensitive" => {}})
    PlacementStrategyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PlacementStrategyType", name: "PlacementStrategyType", traits: {"smithy.api#enum" => [{"value" => "random", "name" => "RANDOM"}, {"value" => "spread", "name" => "SPREAD"}, {"value" => "binpack", "name" => "BINPACK"}]})
    PropagateTags = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#PropagateTags", name: "PropagateTags", traits: {"smithy.api#enum" => [{"value" => "TASK_DEFINITION", "name" => "TASK_DEFINITION"}]})
    QueryStringKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#QueryStringKey", name: "QueryStringKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]+|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$"})
    QueryStringParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pipes#QueryStringParametersMap", name: "QueryStringParametersMap")
    QueryStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#QueryStringValue", name: "QueryStringValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]+|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$", "smithy.api#sensitive" => {}})
    ReferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#ReferenceId", name: "ReferenceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    RequestedPipeState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#RequestedPipeState", name: "RequestedPipeState", traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    RequestedPipeStateDescribeResponse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#RequestedPipeStateDescribeResponse", name: "RequestedPipeStateDescribeResponse", traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z0-9+=,.@\\-_/]+$"})
    S3LogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#S3LogDestination", name: "S3LogDestination")
    S3LogDestinationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#S3LogDestinationParameters", name: "S3LogDestinationParameters")
    S3OutputFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#S3OutputFormat", name: "S3OutputFormat", traits: {"smithy.api#enum" => [{"value" => "json", "name" => "JSON"}, {"value" => "plain", "name" => "PLAIN"}, {"value" => "w3c", "name" => "W3C"}]})
    SageMakerPipelineParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#SageMakerPipelineParameter", name: "SageMakerPipelineParameter")
    SageMakerPipelineParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#SageMakerPipelineParameterList", name: "SageMakerPipelineParameterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    SageMakerPipelineParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#SageMakerPipelineParameterName", name: "SageMakerPipelineParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$", "smithy.api#sensitive" => {}})
    SageMakerPipelineParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#SageMakerPipelineParameterValue", name: "SageMakerPipelineParameterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    SecretManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#SecretManagerArn", name: "SecretManagerArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2,4}((-gov)|(-de)|(-iso([a-z]?)))?-[a-z]+(-\\d{1})?):(\\d{12}):secret:.+)$"})
    SecretManagerArnOrJsonPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#SecretManagerArnOrJsonPath", name: "SecretManagerArnOrJsonPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2,4}((-gov)|(-de)|(-iso([a-z]?)))?-[a-z]+(-\\d{1})?):(\\d{12}):secret:.+)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$"})
    SecurityGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#SecurityGroup", name: "SecurityGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^sg-[0-9a-zA-Z]*|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$", "smithy.api#sensitive" => {}})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^sg-[0-9a-zA-Z]*$", "smithy.api#sensitive" => {}})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#SecurityGroups", name: "SecurityGroups", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    SelfManagedKafkaAccessConfigurationCredentials = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.pipes#SelfManagedKafkaAccessConfigurationCredentials", name: "SelfManagedKafkaAccessConfigurationCredentials")
    SelfManagedKafkaAccessConfigurationVpc = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#SelfManagedKafkaAccessConfigurationVpc", name: "SelfManagedKafkaAccessConfigurationVpc")
    SelfManagedKafkaStartPosition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#SelfManagedKafkaStartPosition", name: "SelfManagedKafkaStartPosition", traits: {"smithy.api#enum" => [{"value" => "TRIM_HORIZON", "name" => "TRIM_HORIZON"}, {"value" => "LATEST", "name" => "LATEST"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SingleMeasureMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#SingleMeasureMapping", name: "SingleMeasureMapping")
    SingleMeasureMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#SingleMeasureMappings", name: "SingleMeasureMappings", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    Sql = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#Sql", name: "Sql", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#sensitive" => {}})
    Sqls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#Sqls", name: "Sqls", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    StartPipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#StartPipeRequest", name: "StartPipeRequest")
    StartPipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#StartPipeResponse", name: "StartPipeResponse")
    StatementName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#StatementName", name: "StatementName", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#sensitive" => {}})
    StopPipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#StopPipeRequest", name: "StopPipeRequest")
    StopPipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#StopPipeResponse", name: "StopPipeResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#StringList", name: "StringList")
    Subnet = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#Subnet", name: "Subnet", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^subnet-[0-9a-z]*|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$", "smithy.api#sensitive" => {}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^subnet-[0-9a-z]*$", "smithy.api#sensitive" => {}})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    Subnets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#Subnets", name: "Subnets", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#TagList", name: "TagList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pipes#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#TagResourceInput", name: "TagResourceInput", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.pipes#PipeResource", "ids" => {"Name" => "resourceArn"}}]})
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeFieldType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#TimeFieldType", name: "TimeFieldType", traits: {"smithy.api#enum" => [{"value" => "EPOCH", "name" => "EPOCH"}, {"value" => "TIMESTAMP_FORMAT", "name" => "TIMESTAMP_FORMAT"}]})
    TimeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#TimeValue", name: "TimeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.pipes#Timestamp", name: "Timestamp")
    TimestampFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#TimestampFormat", name: "TimestampFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#URI", name: "URI", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\/*:_+=.@-]*$", "smithy.api#sensitive" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UntagResourceInput", name: "UntagResourceInput", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.pipes#PipeResource", "ids" => {"Name" => "resourceArn"}}]})
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UntagResourceOutput", name: "UntagResourceOutput")
    UpdatePipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeRequest", name: "UpdatePipeRequest")
    UpdatePipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeResponse", name: "UpdatePipeResponse")
    UpdatePipeSourceActiveMQBrokerParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeSourceActiveMQBrokerParameters", name: "UpdatePipeSourceActiveMQBrokerParameters")
    UpdatePipeSourceDynamoDBStreamParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeSourceDynamoDBStreamParameters", name: "UpdatePipeSourceDynamoDBStreamParameters")
    UpdatePipeSourceKinesisStreamParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeSourceKinesisStreamParameters", name: "UpdatePipeSourceKinesisStreamParameters")
    UpdatePipeSourceManagedStreamingKafkaParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeSourceManagedStreamingKafkaParameters", name: "UpdatePipeSourceManagedStreamingKafkaParameters")
    UpdatePipeSourceParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeSourceParameters", name: "UpdatePipeSourceParameters")
    UpdatePipeSourceRabbitMQBrokerParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeSourceRabbitMQBrokerParameters", name: "UpdatePipeSourceRabbitMQBrokerParameters")
    UpdatePipeSourceSelfManagedKafkaParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeSourceSelfManagedKafkaParameters", name: "UpdatePipeSourceSelfManagedKafkaParameters")
    UpdatePipeSourceSqsQueueParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#UpdatePipeSourceSqsQueueParameters", name: "UpdatePipeSourceSqsQueueParameters")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pipes#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pipes#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    VersionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pipes#VersionValue", name: "VersionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})

    AwsVpcConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets", traits: {"smithy.api#required" => {}}))
    AwsVpcConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups"))
    AwsVpcConfiguration.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignPublicIp, name: "AssignPublicIp"))
    AwsVpcConfiguration.type = Types::AwsVpcConfiguration
    BatchArrayProperties.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchArraySize, name: "Size"))
    BatchArrayProperties.type = Types::BatchArrayProperties
    BatchContainerOverrides.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Command"))
    BatchContainerOverrides.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEnvironmentVariableList, name: "Environment"))
    BatchContainerOverrides.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceType"))
    BatchContainerOverrides.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchResourceRequirementsList, name: "ResourceRequirements"))
    BatchContainerOverrides.type = Types::BatchContainerOverrides
    BatchDependsOn.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchJobDependency, name: "member"))
    BatchEnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    BatchEnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value"))
    BatchEnvironmentVariable.type = Types::BatchEnvironmentVariable
    BatchEnvironmentVariableList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEnvironmentVariable, name: "member"))
    BatchJobDependency.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "JobId"))
    BatchJobDependency.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchJobDependencyType, name: "Type"))
    BatchJobDependency.type = Types::BatchJobDependency
    BatchParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    BatchParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    BatchResourceRequirement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchResourceRequirementType, name: "Type", traits: {"smithy.api#required" => {}}))
    BatchResourceRequirement.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value", traits: {"smithy.api#required" => {}}))
    BatchResourceRequirement.type = Types::BatchResourceRequirement
    BatchResourceRequirementsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchResourceRequirement, name: "member"))
    BatchRetryStrategy.add_member(:attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchRetryAttempts, name: "Attempts"))
    BatchRetryStrategy.type = Types::BatchRetryStrategy
    CapacityProviderStrategy.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItem, name: "member"))
    CapacityProviderStrategyItem.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "capacityProvider", traits: {"smithy.api#required" => {}}))
    CapacityProviderStrategyItem.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItemWeight, name: "weight", traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItemBase, name: "base", traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.type = Types::CapacityProviderStrategyItem
    CloudwatchLogsLogDestination.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudwatchLogGroupArn, name: "LogGroupArn"))
    CloudwatchLogsLogDestination.type = Types::CloudwatchLogsLogDestination
    CloudwatchLogsLogDestinationParameters.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudwatchLogGroupArn, name: "LogGroupArn", traits: {"smithy.api#required" => {}}))
    CloudwatchLogsLogDestinationParameters.type = Types::CloudwatchLogsLogDestinationParameters
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreatePipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeDescription, name: "Description"))
    CreatePipeRequest.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeState, name: "DesiredState"))
    CreatePipeRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrUrl, name: "Source", traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreatePipeRequest.add_member(:source_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceParameters, name: "SourceParameters"))
    CreatePipeRequest.add_member(:enrichment, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalArn, name: "Enrichment"))
    CreatePipeRequest.add_member(:enrichment_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeEnrichmentParameters, name: "EnrichmentParameters"))
    CreatePipeRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Target", traits: {"smithy.api#required" => {}}))
    CreatePipeRequest.add_member(:target_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetParameters, name: "TargetParameters"))
    CreatePipeRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreatePipeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreatePipeRequest.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeLogConfigurationParameters, name: "LogConfiguration", traits: {"aws.cloudformation#cfnMutability" => "write"}))
    CreatePipeRequest.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    CreatePipeRequest.type = Types::CreatePipeRequest
    CreatePipeResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "Arn"))
    CreatePipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name"))
    CreatePipeResponse.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeState, name: "DesiredState"))
    CreatePipeResponse.add_member(:current_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeState, name: "CurrentState"))
    CreatePipeResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    CreatePipeResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    CreatePipeResponse.type = Types::CreatePipeResponse
    DeadLetterConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    DeadLetterConfig.type = Types::DeadLetterConfig
    DeletePipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePipeRequest.type = Types::DeletePipeRequest
    DeletePipeResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "Arn"))
    DeletePipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name"))
    DeletePipeResponse.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeStateDescribeResponse, name: "DesiredState", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    DeletePipeResponse.add_member(:current_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeState, name: "CurrentState"))
    DeletePipeResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DeletePipeResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DeletePipeResponse.type = Types::DeletePipeResponse
    DescribePipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePipeRequest.type = Types::DescribePipeRequest
    DescribePipeResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "Arn"))
    DescribePipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name"))
    DescribePipeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeDescription, name: "Description"))
    DescribePipeResponse.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeStateDescribeResponse, name: "DesiredState", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    DescribePipeResponse.add_member(:current_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeState, name: "CurrentState"))
    DescribePipeResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeStateReason, name: "StateReason"))
    DescribePipeResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrUrl, name: "Source"))
    DescribePipeResponse.add_member(:source_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceParameters, name: "SourceParameters"))
    DescribePipeResponse.add_member(:enrichment, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalArn, name: "Enrichment"))
    DescribePipeResponse.add_member(:enrichment_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeEnrichmentParameters, name: "EnrichmentParameters"))
    DescribePipeResponse.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Target"))
    DescribePipeResponse.add_member(:target_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetParameters, name: "TargetParameters"))
    DescribePipeResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribePipeResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    DescribePipeResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    DescribePipeResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DescribePipeResponse.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeLogConfiguration, name: "LogConfiguration", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    DescribePipeResponse.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    DescribePipeResponse.type = Types::DescribePipeResponse
    DimensionMapping.add_member(:dimension_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "DimensionValue", traits: {"smithy.api#required" => {}}))
    DimensionMapping.add_member(:dimension_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValueType, name: "DimensionValueType", traits: {"smithy.api#required" => {}}))
    DimensionMapping.add_member(:dimension_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "DimensionName", traits: {"smithy.api#required" => {}}))
    DimensionMapping.type = Types::DimensionMapping
    DimensionMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionMapping, name: "member"))
    EcsContainerOverride.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Command"))
    EcsContainerOverride.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Cpu"))
    EcsContainerOverride.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsEnvironmentVariableList, name: "Environment"))
    EcsContainerOverride.add_member(:environment_files, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsEnvironmentFileList, name: "EnvironmentFiles"))
    EcsContainerOverride.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Memory"))
    EcsContainerOverride.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MemoryReservation"))
    EcsContainerOverride.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    EcsContainerOverride.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsResourceRequirementsList, name: "ResourceRequirements"))
    EcsContainerOverride.type = Types::EcsContainerOverride
    EcsContainerOverrideList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsContainerOverride, name: "member"))
    EcsEnvironmentFile.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsEnvironmentFileType, name: "type", traits: {"smithy.api#required" => {}}))
    EcsEnvironmentFile.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#required" => {}}))
    EcsEnvironmentFile.type = Types::EcsEnvironmentFile
    EcsEnvironmentFileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsEnvironmentFile, name: "member"))
    EcsEnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    EcsEnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    EcsEnvironmentVariable.type = Types::EcsEnvironmentVariable
    EcsEnvironmentVariableList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsEnvironmentVariable, name: "member"))
    EcsEphemeralStorage.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorageSize, name: "sizeInGiB", traits: {"smithy.api#required" => {}}))
    EcsEphemeralStorage.type = Types::EcsEphemeralStorage
    EcsInferenceAcceleratorOverride.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deviceName"))
    EcsInferenceAcceleratorOverride.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deviceType"))
    EcsInferenceAcceleratorOverride.type = Types::EcsInferenceAcceleratorOverride
    EcsInferenceAcceleratorOverrideList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsInferenceAcceleratorOverride, name: "member"))
    EcsResourceRequirement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsResourceRequirementType, name: "type", traits: {"smithy.api#required" => {}}))
    EcsResourceRequirement.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#required" => {}}))
    EcsResourceRequirement.type = Types::EcsResourceRequirement
    EcsResourceRequirementsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsResourceRequirement, name: "member"))
    EcsTaskOverride.add_member(:container_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsContainerOverrideList, name: "ContainerOverrides"))
    EcsTaskOverride.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Cpu"))
    EcsTaskOverride.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsEphemeralStorage, name: "EphemeralStorage"))
    EcsTaskOverride.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrJsonPath, name: "ExecutionRoleArn"))
    EcsTaskOverride.add_member(:inference_accelerator_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsInferenceAcceleratorOverrideList, name: "InferenceAcceleratorOverrides"))
    EcsTaskOverride.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Memory"))
    EcsTaskOverride.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrJsonPath, name: "TaskRoleArn"))
    EcsTaskOverride.type = Types::EcsTaskOverride
    EventBridgeEventResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrJsonPath, name: "member"))
    Filter.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPattern, name: "Pattern"))
    Filter.type = Types::Filter
    FilterCriteria.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    FilterCriteria.type = Types::FilterCriteria
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FirehoseLogDestination.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FirehoseArn, name: "DeliveryStreamArn"))
    FirehoseLogDestination.type = Types::FirehoseLogDestination
    FirehoseLogDestinationParameters.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FirehoseArn, name: "DeliveryStreamArn", traits: {"smithy.api#required" => {}}))
    FirehoseLogDestinationParameters.type = Types::FirehoseLogDestinationParameters
    HeaderParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderKey, name: "key"))
    HeaderParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderValue, name: "value"))
    IncludeExecutionData.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeExecutionDataOption, name: "member"))
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalException.type = Types::InternalException
    KafkaBootstrapServers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointString, name: "member"))
    ListPipesRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "NamePrefix", traits: {"smithy.api#httpQuery" => "NamePrefix"}))
    ListPipesRequest.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeState, name: "DesiredState", traits: {"smithy.api#httpQuery" => "DesiredState"}))
    ListPipesRequest.add_member(:current_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeState, name: "CurrentState", traits: {"smithy.api#httpQuery" => "CurrentState"}))
    ListPipesRequest.add_member(:source_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SourcePrefix", traits: {"smithy.api#httpQuery" => "SourcePrefix"}))
    ListPipesRequest.add_member(:target_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "TargetPrefix", traits: {"smithy.api#httpQuery" => "TargetPrefix"}))
    ListPipesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListPipesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax100, name: "Limit", traits: {"smithy.api#httpQuery" => "Limit"}))
    ListPipesRequest.type = Types::ListPipesRequest
    ListPipesResponse.add_member(:pipes, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeList, name: "Pipes"))
    ListPipesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPipesResponse.type = Types::ListPipesResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MQBrokerAccessCredentials.add_member(:basic_auth, Types::MQBrokerAccessCredentials::BasicAuth, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "BasicAuth"))
    MQBrokerAccessCredentials.add_member(:unknown, Types::MQBrokerAccessCredentials::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MQBrokerAccessCredentials.type = Types::MQBrokerAccessCredentials
    MSKAccessCredentials.add_member(:sasl_scram512_auth, Types::MSKAccessCredentials::SaslScram512Auth, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "SaslScram512Auth"))
    MSKAccessCredentials.add_member(:client_certificate_tls_auth, Types::MSKAccessCredentials::ClientCertificateTlsAuth, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "ClientCertificateTlsAuth"))
    MSKAccessCredentials.add_member(:unknown, Types::MSKAccessCredentials::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MSKAccessCredentials.type = Types::MSKAccessCredentials
    MultiMeasureAttributeMapping.add_member(:measure_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValue, name: "MeasureValue", traits: {"smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.add_member(:measure_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValueType, name: "MeasureValueType", traits: {"smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.add_member(:multi_measure_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureAttributeName, name: "MultiMeasureAttributeName", traits: {"smithy.api#required" => {}}))
    MultiMeasureAttributeMapping.type = Types::MultiMeasureAttributeMapping
    MultiMeasureAttributeMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureAttributeMapping, name: "member"))
    MultiMeasureMapping.add_member(:multi_measure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureName, name: "MultiMeasureName", traits: {"smithy.api#required" => {}}))
    MultiMeasureMapping.add_member(:multi_measure_attribute_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureAttributeMappings, name: "MultiMeasureAttributeMappings", traits: {"smithy.api#required" => {}}))
    MultiMeasureMapping.type = Types::MultiMeasureMapping
    MultiMeasureMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureMapping, name: "member"))
    NetworkConfiguration.add_member(:awsvpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsVpcConfiguration, name: "awsvpcConfiguration"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NotFoundException.type = Types::NotFoundException
    PathParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameter, name: "member"))
    Pipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name"))
    Pipe.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "Arn", traits: {"aws.cloudformation#cfnAdditionalIdentifier" => {}}))
    Pipe.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeState, name: "DesiredState"))
    Pipe.add_member(:current_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeState, name: "CurrentState"))
    Pipe.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeStateReason, name: "StateReason"))
    Pipe.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    Pipe.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    Pipe.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrUrl, name: "Source"))
    Pipe.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Target"))
    Pipe.add_member(:enrichment, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalArn, name: "Enrichment"))
    Pipe.type = Types::Pipe
    PipeEnrichmentHttpParameters.add_member(:path_parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameterList, name: "PathParameterValues"))
    PipeEnrichmentHttpParameters.add_member(:header_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderParametersMap, name: "HeaderParameters"))
    PipeEnrichmentHttpParameters.add_member(:query_string_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringParametersMap, name: "QueryStringParameters"))
    PipeEnrichmentHttpParameters.type = Types::PipeEnrichmentHttpParameters
    PipeEnrichmentParameters.add_member(:input_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTemplate, name: "InputTemplate"))
    PipeEnrichmentParameters.add_member(:http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeEnrichmentHttpParameters, name: "HttpParameters"))
    PipeEnrichmentParameters.type = Types::PipeEnrichmentParameters
    PipeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Pipe, name: "member"))
    PipeLogConfiguration.add_member(:s3_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogDestination, name: "S3LogDestination"))
    PipeLogConfiguration.add_member(:firehose_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: FirehoseLogDestination, name: "FirehoseLogDestination"))
    PipeLogConfiguration.add_member(:cloudwatch_logs_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudwatchLogsLogDestination, name: "CloudwatchLogsLogDestination"))
    PipeLogConfiguration.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "Level"))
    PipeLogConfiguration.add_member(:include_execution_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeExecutionData, name: "IncludeExecutionData"))
    PipeLogConfiguration.type = Types::PipeLogConfiguration
    PipeLogConfigurationParameters.add_member(:s3_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogDestinationParameters, name: "S3LogDestination"))
    PipeLogConfigurationParameters.add_member(:firehose_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: FirehoseLogDestinationParameters, name: "FirehoseLogDestination"))
    PipeLogConfigurationParameters.add_member(:cloudwatch_logs_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudwatchLogsLogDestinationParameters, name: "CloudwatchLogsLogDestination"))
    PipeLogConfigurationParameters.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "Level", traits: {"smithy.api#required" => {}}))
    PipeLogConfigurationParameters.add_member(:include_execution_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeExecutionData, name: "IncludeExecutionData"))
    PipeLogConfigurationParameters.type = Types::PipeLogConfigurationParameters
    PipeSourceActiveMQBrokerParameters.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: MQBrokerAccessCredentials, name: "Credentials", traits: {"smithy.api#required" => {}}))
    PipeSourceActiveMQBrokerParameters.add_member(:queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MQBrokerQueueName, name: "QueueName", traits: {"smithy.api#required" => {}}))
    PipeSourceActiveMQBrokerParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    PipeSourceActiveMQBrokerParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    PipeSourceActiveMQBrokerParameters.type = Types::PipeSourceActiveMQBrokerParameters
    PipeSourceDynamoDBStreamParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    PipeSourceDynamoDBStreamParameters.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    PipeSourceDynamoDBStreamParameters.add_member(:on_partial_batch_item_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPartialBatchItemFailureStreams, name: "OnPartialBatchItemFailure"))
    PipeSourceDynamoDBStreamParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    PipeSourceDynamoDBStreamParameters.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    PipeSourceDynamoDBStreamParameters.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsESM, name: "MaximumRetryAttempts"))
    PipeSourceDynamoDBStreamParameters.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10, name: "ParallelizationFactor"))
    PipeSourceDynamoDBStreamParameters.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamoDBStreamStartPosition, name: "StartingPosition", traits: {"smithy.api#required" => {}}))
    PipeSourceDynamoDBStreamParameters.type = Types::PipeSourceDynamoDBStreamParameters
    PipeSourceKinesisStreamParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    PipeSourceKinesisStreamParameters.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    PipeSourceKinesisStreamParameters.add_member(:on_partial_batch_item_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPartialBatchItemFailureStreams, name: "OnPartialBatchItemFailure"))
    PipeSourceKinesisStreamParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    PipeSourceKinesisStreamParameters.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    PipeSourceKinesisStreamParameters.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsESM, name: "MaximumRetryAttempts"))
    PipeSourceKinesisStreamParameters.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10, name: "ParallelizationFactor"))
    PipeSourceKinesisStreamParameters.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamStartPosition, name: "StartingPosition", traits: {"smithy.api#required" => {}}))
    PipeSourceKinesisStreamParameters.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartingPositionTimestamp"))
    PipeSourceKinesisStreamParameters.type = Types::PipeSourceKinesisStreamParameters
    PipeSourceManagedStreamingKafkaParameters.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaTopicName, name: "TopicName", traits: {"smithy.api#required" => {}}))
    PipeSourceManagedStreamingKafkaParameters.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: MSKStartPosition, name: "StartingPosition"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:consumer_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "ConsumerGroupID"))
    PipeSourceManagedStreamingKafkaParameters.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: MSKAccessCredentials, name: "Credentials"))
    PipeSourceManagedStreamingKafkaParameters.type = Types::PipeSourceManagedStreamingKafkaParameters
    PipeSourceParameters.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    PipeSourceParameters.add_member(:kinesis_stream_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceKinesisStreamParameters, name: "KinesisStreamParameters"))
    PipeSourceParameters.add_member(:dynamo_db_stream_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceDynamoDBStreamParameters, name: "DynamoDBStreamParameters"))
    PipeSourceParameters.add_member(:sqs_queue_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceSqsQueueParameters, name: "SqsQueueParameters"))
    PipeSourceParameters.add_member(:active_mq_broker_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceActiveMQBrokerParameters, name: "ActiveMQBrokerParameters"))
    PipeSourceParameters.add_member(:rabbit_mq_broker_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceRabbitMQBrokerParameters, name: "RabbitMQBrokerParameters"))
    PipeSourceParameters.add_member(:managed_streaming_kafka_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceManagedStreamingKafkaParameters, name: "ManagedStreamingKafkaParameters"))
    PipeSourceParameters.add_member(:self_managed_kafka_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeSourceSelfManagedKafkaParameters, name: "SelfManagedKafkaParameters"))
    PipeSourceParameters.type = Types::PipeSourceParameters
    PipeSourceRabbitMQBrokerParameters.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: MQBrokerAccessCredentials, name: "Credentials", traits: {"smithy.api#required" => {}}))
    PipeSourceRabbitMQBrokerParameters.add_member(:queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MQBrokerQueueName, name: "QueueName", traits: {"smithy.api#required" => {}}))
    PipeSourceRabbitMQBrokerParameters.add_member(:virtual_host, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "VirtualHost"))
    PipeSourceRabbitMQBrokerParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    PipeSourceRabbitMQBrokerParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    PipeSourceRabbitMQBrokerParameters.type = Types::PipeSourceRabbitMQBrokerParameters
    PipeSourceSelfManagedKafkaParameters.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaTopicName, name: "TopicName", traits: {"smithy.api#required" => {}}))
    PipeSourceSelfManagedKafkaParameters.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaStartPosition, name: "StartingPosition"))
    PipeSourceSelfManagedKafkaParameters.add_member(:additional_bootstrap_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaBootstrapServers, name: "AdditionalBootstrapServers"))
    PipeSourceSelfManagedKafkaParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    PipeSourceSelfManagedKafkaParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    PipeSourceSelfManagedKafkaParameters.add_member(:consumer_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "ConsumerGroupID"))
    PipeSourceSelfManagedKafkaParameters.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaAccessConfigurationCredentials, name: "Credentials"))
    PipeSourceSelfManagedKafkaParameters.add_member(:server_root_ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "ServerRootCaCertificate"))
    PipeSourceSelfManagedKafkaParameters.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaAccessConfigurationVpc, name: "Vpc"))
    PipeSourceSelfManagedKafkaParameters.type = Types::PipeSourceSelfManagedKafkaParameters
    PipeSourceSqsQueueParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    PipeSourceSqsQueueParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    PipeSourceSqsQueueParameters.type = Types::PipeSourceSqsQueueParameters
    PipeTargetBatchJobParameters.add_member(:job_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "JobDefinition", traits: {"smithy.api#required" => {}}))
    PipeTargetBatchJobParameters.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "JobName", traits: {"smithy.api#required" => {}}))
    PipeTargetBatchJobParameters.add_member(:array_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchArrayProperties, name: "ArrayProperties"))
    PipeTargetBatchJobParameters.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchRetryStrategy, name: "RetryStrategy"))
    PipeTargetBatchJobParameters.add_member(:container_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchContainerOverrides, name: "ContainerOverrides"))
    PipeTargetBatchJobParameters.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDependsOn, name: "DependsOn"))
    PipeTargetBatchJobParameters.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchParametersMap, name: "Parameters"))
    PipeTargetBatchJobParameters.type = Types::PipeTargetBatchJobParameters
    PipeTargetCloudWatchLogsParameters.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, name: "LogStreamName"))
    PipeTargetCloudWatchLogsParameters.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonPath, name: "Timestamp"))
    PipeTargetCloudWatchLogsParameters.type = Types::PipeTargetCloudWatchLogsParameters
    PipeTargetEcsTaskParameters.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnOrJsonPath, name: "TaskDefinitionArn", traits: {"smithy.api#required" => {}}))
    PipeTargetEcsTaskParameters.add_member(:task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMin1, name: "TaskCount"))
    PipeTargetEcsTaskParameters.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "LaunchType"))
    PipeTargetEcsTaskParameters.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "NetworkConfiguration"))
    PipeTargetEcsTaskParameters.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformVersion"))
    PipeTargetEcsTaskParameters.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Group"))
    PipeTargetEcsTaskParameters.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "CapacityProviderStrategy"))
    PipeTargetEcsTaskParameters.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableECSManagedTags", traits: {"smithy.api#default" => false}))
    PipeTargetEcsTaskParameters.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableExecuteCommand", traits: {"smithy.api#default" => false}))
    PipeTargetEcsTaskParameters.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, name: "PlacementConstraints"))
    PipeTargetEcsTaskParameters.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, name: "PlacementStrategy"))
    PipeTargetEcsTaskParameters.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "PropagateTags"))
    PipeTargetEcsTaskParameters.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, name: "ReferenceId"))
    PipeTargetEcsTaskParameters.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsTaskOverride, name: "Overrides"))
    PipeTargetEcsTaskParameters.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PipeTargetEcsTaskParameters.type = Types::PipeTargetEcsTaskParameters
    PipeTargetEventBridgeEventBusParameters.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeEndpointId, name: "EndpointId"))
    PipeTargetEventBridgeEventBusParameters.add_member(:detail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDetailType, name: "DetailType"))
    PipeTargetEventBridgeEventBusParameters.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeEventSource, name: "Source"))
    PipeTargetEventBridgeEventBusParameters.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeEventResourceList, name: "Resources"))
    PipeTargetEventBridgeEventBusParameters.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonPath, name: "Time"))
    PipeTargetEventBridgeEventBusParameters.type = Types::PipeTargetEventBridgeEventBusParameters
    PipeTargetHttpParameters.add_member(:path_parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PathParameterList, name: "PathParameterValues"))
    PipeTargetHttpParameters.add_member(:header_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderParametersMap, name: "HeaderParameters"))
    PipeTargetHttpParameters.add_member(:query_string_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringParametersMap, name: "QueryStringParameters"))
    PipeTargetHttpParameters.type = Types::PipeTargetHttpParameters
    PipeTargetKinesisStreamParameters.add_member(:partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisPartitionKey, name: "PartitionKey", traits: {"smithy.api#required" => {}}))
    PipeTargetKinesisStreamParameters.type = Types::PipeTargetKinesisStreamParameters
    PipeTargetLambdaFunctionParameters.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetInvocationType, name: "InvocationType"))
    PipeTargetLambdaFunctionParameters.type = Types::PipeTargetLambdaFunctionParameters
    PipeTargetParameters.add_member(:input_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTemplate, name: "InputTemplate"))
    PipeTargetParameters.add_member(:lambda_function_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetLambdaFunctionParameters, name: "LambdaFunctionParameters"))
    PipeTargetParameters.add_member(:step_function_state_machine_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetStateMachineParameters, name: "StepFunctionStateMachineParameters"))
    PipeTargetParameters.add_member(:kinesis_stream_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetKinesisStreamParameters, name: "KinesisStreamParameters"))
    PipeTargetParameters.add_member(:ecs_task_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetEcsTaskParameters, name: "EcsTaskParameters"))
    PipeTargetParameters.add_member(:batch_job_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetBatchJobParameters, name: "BatchJobParameters"))
    PipeTargetParameters.add_member(:sqs_queue_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetSqsQueueParameters, name: "SqsQueueParameters"))
    PipeTargetParameters.add_member(:http_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetHttpParameters, name: "HttpParameters"))
    PipeTargetParameters.add_member(:redshift_data_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetRedshiftDataParameters, name: "RedshiftDataParameters"))
    PipeTargetParameters.add_member(:sage_maker_pipeline_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetSageMakerPipelineParameters, name: "SageMakerPipelineParameters"))
    PipeTargetParameters.add_member(:event_bridge_event_bus_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetEventBridgeEventBusParameters, name: "EventBridgeEventBusParameters"))
    PipeTargetParameters.add_member(:cloud_watch_logs_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetCloudWatchLogsParameters, name: "CloudWatchLogsParameters"))
    PipeTargetParameters.add_member(:timestream_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetTimestreamParameters, name: "TimestreamParameters"))
    PipeTargetParameters.type = Types::PipeTargetParameters
    PipeTargetRedshiftDataParameters.add_member(:secret_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArnOrJsonPath, name: "SecretManagerArn"))
    PipeTargetRedshiftDataParameters.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "Database", traits: {"smithy.api#required" => {}}))
    PipeTargetRedshiftDataParameters.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: DbUser, name: "DbUser"))
    PipeTargetRedshiftDataParameters.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName"))
    PipeTargetRedshiftDataParameters.add_member(:with_event, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "WithEvent", traits: {"smithy.api#default" => false}))
    PipeTargetRedshiftDataParameters.add_member(:sqls, ::Smithy::Schema::Shapes::MemberShape.new(target: Sqls, name: "Sqls", traits: {"smithy.api#required" => {}}))
    PipeTargetRedshiftDataParameters.type = Types::PipeTargetRedshiftDataParameters
    PipeTargetSageMakerPipelineParameters.add_member(:pipeline_parameter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameterList, name: "PipelineParameterList"))
    PipeTargetSageMakerPipelineParameters.type = Types::PipeTargetSageMakerPipelineParameters
    PipeTargetSqsQueueParameters.add_member(:message_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageGroupId, name: "MessageGroupId"))
    PipeTargetSqsQueueParameters.add_member(:message_deduplication_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDeduplicationId, name: "MessageDeduplicationId"))
    PipeTargetSqsQueueParameters.type = Types::PipeTargetSqsQueueParameters
    PipeTargetStateMachineParameters.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetInvocationType, name: "InvocationType"))
    PipeTargetStateMachineParameters.type = Types::PipeTargetStateMachineParameters
    PipeTargetTimestreamParameters.add_member(:time_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeValue, name: "TimeValue", traits: {"smithy.api#required" => {}}))
    PipeTargetTimestreamParameters.add_member(:epoch_time_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochTimeUnit, name: "EpochTimeUnit"))
    PipeTargetTimestreamParameters.add_member(:time_field_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeFieldType, name: "TimeFieldType"))
    PipeTargetTimestreamParameters.add_member(:timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "TimestampFormat"))
    PipeTargetTimestreamParameters.add_member(:version_value, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionValue, name: "VersionValue", traits: {"smithy.api#required" => {}}))
    PipeTargetTimestreamParameters.add_member(:dimension_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionMappings, name: "DimensionMappings", traits: {"smithy.api#required" => {}}))
    PipeTargetTimestreamParameters.add_member(:single_measure_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleMeasureMappings, name: "SingleMeasureMappings"))
    PipeTargetTimestreamParameters.add_member(:multi_measure_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiMeasureMappings, name: "MultiMeasureMappings"))
    PipeTargetTimestreamParameters.type = Types::PipeTargetTimestreamParameters
    PlacementConstraint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraintType, name: "type"))
    PlacementConstraint.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraintExpression, name: "expression"))
    PlacementConstraint.type = Types::PlacementConstraint
    PlacementConstraints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraint, name: "member"))
    PlacementStrategies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategy, name: "member"))
    PlacementStrategy.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategyType, name: "type"))
    PlacementStrategy.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategyField, name: "field"))
    PlacementStrategy.type = Types::PlacementStrategy
    QueryStringParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringKey, name: "key"))
    QueryStringParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringValue, name: "value"))
    S3LogDestination.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    S3LogDestination.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Prefix"))
    S3LogDestination.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketOwner"))
    S3LogDestination.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutputFormat, name: "OutputFormat"))
    S3LogDestination.type = Types::S3LogDestination
    S3LogDestinationParameters.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#required" => {}}))
    S3LogDestinationParameters.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketOwner", traits: {"smithy.api#pattern" => "^\\d{12}$", "smithy.api#required" => {}}))
    S3LogDestinationParameters.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutputFormat, name: "OutputFormat"))
    S3LogDestinationParameters.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Prefix", traits: {"smithy.api#length" => {"max" => 256}}))
    S3LogDestinationParameters.type = Types::S3LogDestinationParameters
    SageMakerPipelineParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    SageMakerPipelineParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    SageMakerPipelineParameter.type = Types::SageMakerPipelineParameter
    SageMakerPipelineParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerPipelineParameter, name: "member"))
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    SecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "member"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:basic_auth, Types::SelfManagedKafkaAccessConfigurationCredentials::BasicAuth, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "BasicAuth"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:sasl_scram512_auth, Types::SelfManagedKafkaAccessConfigurationCredentials::SaslScram512Auth, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "SaslScram512Auth"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:sasl_scram256_auth, Types::SelfManagedKafkaAccessConfigurationCredentials::SaslScram256Auth, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "SaslScram256Auth"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:client_certificate_tls_auth, Types::SelfManagedKafkaAccessConfigurationCredentials::ClientCertificateTlsAuth, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "ClientCertificateTlsAuth"))
    SelfManagedKafkaAccessConfigurationCredentials.add_member(:unknown, Types::SelfManagedKafkaAccessConfigurationCredentials::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SelfManagedKafkaAccessConfigurationCredentials.type = Types::SelfManagedKafkaAccessConfigurationCredentials
    SelfManagedKafkaAccessConfigurationVpc.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "Subnets"))
    SelfManagedKafkaAccessConfigurationVpc.add_member(:security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroup"))
    SelfManagedKafkaAccessConfigurationVpc.type = Types::SelfManagedKafkaAccessConfigurationVpc
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SingleMeasureMapping.add_member(:measure_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValue, name: "MeasureValue", traits: {"smithy.api#required" => {}}))
    SingleMeasureMapping.add_member(:measure_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureValueType, name: "MeasureValueType", traits: {"smithy.api#required" => {}}))
    SingleMeasureMapping.add_member(:measure_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasureName, name: "MeasureName", traits: {"smithy.api#required" => {}}))
    SingleMeasureMapping.type = Types::SingleMeasureMapping
    SingleMeasureMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleMeasureMapping, name: "member"))
    Sqls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Sql, name: "member"))
    StartPipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartPipeRequest.type = Types::StartPipeRequest
    StartPipeResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "Arn"))
    StartPipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name"))
    StartPipeResponse.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeState, name: "DesiredState"))
    StartPipeResponse.add_member(:current_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeState, name: "CurrentState"))
    StartPipeResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    StartPipeResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    StartPipeResponse.type = Types::StartPipeResponse
    StopPipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopPipeRequest.type = Types::StopPipeRequest
    StopPipeResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "Arn"))
    StopPipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name"))
    StopPipeResponse.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeState, name: "DesiredState"))
    StopPipeResponse.add_member(:current_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeState, name: "CurrentState"))
    StopPipeResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    StopPipeResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    StopPipeResponse.type = Types::StopPipeResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    Subnets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnet, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdatePipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeDescription, name: "Description"))
    UpdatePipeRequest.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeState, name: "DesiredState"))
    UpdatePipeRequest.add_member(:source_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePipeSourceParameters, name: "SourceParameters", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdatePipeRequest.add_member(:enrichment, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalArn, name: "Enrichment"))
    UpdatePipeRequest.add_member(:enrichment_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeEnrichmentParameters, name: "EnrichmentParameters"))
    UpdatePipeRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Target"))
    UpdatePipeRequest.add_member(:target_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeTargetParameters, name: "TargetParameters"))
    UpdatePipeRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdatePipeRequest.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeLogConfigurationParameters, name: "LogConfiguration", traits: {"aws.cloudformation#cfnMutability" => "write"}))
    UpdatePipeRequest.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    UpdatePipeRequest.type = Types::UpdatePipeRequest
    UpdatePipeResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeArn, name: "Arn"))
    UpdatePipeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeName, name: "Name"))
    UpdatePipeResponse.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedPipeState, name: "DesiredState"))
    UpdatePipeResponse.add_member(:current_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PipeState, name: "CurrentState"))
    UpdatePipeResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    UpdatePipeResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    UpdatePipeResponse.type = Types::UpdatePipeResponse
    UpdatePipeSourceActiveMQBrokerParameters.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: MQBrokerAccessCredentials, name: "Credentials", traits: {"smithy.api#required" => {}}))
    UpdatePipeSourceActiveMQBrokerParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    UpdatePipeSourceActiveMQBrokerParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceActiveMQBrokerParameters.type = Types::UpdatePipeSourceActiveMQBrokerParameters
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:on_partial_batch_item_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPartialBatchItemFailureStreams, name: "OnPartialBatchItemFailure"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsESM, name: "MaximumRetryAttempts"))
    UpdatePipeSourceDynamoDBStreamParameters.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10, name: "ParallelizationFactor"))
    UpdatePipeSourceDynamoDBStreamParameters.type = Types::UpdatePipeSourceDynamoDBStreamParameters
    UpdatePipeSourceKinesisStreamParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:on_partial_batch_item_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPartialBatchItemFailureStreams, name: "OnPartialBatchItemFailure"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsESM, name: "MaximumRetryAttempts"))
    UpdatePipeSourceKinesisStreamParameters.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10, name: "ParallelizationFactor"))
    UpdatePipeSourceKinesisStreamParameters.type = Types::UpdatePipeSourceKinesisStreamParameters
    UpdatePipeSourceManagedStreamingKafkaParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    UpdatePipeSourceManagedStreamingKafkaParameters.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: MSKAccessCredentials, name: "Credentials"))
    UpdatePipeSourceManagedStreamingKafkaParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceManagedStreamingKafkaParameters.type = Types::UpdatePipeSourceManagedStreamingKafkaParameters
    UpdatePipeSourceParameters.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    UpdatePipeSourceParameters.add_member(:kinesis_stream_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePipeSourceKinesisStreamParameters, name: "KinesisStreamParameters"))
    UpdatePipeSourceParameters.add_member(:dynamo_db_stream_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePipeSourceDynamoDBStreamParameters, name: "DynamoDBStreamParameters"))
    UpdatePipeSourceParameters.add_member(:sqs_queue_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePipeSourceSqsQueueParameters, name: "SqsQueueParameters"))
    UpdatePipeSourceParameters.add_member(:active_mq_broker_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePipeSourceActiveMQBrokerParameters, name: "ActiveMQBrokerParameters"))
    UpdatePipeSourceParameters.add_member(:rabbit_mq_broker_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePipeSourceRabbitMQBrokerParameters, name: "RabbitMQBrokerParameters"))
    UpdatePipeSourceParameters.add_member(:managed_streaming_kafka_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePipeSourceManagedStreamingKafkaParameters, name: "ManagedStreamingKafkaParameters"))
    UpdatePipeSourceParameters.add_member(:self_managed_kafka_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePipeSourceSelfManagedKafkaParameters, name: "SelfManagedKafkaParameters"))
    UpdatePipeSourceParameters.type = Types::UpdatePipeSourceParameters
    UpdatePipeSourceRabbitMQBrokerParameters.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: MQBrokerAccessCredentials, name: "Credentials", traits: {"smithy.api#required" => {}}))
    UpdatePipeSourceRabbitMQBrokerParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    UpdatePipeSourceRabbitMQBrokerParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceRabbitMQBrokerParameters.type = Types::UpdatePipeSourceRabbitMQBrokerParameters
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaAccessConfigurationCredentials, name: "Credentials"))
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:server_root_ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretManagerArn, name: "ServerRootCaCertificate"))
    UpdatePipeSourceSelfManagedKafkaParameters.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaAccessConfigurationVpc, name: "Vpc"))
    UpdatePipeSourceSelfManagedKafkaParameters.type = Types::UpdatePipeSourceSelfManagedKafkaParameters
    UpdatePipeSourceSqsQueueParameters.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitMax10000, name: "BatchSize"))
    UpdatePipeSourceSqsQueueParameters.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdatePipeSourceSqsQueueParameters.type = Types::UpdatePipeSourceSqsQueueParameters
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))

    Pipes = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pipes#Pipes"
      service.name = "Pipes"
      service.version = "2015-10-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Pipes", "arnNamespace" => "pipes", "cloudFormationName" => "Pipes", "cloudTrailEventSource" => "pipes.amazonaws.com", "endpointPrefix" => "pipes"}, "aws.auth#sigv4" => {"name" => "pipes"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tag-value associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by allowed set of values for each of the tags", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of mandatory tags in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "Amazon EventBridge Pipes", "smithy.api#xmlNamespace" => {"uri" => "http://events.amazonaws.com/doc/2015-10-07"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://pipes-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://pipes-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://pipes.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://pipes.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_pipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#CreatePipe"
        operation.name = "CreatePipe"
        operation.input = CreatePipeRequest
        operation.output = CreatePipeResponse
        operation.errors << ConflictException
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a pipe", "aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/pipes/{Name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_pipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#DeletePipe"
        operation.name = "DeletePipe"
        operation.input = DeletePipeRequest
        operation.output = DeletePipeResponse
        operation.errors << ConflictException
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a pipe", "aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/pipes/{Name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_pipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#DescribePipe"
        operation.name = "DescribePipe"
        operation.input = DescribePipeRequest
        operation.output = DescribePipeResponse
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to describe a pipe", "aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "GET", "uri" => "/v1/pipes/{Name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_pipes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#ListPipes"
        operation.name = "ListPipes"
        operation.input = ListPipesRequest
        operation.output = ListPipesResponse
        operation.errors << InternalException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list all pipes in your account", "smithy.api#http" => {"method" => "GET", "uri" => "/v1/pipes", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPipes.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list the tags for a resource", "aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_pipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#StartPipe"
        operation.name = "StartPipe"
        operation.input = StartPipeRequest
        operation.output = StartPipeResponse
        operation.errors << ConflictException
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a pipe", "aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/pipes/{Name}/start", "code" => 200}}
      end)
      service.add_operation(:stop_pipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#StopPipe"
        operation.name = "StopPipe"
        operation.input = StopPipeRequest
        operation.output = StopPipeResponse
        operation.errors << ConflictException
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to stop a pipe", "aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/pipes/{Name}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to add tags to a resource", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove the tags for a resource", "aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_pipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pipes#UpdatePipe"
        operation.name = "UpdatePipe"
        operation.input = UpdatePipeRequest
        operation.output = UpdatePipeResponse
        operation.errors << ConflictException
        operation.errors << InternalException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a pipe", "aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/pipes/{Name}", "code" => 200}, "smithy.api#idempotent" => {}}
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
