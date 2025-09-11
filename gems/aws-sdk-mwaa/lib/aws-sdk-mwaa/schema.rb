# frozen_string_literal: true

# This is generated code!

module Aws::MWAA
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AirflowConfigurationOptions = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mwaa#AirflowConfigurationOptions', name: 'AirflowConfigurationOptions', traits: {"smithy.api#sensitive" => {}})
    AirflowIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#AirflowIdentity', name: 'AirflowIdentity', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    AirflowVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#AirflowVersion', name: 'AirflowVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[0-9a-z.]+$"})
    CeleryExecutorQueue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#CeleryExecutorQueue', name: 'CeleryExecutorQueue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:sqs:[a-z0-9\\-]+:\\d{12}:[a-zA-Z_0-9+=,.@\\-_/]+$"})
    CloudWatchLogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#CloudWatchLogGroupArn', name: 'CloudWatchLogGroupArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:logs:[a-z0-9\\-]+:\\d{12}:log-group:\\w+"})
    ConfigKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#ConfigKey', name: 'ConfigKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z]+([a-z0-9._]*[a-z0-9_]+)?$"})
    ConfigValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#ConfigValue', name: 'ConfigValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    CreateCliTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#CreateCliTokenInput', name: 'CreateCliTokenInput')
    CreateCliTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#CreateCliTokenOutput', name: 'CreateCliTokenOutput')
    CreateEnvironmentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#CreateEnvironmentOperationInput', name: 'CreateEnvironmentOperationInput')
    CreateEnvironmentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#CreateEnvironmentOperationOutput', name: 'CreateEnvironmentOperationOutput')
    CreateWebLoginTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#CreateWebLoginTokenInput', name: 'CreateWebLoginTokenInput')
    CreateWebLoginTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#CreateWebLoginTokenOutput', name: 'CreateWebLoginTokenOutput')
    CreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mwaa#CreatedAt', name: 'CreatedAt')
    DeleteEnvironmentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#DeleteEnvironmentOperationInput', name: 'DeleteEnvironmentOperationInput')
    DeleteEnvironmentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#DeleteEnvironmentOperationOutput', name: 'DeleteEnvironmentOperationOutput')
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#Dimension', name: 'Dimension', traits: {"smithy.api#deprecated" => {"message" => "This type is for internal use and not meant for public use. Data set for this type will be ignored."}})
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mwaa#Dimensions', name: 'Dimensions', traits: {"smithy.api#deprecated" => {"message" => "This type is for internal use and not meant for public use. Data set for this type will be ignored."}})
    EndpointManagement = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#EndpointManagement', name: 'EndpointManagement', traits: {"smithy.api#enum" => [{"value" => "CUSTOMER", "name" => "CUSTOMER"}, {"value" => "SERVICE", "name" => "SERVICE"}]})
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#Environment', name: 'Environment')
    EnvironmentArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#EnvironmentArn', name: 'EnvironmentArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:airflow:[a-z0-9\\-]+:\\d{12}:environment/\\w+"})
    EnvironmentClass = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#EnvironmentClass', name: 'EnvironmentClass', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    EnvironmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mwaa#EnvironmentList', name: 'EnvironmentList')
    EnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#EnvironmentName', name: 'EnvironmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[a-zA-Z][0-9a-zA-Z-_]*$"})
    EnvironmentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#EnvironmentStatus', name: 'EnvironmentStatus', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "AVAILABLE", "name" => "AVAILABLE"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "UNAVAILABLE", "name" => "UNAVAILABLE"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}, {"value" => "ROLLING_BACK", "name" => "ROLLING_BACK"}, {"value" => "CREATING_SNAPSHOT", "name" => "CREATING_SNAPSHOT"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "MAINTENANCE", "name" => "MAINTENANCE"}]})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#ErrorCode', name: 'ErrorCode')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    GetEnvironmentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#GetEnvironmentOperationInput', name: 'GetEnvironmentOperationInput')
    GetEnvironmentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#GetEnvironmentOperationOutput', name: 'GetEnvironmentOperationOutput')
    Hostname = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#Hostname', name: 'Hostname', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9])$"})
    IamIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#IamIdentity', name: 'IamIdentity')
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvokeRestApiRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#InvokeRestApiRequest', name: 'InvokeRestApiRequest')
    InvokeRestApiResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#InvokeRestApiResponse', name: 'InvokeRestApiResponse')
    KmsKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#KmsKey', name: 'KmsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^(((arn:aws(-[a-z]+)?:kms:[a-z]{2}-[a-z]+-\\d:\\d+:)?key\\/)?[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}|(arn:aws(-[a-z]+)?:kms:[a-z]{2}-[a-z]+-\\d:\\d+:)?alias/.+)$"})
    LastUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#LastUpdate', name: 'LastUpdate')
    ListEnvironmentsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#ListEnvironmentsOperationInput', name: 'ListEnvironmentsOperationInput')
    ListEnvironmentsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#ListEnvironmentsOperationOutput', name: 'ListEnvironmentsOperationOutput')
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#LoggingConfiguration', name: 'LoggingConfiguration')
    LoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#LoggingConfigurationInput', name: 'LoggingConfigurationInput')
    LoggingEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.mwaa#LoggingEnabled', name: 'LoggingEnabled')
    LoggingLevel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#LoggingLevel', name: 'LoggingLevel', traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "WARNING", "name" => "WARNING"}, {"value" => "INFO", "name" => "INFO"}, {"value" => "DEBUG", "name" => "DEBUG"}]})
    MaxWebservers = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mwaa#MaxWebservers', name: 'MaxWebservers', traits: {"smithy.api#range" => {"min" => 1}})
    MaxWorkers = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mwaa#MaxWorkers', name: 'MaxWorkers', traits: {"smithy.api#range" => {"min" => 1}})
    MetricData = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mwaa#MetricData', name: 'MetricData', traits: {"smithy.api#deprecated" => {"message" => "This type is for internal use and not meant for public use. Data set for this type will be ignored."}})
    MetricDatum = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#MetricDatum', name: 'MetricDatum', traits: {"smithy.api#deprecated" => {"message" => "This type is for internal use and not meant for public use. Data set for this type will be ignored."}})
    MinWebservers = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mwaa#MinWebservers', name: 'MinWebservers', traits: {"smithy.api#range" => {"min" => 1}})
    MinWorkers = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mwaa#MinWorkers', name: 'MinWorkers', traits: {"smithy.api#range" => {"min" => 1}})
    ModuleLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#ModuleLoggingConfiguration', name: 'ModuleLoggingConfiguration')
    ModuleLoggingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#ModuleLoggingConfigurationInput', name: 'ModuleLoggingConfigurationInput')
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#NetworkConfiguration', name: 'NetworkConfiguration')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"max" => 2048}})
    PublishMetricsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#PublishMetricsOperationInput', name: 'PublishMetricsOperationInput', traits: {"smithy.api#deprecated" => {"message" => "This type is for internal use and not meant for public use. Data set for this type will be ignored."}})
    PublishMetricsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#PublishMetricsOperationOutput', name: 'PublishMetricsOperationOutput', traits: {"smithy.api#deprecated" => {"message" => "This type is for internal use and not meant for public use. Data set for this type will be ignored."}})
    RelativePath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#RelativePath', name: 'RelativePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestApiClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#RestApiClientException', name: 'RestApiClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestApiMethod = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#RestApiMethod', name: 'RestApiMethod', traits: {"smithy.api#enum" => [{"value" => "GET", "name" => "GET"}, {"value" => "PUT", "name" => "PUT"}, {"value" => "POST", "name" => "POST"}, {"value" => "PATCH", "name" => "PATCH"}, {"value" => "DELETE", "name" => "DELETE"}]})
    RestApiPath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#RestApiPath', name: 'RestApiPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RestApiRequestBody = ::Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.mwaa#RestApiRequestBody', name: 'RestApiRequestBody', traits: {"smithy.api#sensitive" => {}})
    RestApiResponse = ::Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.mwaa#RestApiResponse', name: 'RestApiResponse', traits: {"smithy.api#sensitive" => {}})
    RestApiServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#RestApiServerException', name: 'RestApiServerException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    S3BucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#S3BucketArn', name: 'S3BucketArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:s3:::[a-z0-9.\\-]+$"})
    S3ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#S3ObjectVersion', name: 'S3ObjectVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Schedulers = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mwaa#Schedulers', name: 'Schedulers', traits: {"smithy.api#range" => {"max" => 5}})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^sg-[a-zA-Z0-9\\-._]+$"})
    SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mwaa#SecurityGroupList', name: 'SecurityGroupList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    StatisticSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#StatisticSet', name: 'StatisticSet', traits: {"smithy.api#deprecated" => {"message" => "This type is for internal use and not meant for public use. Data set for this type will be ignored."}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^subnet-[a-zA-Z0-9\\-._]+$"})
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mwaa#SubnetList', name: 'SubnetList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mwaa#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mwaa#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#TagResourceOperationInput', name: 'TagResourceOperationInput')
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#Token', name: 'Token', traits: {"smithy.api#sensitive" => {}})
    Unit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#Unit', name: 'Unit', traits: {"smithy.api#enum" => [{"value" => "Seconds", "name" => "SECONDS"}, {"value" => "Microseconds", "name" => "MICROSECONDS"}, {"value" => "Milliseconds", "name" => "MILLISECONDS"}, {"value" => "Bytes", "name" => "BYTES"}, {"value" => "Kilobytes", "name" => "KILOBYTES"}, {"value" => "Megabytes", "name" => "MEGABYTES"}, {"value" => "Gigabytes", "name" => "GIGABYTES"}, {"value" => "Terabytes", "name" => "TERABYTES"}, {"value" => "Bits", "name" => "BITS"}, {"value" => "Kilobits", "name" => "KILOBITS"}, {"value" => "Megabits", "name" => "MEGABITS"}, {"value" => "Gigabits", "name" => "GIGABITS"}, {"value" => "Terabits", "name" => "TERABITS"}, {"value" => "Percent", "name" => "PERCENT"}, {"value" => "Count", "name" => "COUNT"}, {"value" => "Bytes/Second", "name" => "BYTES_PER_SECOND"}, {"value" => "Kilobytes/Second", "name" => "KILOBYTES_PER_SECOND"}, {"value" => "Megabytes/Second", "name" => "MEGABYTES_PER_SECOND"}, {"value" => "Gigabytes/Second", "name" => "GIGABYTES_PER_SECOND"}, {"value" => "Terabytes/Second", "name" => "TERABYTES_PER_SECOND"}, {"value" => "Bits/Second", "name" => "BITS_PER_SECOND"}, {"value" => "Kilobits/Second", "name" => "KILOBITS_PER_SECOND"}, {"value" => "Megabits/Second", "name" => "MEGABITS_PER_SECOND"}, {"value" => "Gigabits/Second", "name" => "GIGABITS_PER_SECOND"}, {"value" => "Terabits/Second", "name" => "TERABITS_PER_SECOND"}, {"value" => "Count/Second", "name" => "COUNT_PER_SECOND"}, {"value" => "None", "name" => "NONE"}]})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#UntagResourceOperationInput', name: 'UntagResourceOperationInput')
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    UpdateCreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mwaa#UpdateCreatedAt', name: 'UpdateCreatedAt')
    UpdateEnvironmentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#UpdateEnvironmentOperationInput', name: 'UpdateEnvironmentOperationInput')
    UpdateEnvironmentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#UpdateEnvironmentOperationOutput', name: 'UpdateEnvironmentOperationOutput')
    UpdateError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#UpdateError', name: 'UpdateError')
    UpdateNetworkConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#UpdateNetworkConfigurationInput', name: 'UpdateNetworkConfigurationInput')
    UpdateSource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#UpdateSource', name: 'UpdateSource', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.+$"})
    UpdateStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#UpdateStatus', name: 'UpdateStatus', traits: {"smithy.api#enum" => [{"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mwaa#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcEndpointServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#VpcEndpointServiceName', name: 'VpcEndpointServiceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^([a-z.-]+)?com\\.amazonaws\\.vpce\\.[a-z0-9\\-]+\\.[a-zA-Z_0-9+=,.@\\-_/]+$"})
    WebserverAccessMode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#WebserverAccessMode', name: 'WebserverAccessMode', traits: {"smithy.api#enum" => [{"value" => "PRIVATE_ONLY", "name" => "PRIVATE_ONLY"}, {"value" => "PUBLIC_ONLY", "name" => "PUBLIC_ONLY"}]})
    WebserverUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#WebserverUrl', name: 'WebserverUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^https://.+$"})
    WeeklyMaintenanceWindowStart = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#WeeklyMaintenanceWindowStart', name: 'WeeklyMaintenanceWindowStart', traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#pattern" => "(MON|TUE|WED|THU|FRI|SAT|SUN):([01]\\d|2[0-3]):(00|30)"})
    WorkerReplacementStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mwaa#WorkerReplacementStrategy', name: 'WorkerReplacementStrategy', traits: {"smithy.api#enum" => [{"value" => "FORCED", "name" => "FORCED"}, {"value" => "GRACEFUL", "name" => "GRACEFUL"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AirflowConfigurationOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigKey)
    AirflowConfigurationOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigValue)
    CreateCliTokenInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCliTokenInput.type = Types::CreateCliTokenInput
    CreateCliTokenOutput.add_member(:cli_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'CliToken'))
    CreateCliTokenOutput.add_member(:web_server_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hostname, location_name: 'WebServerHostname'))
    CreateCliTokenOutput.type = Types::CreateCliTokenOutput
    CreateEnvironmentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:source_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: 'SourceBucketArn', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:dag_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'DagS3Path', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOperationInput.add_member(:plugins_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'PluginsS3Path'))
    CreateEnvironmentOperationInput.add_member(:plugins_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'PluginsS3ObjectVersion'))
    CreateEnvironmentOperationInput.add_member(:requirements_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'RequirementsS3Path'))
    CreateEnvironmentOperationInput.add_member(:requirements_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'RequirementsS3ObjectVersion'))
    CreateEnvironmentOperationInput.add_member(:startup_script_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'StartupScriptS3Path'))
    CreateEnvironmentOperationInput.add_member(:startup_script_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'StartupScriptS3ObjectVersion'))
    CreateEnvironmentOperationInput.add_member(:airflow_configuration_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AirflowConfigurationOptions, location_name: 'AirflowConfigurationOptions'))
    CreateEnvironmentOperationInput.add_member(:environment_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentClass, location_name: 'EnvironmentClass'))
    CreateEnvironmentOperationInput.add_member(:max_workers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkers, location_name: 'MaxWorkers'))
    CreateEnvironmentOperationInput.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKey'))
    CreateEnvironmentOperationInput.add_member(:airflow_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AirflowVersion, location_name: 'AirflowVersion'))
    CreateEnvironmentOperationInput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationInput, location_name: 'LoggingConfiguration'))
    CreateEnvironmentOperationInput.add_member(:weekly_maintenance_window_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyMaintenanceWindowStart, location_name: 'WeeklyMaintenanceWindowStart'))
    CreateEnvironmentOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateEnvironmentOperationInput.add_member(:webserver_access_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebserverAccessMode, location_name: 'WebserverAccessMode'))
    CreateEnvironmentOperationInput.add_member(:min_workers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinWorkers, location_name: 'MinWorkers'))
    CreateEnvironmentOperationInput.add_member(:schedulers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedulers, location_name: 'Schedulers'))
    CreateEnvironmentOperationInput.add_member(:endpoint_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointManagement, location_name: 'EndpointManagement'))
    CreateEnvironmentOperationInput.add_member(:min_webservers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinWebservers, location_name: 'MinWebservers'))
    CreateEnvironmentOperationInput.add_member(:max_webservers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWebservers, location_name: 'MaxWebservers'))
    CreateEnvironmentOperationInput.type = Types::CreateEnvironmentOperationInput
    CreateEnvironmentOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'Arn'))
    CreateEnvironmentOperationOutput.type = Types::CreateEnvironmentOperationOutput
    CreateWebLoginTokenInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWebLoginTokenInput.type = Types::CreateWebLoginTokenInput
    CreateWebLoginTokenOutput.add_member(:web_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'WebToken'))
    CreateWebLoginTokenOutput.add_member(:web_server_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hostname, location_name: 'WebServerHostname'))
    CreateWebLoginTokenOutput.add_member(:iam_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentity, location_name: 'IamIdentity'))
    CreateWebLoginTokenOutput.add_member(:airflow_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AirflowIdentity, location_name: 'AirflowIdentity'))
    CreateWebLoginTokenOutput.type = Types::CreateWebLoginTokenOutput
    DeleteEnvironmentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentOperationInput.type = Types::DeleteEnvironmentOperationInput
    DeleteEnvironmentOperationOutput.type = Types::DeleteEnvironmentOperationOutput
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    Dimensions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension)
    Environment.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name'))
    Environment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: 'Status'))
    Environment.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'Arn'))
    Environment.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'CreatedAt'))
    Environment.add_member(:webserver_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebserverUrl, location_name: 'WebserverUrl'))
    Environment.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'ExecutionRoleArn'))
    Environment.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'ServiceRoleArn'))
    Environment.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKey'))
    Environment.add_member(:airflow_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AirflowVersion, location_name: 'AirflowVersion'))
    Environment.add_member(:source_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: 'SourceBucketArn'))
    Environment.add_member(:dag_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'DagS3Path'))
    Environment.add_member(:plugins_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'PluginsS3Path'))
    Environment.add_member(:plugins_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'PluginsS3ObjectVersion'))
    Environment.add_member(:requirements_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'RequirementsS3Path'))
    Environment.add_member(:requirements_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'RequirementsS3ObjectVersion'))
    Environment.add_member(:startup_script_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'StartupScriptS3Path'))
    Environment.add_member(:startup_script_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'StartupScriptS3ObjectVersion'))
    Environment.add_member(:airflow_configuration_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AirflowConfigurationOptions, location_name: 'AirflowConfigurationOptions'))
    Environment.add_member(:environment_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentClass, location_name: 'EnvironmentClass'))
    Environment.add_member(:max_workers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkers, location_name: 'MaxWorkers'))
    Environment.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration'))
    Environment.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration'))
    Environment.add_member(:last_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdate, location_name: 'LastUpdate'))
    Environment.add_member(:weekly_maintenance_window_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyMaintenanceWindowStart, location_name: 'WeeklyMaintenanceWindowStart'))
    Environment.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    Environment.add_member(:webserver_access_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebserverAccessMode, location_name: 'WebserverAccessMode'))
    Environment.add_member(:min_workers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinWorkers, location_name: 'MinWorkers'))
    Environment.add_member(:schedulers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedulers, location_name: 'Schedulers'))
    Environment.add_member(:webserver_vpc_endpoint_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointServiceName, location_name: 'WebserverVpcEndpointService'))
    Environment.add_member(:database_vpc_endpoint_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointServiceName, location_name: 'DatabaseVpcEndpointService'))
    Environment.add_member(:celery_executor_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CeleryExecutorQueue, location_name: 'CeleryExecutorQueue'))
    Environment.add_member(:endpoint_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointManagement, location_name: 'EndpointManagement'))
    Environment.add_member(:min_webservers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinWebservers, location_name: 'MinWebservers'))
    Environment.add_member(:max_webservers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWebservers, location_name: 'MaxWebservers'))
    Environment.type = Types::Environment
    EnvironmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName)
    GetEnvironmentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentOperationInput.type = Types::GetEnvironmentOperationInput
    GetEnvironmentOperationOutput.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'Environment'))
    GetEnvironmentOperationOutput.type = Types::GetEnvironmentOperationOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvokeRestApiRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeRestApiRequest.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestApiPath, location_name: 'Path', traits: {"smithy.api#required" => {}}))
    InvokeRestApiRequest.add_member(:method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestApiMethod, location_name: 'Method', traits: {"smithy.api#required" => {}}))
    InvokeRestApiRequest.add_member(:query_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'QueryParameters'))
    InvokeRestApiRequest.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestApiRequestBody, location_name: 'Body'))
    InvokeRestApiRequest.type = Types::InvokeRestApiRequest
    InvokeRestApiResponse.add_member(:rest_api_status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'RestApiStatusCode'))
    InvokeRestApiResponse.add_member(:rest_api_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestApiResponse, location_name: 'RestApiResponse'))
    InvokeRestApiResponse.type = Types::InvokeRestApiResponse
    LastUpdate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatus, location_name: 'Status'))
    LastUpdate.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCreatedAt, location_name: 'CreatedAt'))
    LastUpdate.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateError, location_name: 'Error'))
    LastUpdate.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSource, location_name: 'Source'))
    LastUpdate.add_member(:worker_replacement_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerReplacementStrategy, location_name: 'WorkerReplacementStrategy'))
    LastUpdate.type = Types::LastUpdate
    ListEnvironmentsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListEnvironmentsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults", "smithy.api#range" => {"min" => 1, "max" => 25}}))
    ListEnvironmentsOperationInput.type = Types::ListEnvironmentsOperationInput
    ListEnvironmentsOperationOutput.add_member(:environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentList, location_name: 'Environments', traits: {"smithy.api#required" => {}}))
    ListEnvironmentsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEnvironmentsOperationOutput.type = Types::ListEnvironmentsOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    LoggingConfiguration.add_member(:dag_processing_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: 'DagProcessingLogs'))
    LoggingConfiguration.add_member(:scheduler_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: 'SchedulerLogs'))
    LoggingConfiguration.add_member(:webserver_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: 'WebserverLogs'))
    LoggingConfiguration.add_member(:worker_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: 'WorkerLogs'))
    LoggingConfiguration.add_member(:task_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: 'TaskLogs'))
    LoggingConfiguration.type = Types::LoggingConfiguration
    LoggingConfigurationInput.add_member(:dag_processing_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: 'DagProcessingLogs'))
    LoggingConfigurationInput.add_member(:scheduler_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: 'SchedulerLogs'))
    LoggingConfigurationInput.add_member(:webserver_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: 'WebserverLogs'))
    LoggingConfigurationInput.add_member(:worker_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: 'WorkerLogs'))
    LoggingConfigurationInput.add_member(:task_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: 'TaskLogs'))
    LoggingConfigurationInput.type = Types::LoggingConfigurationInput
    MetricData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDatum)
    MetricDatum.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'MetricName', traits: {"smithy.api#required" => {}}))
    MetricDatum.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'Timestamp', traits: {"smithy.api#required" => {}}))
    MetricDatum.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: 'Dimensions'))
    MetricDatum.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Value'))
    MetricDatum.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Unit, location_name: 'Unit'))
    MetricDatum.add_member(:statistic_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatisticSet, location_name: 'StatisticValues'))
    MetricDatum.type = Types::MetricDatum
    ModuleLoggingConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingEnabled, location_name: 'Enabled'))
    ModuleLoggingConfiguration.add_member(:log_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingLevel, location_name: 'LogLevel'))
    ModuleLoggingConfiguration.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: 'CloudWatchLogGroupArn'))
    ModuleLoggingConfiguration.type = Types::ModuleLoggingConfiguration
    ModuleLoggingConfigurationInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingEnabled, location_name: 'Enabled', traits: {"smithy.api#required" => {}}))
    ModuleLoggingConfigurationInput.add_member(:log_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingLevel, location_name: 'LogLevel', traits: {"smithy.api#required" => {}}))
    ModuleLoggingConfigurationInput.type = Types::ModuleLoggingConfigurationInput
    NetworkConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'SubnetIds'))
    NetworkConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'SecurityGroupIds'))
    NetworkConfiguration.type = Types::NetworkConfiguration
    PublishMetricsOperationInput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishMetricsOperationInput.add_member(:metric_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricData, location_name: 'MetricData', traits: {"smithy.api#required" => {}}))
    PublishMetricsOperationInput.type = Types::PublishMetricsOperationInput
    PublishMetricsOperationOutput.type = Types::PublishMetricsOperationOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestApiClientException.add_member(:rest_api_status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'RestApiStatusCode'))
    RestApiClientException.add_member(:rest_api_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestApiResponse, location_name: 'RestApiResponse'))
    RestApiClientException.type = Types::RestApiClientException
    RestApiServerException.add_member(:rest_api_status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'RestApiStatusCode'))
    RestApiServerException.add_member(:rest_api_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestApiResponse, location_name: 'RestApiResponse'))
    RestApiServerException.type = Types::RestApiServerException
    SecurityGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    StatisticSet.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SampleCount'))
    StatisticSet.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Sum'))
    StatisticSet.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Minimum'))
    StatisticSet.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Maximum'))
    StatisticSet.type = Types::StatisticSet
    SubnetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateEnvironmentOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEnvironmentOperationInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'ExecutionRoleArn'))
    UpdateEnvironmentOperationInput.add_member(:airflow_configuration_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AirflowConfigurationOptions, location_name: 'AirflowConfigurationOptions'))
    UpdateEnvironmentOperationInput.add_member(:airflow_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AirflowVersion, location_name: 'AirflowVersion'))
    UpdateEnvironmentOperationInput.add_member(:dag_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'DagS3Path'))
    UpdateEnvironmentOperationInput.add_member(:environment_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentClass, location_name: 'EnvironmentClass'))
    UpdateEnvironmentOperationInput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfigurationInput, location_name: 'LoggingConfiguration'))
    UpdateEnvironmentOperationInput.add_member(:max_workers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkers, location_name: 'MaxWorkers'))
    UpdateEnvironmentOperationInput.add_member(:min_workers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinWorkers, location_name: 'MinWorkers'))
    UpdateEnvironmentOperationInput.add_member(:max_webservers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWebservers, location_name: 'MaxWebservers'))
    UpdateEnvironmentOperationInput.add_member(:min_webservers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinWebservers, location_name: 'MinWebservers'))
    UpdateEnvironmentOperationInput.add_member(:worker_replacement_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerReplacementStrategy, location_name: 'WorkerReplacementStrategy'))
    UpdateEnvironmentOperationInput.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkConfigurationInput, location_name: 'NetworkConfiguration'))
    UpdateEnvironmentOperationInput.add_member(:plugins_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'PluginsS3Path'))
    UpdateEnvironmentOperationInput.add_member(:plugins_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'PluginsS3ObjectVersion'))
    UpdateEnvironmentOperationInput.add_member(:requirements_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'RequirementsS3Path'))
    UpdateEnvironmentOperationInput.add_member(:requirements_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'RequirementsS3ObjectVersion'))
    UpdateEnvironmentOperationInput.add_member(:schedulers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedulers, location_name: 'Schedulers'))
    UpdateEnvironmentOperationInput.add_member(:source_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: 'SourceBucketArn'))
    UpdateEnvironmentOperationInput.add_member(:startup_script_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePath, location_name: 'StartupScriptS3Path'))
    UpdateEnvironmentOperationInput.add_member(:startup_script_s3_object_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'StartupScriptS3ObjectVersion'))
    UpdateEnvironmentOperationInput.add_member(:webserver_access_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebserverAccessMode, location_name: 'WebserverAccessMode'))
    UpdateEnvironmentOperationInput.add_member(:weekly_maintenance_window_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyMaintenanceWindowStart, location_name: 'WeeklyMaintenanceWindowStart'))
    UpdateEnvironmentOperationInput.type = Types::UpdateEnvironmentOperationInput
    UpdateEnvironmentOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'Arn'))
    UpdateEnvironmentOperationOutput.type = Types::UpdateEnvironmentOperationOutput
    UpdateError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    UpdateError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage'))
    UpdateError.type = Types::UpdateError
    UpdateNetworkConfigurationInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'SecurityGroupIds', traits: {"smithy.api#required" => {}}))
    UpdateNetworkConfigurationInput.type = Types::UpdateNetworkConfigurationInput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    AmazonMWAA = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mwaa#AmazonMWAA"
      service.name = "AmazonMWAA"
      service.version = "2020-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "MWAA", "arnNamespace" => "airflow"}, "aws.auth#sigv4" => {"name" => "airflow"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AmazonMWAA"}
      service.add_operation(:create_cli_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#CreateCliToken"
        operation.name = "CreateCliToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCliTokenInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCliTokenOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "env."}, "smithy.api#http" => {"uri" => "/clitoken/{Name}", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:create_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/environments/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_web_login_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#CreateWebLoginToken"
        operation.name = "CreateWebLoginToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebLoginTokenInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebLoginTokenOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "env."}, "smithy.api#http" => {"uri" => "/webtoken/{Name}", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/environments/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/environments/{Name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:invoke_rest_api, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#InvokeRestApi"
        operation.name = "InvokeRestApi"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeRestApiRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeRestApiResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestApiClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestApiServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "env."}, "smithy.api#http" => {"uri" => "/restapi/{Name}", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/environments"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:publish_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#PublishMetrics"
        operation.name = "PublishMetrics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublishMetricsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublishMetricsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is for internal use and not meant for public use, and is no longer available."}, "smithy.api#endpoint" => {"hostPrefix" => "ops."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/metrics/environments/{EnvironmentName}"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tags/{ResourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mwaa#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/environments/{Name}"}}
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
