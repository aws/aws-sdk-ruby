# frozen_string_literal: true

# This is generated code!

module Aws::EMRServerless
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Application = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#Application', name: 'Application')
    ApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ApplicationArn', name: 'ApplicationArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-serverless:.+:(\\d{12}):\\/applications\\/[0-9a-zA-Z]+$"})
    ApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ApplicationId', name: 'ApplicationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z]+$"})
    ApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#ApplicationList', name: 'ApplicationList')
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._/#-]+$"})
    ApplicationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ApplicationState', name: 'ApplicationState', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "CREATED", "name" => "CREATED"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "TERMINATED", "name" => "TERMINATED"}]})
    ApplicationStateSet = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#ApplicationStateSet', name: 'ApplicationStateSet', traits: {"smithy.api#length" => {"min" => 1, "max" => 7}, "smithy.api#uniqueItems" => {}})
    ApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ApplicationSummary', name: 'ApplicationSummary')
    Architecture = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#Architecture', name: 'Architecture', traits: {"smithy.api#enum" => [{"value" => "ARM64", "name" => "ARM64"}, {"value" => "X86_64", "name" => "X86_64"}]})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^([\t\n\r -~\u0085 -\uD7FF-�က0-ჿFF]+)$"})
    AttemptNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emrserverless#AttemptNumber', name: 'AttemptNumber', traits: {"smithy.api#range" => {"min" => 1}})
    AutoStartConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#AutoStartConfig', name: 'AutoStartConfig')
    AutoStopConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#AutoStopConfig', name: 'AutoStopConfig')
    CancelJobRunInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#CancelJobRunInput', name: 'CancelJobRunInput')
    CancelJobRunOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#CancelJobRunOutput', name: 'CancelJobRunOutput')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._-]+$"})
    CloudWatchLoggingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#CloudWatchLoggingConfiguration', name: 'CloudWatchLoggingConfiguration')
    Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#Configuration', name: 'Configuration')
    ConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#ConfigurationList', name: 'ConfigurationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConfigurationOverrides = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ConfigurationOverrides', name: 'ConfigurationOverrides')
    ConfigurationPropertyKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ConfigurationPropertyKey', name: 'ConfigurationPropertyKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    ConfigurationPropertyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ConfigurationPropertyValue', name: 'ConfigurationPropertyValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CpuSize = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#CpuSize', name: 'CpuSize', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[1-9][0-9]*(\\s)?(vCPU|vcpu|VCPU)?$"})
    CreateApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#CreateApplicationInput', name: 'CreateApplicationInput')
    CreateApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#CreateApplicationOutput', name: 'CreateApplicationOutput')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.emrserverless#Date', name: 'Date')
    DeleteApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#DeleteApplicationInput', name: 'DeleteApplicationInput')
    DeleteApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#DeleteApplicationOutput', name: 'DeleteApplicationOutput')
    DiskSize = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#DiskSize', name: 'DiskSize', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[1-9][0-9]*(\\s)?(GB|gb|gB|Gb)$"})
    DiskType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#DiskType', name: 'DiskType', traits: {"smithy.api#pattern" => "^(SHUFFLE_OPTIMIZED|[Ss]huffle_[Oo]ptimized|STANDARD|[Ss]tandard)$"})
    Duration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emrserverless#Duration', name: 'Duration', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000000}})
    EncryptionKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#EncryptionKeyArn', name: 'EncryptionKeyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):kms:[a-zA-Z0-9\\-]*:([0-9]{12}):key\\/[a-zA-Z0-9-]+$"})
    EngineType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#EngineType', name: 'EngineType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    EntryPointArgument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#EntryPointArgument', name: 'EntryPointArgument', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    EntryPointArguments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#EntryPointArguments', name: 'EntryPointArguments', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    EntryPointPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#EntryPointPath', name: 'EntryPointPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    GetApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#GetApplicationInput', name: 'GetApplicationInput')
    GetApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#GetApplicationOutput', name: 'GetApplicationOutput')
    GetDashboardForJobRunInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#GetDashboardForJobRunInput', name: 'GetDashboardForJobRunInput')
    GetDashboardForJobRunOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#GetDashboardForJobRunOutput', name: 'GetDashboardForJobRunOutput')
    GetJobRunInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#GetJobRunInput', name: 'GetJobRunInput')
    GetJobRunOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#GetJobRunOutput', name: 'GetJobRunOutput')
    Hive = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#Hive', name: 'Hive')
    HiveCliParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#HiveCliParameters', name: 'HiveCliParameters', traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    IAMRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#IAMRoleArn', name: 'IAMRoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):iam::([0-9]{12}):(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$"})
    IdentityCenterApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#IdentityCenterApplicationArn', name: 'IdentityCenterApplicationArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdentityCenterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#IdentityCenterConfiguration', name: 'IdentityCenterConfiguration')
    IdentityCenterConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#IdentityCenterConfigurationInput', name: 'IdentityCenterConfigurationInput')
    IdentityCenterInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#IdentityCenterInstanceArn', name: 'IdentityCenterInstanceArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    ImageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ImageConfiguration', name: 'ImageConfiguration')
    ImageConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ImageConfigurationInput', name: 'ImageConfigurationInput')
    ImageDigest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ImageDigest', name: 'ImageDigest', traits: {"smithy.api#pattern" => "^sha256:[0-9a-f]{64}$"})
    ImageUri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ImageUri', name: 'ImageUri', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([0-9]{12})\\.dkr\\.ecr\\.([a-z0-9-]+).([a-z0-9._-]+)\\/((?:[a-z0-9]+(?:[-._][a-z0-9]+)*/)*[a-z0-9]+(?:[-._][a-z0-9]+)*)(?::([a-zA-Z0-9_]+[a-zA-Z0-9-._]*)|@(sha256:[0-9a-f]{64}))$"})
    InitScriptPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#InitScriptPath', name: 'InitScriptPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    InitialCapacityConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#InitialCapacityConfig', name: 'InitialCapacityConfig')
    InitialCapacityConfigMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrserverless#InitialCapacityConfigMap', name: 'InitialCapacityConfigMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    InteractiveConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#InteractiveConfiguration', name: 'InteractiveConfiguration')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#JobArn', name: 'JobArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-serverless:.+:(\\d{12}):\\/applications\\/[0-9a-zA-Z]+\\/jobruns\\/[0-9a-zA-Z]+$"})
    JobDriver = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.emrserverless#JobDriver', name: 'JobDriver')
    JobRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#JobRun', name: 'JobRun')
    JobRunAttemptSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#JobRunAttemptSummary', name: 'JobRunAttemptSummary')
    JobRunAttempts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#JobRunAttempts', name: 'JobRunAttempts')
    JobRunExecutionIamPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#JobRunExecutionIamPolicy', name: 'JobRunExecutionIamPolicy')
    JobRunId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#JobRunId', name: 'JobRunId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z]+$"})
    JobRunMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#JobRunMode', name: 'JobRunMode', traits: {"smithy.api#enum" => [{"value" => "BATCH", "name" => "BATCH"}, {"value" => "STREAMING", "name" => "STREAMING"}]})
    JobRunState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#JobRunState', name: 'JobRunState', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "SCHEDULED", "name" => "SCHEDULED"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "QUEUED", "name" => "QUEUED"}]})
    JobRunStateSet = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#JobRunStateSet', name: 'JobRunStateSet', traits: {"smithy.api#length" => {"min" => 0, "max" => 8}, "smithy.api#uniqueItems" => {}})
    JobRunSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#JobRunSummary', name: 'JobRunSummary')
    JobRunType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#JobRunType', name: 'JobRunType')
    JobRuns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#JobRuns', name: 'JobRuns')
    ListApplicationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ListApplicationsInput', name: 'ListApplicationsInput')
    ListApplicationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ListApplicationsOutput', name: 'ListApplicationsOutput')
    ListJobRunAttemptsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ListJobRunAttemptsRequest', name: 'ListJobRunAttemptsRequest')
    ListJobRunAttemptsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ListJobRunAttemptsResponse', name: 'ListJobRunAttemptsResponse')
    ListJobRunsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ListJobRunsInput', name: 'ListJobRunsInput')
    ListJobRunsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ListJobRunsOutput', name: 'ListJobRunsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LogGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#LogGroupName', name: 'LogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    LogStreamNamePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#LogStreamNamePrefix', name: 'LogStreamNamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    LogTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#LogTypeList', name: 'LogTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LogTypeMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrserverless#LogTypeMap', name: 'LogTypeMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    LogTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#LogTypeString', name: 'LogTypeString', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z]+[-_]*[a-zA-Z]+$"})
    ManagedPersistenceMonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ManagedPersistenceMonitoringConfiguration', name: 'ManagedPersistenceMonitoringConfiguration')
    MaximumAllowedResources = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#MaximumAllowedResources', name: 'MaximumAllowedResources')
    MemorySize = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#MemorySize', name: 'MemorySize', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[1-9][0-9]*(\\s)?(GB|gb|gB|Gb)?$"})
    MonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#MonitoringConfiguration', name: 'MonitoringConfiguration')
    NetworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#NetworkConfiguration', name: 'NetworkConfiguration')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9_=-]+$"})
    PolicyArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#PolicyArnList', name: 'PolicyArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#PolicyDocument', name: 'PolicyDocument', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^([\t\n\r -ÿ]+)$"})
    PrometheusMonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#PrometheusMonitoringConfiguration', name: 'PrometheusMonitoringConfiguration')
    PrometheusUrlString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#PrometheusUrlString', name: 'PrometheusUrlString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "^https://aps-workspaces.([a-z]{2}-[a-z-]{1,20}-[1-9]).amazonaws(.[0-9A-Za-z]{2,4})+/workspaces/[-_.0-9A-Za-z]{1,100}/api/v1/remote_write$"})
    Query = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#Query', name: 'Query', traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    ReleaseLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ReleaseLabel', name: 'ReleaseLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._/-]+$"})
    RequestIdentityUserArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#RequestIdentityUserArn', name: 'RequestIdentityUserArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):(iam|sts)::(\\d{12})?:[\\w/+=,.@-]+$"})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-serverless:.+:(\\d{12}):\\/applications\\/[0-9a-zA-Z]+(\\/jobruns\\/[0-9a-zA-Z]+)?$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUtilization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ResourceUtilization', name: 'ResourceUtilization')
    RetryPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#RetryPolicy', name: 'RetryPolicy')
    S3MonitoringConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#S3MonitoringConfiguration', name: 'S3MonitoringConfiguration')
    SchedulerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#SchedulerConfiguration', name: 'SchedulerConfiguration')
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    SecurityGroupString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#SecurityGroupString', name: 'SecurityGroupString', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+"})
    SensitivePropertiesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrserverless#SensitivePropertiesMap', name: 'SensitivePropertiesMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShutdownGracePeriodInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emrserverless#ShutdownGracePeriodInSeconds', name: 'ShutdownGracePeriodInSeconds')
    SparkSubmit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#SparkSubmit', name: 'SparkSubmit')
    SparkSubmitParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#SparkSubmitParameters', name: 'SparkSubmitParameters', traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    StartApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#StartApplicationInput', name: 'StartApplicationInput')
    StartApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#StartApplicationOutput', name: 'StartApplicationOutput')
    StartJobRunInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#StartJobRunInput', name: 'StartJobRunInput')
    StartJobRunOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#StartJobRunOutput', name: 'StartJobRunOutput')
    StopApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#StopApplicationInput', name: 'StopApplicationInput')
    StopApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#StopApplicationOutput', name: 'StopApplicationOutput')
    String1024 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#String1024', name: 'String1024', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    String256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#String256', name: 'String256', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*\\S.*"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    SubnetString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#SubnetString', name: 'SubnetString', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9 /_.:=+@-]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emrserverless#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrserverless#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9 /_.:=+@-]*$"})
    TotalResourceUtilization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#TotalResourceUtilization', name: 'TotalResourceUtilization')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#UpdateApplicationInput', name: 'UpdateApplicationInput')
    UpdateApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#UpdateApplicationOutput', name: 'UpdateApplicationOutput')
    UriString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#UriString', name: 'UriString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\r\\n\\t]*"})
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WorkerCounts = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emrserverless#WorkerCounts', name: 'WorkerCounts', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 1000000}})
    WorkerResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#WorkerResourceConfig', name: 'WorkerResourceConfig')
    WorkerTypeSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#WorkerTypeSpecification', name: 'WorkerTypeSpecification')
    WorkerTypeSpecificationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emrserverless#WorkerTypeSpecificationInput', name: 'WorkerTypeSpecificationInput')
    WorkerTypeSpecificationInputMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrserverless#WorkerTypeSpecificationInputMap', name: 'WorkerTypeSpecificationInputMap')
    WorkerTypeSpecificationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emrserverless#WorkerTypeSpecificationMap', name: 'WorkerTypeSpecificationMap')
    WorkerTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emrserverless#WorkerTypeString', name: 'WorkerTypeString', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z]+[-_]*[a-zA-Z]+$"})

    Application.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    Application.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    Application.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the application.</p>", "smithy.api#required" => {}}))
    Application.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release associated with the application.</p>", "smithy.api#required" => {}}))
    Application.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of application, such as Spark or Hive.</p>", "smithy.api#required" => {}}))
    Application.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the application.</p>", "smithy.api#required" => {}}))
    Application.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p>The state details of the application.</p>"}))
    Application.add_member(:initial_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialCapacityConfigMap, location_name: 'initialCapacity', traits: {"smithy.api#documentation" => "<p>The initial capacity of the application.</p>"}))
    Application.add_member(:maximum_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumAllowedResources, location_name: 'maximumCapacity', traits: {"smithy.api#documentation" => "<p>The maximum capacity of the application. This is cumulative across all workers at any given point in time during the lifespan of the application is created. No new resources will be created once any one of the defined limits is hit.</p>"}))
    Application.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the application run was created.</p>", "smithy.api#required" => {}}))
    Application.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the application run was last updated.</p>", "smithy.api#required" => {}}))
    Application.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the application.</p>"}))
    Application.add_member(:auto_start_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoStartConfig, location_name: 'autoStartConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for an application to automatically start on job submission.</p>"}))
    Application.add_member(:auto_stop_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoStopConfig, location_name: 'autoStopConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>"}))
    Application.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#documentation" => "<p>The network configuration for customer VPC connectivity for the application.</p>"}))
    Application.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The CPU architecture of an application.</p>"}))
    Application.add_member(:image_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageConfiguration, location_name: 'imageConfiguration', traits: {"smithy.api#documentation" => "<p>The image configuration applied to all worker types.</p>"}))
    Application.add_member(:worker_type_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeSpecificationMap, location_name: 'workerTypeSpecifications', traits: {"smithy.api#documentation" => "<p>The specification applied to each worker type.</p>"}))
    Application.add_member(:runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'runtimeConfiguration', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html\">Configuration</a> specifications of an application. Each configuration consists of a classification and properties. You use this parameter when creating or updating an application. To see the runtimeConfiguration object of an application, run the <a href=\"https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_GetApplication.html\">GetApplication</a> API operation.</p>"}))
    Application.add_member(:monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: 'monitoringConfiguration'))
    Application.add_member(:interactive_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InteractiveConfiguration, location_name: 'interactiveConfiguration', traits: {"smithy.api#documentation" => "<p>The interactive configuration object that enables the interactive use cases for an application.</p>"}))
    Application.add_member(:scheduler_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerConfiguration, location_name: 'schedulerConfiguration', traits: {"smithy.api#documentation" => "<p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>"}))
    Application.add_member(:identity_center_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterConfiguration, location_name: 'identityCenterConfiguration', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center configuration applied to enable trusted identity propagation. </p>"}))
    Application.type = Types::Application
    ApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationStateSet.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState)
    ApplicationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    ApplicationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    ApplicationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release associated with the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of application, such as Spark or Hive.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the application.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p>The state details of the application.</p>"}))
    ApplicationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the application was created.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the application was last updated.</p>", "smithy.api#required" => {}}))
    ApplicationSummary.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The CPU architecture of an application.</p>"}))
    ApplicationSummary.type = Types::ApplicationSummary
    AutoStartConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Enables the application to automatically start on job submission. Defaults to true.</p>"}))
    AutoStartConfig.type = Types::AutoStartConfig
    AutoStopConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Enables the application to automatically stop after a certain amount of time being idle. Defaults to true.</p>"}))
    AutoStopConfig.add_member(:idle_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'idleTimeoutMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of idle time in minutes after which your application will automatically stop. Defaults to 15 minutes.</p>", "smithy.api#range" => {"min" => 1, "max" => 10080}}))
    AutoStopConfig.type = Types::AutoStopConfig
    CancelJobRunInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application on which the job run will be canceled.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    CancelJobRunInput.add_member(:job_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'jobRunId', traits: {"smithy.api#documentation" => "<p>The ID of the job run to cancel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    CancelJobRunInput.add_member(:shutdown_grace_period_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ShutdownGracePeriodInSeconds, location_name: 'shutdownGracePeriodInSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The duration in seconds to wait before forcefully terminating the job after cancellation is requested.</p>", "smithy.api#httpQuery" => "shutdownGracePeriodInSeconds"}))
    CancelJobRunInput.type = Types::CancelJobRunInput
    CancelJobRunOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The output contains the application ID on which the job run is cancelled.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    CancelJobRunOutput.add_member(:job_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'jobRunId', traits: {"smithy.api#documentation" => "<p>The output contains the ID of the cancelled job run.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    CancelJobRunOutput.type = Types::CancelJobRunOutput
    CloudWatchLoggingConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Enables CloudWatch logging.</p>", "smithy.api#required" => {}}))
    CloudWatchLoggingConfiguration.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group in Amazon CloudWatch Logs where you want to publish your logs.</p>"}))
    CloudWatchLoggingConfiguration.add_member(:log_stream_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamNamePrefix, location_name: 'logStreamNamePrefix', traits: {"smithy.api#documentation" => "<p>Prefix for the CloudWatch log stream name.</p>"}))
    CloudWatchLoggingConfiguration.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'encryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key ARN to encrypt the logs that you store in CloudWatch Logs.</p>"}))
    CloudWatchLoggingConfiguration.add_member(:log_types, Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeMap, location_name: 'logTypes', traits: {"smithy.api#documentation" => "<p>The types of logs that you want to publish to CloudWatch. If you don't specify any log types, driver STDOUT and STDERR logs will be published to CloudWatch Logs by default. For more information including the supported worker types for Hive and Spark, see <a href=\"https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/logging.html#jobs-log-storage-cw\">Logging for EMR Serverless with CloudWatch</a>.</p> <ul> <li> <p> <b>Key Valid Values</b>: <code>SPARK_DRIVER</code>, <code>SPARK_EXECUTOR</code>, <code>HIVE_DRIVER</code>, <code>TEZ_TASK</code> </p> </li> <li> <p> <b>Array Members Valid Values</b>: <code>STDOUT</code>, <code>STDERR</code>, <code>HIVE_LOG</code>, <code>TEZ_AM</code>, <code>SYSTEM_LOGS</code> </p> </li> </ul>"}))
    CloudWatchLoggingConfiguration.type = Types::CloudWatchLoggingConfiguration
    Configuration.add_member(:classification, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'classification', traits: {"smithy.api#documentation" => "<p>The classification within a configuration.</p>", "smithy.api#required" => {}}))
    Configuration.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivePropertiesMap, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A set of properties specified within a configuration classification.</p>"}))
    Configuration.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'configurations', traits: {"smithy.api#documentation" => "<p>A list of additional configurations to apply within a configuration object.</p>"}))
    Configuration.type = Types::Configuration
    ConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration)
    ConfigurationOverrides.add_member(:application_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'applicationConfiguration', traits: {"smithy.api#documentation" => "<p>The override configurations for the application.</p>"}))
    ConfigurationOverrides.add_member(:monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: 'monitoringConfiguration', traits: {"smithy.api#documentation" => "<p>The override configurations for monitoring.</p>"}))
    ConfigurationOverrides.type = Types::ConfigurationOverrides
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateApplicationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    CreateApplicationInput.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release associated with the application.</p>", "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of application you want to start, such as Spark or Hive.</p>", "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client idempotency token of the application to create. Its value must be unique for each request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:initial_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialCapacityConfigMap, location_name: 'initialCapacity', traits: {"smithy.api#documentation" => "<p>The capacity to initialize when the application is created.</p>"}))
    CreateApplicationInput.add_member(:maximum_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumAllowedResources, location_name: 'maximumCapacity', traits: {"smithy.api#documentation" => "<p>The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.</p>"}))
    CreateApplicationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the application.</p>"}))
    CreateApplicationInput.add_member(:auto_start_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoStartConfig, location_name: 'autoStartConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for an application to automatically start on job submission.</p>"}))
    CreateApplicationInput.add_member(:auto_stop_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoStopConfig, location_name: 'autoStopConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>"}))
    CreateApplicationInput.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#documentation" => "<p>The network configuration for customer VPC connectivity.</p>"}))
    CreateApplicationInput.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The CPU architecture of an application.</p>"}))
    CreateApplicationInput.add_member(:image_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageConfigurationInput, location_name: 'imageConfiguration', traits: {"smithy.api#documentation" => "<p>The image configuration for all worker types. You can either set this parameter or <code>imageConfiguration</code> for each worker type in <code>workerTypeSpecifications</code>.</p>"}))
    CreateApplicationInput.add_member(:worker_type_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeSpecificationInputMap, location_name: 'workerTypeSpecifications', traits: {"smithy.api#documentation" => "<p>The key-value pairs that specify worker type to <code>WorkerTypeSpecificationInput</code>. This parameter must contain all valid worker types for a Spark or Hive application. Valid worker types include <code>Driver</code> and <code>Executor</code> for Spark applications and <code>HiveDriver</code> and <code>TezTask</code> for Hive applications. You can either set image details in this parameter for each worker type, or in <code>imageConfiguration</code> for all worker types.</p>"}))
    CreateApplicationInput.add_member(:runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'runtimeConfiguration', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html\">Configuration</a> specifications to use when creating an application. Each configuration consists of a classification and properties. This configuration is applied to all the job runs submitted under the application.</p>"}))
    CreateApplicationInput.add_member(:monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: 'monitoringConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration setting for monitoring.</p>"}))
    CreateApplicationInput.add_member(:interactive_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InteractiveConfiguration, location_name: 'interactiveConfiguration', traits: {"smithy.api#documentation" => "<p>The interactive configuration object that enables the interactive use cases to use when running an application.</p>"}))
    CreateApplicationInput.add_member(:scheduler_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerConfiguration, location_name: 'schedulerConfiguration', traits: {"smithy.api#documentation" => "<p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>"}))
    CreateApplicationInput.add_member(:identity_center_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterConfigurationInput, location_name: 'identityCenterConfiguration', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center Configuration accepts the Identity Center instance parameter required to enable trusted identity propagation. This configuration allows identity propagation between integrated services and the Identity Center instance.</p>"}))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The output contains the application ID.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    CreateApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The output contains the name of the application.</p>"}))
    CreateApplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The output contains the ARN of the application.</p>", "smithy.api#required" => {}}))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    DeleteApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that will be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteApplicationOutput.type = Types::DeleteApplicationOutput
    EntryPointArguments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntryPointArgument)
    GetApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that will be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    GetApplicationInput.type = Types::GetApplicationInput
    GetApplicationOutput.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Application, location_name: 'application', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The output displays information about the specified application.</p>", "smithy.api#required" => {}}))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetDashboardForJobRunInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    GetDashboardForJobRunInput.add_member(:job_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'jobRunId', traits: {"smithy.api#documentation" => "<p>The ID of the job run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    GetDashboardForJobRunInput.add_member(:attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptNumber, location_name: 'attempt', traits: {"smithy.api#documentation" => "<p>An optimal parameter that indicates the amount of attempts for the job. If not specified, this value defaults to the attempt of the latest job.</p>", "smithy.api#httpQuery" => "attempt"}))
    GetDashboardForJobRunInput.add_member(:access_system_profile_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'accessSystemProfileLogs', traits: {"smithy.api#documentation" => "<p>Allows access to system profile logs for Lake Formation-enabled jobs. Default is false.</p>", "smithy.api#httpQuery" => "accessSystemProfileLogs"}))
    GetDashboardForJobRunInput.type = Types::GetDashboardForJobRunInput
    GetDashboardForJobRunOutput.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL to view job run's dashboard.</p>"}))
    GetDashboardForJobRunOutput.type = Types::GetDashboardForJobRunOutput
    GetJobRunInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application on which the job run is submitted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    GetJobRunInput.add_member(:job_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'jobRunId', traits: {"smithy.api#documentation" => "<p>The ID of the job run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    GetJobRunInput.add_member(:attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptNumber, location_name: 'attempt', traits: {"smithy.api#documentation" => "<p>An optimal parameter that indicates the amount of attempts for the job. If not specified, this value defaults to the attempt of the latest job.</p>", "smithy.api#httpQuery" => "attempt"}))
    GetJobRunInput.type = Types::GetJobRunInput
    GetJobRunOutput.add_member(:job_run, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRun, location_name: 'jobRun', traits: {"smithy.api#documentation" => "<p>The output displays information about the job run.</p>", "smithy.api#required" => {}}))
    GetJobRunOutput.type = Types::GetJobRunOutput
    Hive.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: Query, location_name: 'query', traits: {"smithy.api#documentation" => "<p>The query for the Hive job run.</p>", "smithy.api#required" => {}}))
    Hive.add_member(:init_query_file, Smithy::Schema::Shapes::ShapeRef.new(shape: InitScriptPath, location_name: 'initQueryFile', traits: {"smithy.api#documentation" => "<p>The query file for the Hive job run.</p>"}))
    Hive.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HiveCliParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The parameters for the Hive job run.</p>"}))
    Hive.type = Types::Hive
    IdentityCenterConfiguration.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'identityCenterInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance.</p>"}))
    IdentityCenterConfiguration.add_member(:identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'identityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EMR Serverless created IAM Identity Center Application that provides trusted-identity propagation.</p>"}))
    IdentityCenterConfiguration.type = Types::IdentityCenterConfiguration
    IdentityCenterConfigurationInput.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'identityCenterInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance.</p>"}))
    IdentityCenterConfigurationInput.type = Types::IdentityCenterConfigurationInput
    ImageConfiguration.add_member(:image_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageUri, location_name: 'imageUri', traits: {"smithy.api#documentation" => "<p>The image URI.</p>", "smithy.api#required" => {}}))
    ImageConfiguration.add_member(:resolved_image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'resolvedImageDigest', traits: {"smithy.api#documentation" => "<p>The SHA256 digest of the image URI. This indicates which specific image the application is configured for. The image digest doesn't exist until an application has started.</p>"}))
    ImageConfiguration.type = Types::ImageConfiguration
    ImageConfigurationInput.add_member(:image_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageUri, location_name: 'imageUri', traits: {"smithy.api#documentation" => "<p>The URI of an image in the Amazon ECR registry. This field is required when you create a new application. If you leave this field blank in an update, Amazon EMR will remove the image configuration.</p>"}))
    ImageConfigurationInput.type = Types::ImageConfigurationInput
    InitialCapacityConfig.add_member(:worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerCounts, location_name: 'workerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of workers in the initial capacity configuration.</p>", "smithy.api#required" => {}}))
    InitialCapacityConfig.add_member(:worker_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerResourceConfig, location_name: 'workerConfiguration', traits: {"smithy.api#documentation" => "<p>The resource configuration of the initial capacity configuration.</p>", "smithy.api#recommended" => {}}))
    InitialCapacityConfig.type = Types::InitialCapacityConfig
    InitialCapacityConfigMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeString)
    InitialCapacityConfigMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: InitialCapacityConfig)
    InteractiveConfiguration.add_member(:studio_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'studioEnabled', traits: {"smithy.api#documentation" => "<p>Enables you to connect an application to Amazon EMR Studio to run interactive workloads in a notebook.</p>"}))
    InteractiveConfiguration.add_member(:livy_endpoint_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'livyEndpointEnabled', traits: {"smithy.api#documentation" => "<p>Enables an Apache Livy endpoint that you can connect to and run interactive jobs.</p>"}))
    InteractiveConfiguration.type = Types::InteractiveConfiguration
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    JobDriver.add_member(:spark_submit, Types::JobDriver::SparkSubmit, Smithy::Schema::Shapes::ShapeRef.new(shape: SparkSubmit, location_name: 'sparkSubmit', traits: {"smithy.api#documentation" => "<p>The job driver parameters specified for Spark.</p>"}))
    JobDriver.add_member(:hive, Types::JobDriver::Hive, Smithy::Schema::Shapes::ShapeRef.new(shape: Hive, location_name: 'hive', traits: {"smithy.api#documentation" => "<p>The job driver parameters specified for Hive.</p>"}))
    JobDriver.add_member(:unknown, Types::JobDriver::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    JobDriver.type = Types::JobDriver
    JobRun.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application the job is running on.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    JobRun.add_member(:job_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'jobRunId', traits: {"smithy.api#documentation" => "<p>The ID of the job run.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    JobRun.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The optional job run name. This doesn't have to be unique.</p>"}))
    JobRun.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The execution role ARN of the job run.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestIdentityUserArn, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user who created the job run.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job run was created.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job run was updated.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRole', traits: {"smithy.api#documentation" => "<p>The execution role ARN of the job run.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:execution_iam_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunExecutionIamPolicy, location_name: 'executionIamPolicy'))
    JobRun.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the job run.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p>The state details of the job run.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release associated with the application your job is running on.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:configuration_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: 'configurationOverrides', traits: {"smithy.api#documentation" => "<p>The configuration settings that are used to override default configuration.</p>"}))
    JobRun.add_member(:job_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDriver, location_name: 'jobDriver', traits: {"smithy.api#documentation" => "<p>The job driver for the job run.</p>", "smithy.api#required" => {}}))
    JobRun.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the job run.</p>"}))
    JobRun.add_member(:total_resource_utilization, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalResourceUtilization, location_name: 'totalResourceUtilization', traits: {"smithy.api#documentation" => "<p>The aggregate vCPU, memory, and storage resources used from the time the job starts to execute, until the time the job terminates, rounded up to the nearest second.</p>"}))
    JobRun.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration'))
    JobRun.add_member(:total_execution_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalExecutionDurationSeconds', traits: {"smithy.api#documentation" => "<p>The job run total execution duration in seconds. This field is only available for job runs in a <code>COMPLETED</code>, <code>FAILED</code>, or <code>CANCELLED</code> state.</p>"}))
    JobRun.add_member(:execution_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'executionTimeoutMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Returns the job run timeout value from the <code>StartJobRun</code> call. If no timeout was specified, then it returns the default timeout of 720 minutes.</p>"}))
    JobRun.add_member(:billed_resource_utilization, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUtilization, location_name: 'billedResourceUtilization', traits: {"smithy.api#documentation" => "<p>The aggregate vCPU, memory, and storage that Amazon Web Services has billed for the job run. The billed resources include a 1-minute minimum usage for workers, plus additional storage over 20 GB per worker. Note that billed resources do not include usage for idle pre-initialized workers.</p>"}))
    JobRun.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The mode of the job run.</p>"}))
    JobRun.add_member(:retry_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryPolicy, location_name: 'retryPolicy', traits: {"smithy.api#documentation" => "<p>The retry policy of the job run.</p>"}))
    JobRun.add_member(:attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptNumber, location_name: 'attempt', traits: {"smithy.api#documentation" => "<p>The attempt of the job run.</p>"}))
    JobRun.add_member(:attempt_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'attemptCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time of when the job run attempt was created.</p>"}))
    JobRun.add_member(:attempt_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'attemptUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time of when the job run attempt was last updated.</p>"}))
    JobRun.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job moved to the RUNNING state.</p>"}))
    JobRun.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'endedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job was terminated.</p>"}))
    JobRun.add_member(:queued_duration_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'queuedDurationMilliseconds', traits: {"smithy.api#documentation" => "<p>The total time for a job in the QUEUED state in milliseconds.</p>"}))
    JobRun.type = Types::JobRun
    JobRunAttemptSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application the job is running on.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    JobRunAttemptSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job run attempt.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    JobRunAttemptSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the job run attempt.</p>"}))
    JobRunAttemptSummary.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The mode of the job run attempt.</p>"}))
    JobRunAttemptSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the job run.</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestIdentityUserArn, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user who created the job run.</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:job_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'jobCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time of when the job run was created.</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job run attempt was created.</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time of when the job run attempt was last updated.</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRole', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the execution role of the job run..</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the job run attempt.</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p>The state details of the job run attempt.</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release label of the job run attempt.</p>", "smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the job run, such as Spark or Hive.</p>"}))
    JobRunAttemptSummary.add_member(:attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptNumber, location_name: 'attempt', traits: {"smithy.api#documentation" => "<p>The attempt number of the job run execution.</p>"}))
    JobRunAttemptSummary.type = Types::JobRunAttemptSummary
    JobRunAttempts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunAttemptSummary)
    JobRunExecutionIamPolicy.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>An IAM inline policy to use as an execution IAM policy.</p>"}))
    JobRunExecutionIamPolicy.add_member(:policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyArnList, location_name: 'policyArns', traits: {"smithy.api#documentation" => "<p>A list of Amazon Resource Names (ARNs) to use as an execution IAM policy.</p>"}))
    JobRunExecutionIamPolicy.type = Types::JobRunExecutionIamPolicy
    JobRunStateSet.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunState)
    JobRunSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application the job is running on.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    JobRunSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job run.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    JobRunSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The optional job run name. This doesn't have to be unique.</p>"}))
    JobRunSummary.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The mode of the job run.</p>"}))
    JobRunSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the job run.</p>", "smithy.api#required" => {}}))
    JobRunSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestIdentityUserArn, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The user who created the job run.</p>", "smithy.api#required" => {}}))
    JobRunSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job run was created.</p>", "smithy.api#required" => {}}))
    JobRunSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the job run was last updated.</p>", "smithy.api#required" => {}}))
    JobRunSummary.add_member(:execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRole', traits: {"smithy.api#documentation" => "<p>The execution role ARN of the job run.</p>", "smithy.api#required" => {}}))
    JobRunSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the job run.</p>", "smithy.api#required" => {}}))
    JobRunSummary.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p>The state details of the job run.</p>", "smithy.api#required" => {}}))
    JobRunSummary.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release associated with the application your job is running on.</p>", "smithy.api#required" => {}}))
    JobRunSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of job run, such as Spark or Hive.</p>"}))
    JobRunSummary.add_member(:attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptNumber, location_name: 'attempt', traits: {"smithy.api#documentation" => "<p>The attempt number of the job run execution.</p>"}))
    JobRunSummary.add_member(:attempt_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'attemptCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time of when the job run attempt was created.</p>"}))
    JobRunSummary.add_member(:attempt_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'attemptUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time of when the job run attempt was last updated.</p>"}))
    JobRunSummary.type = Types::JobRunSummary
    JobRuns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunSummary)
    ListApplicationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of application results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of applications that can be listed.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListApplicationsInput.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStateSet, location_name: 'states', traits: {"smithy.api#documentation" => "<p>An optional filter for application states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>", "smithy.api#httpQuery" => "states"}))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationList, location_name: 'applications', traits: {"smithy.api#documentation" => "<p>The output lists the specified applications.</p>", "smithy.api#required" => {}}))
    ListApplicationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The output displays the token for the next set of application results. This is required for pagination and is available as a response of the previous request.</p>"}))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListJobRunAttemptsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application for which to list job runs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    ListJobRunAttemptsRequest.add_member(:job_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'jobRunId', traits: {"smithy.api#documentation" => "<p>The ID of the job run to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    ListJobRunAttemptsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of job run attempt results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobRunAttemptsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of job run attempts to list.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListJobRunAttemptsRequest.type = Types::ListJobRunAttemptsRequest
    ListJobRunAttemptsResponse.add_member(:job_run_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunAttempts, location_name: 'jobRunAttempts', traits: {"smithy.api#documentation" => "<p>The array of the listed job run attempt objects.</p>", "smithy.api#required" => {}}))
    ListJobRunAttemptsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The output displays the token for the next set of application results. This is required for pagination and is available as a response of the previous request.</p>"}))
    ListJobRunAttemptsResponse.type = Types::ListJobRunAttemptsResponse
    ListJobRunsInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application for which to list the job run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    ListJobRunsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of job run results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobRunsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of job runs that can be listed.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListJobRunsInput.add_member(:created_at_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAtAfter', traits: {"smithy.api#documentation" => "<p>The lower bound of the option to filter by creation date and time.</p>", "smithy.api#httpQuery" => "createdAtAfter"}))
    ListJobRunsInput.add_member(:created_at_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAtBefore', traits: {"smithy.api#documentation" => "<p>The upper bound of the option to filter by creation date and time.</p>", "smithy.api#httpQuery" => "createdAtBefore"}))
    ListJobRunsInput.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunStateSet, location_name: 'states', traits: {"smithy.api#documentation" => "<p>An optional filter for job run states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>", "smithy.api#httpQuery" => "states"}))
    ListJobRunsInput.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The mode of the job runs to list.</p>", "smithy.api#httpQuery" => "mode"}))
    ListJobRunsInput.type = Types::ListJobRunsInput
    ListJobRunsOutput.add_member(:job_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRuns, location_name: 'jobRuns', traits: {"smithy.api#documentation" => "<p>The output lists information about the specified job runs.</p>", "smithy.api#required" => {}}))
    ListJobRunsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The output displays the token for the next set of job run results. This is required for pagination and is available as a response of the previous request.</p>"}))
    ListJobRunsOutput.type = Types::ListJobRunsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeString)
    LogTypeMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeString)
    LogTypeMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList)
    ManagedPersistenceMonitoringConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Enables managed logging and defaults to true. If set to false, managed logging will be turned off.</p>"}))
    ManagedPersistenceMonitoringConfiguration.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'encryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The KMS key ARN to encrypt the logs stored in managed log persistence.</p>"}))
    ManagedPersistenceMonitoringConfiguration.type = Types::ManagedPersistenceMonitoringConfiguration
    MaximumAllowedResources.add_member(:cpu, Smithy::Schema::Shapes::ShapeRef.new(shape: CpuSize, location_name: 'cpu', traits: {"smithy.api#documentation" => "<p>The maximum allowed CPU for an application.</p>", "smithy.api#required" => {}}))
    MaximumAllowedResources.add_member(:memory, Smithy::Schema::Shapes::ShapeRef.new(shape: MemorySize, location_name: 'memory', traits: {"smithy.api#documentation" => "<p>The maximum allowed resources for an application.</p>", "smithy.api#required" => {}}))
    MaximumAllowedResources.add_member(:disk, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskSize, location_name: 'disk', traits: {"smithy.api#documentation" => "<p>The maximum allowed disk for an application.</p>"}))
    MaximumAllowedResources.type = Types::MaximumAllowedResources
    MonitoringConfiguration.add_member(:s3_monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3MonitoringConfiguration, location_name: 's3MonitoringConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon S3 configuration for monitoring log publishing.</p>"}))
    MonitoringConfiguration.add_member(:managed_persistence_monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPersistenceMonitoringConfiguration, location_name: 'managedPersistenceMonitoringConfiguration', traits: {"smithy.api#documentation" => "<p>The managed log persistence configuration for a job run.</p>"}))
    MonitoringConfiguration.add_member(:cloud_watch_logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLoggingConfiguration, location_name: 'cloudWatchLoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon CloudWatch configuration for monitoring logs. You can configure your jobs to send log information to CloudWatch.</p>"}))
    MonitoringConfiguration.add_member(:prometheus_monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PrometheusMonitoringConfiguration, location_name: 'prometheusMonitoringConfiguration', traits: {"smithy.api#documentation" => "<p>The monitoring configuration object you can configure to send metrics to Amazon Managed Service for Prometheus for a job run.</p>"}))
    MonitoringConfiguration.type = Types::MonitoringConfiguration
    NetworkConfiguration.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The array of subnet Ids for customer VPC connectivity.</p>"}))
    NetworkConfiguration.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The array of security group Ids for customer VPC connectivity.</p>"}))
    NetworkConfiguration.type = Types::NetworkConfiguration
    PolicyArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    PrometheusMonitoringConfiguration.add_member(:remote_write_url, Smithy::Schema::Shapes::ShapeRef.new(shape: PrometheusUrlString, location_name: 'remoteWriteUrl', traits: {"smithy.api#documentation" => "<p>The remote write URL in the Amazon Managed Service for Prometheus workspace to send metrics to.</p>"}))
    PrometheusMonitoringConfiguration.type = Types::PrometheusMonitoringConfiguration
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUtilization.add_member(:v_cpu_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'vCPUHour', traits: {"smithy.api#documentation" => "<p>The aggregated vCPU used per hour from the time the job starts executing until the job is terminated.</p>"}))
    ResourceUtilization.add_member(:memory_gb_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'memoryGBHour', traits: {"smithy.api#documentation" => "<p>The aggregated memory used per hour from the time the job starts executing until the job is terminated.</p>"}))
    ResourceUtilization.add_member(:storage_gb_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'storageGBHour', traits: {"smithy.api#documentation" => "<p>The aggregated storage used per hour from the time the job starts executing until the job is terminated.</p>"}))
    ResourceUtilization.type = Types::ResourceUtilization
    RetryPolicy.add_member(:max_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: AttemptNumber, location_name: 'maxAttempts', traits: {"smithy.api#documentation" => "<p>Maximum number of attempts for the job run. This parameter is only applicable for <code>BATCH</code> mode.</p>"}))
    RetryPolicy.add_member(:max_failed_attempts_per_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxFailedAttemptsPerHour', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Maximum number of failed attempts per hour. This [arameter is only applicable for <code>STREAMING</code> mode.</p>", "smithy.api#range" => {"min" => 1}}))
    RetryPolicy.type = Types::RetryPolicy
    S3MonitoringConfiguration.add_member(:log_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: UriString, location_name: 'logUri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 destination URI for log publishing.</p>"}))
    S3MonitoringConfiguration.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: 'encryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The KMS key ARN to encrypt the logs published to the given Amazon S3 destination.</p>"}))
    S3MonitoringConfiguration.type = Types::S3MonitoringConfiguration
    SchedulerConfiguration.add_member(:queue_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'queueTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The maximum duration in minutes for the job in QUEUED state. If scheduler configuration is enabled on your application, the default value is 360 minutes (6 hours). The valid range is from 15 to 720.</p>"}))
    SchedulerConfiguration.add_member(:max_concurrent_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxConcurrentRuns', traits: {"smithy.api#documentation" => "<p>The maximum concurrent job runs on this application. If scheduler configuration is enabled on your application, the default value is 15. The valid range is 1 to 1000.</p>"}))
    SchedulerConfiguration.type = Types::SchedulerConfiguration
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupString)
    SensitivePropertiesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationPropertyKey)
    SensitivePropertiesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationPropertyValue)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SparkSubmit.add_member(:entry_point, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryPointPath, location_name: 'entryPoint', traits: {"smithy.api#documentation" => "<p>The entry point for the Spark submit job run.</p>", "smithy.api#required" => {}}))
    SparkSubmit.add_member(:entry_point_arguments, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryPointArguments, location_name: 'entryPointArguments', traits: {"smithy.api#documentation" => "<p>The arguments for the Spark submit job run.</p>"}))
    SparkSubmit.add_member(:spark_submit_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SparkSubmitParameters, location_name: 'sparkSubmitParameters', traits: {"smithy.api#documentation" => "<p>The parameters for the Spark submit job run.</p>"}))
    SparkSubmit.type = Types::SparkSubmit
    StartApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application to start.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    StartApplicationInput.type = Types::StartApplicationInput
    StartApplicationOutput.type = Types::StartApplicationOutput
    StartJobRunInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application on which to run the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    StartJobRunInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client idempotency token of the job run to start. Its value must be unique for each request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartJobRunInput.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The execution role ARN for the job run.</p>", "smithy.api#required" => {}}))
    StartJobRunInput.add_member(:execution_iam_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunExecutionIamPolicy, location_name: 'executionIamPolicy', traits: {"smithy.api#documentation" => "<p>You can pass an optional IAM policy. The resulting job IAM role permissions will be an intersection of this policy and the policy associated with your job execution role.</p>"}))
    StartJobRunInput.add_member(:job_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDriver, location_name: 'jobDriver', traits: {"smithy.api#documentation" => "<p>The job driver for the job run.</p>"}))
    StartJobRunInput.add_member(:configuration_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: 'configurationOverrides', traits: {"smithy.api#documentation" => "<p>The configuration overrides for the job run.</p>"}))
    StartJobRunInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the job run.</p>"}))
    StartJobRunInput.add_member(:execution_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'executionTimeoutMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum duration for the job run to run. If the job run runs beyond this duration, it will be automatically cancelled.</p>"}))
    StartJobRunInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The optional job run name. This doesn't have to be unique.</p>"}))
    StartJobRunInput.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The mode of the job run when it starts.</p>"}))
    StartJobRunInput.add_member(:retry_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryPolicy, location_name: 'retryPolicy', traits: {"smithy.api#documentation" => "<p>The retry policy when job run starts.</p>"}))
    StartJobRunInput.type = Types::StartJobRunInput
    StartJobRunOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>This output displays the application ID on which the job run was submitted.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    StartJobRunOutput.add_member(:job_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobRunId, location_name: 'jobRunId', traits: {"smithy.api#documentation" => "<p>The output contains the ID of the started job run.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    StartJobRunOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>This output displays the ARN of the job run..</p>", "smithy.api#required" => {}}))
    StartJobRunOutput.type = Types::StartJobRunOutput
    StopApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    StopApplicationInput.type = Types::StopApplicationInput
    StopApplicationOutput.type = Types::StopApplicationOutput
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetString)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the resource. A tag is an array of key-value pairs.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TotalResourceUtilization.add_member(:v_cpu_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'vCPUHour', traits: {"smithy.api#documentation" => "<p>The aggregated vCPU used per hour from the time job start executing till the time job is terminated.</p>"}))
    TotalResourceUtilization.add_member(:memory_gb_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'memoryGBHour', traits: {"smithy.api#documentation" => "<p>The aggregated memory used per hour from the time job start executing till the time job is terminated.</p>"}))
    TotalResourceUtilization.add_member(:storage_gb_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'storageGBHour', traits: {"smithy.api#documentation" => "<p>The aggregated storage used per hour from the time job start executing till the time job is terminated.</p>"}))
    TotalResourceUtilization.type = Types::TotalResourceUtilization
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to be removed.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    UpdateApplicationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client idempotency token of the application to update. Its value must be unique for each request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateApplicationInput.add_member(:initial_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialCapacityConfigMap, location_name: 'initialCapacity', traits: {"smithy.api#documentation" => "<p>The capacity to initialize when the application is updated.</p>"}))
    UpdateApplicationInput.add_member(:maximum_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumAllowedResources, location_name: 'maximumCapacity', traits: {"smithy.api#documentation" => "<p>The maximum capacity to allocate when the application is updated. This is cumulative across all workers at any given point in time during the lifespan of the application. No new resources will be created once any one of the defined limits is hit.</p>"}))
    UpdateApplicationInput.add_member(:auto_start_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoStartConfig, location_name: 'autoStartConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for an application to automatically start on job submission.</p>"}))
    UpdateApplicationInput.add_member(:auto_stop_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoStopConfig, location_name: 'autoStopConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>"}))
    UpdateApplicationInput.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration'))
    UpdateApplicationInput.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The CPU architecture of an application.</p>"}))
    UpdateApplicationInput.add_member(:image_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageConfigurationInput, location_name: 'imageConfiguration', traits: {"smithy.api#documentation" => "<p>The image configuration to be used for all worker types. You can either set this parameter or <code>imageConfiguration</code> for each worker type in <code>WorkerTypeSpecificationInput</code>.</p>"}))
    UpdateApplicationInput.add_member(:worker_type_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeSpecificationInputMap, location_name: 'workerTypeSpecifications', traits: {"smithy.api#documentation" => "<p>The key-value pairs that specify worker type to <code>WorkerTypeSpecificationInput</code>. This parameter must contain all valid worker types for a Spark or Hive application. Valid worker types include <code>Driver</code> and <code>Executor</code> for Spark applications and <code>HiveDriver</code> and <code>TezTask</code> for Hive applications. You can either set image details in this parameter for each worker type, or in <code>imageConfiguration</code> for all worker types.</p>"}))
    UpdateApplicationInput.add_member(:interactive_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InteractiveConfiguration, location_name: 'interactiveConfiguration', traits: {"smithy.api#documentation" => "<p>The interactive configuration object that contains new interactive use cases when the application is updated.</p>"}))
    UpdateApplicationInput.add_member(:release_label, Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: 'releaseLabel', traits: {"smithy.api#documentation" => "<p>The Amazon EMR release label for the application. You can change the release label to use a different release of Amazon EMR.</p>"}))
    UpdateApplicationInput.add_member(:runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'runtimeConfiguration', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html\">Configuration</a> specifications to use when updating an application. Each configuration consists of a classification and properties. This configuration is applied across all the job runs submitted under the application.</p>"}))
    UpdateApplicationInput.add_member(:monitoring_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: 'monitoringConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration setting for monitoring.</p>"}))
    UpdateApplicationInput.add_member(:scheduler_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerConfiguration, location_name: 'schedulerConfiguration', traits: {"smithy.api#documentation" => "<p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>"}))
    UpdateApplicationInput.add_member(:identity_center_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterConfigurationInput, location_name: 'identityCenterConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the IAM Identity Center configuration used to enable or disable trusted identity propagation. When provided, this configuration determines how the application interacts with IAM Identity Center for user authentication and access control.</p>"}))
    UpdateApplicationInput.type = Types::UpdateApplicationInput
    UpdateApplicationOutput.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Application, location_name: 'application', traits: {"smithy.api#documentation" => "<p>Information about the updated application.</p>", "smithy.api#required" => {}}))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String1024, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    WorkerResourceConfig.add_member(:cpu, Smithy::Schema::Shapes::ShapeRef.new(shape: CpuSize, location_name: 'cpu', traits: {"smithy.api#documentation" => "<p>The CPU requirements for every worker instance of the worker type.</p>", "smithy.api#required" => {}}))
    WorkerResourceConfig.add_member(:memory, Smithy::Schema::Shapes::ShapeRef.new(shape: MemorySize, location_name: 'memory', traits: {"smithy.api#documentation" => "<p>The memory requirements for every worker instance of the worker type.</p>", "smithy.api#required" => {}}))
    WorkerResourceConfig.add_member(:disk, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskSize, location_name: 'disk', traits: {"smithy.api#documentation" => "<p>The disk requirements for every worker instance of the worker type.</p>"}))
    WorkerResourceConfig.add_member(:disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskType, location_name: 'diskType', traits: {"smithy.api#documentation" => "<p>The disk type for every worker instance of the work type. Shuffle optimized disks have higher performance characteristics and are better for shuffle heavy workloads. Default is <code>STANDARD</code>.</p>"}))
    WorkerResourceConfig.type = Types::WorkerResourceConfig
    WorkerTypeSpecification.add_member(:image_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageConfiguration, location_name: 'imageConfiguration', traits: {"smithy.api#documentation" => "<p>The image configuration for a worker type.</p>"}))
    WorkerTypeSpecification.type = Types::WorkerTypeSpecification
    WorkerTypeSpecificationInput.add_member(:image_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageConfigurationInput, location_name: 'imageConfiguration', traits: {"smithy.api#documentation" => "<p>The image configuration for a worker type.</p>"}))
    WorkerTypeSpecificationInput.type = Types::WorkerTypeSpecificationInput
    WorkerTypeSpecificationInputMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeString)
    WorkerTypeSpecificationInputMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeSpecificationInput)
    WorkerTypeSpecificationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeString)
    WorkerTypeSpecificationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerTypeSpecification)

    AwsToledoWebService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.emrserverless#AwsToledoWebService"
      service.name = "AwsToledoWebService"
      service.version = "2021-07-13"
      service.traits = {"aws.api#service" => {"sdkId" => "EMR Serverless", "arnNamespace" => "emr-serverless", "cloudFormationName" => "EMRServerless"}, "aws.auth#sigv4" => {"name" => "emr-serverless"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amz-apigw-id"]}, "smithy.api#title" => "EMR Serverless"}
      service.add_operation(:cancel_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#CancelJobRun"
        operation.name = "CancelJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobRunInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobRunOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/jobruns/{jobRunId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#GetApplication"
        operation.name = "GetApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_dashboard_for_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#GetDashboardForJobRun"
        operation.name = "GetDashboardForJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDashboardForJobRunInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDashboardForJobRunOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/jobruns/{jobRunId}/dashboard"}}
      end)
      service.add_operation(:get_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#GetJobRun"
        operation.name = "GetJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobRunInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobRunOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/jobruns/{jobRunId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_job_run_attempts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#ListJobRunAttempts"
        operation.name = "ListJobRunAttempts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobRunAttemptsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobRunAttemptsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/jobruns/{jobRunId}/attempts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobRunAttempts.new
      end)
      service.add_operation(:list_job_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#ListJobRuns"
        operation.name = "ListJobRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobRunsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobRunsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/jobruns"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobRuns.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#StartApplication"
        operation.name = "StartApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/start"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_job_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#StartJobRun"
        operation.name = "StartJobRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobRunInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobRunOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/jobruns"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#StopApplication"
        operation.name = "StopApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/stop"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{applicationId}"}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
